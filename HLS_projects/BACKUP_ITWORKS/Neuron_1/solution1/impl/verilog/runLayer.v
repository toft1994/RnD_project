// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="runLayer_runLayer,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=529,HLS_SYN_LUT=633,HLS_VERSION=2021_2}" *)

module runLayer (
        ap_local_block,
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
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
        s_axi_control_BRESP
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 10;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

output   ap_local_block;
input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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

reg ap_done;
reg ap_idle;
reg ap_ready;

wire   [0:0] ap_local_deadlock;
 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] input_r_q0;
wire   [31:0] output_r_i;
reg   [31:0] output_r_o;
reg    output_r_o_ap_vld;
wire   [31:0] weights;
wire   [31:0] bias;
wire   [15:0] numOfInNeurons;
reg   [15:0] numOfInNeurons_read_reg_126;
reg   [31:0] bias_read_reg_140;
reg   [31:0] weights_read_reg_145;
reg   [31:0] output_r_read_reg_150;
wire   [0:0] icmp_ln14_fu_110_p2;
wire    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start;
wire    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_done;
wire    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_idle;
wire    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_ready;
wire   [6:0] grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_input_r_address0;
wire    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_input_r_ce0;
wire   [31:0] grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_add107_0_out;
wire    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_add107_0_out_ap_vld;
reg    grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire   [31:0] add_ln18_fu_120_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start_reg = 1'b0;
end

runLayer_runLayer_Pipeline_VITIS_LOOP_14_2 grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start),
    .ap_done(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_done),
    .ap_idle(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_idle),
    .ap_ready(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_ready),
    .output_r_load(output_r_read_reg_150),
    .zext_ln14(numOfInNeurons_read_reg_126),
    .input_r_address0(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_input_r_address0),
    .input_r_ce0(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_input_r_ce0),
    .input_r_q0(input_r_q0),
    .weights_load(weights_read_reg_145),
    .add107_0_out(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_add107_0_out),
    .add107_0_out_ap_vld(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_add107_0_out_ap_vld)
);

runLayer_control_s_axi #(
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
    .output_r_o(output_r_o),
    .output_r_o_ap_vld(output_r_o_ap_vld),
    .output_r_i(output_r_i),
    .bias(bias),
    .numOfInNeurons(numOfInNeurons),
    .input_r_address0(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_input_r_address0),
    .input_r_ce0(grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_input_r_ce0),
    .input_r_q0(input_r_q0),
    .weights(weights),
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
        grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln14_fu_110_p2 == 1'd0) & (ap_start == 1'b1))) begin
            grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start_reg <= 1'b1;
        end else if ((grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_ready == 1'b1)) begin
            grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        bias_read_reg_140 <= bias;
        numOfInNeurons_read_reg_126 <= numOfInNeurons;
        weights_read_reg_145 <= weights;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln14_fu_110_p2 == 1'd0))) begin
        output_r_read_reg_150 <= output_r_i;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_r_o = add_ln18_fu_120_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_r_o = grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_add107_0_out;
    end else begin
        output_r_o = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        output_r_o_ap_vld = 1'b1;
    end else begin
        output_r_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln14_fu_110_p2 == 1'd1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln14_fu_110_p2 == 1'd0) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln18_fu_120_p2 = (output_r_i + bias_read_reg_140);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'd0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start = grp_runLayer_Pipeline_VITIS_LOOP_14_2_fu_97_ap_start_reg;

assign icmp_ln14_fu_110_p2 = ((numOfInNeurons == 16'd0) ? 1'b1 : 1'b0);

endmodule //runLayer
