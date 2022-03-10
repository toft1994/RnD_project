// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module NNLayer_NNLayer_Pipeline_VITIS_LOOP_32_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_load,
        numOfInNeurons_cast,
        weightIndexAdded_cast,
        weights_address0,
        weights_ce0,
        weights_q0,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        conv1514_out,
        conv1514_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] output_r_load;
input  [15:0] numOfInNeurons_cast;
input  [14:0] weightIndexAdded_cast;
output  [14:0] weights_address0;
output   weights_ce0;
input  [15:0] weights_q0;
output  [6:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [15:0] conv1514_out;
output   conv1514_out_ap_vld;

reg ap_idle;
reg weights_ce0;
reg input_r_ce0;
reg conv1514_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln32_fu_136_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln32_reg_208;
reg   [0:0] icmp_ln32_reg_208_pp0_iter1_reg;
reg   [0:0] icmp_ln32_reg_208_pp0_iter2_reg;
wire   [63:0] zext_ln34_fu_158_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_1_fu_163_p1;
reg   [15:0] inNeurons_fu_56;
wire   [15:0] inNeurons_2_fu_142_p2;
wire    ap_loop_init;
reg   [15:0] ap_sig_allocacmp_inNeurons_1;
reg   [15:0] conv1514_fu_60;
wire   [15:0] grp_fu_184_p3;
reg   [15:0] ap_sig_allocacmp_conv1514_load;
wire    ap_block_pp0_stage0_01001;
wire  signed [15:0] sext_ln32_fu_132_p0;
wire  signed [16:0] sext_ln32_fu_132_p1;
wire   [16:0] numOfInNeurons_cast_cast_fu_115_p1;
wire  signed [15:0] inNeurons_2_fu_142_p0;
wire  signed [15:0] trunc_ln32_fu_148_p0;
wire   [14:0] trunc_ln32_fu_148_p1;
wire   [14:0] add_ln34_fu_152_p2;
wire  signed [15:0] zext_ln34_1_fu_163_p0;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

NNLayer_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(input_r_q0),
    .din1(weights_q0),
    .din2(ap_sig_allocacmp_conv1514_load),
    .ce(1'b1),
    .dout(grp_fu_184_p3)
);

NNLayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            conv1514_fu_60 <= output_r_load;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            conv1514_fu_60 <= grp_fu_184_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln32_fu_136_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            inNeurons_fu_56 <= inNeurons_2_fu_142_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            inNeurons_fu_56 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln32_reg_208 <= icmp_ln32_fu_136_p2;
        icmp_ln32_reg_208_pp0_iter1_reg <= icmp_ln32_reg_208;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln32_reg_208_pp0_iter2_reg <= icmp_ln32_reg_208_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((icmp_ln32_fu_136_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ap_sig_allocacmp_conv1514_load = grp_fu_184_p3;
    end else begin
        ap_sig_allocacmp_conv1514_load = conv1514_fu_60;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_inNeurons_1 = 16'd0;
    end else begin
        ap_sig_allocacmp_inNeurons_1 = inNeurons_fu_56;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_208_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        conv1514_out_ap_vld = 1'b1;
    end else begin
        conv1514_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights_ce0 = 1'b1;
    end else begin
        weights_ce0 = 1'b0;
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

assign add_ln34_fu_152_p2 = (trunc_ln32_fu_148_p1 + weightIndexAdded_cast);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign conv1514_out = conv1514_fu_60;

assign icmp_ln32_fu_136_p2 = (($signed(sext_ln32_fu_132_p1) < $signed(numOfInNeurons_cast_cast_fu_115_p1)) ? 1'b1 : 1'b0);

assign inNeurons_2_fu_142_p0 = ap_sig_allocacmp_inNeurons_1;

assign inNeurons_2_fu_142_p2 = ($signed(inNeurons_2_fu_142_p0) + $signed(16'd1));

assign input_r_address0 = zext_ln34_1_fu_163_p1;

assign numOfInNeurons_cast_cast_fu_115_p1 = numOfInNeurons_cast;

assign sext_ln32_fu_132_p0 = ap_sig_allocacmp_inNeurons_1;

assign sext_ln32_fu_132_p1 = sext_ln32_fu_132_p0;

assign trunc_ln32_fu_148_p0 = ap_sig_allocacmp_inNeurons_1;

assign trunc_ln32_fu_148_p1 = trunc_ln32_fu_148_p0[14:0];

assign weights_address0 = zext_ln34_fu_158_p1;

assign zext_ln34_1_fu_163_p0 = ap_sig_allocacmp_inNeurons_1;

assign zext_ln34_1_fu_163_p1 = $unsigned(zext_ln34_1_fu_163_p0);

assign zext_ln34_fu_158_p1 = add_ln34_fu_152_p2;

endmodule //NNLayer_NNLayer_Pipeline_VITIS_LOOP_32_2
