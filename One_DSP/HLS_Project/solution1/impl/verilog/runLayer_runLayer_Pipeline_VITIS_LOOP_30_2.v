// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module runLayer_runLayer_Pipeline_VITIS_LOOP_30_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_Inputs_AWVALID,
        m_axi_Inputs_AWREADY,
        m_axi_Inputs_AWADDR,
        m_axi_Inputs_AWID,
        m_axi_Inputs_AWLEN,
        m_axi_Inputs_AWSIZE,
        m_axi_Inputs_AWBURST,
        m_axi_Inputs_AWLOCK,
        m_axi_Inputs_AWCACHE,
        m_axi_Inputs_AWPROT,
        m_axi_Inputs_AWQOS,
        m_axi_Inputs_AWREGION,
        m_axi_Inputs_AWUSER,
        m_axi_Inputs_WVALID,
        m_axi_Inputs_WREADY,
        m_axi_Inputs_WDATA,
        m_axi_Inputs_WSTRB,
        m_axi_Inputs_WLAST,
        m_axi_Inputs_WID,
        m_axi_Inputs_WUSER,
        m_axi_Inputs_ARVALID,
        m_axi_Inputs_ARREADY,
        m_axi_Inputs_ARADDR,
        m_axi_Inputs_ARID,
        m_axi_Inputs_ARLEN,
        m_axi_Inputs_ARSIZE,
        m_axi_Inputs_ARBURST,
        m_axi_Inputs_ARLOCK,
        m_axi_Inputs_ARCACHE,
        m_axi_Inputs_ARPROT,
        m_axi_Inputs_ARQOS,
        m_axi_Inputs_ARREGION,
        m_axi_Inputs_ARUSER,
        m_axi_Inputs_RVALID,
        m_axi_Inputs_RREADY,
        m_axi_Inputs_RDATA,
        m_axi_Inputs_RLAST,
        m_axi_Inputs_RID,
        m_axi_Inputs_RFIFONUM,
        m_axi_Inputs_RUSER,
        m_axi_Inputs_RRESP,
        m_axi_Inputs_BVALID,
        m_axi_Inputs_BREADY,
        m_axi_Inputs_BRESP,
        m_axi_Inputs_BID,
        m_axi_Inputs_BUSER,
        sext_ln30,
        numOfInNeurons_cast1,
        tmp_weights_address0,
        tmp_weights_ce0,
        tmp_weights_q0,
        conv4,
        tmp_out,
        tmp_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_Inputs_AWVALID;
input   m_axi_Inputs_AWREADY;
output  [63:0] m_axi_Inputs_AWADDR;
output  [0:0] m_axi_Inputs_AWID;
output  [31:0] m_axi_Inputs_AWLEN;
output  [2:0] m_axi_Inputs_AWSIZE;
output  [1:0] m_axi_Inputs_AWBURST;
output  [1:0] m_axi_Inputs_AWLOCK;
output  [3:0] m_axi_Inputs_AWCACHE;
output  [2:0] m_axi_Inputs_AWPROT;
output  [3:0] m_axi_Inputs_AWQOS;
output  [3:0] m_axi_Inputs_AWREGION;
output  [0:0] m_axi_Inputs_AWUSER;
output   m_axi_Inputs_WVALID;
input   m_axi_Inputs_WREADY;
output  [15:0] m_axi_Inputs_WDATA;
output  [1:0] m_axi_Inputs_WSTRB;
output   m_axi_Inputs_WLAST;
output  [0:0] m_axi_Inputs_WID;
output  [0:0] m_axi_Inputs_WUSER;
output   m_axi_Inputs_ARVALID;
input   m_axi_Inputs_ARREADY;
output  [63:0] m_axi_Inputs_ARADDR;
output  [0:0] m_axi_Inputs_ARID;
output  [31:0] m_axi_Inputs_ARLEN;
output  [2:0] m_axi_Inputs_ARSIZE;
output  [1:0] m_axi_Inputs_ARBURST;
output  [1:0] m_axi_Inputs_ARLOCK;
output  [3:0] m_axi_Inputs_ARCACHE;
output  [2:0] m_axi_Inputs_ARPROT;
output  [3:0] m_axi_Inputs_ARQOS;
output  [3:0] m_axi_Inputs_ARREGION;
output  [0:0] m_axi_Inputs_ARUSER;
input   m_axi_Inputs_RVALID;
output   m_axi_Inputs_RREADY;
input  [15:0] m_axi_Inputs_RDATA;
input   m_axi_Inputs_RLAST;
input  [0:0] m_axi_Inputs_RID;
input  [9:0] m_axi_Inputs_RFIFONUM;
input  [0:0] m_axi_Inputs_RUSER;
input  [1:0] m_axi_Inputs_RRESP;
input   m_axi_Inputs_BVALID;
output   m_axi_Inputs_BREADY;
input  [1:0] m_axi_Inputs_BRESP;
input  [0:0] m_axi_Inputs_BID;
input  [0:0] m_axi_Inputs_BUSER;
input  [62:0] sext_ln30;
input  [15:0] numOfInNeurons_cast1;
output  [6:0] tmp_weights_address0;
output   tmp_weights_ce0;
input  [15:0] tmp_weights_q0;
input  [15:0] conv4;
output  [15:0] tmp_out;
output   tmp_out_ap_vld;

