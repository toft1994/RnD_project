// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module runLayer_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [31:0]                   output_r_i,
    input  wire [31:0]                   output_r_o,
    input  wire                          output_r_o_ap_vld,
    output wire [31:0]                   bias,
    output wire [15:0]                   numOfInNeurons,
    input  wire [6:0]                    input_r_address0,
    input  wire                          input_r_ce0,
    output wire [31:0]                   input_r_q0,
    output wire [31:0]                   weights,
    input  wire [0:0]                    ap_local_deadlock
);
//------------------------Address Info-------------------
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of output_r_i
//         bit 31~0 - output_r_i[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of output_r_o
//         bit 31~0 - output_r_o[31:0] (Read)
// 0x01c : Control signal of output_r_o
//         bit 0  - output_r_o_ap_vld (Read/COR)
//         others - reserved
// 0x020 : Data signal of bias
//         bit 31~0 - bias[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of numOfInNeurons
//         bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x02c : reserved
// 0x030 : Data signal of weights
//         bit 31~0 - weights[31:0] (Read/Write)
// 0x034 : reserved
// 0x200 ~
// 0x3ff : Memory 'input_r' (128 * 32b)
//         Word n : bit [31:0] - input_r[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_OUTPUT_R_I_DATA_0     = 10'h010,
    ADDR_OUTPUT_R_I_CTRL       = 10'h014,
    ADDR_OUTPUT_R_O_DATA_0     = 10'h018,
    ADDR_OUTPUT_R_O_CTRL       = 10'h01c,
    ADDR_BIAS_DATA_0           = 10'h020,
    ADDR_BIAS_CTRL             = 10'h024,
    ADDR_NUMOFINNEURONS_DATA_0 = 10'h028,
    ADDR_NUMOFINNEURONS_CTRL   = 10'h02c,
    ADDR_WEIGHTS_DATA_0        = 10'h030,
    ADDR_WEIGHTS_CTRL          = 10'h034,
    ADDR_INPUT_R_BASE          = 10'h200,
    ADDR_INPUT_R_HIGH          = 10'h3ff,
    WRIDLE                     = 2'd0,
    WRDATA                     = 2'd1,
    WRRESP                     = 2'd2,
    WRRESET                    = 2'd3,
    RDIDLE                     = 2'd0,
    RDDATA                     = 2'd1,
    RDRESET                    = 2'd2,
    ADDR_BITS                = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_output_r_i = 'b0;
    reg                           int_output_r_o_ap_vld;
    reg  [31:0]                   int_output_r_o = 'b0;
    reg  [31:0]                   int_bias = 'b0;
    reg  [15:0]                   int_numOfInNeurons = 'b0;
    reg  [31:0]                   int_weights = 'b0;
    // memory signals
    wire [6:0]                    int_input_r_address0;
    wire                          int_input_r_ce0;
    wire [31:0]                   int_input_r_q0;
    wire [6:0]                    int_input_r_address1;
    wire                          int_input_r_ce1;
    wire                          int_input_r_we1;
    wire [3:0]                    int_input_r_be1;
    wire [31:0]                   int_input_r_d1;
    wire [31:0]                   int_input_r_q1;
    reg                           int_input_r_read;
    reg                           int_input_r_write;

//------------------------Instantiation------------------
// int_input_r
runLayer_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 128 )
) int_input_r (
    .clk0      ( ACLK ),
    .address0  ( int_input_r_address0 ),
    .ce0       ( int_input_r_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_input_r_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_input_r_address1 ),
    .ce1       ( int_input_r_ce1 ),
    .we1       ( int_input_r_be1 ),
    .d1        ( int_input_r_d1 ),
    .q1        ( int_input_r_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_input_r_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_OUTPUT_R_I_DATA_0: begin
                    rdata <= int_output_r_i[31:0];
                end
                ADDR_OUTPUT_R_O_DATA_0: begin
                    rdata <= int_output_r_o[31:0];
                end
                ADDR_OUTPUT_R_O_CTRL: begin
                    rdata[0] <= int_output_r_o_ap_vld;
                end
                ADDR_BIAS_DATA_0: begin
                    rdata <= int_bias[31:0];
                end
                ADDR_NUMOFINNEURONS_DATA_0: begin
                    rdata <= int_numOfInNeurons[15:0];
                end
                ADDR_WEIGHTS_DATA_0: begin
                    rdata <= int_weights[31:0];
                end
            endcase
        end
        else if (int_input_r_read) begin
            rdata <= int_input_r_q1;
        end
    end
end


//------------------------Register logic-----------------
assign output_r_i     = int_output_r_i;
assign bias           = int_bias;
assign numOfInNeurons = int_numOfInNeurons;
assign weights        = int_weights;
// int_output_r_i[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r_i[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_R_I_DATA_0)
            int_output_r_i[31:0] <= (WDATA[31:0] & wmask) | (int_output_r_i[31:0] & ~wmask);
    end
end

// int_output_r_o
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r_o <= 0;
    else if (ACLK_EN) begin
        if (output_r_o_ap_vld)
            int_output_r_o <= output_r_o;
    end
end

// int_output_r_o_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r_o_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_r_o_ap_vld)
            int_output_r_o_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_R_O_CTRL)
            int_output_r_o_ap_vld <= 1'b0; // clear on read
    end
end

// int_bias[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bias[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BIAS_DATA_0)
            int_bias[31:0] <= (WDATA[31:0] & wmask) | (int_bias[31:0] & ~wmask);
    end
end

// int_numOfInNeurons[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_numOfInNeurons[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NUMOFINNEURONS_DATA_0)
            int_numOfInNeurons[15:0] <= (WDATA[31:0] & wmask) | (int_numOfInNeurons[15:0] & ~wmask);
    end
end

// int_weights[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_weights[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WEIGHTS_DATA_0)
            int_weights[31:0] <= (WDATA[31:0] & wmask) | (int_weights[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// input_r
assign int_input_r_address0 = input_r_address0;
assign int_input_r_ce0      = input_r_ce0;
assign input_r_q0           = int_input_r_q0;
assign int_input_r_address1 = ar_hs? raddr[8:2] : waddr[8:2];
assign int_input_r_ce1      = ar_hs | (int_input_r_write & WVALID);
assign int_input_r_we1      = int_input_r_write & w_hs;
assign int_input_r_be1      = int_input_r_we1 ? WSTRB : 'b0;
assign int_input_r_d1       = WDATA;
// int_input_r_read
always @(posedge ACLK) begin
    if (ARESET)
        int_input_r_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_INPUT_R_BASE && raddr <= ADDR_INPUT_R_HIGH)
            int_input_r_read <= 1'b1;
        else
            int_input_r_read <= 1'b0;
    end
end

// int_input_r_write
always @(posedge ACLK) begin
    if (ARESET)
        int_input_r_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_INPUT_R_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_INPUT_R_HIGH)
            int_input_r_write <= 1'b1;
        else if (w_hs)
            int_input_r_write <= 1'b0;
    end
end


endmodule


`timescale 1ns/1ps

module runLayer_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

