// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module nnlayer_nnlayer_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_45_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        numOfInNeurons,
        weights_V_address0,
        weights_V_ce0,
        weights_V_q0,
        weights_V_address1,
        weights_V_ce1,
        weights_V_q1,
        input_V_address0,
        input_V_ce0,
        input_V_q0,
        input_V_address1,
        input_V_ce1,
        input_V_q1,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        output_V_address1,
        output_V_ce1,
        output_V_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] numOfInNeurons;
output  [15:0] weights_V_address0;
output   weights_V_ce0;
input  [15:0] weights_V_q0;
output  [15:0] weights_V_address1;
output   weights_V_ce1;
input  [15:0] weights_V_q1;
output  [7:0] input_V_address0;
output   input_V_ce0;
input  [15:0] input_V_q0;
output  [7:0] input_V_address1;
output   input_V_ce1;
input  [15:0] input_V_q1;
output  [7:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;
output  [7:0] output_V_address1;
output   output_V_ce1;
input  [15:0] output_V_q1;

reg ap_idle;
reg weights_V_ce0;
reg weights_V_ce1;
reg input_V_ce0;
reg input_V_ce1;
reg output_V_ce0;
reg output_V_we0;
reg output_V_ce1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln43_fu_198_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln43_reg_402;
reg   [0:0] icmp_ln43_reg_402_pp0_iter2_reg;
reg   [0:0] icmp_ln43_reg_402_pp0_iter3_reg;
reg   [0:0] icmp_ln43_reg_402_pp0_iter4_reg;
wire   [0:0] icmp_ln45_fu_213_p2;
reg   [0:0] icmp_ln45_reg_406;
reg   [0:0] icmp_ln45_reg_406_pp0_iter2_reg;
reg   [0:0] icmp_ln45_reg_406_pp0_iter3_reg;
reg   [0:0] icmp_ln45_reg_406_pp0_iter4_reg;
reg   [7:0] output_V_addr_reg_421;
reg   [7:0] output_V_addr_reg_421_pp0_iter2_reg;
reg   [7:0] output_V_addr_reg_421_pp0_iter3_reg;
reg   [7:0] output_V_addr_reg_421_pp0_iter4_reg;
reg   [15:0] lhs_reg_447;
wire   [63:0] idxprom_fu_183_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] idxprom5_fu_188_p1;
wire   [63:0] idxprom_mid1_fu_243_p1;
wire   [63:0] idxprom5_mid1_fu_248_p1;
wire   [63:0] zext_ln48_fu_269_p1;
reg   [8:0] inc159168_fu_56;
wire   [8:0] add_ln45_fu_274_p2;
wire    ap_loop_init;
reg   [8:0] inc13160175_fu_60;
wire   [8:0] select_ln43_3_fu_261_p3;
reg   [15:0] conv12181_fu_64;
wire   [15:0] select_ln43_2_fu_253_p3;
reg   [16:0] indvar_flatten_fu_68;
wire   [16:0] add_ln43_fu_204_p2;
wire   [15:0] zext_ln43_fu_173_p1;
wire   [15:0] add_fu_177_p2;
wire   [8:0] add_ln43_1_fu_227_p2;
wire   [15:0] zext_ln43_1_fu_233_p1;
wire   [15:0] add_ln50_fu_193_p2;
wire   [15:0] add_mid1_fu_237_p2;
wire   [8:0] select_ln43_fu_219_p3;
wire  signed [23:0] grp_fu_352_p2;
wire  signed [23:0] grp_fu_345_p2;
wire   [23:0] lhs_1_fu_321_p3;
wire   [23:0] select_ln43_1_fu_316_p3;
wire   [23:0] ret_V_fu_328_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
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
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

nnlayer_mul_mul_16s_16s_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 24 ))
mul_mul_16s_16s_24_4_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(input_V_q1),
    .din1(weights_V_q1),
    .ce(1'b1),
    .dout(grp_fu_345_p2)
);

nnlayer_mul_mul_16s_16s_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 24 ))
mul_mul_16s_16s_24_4_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(input_V_q0),
    .din1(weights_V_q0),
    .ce(1'b1),
    .dout(grp_fu_352_p2)
);