reg ap_idle;
reg m_axi_Inputs_ARVALID;
reg m_axi_Inputs_RREADY;
reg tmp_weights_ce0;
reg tmp_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] icmp_ln30_reg_240;
reg   [0:0] first_itr_reg_123;
reg    ap_predicate_op41_readreq_state2;
reg    ap_block_state2_io;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
reg   [0:0] icmp_ln30_reg_240_pp0_iter7_reg;
reg    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln30_fu_164_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    Inputs_blk_n_R;
wire    ap_block_pp0_stage0;
reg    Inputs_blk_n_AR;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] conv4_cast_fu_135_p1;
reg   [31:0] conv4_cast_reg_225;
wire  signed [63:0] sext_ln30_cast_fu_143_p1;
reg  signed [63:0] sext_ln30_cast_reg_230;
reg  signed [15:0] inNeurons_1_reg_235;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter1_reg;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter2_reg;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter3_reg;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter4_reg;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter5_reg;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter6_reg;
reg  signed [15:0] inNeurons_1_reg_235_pp0_iter7_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter1_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter2_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter3_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter4_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter5_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter6_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter8_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter9_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter10_reg;
reg   [0:0] icmp_ln30_reg_240_pp0_iter11_reg;
reg  signed [15:0] Inputs_addr_read_reg_255;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_init;
wire   [63:0] zext_ln32_fu_187_p1;
reg   [15:0] tmp_fu_66;
wire   [15:0] grp_fu_202_p3;
reg   [15:0] ap_sig_allocacmp_tmp_load;
reg   [15:0] inNeurons_fu_70;
wire   [15:0] inNeurons_2_fu_170_p2;
reg   [15:0] ap_sig_allocacmp_inNeurons_1;
reg    ap_block_pp0_stage0_01001;
wire  signed [15:0] sext_ln30_1_fu_160_p0;
wire  signed [16:0] sext_ln30_1_fu_160_p1;
wire   [16:0] numOfInNeurons_cast1_cast_fu_139_p1;
wire  signed [15:0] inNeurons_2_fu_170_p0;
reg    grp_fu_202_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_402;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_done_reg = 1'b0;
end

runLayer_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_weights_q0),
    .din1(Inputs_addr_read_reg_255),
    .din2(ap_sig_allocacmp_tmp_load),
    .ce(grp_fu_202_ce),
    .dout(grp_fu_202_p3)
);

runLayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter11_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            first_itr_reg_123 <= 1'd1;
        end else if ((1'b1 == ap_condition_402)) begin
            first_itr_reg_123 <= 1'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_fu_164_p2 == 1'd1))) begin
            inNeurons_fu_70 <= inNeurons_2_fu_170_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            inNeurons_fu_70 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            tmp_fu_66 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter12 == 1'b1) & (icmp_ln30_reg_240_pp0_iter11_reg == 1'd1))) begin
            tmp_fu_66 <= grp_fu_202_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln30_reg_240_pp0_iter7_reg == 1'd1))) begin
        Inputs_addr_read_reg_255 <= m_axi_Inputs_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln30_reg_240_pp0_iter10_reg <= icmp_ln30_reg_240_pp0_iter9_reg;
        icmp_ln30_reg_240_pp0_iter11_reg <= icmp_ln30_reg_240_pp0_iter10_reg;
        icmp_ln30_reg_240_pp0_iter2_reg <= icmp_ln30_reg_240_pp0_iter1_reg;
        icmp_ln30_reg_240_pp0_iter3_reg <= icmp_ln30_reg_240_pp0_iter2_reg;
        icmp_ln30_reg_240_pp0_iter4_reg <= icmp_ln30_reg_240_pp0_iter3_reg;
        icmp_ln30_reg_240_pp0_iter5_reg <= icmp_ln30_reg_240_pp0_iter4_reg;
        icmp_ln30_reg_240_pp0_iter6_reg <= icmp_ln30_reg_240_pp0_iter5_reg;
        icmp_ln30_reg_240_pp0_iter7_reg <= icmp_ln30_reg_240_pp0_iter6_reg;
        icmp_ln30_reg_240_pp0_iter8_reg <= icmp_ln30_reg_240_pp0_iter7_reg;
        icmp_ln30_reg_240_pp0_iter9_reg <= icmp_ln30_reg_240_pp0_iter8_reg;
        inNeurons_1_reg_235_pp0_iter2_reg <= inNeurons_1_reg_235_pp0_iter1_reg;
        inNeurons_1_reg_235_pp0_iter3_reg <= inNeurons_1_reg_235_pp0_iter2_reg;
        inNeurons_1_reg_235_pp0_iter4_reg <= inNeurons_1_reg_235_pp0_iter3_reg;
        inNeurons_1_reg_235_pp0_iter5_reg <= inNeurons_1_reg_235_pp0_iter4_reg;
        inNeurons_1_reg_235_pp0_iter6_reg <= inNeurons_1_reg_235_pp0_iter5_reg;
        inNeurons_1_reg_235_pp0_iter7_reg <= inNeurons_1_reg_235_pp0_iter6_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        conv4_cast_reg_225[15 : 0] <= conv4_cast_fu_135_p1[15 : 0];
        icmp_ln30_reg_240 <= icmp_ln30_fu_164_p2;
        icmp_ln30_reg_240_pp0_iter1_reg <= icmp_ln30_reg_240;
        inNeurons_1_reg_235 <= ap_sig_allocacmp_inNeurons_1;
        inNeurons_1_reg_235_pp0_iter1_reg <= inNeurons_1_reg_235;
        sext_ln30_cast_reg_230 <= sext_ln30_cast_fu_143_p1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op41_readreq_state2 == 1'b1))) begin
        Inputs_blk_n_AR = m_axi_Inputs_ARREADY;
    end else begin
        Inputs_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln30_reg_240_pp0_iter7_reg == 1'd1))) begin
        Inputs_blk_n_R = m_axi_Inputs_RVALID;
    end else begin
        Inputs_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln30_fu_164_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln30_reg_240 == 1'd0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter11_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_inNeurons_1 = 16'd0;
    end else begin
        ap_sig_allocacmp_inNeurons_1 = inNeurons_fu_70;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (icmp_ln30_reg_240_pp0_iter11_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tmp_load = grp_fu_202_p3;
    end else begin
        ap_sig_allocacmp_tmp_load = tmp_fu_66;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_202_ce = 1'b1;
    end else begin
        grp_fu_202_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op41_readreq_state2 == 1'b1))) begin
        m_axi_Inputs_ARVALID = 1'b1;
    end else begin
        m_axi_Inputs_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln30_reg_240_pp0_iter7_reg == 1'd1))) begin
        m_axi_Inputs_RREADY = 1'b1;
    end else begin
        m_axi_Inputs_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln30_reg_240_pp0_iter10_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_out_ap_vld = 1'b1;
    end else begin
        tmp_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_weights_ce0 = 1'b1;
    end else begin
        tmp_weights_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln30_reg_240_pp0_iter7_reg == 1'd1) & (m_axi_Inputs_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln30_reg_240_pp0_iter7_reg == 1'd1) & (m_axi_Inputs_RVALID == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln30_reg_240_pp0_iter7_reg == 1'd1) & (m_axi_Inputs_RVALID == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_io = ((m_axi_Inputs_ARREADY == 1'b0) & (ap_predicate_op41_readreq_state2 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp0_stage0_iter8 = ((icmp_ln30_reg_240_pp0_iter7_reg == 1'd1) & (m_axi_Inputs_RVALID == 1'b0));
end

always @ (*) begin
    ap_condition_402 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln30_reg_240 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op41_readreq_state2 = ((first_itr_reg_123 == 1'd1) & (icmp_ln30_reg_240 == 1'd1));
end

assign conv4_cast_fu_135_p1 = conv4;

assign icmp_ln30_fu_164_p2 = (($signed(sext_ln30_1_fu_160_p1) < $signed(numOfInNeurons_cast1_cast_fu_139_p1)) ? 1'b1 : 1'b0);

assign inNeurons_2_fu_170_p0 = ap_sig_allocacmp_inNeurons_1;

assign inNeurons_2_fu_170_p2 = ($signed(inNeurons_2_fu_170_p0) + $signed(16'd1));

assign m_axi_Inputs_ARADDR = sext_ln30_cast_reg_230;

assign m_axi_Inputs_ARBURST = 2'd0;

assign m_axi_Inputs_ARCACHE = 4'd0;

assign m_axi_Inputs_ARID = 1'd0;

assign m_axi_Inputs_ARLEN = conv4_cast_reg_225;

assign m_axi_Inputs_ARLOCK = 2'd0;

assign m_axi_Inputs_ARPROT = 3'd0;

assign m_axi_Inputs_ARQOS = 4'd0;

assign m_axi_Inputs_ARREGION = 4'd0;

assign m_axi_Inputs_ARSIZE = 3'd0;

assign m_axi_Inputs_ARUSER = 1'd0;

assign m_axi_Inputs_AWADDR = 64'd0;

assign m_axi_Inputs_AWBURST = 2'd0;

assign m_axi_Inputs_AWCACHE = 4'd0;

assign m_axi_Inputs_AWID = 1'd0;

assign m_axi_Inputs_AWLEN = 32'd0;

assign m_axi_Inputs_AWLOCK = 2'd0;

assign m_axi_Inputs_AWPROT = 3'd0;

assign m_axi_Inputs_AWQOS = 4'd0;

assign m_axi_Inputs_AWREGION = 4'd0;

assign m_axi_Inputs_AWSIZE = 3'd0;

assign m_axi_Inputs_AWUSER = 1'd0;

assign m_axi_Inputs_AWVALID = 1'b0;

assign m_axi_Inputs_BREADY = 1'b0;

assign m_axi_Inputs_WDATA = 16'd0;

assign m_axi_Inputs_WID = 1'd0;

assign m_axi_Inputs_WLAST = 1'b0;

assign m_axi_Inputs_WSTRB = 2'd0;

assign m_axi_Inputs_WUSER = 1'd0;

assign m_axi_Inputs_WVALID = 1'b0;

assign numOfInNeurons_cast1_cast_fu_139_p1 = numOfInNeurons_cast1;

assign sext_ln30_1_fu_160_p0 = ap_sig_allocacmp_inNeurons_1;

assign sext_ln30_1_fu_160_p1 = sext_ln30_1_fu_160_p0;

assign sext_ln30_cast_fu_143_p1 = $signed(sext_ln30);

assign tmp_out = tmp_fu_66;

assign tmp_weights_address0 = zext_ln32_fu_187_p1;

assign zext_ln32_fu_187_p1 = $unsigned(inNeurons_1_reg_235_pp0_iter7_reg);

always @ (posedge ap_clk) begin
    conv4_cast_reg_225[31:16] <= 16'b0000000000000000;
end

endmodule //runLayer_runLayer_Pipeline_VITIS_LOOP_30_2