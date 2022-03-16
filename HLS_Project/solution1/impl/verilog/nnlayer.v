// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="nnlayer_nnlayer,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.585000,HLS_SYN_LAT=68099,HLS_SYN_TPT=none,HLS_SYN_MEM=67,HLS_SYN_DSP=0,HLS_SYN_FF=708,HLS_SYN_LUT=6771,HLS_VERSION=2021_2}" *)

module nnlayer (
        ap_local_block,
        ap_clk,
        ap_rst_n,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 18;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

output   ap_local_block;
input   ap_clk;
input   ap_rst_n;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

wire   [0:0] ap_local_deadlock;
 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [15:0] input_r_q0;
reg   [7:0] output_r_address0;
reg    output_r_ce0;
reg    output_r_we0;
reg   [15:0] output_r_d0;
wire   [15:0] output_r_q0;
wire   [15:0] weights_q0;
wire   [7:0] bias_address0;
reg    bias_ce0;
wire   [15:0] bias_q0;
wire   [15:0] numOfInNeurons;
wire   [15:0] numOfOutNeurons;
wire   [7:0] activation;
reg   [7:0] activation_read_reg_226;
reg   [15:0] numOfInNeurons_read_reg_231;
wire   [63:0] zext_ln35_fu_179_p1;
reg   [63:0] zext_ln35_reg_245;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln33_fu_167_p2;
wire   [0:0] icmp_ln46_fu_189_p2;
reg   [0:0] icmp_ln46_reg_255;
reg   [15:0] conv1684_load_reg_259;
wire    ap_CS_fsm_state3;
reg   [15:0] bias_load_reg_264;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_done;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_idle;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_ready;
wire   [7:0] grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_address0;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_ce0;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_we0;
wire   [15:0] grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_d0;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_done;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_idle;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_ready;
wire   [15:0] grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_weights_address0;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_weights_ce0;
wire   [7:0] grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_input_r_address0;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_input_r_ce0;
wire   [15:0] grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_lhs_out;
wire    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_lhs_out_ap_vld;
reg    grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [8:0] inc177682_fu_86;
wire   [8:0] add_ln33_fu_173_p2;
reg   [15:0] conv1684_fu_90;
wire   [15:0] add_ln41_fu_198_p2;
reg    ap_block_state6_on_subcall_done;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start_reg = 1'b0;
#0 grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start_reg = 1'b0;
end

nnlayer_nnlayer_Pipeline_VITIS_LOOP_10_1 grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start),
    .ap_done(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_done),
    .ap_idle(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_idle),
    .ap_ready(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_ready),
    .output_r_address0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_address0),
    .output_r_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_ce0),
    .output_r_we0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_we0),
    .output_r_d0(grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_d0),
    .output_r_q0(output_r_q0)
);

nnlayer_nnlayer_Pipeline_VITIS_LOOP_36_2 grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start),
    .ap_done(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_done),
    .ap_idle(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_idle),
    .ap_ready(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_ready),
    .bias_load(bias_load_reg_264),
    .conv1684(conv1684_load_reg_259),
    .weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_weights_address0),
    .weights_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_weights_ce0),
    .weights_q0(weights_q0),
    .input_r_address0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_input_r_address0),
    .input_r_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_input_r_ce0),
    .input_r_q0(input_r_q0),
    .lhs_out(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_lhs_out),
    .lhs_out_ap_vld(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_lhs_out_ap_vld)
);

nnlayer_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .numOfInNeurons(numOfInNeurons),
    .numOfOutNeurons(numOfOutNeurons),
    .activation(activation),
    .input_r_address0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_input_r_address0),
    .input_r_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_input_r_ce0),
    .input_r_q0(input_r_q0),
    .output_r_address0(output_r_address0),
    .output_r_ce0(output_r_ce0),
    .output_r_we0(output_r_we0),
    .output_r_d0(output_r_d0),
    .output_r_q0(output_r_q0),
    .bias_address0(bias_address0),
    .bias_ce0(bias_ce0),
    .bias_q0(bias_q0),
    .weights_address0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_weights_address0),
    .weights_ce0(grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_weights_ce0),
    .weights_q0(weights_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_local_deadlock(ap_local_deadlock)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln46_fu_189_p2 == 1'd1) & (icmp_ln33_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_ready == 1'b1)) begin
            grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_ready == 1'b1)) begin
            grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        conv1684_fu_90 <= 16'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        conv1684_fu_90 <= add_ln41_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        inc177682_fu_86 <= 9'd0;
    end else if (((icmp_ln33_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        inc177682_fu_86 <= add_ln33_fu_173_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        activation_read_reg_226 <= activation;
        numOfInNeurons_read_reg_231 <= numOfInNeurons;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bias_load_reg_264 <= bias_q0;
        conv1684_load_reg_259 <= conv1684_fu_90;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln33_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln46_reg_255 <= icmp_ln46_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln33_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln35_reg_245[8 : 0] <= zext_ln35_fu_179_p1[8 : 0];
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state6_on_subcall_done)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bias_ce0 = 1'b1;
    end else begin
        bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_r_address0 = zext_ln35_reg_245;
    end else if (((icmp_ln46_reg_255 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        output_r_address0 = grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_address0;
    end else begin
        output_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_r_ce0 = 1'b1;
    end else if (((icmp_ln46_reg_255 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        output_r_ce0 = grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_ce0;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_r_d0 = grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_lhs_out;
    end else if (((icmp_ln46_reg_255 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        output_r_d0 = grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_d0;
    end else begin
        output_r_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_r_we0 = 1'b1;
    end else if (((icmp_ln46_reg_255 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        output_r_we0 = grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_output_r_we0;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln33_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln33_fu_173_p2 = (inc177682_fu_86 + 9'd1);

assign add_ln41_fu_198_p2 = (conv1684_fu_90 + numOfInNeurons_read_reg_231);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state6_on_subcall_done = ((grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_done == 1'b0) & (icmp_ln46_reg_255 == 1'd1));
end

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'd0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign bias_address0 = zext_ln35_fu_179_p1;

assign grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start = grp_nnlayer_Pipeline_VITIS_LOOP_10_1_fu_136_ap_start_reg;

assign grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start = grp_nnlayer_Pipeline_VITIS_LOOP_36_2_fu_142_ap_start_reg;

assign icmp_ln33_fu_167_p2 = ((inc177682_fu_86 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln46_fu_189_p2 = ((activation_read_reg_226 == 8'd1) ? 1'b1 : 1'b0);

assign zext_ln35_fu_179_p1 = inc177682_fu_86;

always @ (posedge ap_clk) begin
    zext_ln35_reg_245[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //nnlayer