nnlayer_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            conv12181_fu_64 <= 16'd0;
        end else if (((icmp_ln43_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            conv12181_fu_64 <= select_ln43_2_fu_253_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            inc13160175_fu_60 <= 9'd0;
        end else if (((icmp_ln43_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            inc13160175_fu_60 <= select_ln43_3_fu_261_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            inc159168_fu_56 <= 9'd0;
        end else if (((icmp_ln43_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            inc159168_fu_56 <= add_ln45_fu_274_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_68 <= 17'd0;
        end else if (((icmp_ln43_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten_fu_68 <= add_ln43_fu_204_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln43_reg_402 <= icmp_ln43_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln43_reg_402_pp0_iter2_reg <= icmp_ln43_reg_402;
        icmp_ln43_reg_402_pp0_iter3_reg <= icmp_ln43_reg_402_pp0_iter2_reg;
        icmp_ln43_reg_402_pp0_iter4_reg <= icmp_ln43_reg_402_pp0_iter3_reg;
        icmp_ln45_reg_406_pp0_iter2_reg <= icmp_ln45_reg_406;
        icmp_ln45_reg_406_pp0_iter3_reg <= icmp_ln45_reg_406_pp0_iter2_reg;
        icmp_ln45_reg_406_pp0_iter4_reg <= icmp_ln45_reg_406_pp0_iter3_reg;
        output_V_addr_reg_421_pp0_iter2_reg <= output_V_addr_reg_421;
        output_V_addr_reg_421_pp0_iter3_reg <= output_V_addr_reg_421_pp0_iter2_reg;
        output_V_addr_reg_421_pp0_iter4_reg <= output_V_addr_reg_421_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_fu_198_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln45_reg_406 <= icmp_ln45_fu_213_p2;
        output_V_addr_reg_421 <= zext_ln48_fu_269_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln43_reg_402_pp0_iter3_reg == 1'd0))) begin
        lhs_reg_447 <= output_V_q1;
    end
end

always @ (*) begin
    if (((icmp_ln43_fu_198_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_ce0 = 1'b1;
    end else begin
        input_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_ce1 = 1'b1;
    end else begin
        input_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        output_V_ce1 = 1'b1;
    end else begin
        output_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln43_reg_402_pp0_iter4_reg == 1'd0))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights_V_ce0 = 1'b1;
    end else begin
        weights_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights_V_ce1 = 1'b1;
    end else begin
        weights_V_ce1 = 1'b0;
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

assign add_fu_177_p2 = (zext_ln43_fu_173_p1 + conv12181_fu_64);

assign add_ln43_1_fu_227_p2 = (inc13160175_fu_60 + 9'd1);

assign add_ln43_fu_204_p2 = (indvar_flatten_fu_68 + 17'd1);

assign add_ln45_fu_274_p2 = (select_ln43_fu_219_p3 + 9'd1);

assign add_ln50_fu_193_p2 = (conv12181_fu_64 + numOfInNeurons);

assign add_mid1_fu_237_p2 = (zext_ln43_1_fu_233_p1 + add_ln50_fu_193_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln43_fu_198_p2 = ((indvar_flatten_fu_68 == 17'd65536) ? 1'b1 : 1'b0);

assign icmp_ln45_fu_213_p2 = ((inc159168_fu_56 == 9'd256) ? 1'b1 : 1'b0);

assign idxprom5_fu_188_p1 = inc13160175_fu_60;

assign idxprom5_mid1_fu_248_p1 = add_ln43_1_fu_227_p2;

assign idxprom_fu_183_p1 = add_fu_177_p2;

assign idxprom_mid1_fu_243_p1 = add_mid1_fu_237_p2;

assign input_V_address0 = idxprom5_mid1_fu_248_p1;

assign input_V_address1 = idxprom5_fu_188_p1;

assign lhs_1_fu_321_p3 = {{lhs_reg_447}, {8'd0}};

assign output_V_address0 = output_V_addr_reg_421_pp0_iter4_reg;

assign output_V_address1 = output_V_addr_reg_421_pp0_iter2_reg;

assign output_V_d0 = {{ret_V_fu_328_p2[23:8]}};

assign ret_V_fu_328_p2 = (lhs_1_fu_321_p3 + select_ln43_1_fu_316_p3);

assign select_ln43_1_fu_316_p3 = ((icmp_ln45_reg_406_pp0_iter4_reg[0:0] == 1'b1) ? grp_fu_352_p2 : grp_fu_345_p2);

assign select_ln43_2_fu_253_p3 = ((icmp_ln45_fu_213_p2[0:0] == 1'b1) ? add_ln50_fu_193_p2 : conv12181_fu_64);

assign select_ln43_3_fu_261_p3 = ((icmp_ln45_fu_213_p2[0:0] == 1'b1) ? add_ln43_1_fu_227_p2 : inc13160175_fu_60);

assign select_ln43_fu_219_p3 = ((icmp_ln45_fu_213_p2[0:0] == 1'b1) ? 9'd0 : inc159168_fu_56);

assign weights_V_address0 = idxprom_mid1_fu_243_p1;

assign weights_V_address1 = idxprom_fu_183_p1;

assign zext_ln43_1_fu_233_p1 = add_ln43_1_fu_227_p2;

assign zext_ln43_fu_173_p1 = inc13160175_fu_60;

assign zext_ln48_fu_269_p1 = select_ln43_fu_219_p3;

endmodule //nnlayer_nnlayer_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_45_2