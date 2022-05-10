// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_read_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_input_r "./c.nnlayer.autotvin_input_r.dat"
`define TV_OUT_output_r "./rtl.nnlayer.autotvout_output_r.dat"
`define TV_IN_bias "./c.nnlayer.autotvin_bias.dat"
`define TV_IN_weights "./c.nnlayer.autotvin_weights.dat"
`define TV_IN_numOfInNeurons "./c.nnlayer.autotvin_numOfInNeurons.dat"
`define TV_IN_numOfOutputNeurons "./c.nnlayer.autotvin_numOfOutputNeurons.dat"
`define TV_IN_activation "./c.nnlayer.autotvin_activation.dat"
parameter ADDR_WIDTH = 16;
parameter DATA_WIDTH = 32;
parameter input_r_DEPTH = 128;
reg [31 : 0] input_r_OPERATE_DEPTH = 0;
parameter input_r_c_bitwidth = 16;
parameter output_r_DEPTH = 128;
reg [31 : 0] output_r_OPERATE_DEPTH = 0;
parameter output_r_c_bitwidth = 16;
parameter bias_DEPTH = 128;
reg [31 : 0] bias_OPERATE_DEPTH = 0;
parameter bias_c_bitwidth = 16;
parameter weights_DEPTH = 16384;
reg [31 : 0] weights_OPERATE_DEPTH = 0;
parameter weights_c_bitwidth = 16;
parameter numOfInNeurons_DEPTH = 1;
reg [31 : 0] numOfInNeurons_OPERATE_DEPTH = 0;
parameter numOfInNeurons_c_bitwidth = 16;
parameter numOfOutputNeurons_DEPTH = 1;
reg [31 : 0] numOfOutputNeurons_OPERATE_DEPTH = 0;
parameter numOfOutputNeurons_c_bitwidth = 16;
parameter activation_DEPTH = 1;
reg [31 : 0] activation_OPERATE_DEPTH = 0;
parameter activation_c_bitwidth = 8;
parameter START_ADDR = 0;
parameter nnlayer_continue_addr = 0;
parameter nnlayer_auto_start_addr = 0;
parameter numOfInNeurons_data_in_addr = 16;
parameter numOfOutputNeurons_data_in_addr = 24;
parameter activation_data_in_addr = 32;
parameter input_r_data_in_addr = 256;
parameter bias_data_in_addr = 768;
parameter weights_data_in_addr = 32768;
parameter output_r_data_out_addr = 512;
parameter ap_local_deadlock_data_out_addr = 0;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
output TRAN_control_read_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_input_r [input_r_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_input_r [ (input_r_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * input_r_DEPTH -1 : 0] = '{default : 'hz};
reg input_r_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_output_r [output_r_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_output_r [ (output_r_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * output_r_DEPTH -1 : 0] = '{default : 'hz};
reg output_r_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_bias [bias_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_bias [ (bias_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * bias_DEPTH -1 : 0] = '{default : 'hz};
reg bias_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_weights [weights_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_weights [ (weights_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * weights_DEPTH -1 : 0] = '{default : 'hz};
reg weights_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_numOfInNeurons [numOfInNeurons_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_numOfInNeurons [ (numOfInNeurons_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * numOfInNeurons_DEPTH -1 : 0] = '{default : 'hz};
reg numOfInNeurons_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_numOfOutputNeurons [numOfOutputNeurons_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_numOfOutputNeurons [ (numOfOutputNeurons_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * numOfOutputNeurons_DEPTH -1 : 0] = '{default : 'hz};
reg numOfOutputNeurons_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_activation [activation_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_activation [ (activation_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * activation_DEPTH -1 : 0] = '{default : 'hz};
reg activation_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
//write input_r reg
reg [31 : 0] write_input_r_count = 0;
reg write_input_r_run_flag = 0;
reg write_one_input_r_data_done = 0;
//write bias reg
reg [31 : 0] write_bias_count = 0;
reg write_bias_run_flag = 0;
reg write_one_bias_data_done = 0;
//write weights reg
reg [31 : 0] write_weights_count = 0;
reg write_weights_run_flag = 0;
reg write_one_weights_data_done = 0;
//write numOfInNeurons reg
reg [31 : 0] write_numOfInNeurons_count = 0;
reg write_numOfInNeurons_run_flag = 0;
reg write_one_numOfInNeurons_data_done = 0;
//write numOfOutputNeurons reg
reg [31 : 0] write_numOfOutputNeurons_count = 0;
reg write_numOfOutputNeurons_run_flag = 0;
reg write_one_numOfOutputNeurons_data_done = 0;
//write activation reg
reg [31 : 0] write_activation_count = 0;
reg write_activation_run_flag = 0;
reg write_one_activation_data_done = 0;
//read output_r reg
reg [31 : 0] read_output_r_count = 0;
reg read_output_r_run_flag = 0;
reg read_one_output_r_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_read_data_finish = 1 & output_r_read_data_finish;
assign TRAN_control_write_data_finish = 1 & input_r_write_data_finish & bias_write_data_finish & weights_write_data_finish & numOfInNeurons_write_data_finish & numOfOutputNeurons_write_data_finish & activation_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_r_write_data_finish <= 0;
        write_input_r_run_flag <= 0; 
        write_input_r_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_r_c_bitwidth, input_r_DEPTH, input_r_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            input_r_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_r_run_flag <= 1; 
            write_input_r_count = 0;
        end
        if (write_one_input_r_data_done === 1) begin
            write_input_r_count = write_input_r_count + 1;
            if (write_input_r_count == input_r_OPERATE_DEPTH) begin
                write_input_r_run_flag <= 0; 
                input_r_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_r
    integer write_input_r_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_r_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_r_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_r_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_r data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_r_c_bitwidth < 32) begin
                        input_r_data_tmp_reg = mem_input_r[write_input_r_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_r_c_bitwidth) begin
                                input_r_data_tmp_reg[j] = mem_input_r[write_input_r_count][i*32 + j];
                            end
                            else begin
                                input_r_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_input_r[write_input_r_count * four_byte_num  + i]!==input_r_data_tmp_reg) begin
                    write (input_r_data_in_addr + write_input_r_count * four_byte_num * 4 + i * 4, input_r_data_tmp_reg, write_input_r_resp);
                    image_mem_input_r[write_input_r_count * four_byte_num + i]=input_r_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_input_r_data_done <= 1;
                @(posedge clk);
                write_one_input_r_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        bias_write_data_finish <= 0;
        write_bias_run_flag <= 0; 
        write_bias_count = 0;
        count_operate_depth_by_bitwidth_and_depth (bias_c_bitwidth, bias_DEPTH, bias_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            bias_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_bias_run_flag <= 1; 
            write_bias_count = 0;
        end
        if (write_one_bias_data_done === 1) begin
            write_bias_count = write_bias_count + 1;
            if (write_bias_count == bias_OPERATE_DEPTH) begin
                write_bias_run_flag <= 0; 
                bias_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_bias
    integer write_bias_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] bias_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_bias_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write bias data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (bias_c_bitwidth < 32) begin
                        bias_data_tmp_reg = mem_bias[write_bias_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < bias_c_bitwidth) begin
                                bias_data_tmp_reg[j] = mem_bias[write_bias_count][i*32 + j];
                            end
                            else begin
                                bias_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_bias[write_bias_count * four_byte_num  + i]!==bias_data_tmp_reg) begin
                    write (bias_data_in_addr + write_bias_count * four_byte_num * 4 + i * 4, bias_data_tmp_reg, write_bias_resp);
                    image_mem_bias[write_bias_count * four_byte_num + i]=bias_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_bias_data_done <= 1;
                @(posedge clk);
                write_one_bias_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        weights_write_data_finish <= 0;
        write_weights_run_flag <= 0; 
        write_weights_count = 0;
        count_operate_depth_by_bitwidth_and_depth (weights_c_bitwidth, weights_DEPTH, weights_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            weights_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_weights_run_flag <= 1; 
            write_weights_count = 0;
        end
        if (write_one_weights_data_done === 1) begin
            write_weights_count = write_weights_count + 1;
            if (write_weights_count == weights_OPERATE_DEPTH) begin
                write_weights_run_flag <= 0; 
                weights_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_weights
    integer write_weights_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] weights_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weights_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_weights_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write weights data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (weights_c_bitwidth < 32) begin
                        weights_data_tmp_reg = mem_weights[write_weights_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < weights_c_bitwidth) begin
                                weights_data_tmp_reg[j] = mem_weights[write_weights_count][i*32 + j];
                            end
                            else begin
                                weights_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_weights[write_weights_count * four_byte_num  + i]!==weights_data_tmp_reg) begin
                    write (weights_data_in_addr + write_weights_count * four_byte_num * 4 + i * 4, weights_data_tmp_reg, write_weights_resp);
                    image_mem_weights[write_weights_count * four_byte_num + i]=weights_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_weights_data_done <= 1;
                @(posedge clk);
                write_one_weights_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        numOfInNeurons_write_data_finish <= 0;
        write_numOfInNeurons_run_flag <= 0; 
        write_numOfInNeurons_count = 0;
        count_operate_depth_by_bitwidth_and_depth (numOfInNeurons_c_bitwidth, numOfInNeurons_DEPTH, numOfInNeurons_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            numOfInNeurons_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_numOfInNeurons_run_flag <= 1; 
            write_numOfInNeurons_count = 0;
        end
        if (write_one_numOfInNeurons_data_done === 1) begin
            write_numOfInNeurons_count = write_numOfInNeurons_count + 1;
            if (write_numOfInNeurons_count == numOfInNeurons_OPERATE_DEPTH) begin
                write_numOfInNeurons_run_flag <= 0; 
                numOfInNeurons_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_numOfInNeurons
    integer write_numOfInNeurons_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] numOfInNeurons_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = numOfInNeurons_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_numOfInNeurons_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write numOfInNeurons data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (numOfInNeurons_c_bitwidth < 32) begin
                        numOfInNeurons_data_tmp_reg = mem_numOfInNeurons[write_numOfInNeurons_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < numOfInNeurons_c_bitwidth) begin
                                numOfInNeurons_data_tmp_reg[j] = mem_numOfInNeurons[write_numOfInNeurons_count][i*32 + j];
                            end
                            else begin
                                numOfInNeurons_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_numOfInNeurons[write_numOfInNeurons_count * four_byte_num  + i]!==numOfInNeurons_data_tmp_reg) begin
                    write (numOfInNeurons_data_in_addr + write_numOfInNeurons_count * four_byte_num * 4 + i * 4, numOfInNeurons_data_tmp_reg, write_numOfInNeurons_resp);
                    image_mem_numOfInNeurons[write_numOfInNeurons_count * four_byte_num + i]=numOfInNeurons_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_numOfInNeurons_data_done <= 1;
                @(posedge clk);
                write_one_numOfInNeurons_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        numOfOutputNeurons_write_data_finish <= 0;
        write_numOfOutputNeurons_run_flag <= 0; 
        write_numOfOutputNeurons_count = 0;
        count_operate_depth_by_bitwidth_and_depth (numOfOutputNeurons_c_bitwidth, numOfOutputNeurons_DEPTH, numOfOutputNeurons_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            numOfOutputNeurons_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_numOfOutputNeurons_run_flag <= 1; 
            write_numOfOutputNeurons_count = 0;
        end
        if (write_one_numOfOutputNeurons_data_done === 1) begin
            write_numOfOutputNeurons_count = write_numOfOutputNeurons_count + 1;
            if (write_numOfOutputNeurons_count == numOfOutputNeurons_OPERATE_DEPTH) begin
                write_numOfOutputNeurons_run_flag <= 0; 
                numOfOutputNeurons_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_numOfOutputNeurons
    integer write_numOfOutputNeurons_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] numOfOutputNeurons_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = numOfOutputNeurons_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_numOfOutputNeurons_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write numOfOutputNeurons data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (numOfOutputNeurons_c_bitwidth < 32) begin
                        numOfOutputNeurons_data_tmp_reg = mem_numOfOutputNeurons[write_numOfOutputNeurons_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < numOfOutputNeurons_c_bitwidth) begin
                                numOfOutputNeurons_data_tmp_reg[j] = mem_numOfOutputNeurons[write_numOfOutputNeurons_count][i*32 + j];
                            end
                            else begin
                                numOfOutputNeurons_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_numOfOutputNeurons[write_numOfOutputNeurons_count * four_byte_num  + i]!==numOfOutputNeurons_data_tmp_reg) begin
                    write (numOfOutputNeurons_data_in_addr + write_numOfOutputNeurons_count * four_byte_num * 4 + i * 4, numOfOutputNeurons_data_tmp_reg, write_numOfOutputNeurons_resp);
                    image_mem_numOfOutputNeurons[write_numOfOutputNeurons_count * four_byte_num + i]=numOfOutputNeurons_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_numOfOutputNeurons_data_done <= 1;
                @(posedge clk);
                write_one_numOfOutputNeurons_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        activation_write_data_finish <= 0;
        write_activation_run_flag <= 0; 
        write_activation_count = 0;
        count_operate_depth_by_bitwidth_and_depth (activation_c_bitwidth, activation_DEPTH, activation_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            activation_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_activation_run_flag <= 1; 
            write_activation_count = 0;
        end
        if (write_one_activation_data_done === 1) begin
            write_activation_count = write_activation_count + 1;
            if (write_activation_count == activation_OPERATE_DEPTH) begin
                write_activation_run_flag <= 0; 
                activation_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_activation
    integer write_activation_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] activation_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = activation_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_activation_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write activation data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (activation_c_bitwidth < 32) begin
                        activation_data_tmp_reg = mem_activation[write_activation_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < activation_c_bitwidth) begin
                                activation_data_tmp_reg[j] = mem_activation[write_activation_count][i*32 + j];
                            end
                            else begin
                                activation_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_activation[write_activation_count * four_byte_num  + i]!==activation_data_tmp_reg) begin
                    write (activation_data_in_addr + write_activation_count * four_byte_num * 4 + i * 4, activation_data_tmp_reg, write_activation_resp);
                    image_mem_activation[write_activation_count * four_byte_num + i]=activation_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_activation_data_done <= 1;
                @(posedge clk);
                write_one_activation_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 4) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 7;
    while (1) begin
        process_7_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_7_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        output_r_read_data_finish <= 0;
        read_output_r_run_flag <= 0; 
        read_output_r_count = 0;
        count_operate_depth_by_bitwidth_and_depth (output_r_c_bitwidth, output_r_DEPTH, output_r_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_output_r_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            output_r_read_data_finish <= 0;
            read_output_r_count = 0; 
        end
        if (read_one_output_r_data_done === 1) begin
            read_output_r_count = read_output_r_count + 1;
            if (read_output_r_count == output_r_OPERATE_DEPTH) begin
                read_output_r_run_flag <= 0; 
                output_r_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_output_r
    integer read_output_r_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = output_r_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_output_r_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read output_r data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (output_r_data_out_addr + read_output_r_count * four_byte_num * 4 + i * 4, RDATA_reg, read_output_r_resp);
                        if (output_r_c_bitwidth < 32) begin
                            mem_output_r[read_output_r_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < output_r_c_bitwidth) begin
                                    mem_output_r[read_output_r_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_output_r_data_done <= 1;
                    @(posedge clk);
                    read_one_output_r_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_input_r_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [16 - 1 : 0] token_tmp; 
  //reg [input_r_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (input_r_c_bitwidth , factor);
  fp = $fopen(`TV_IN_input_r ,"rb"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_input_r); 
      $finish; 
  end 
  $fread(trans_depth,fp);
  while (trans_depth != 64'h5a5aa5a50f0ff0f0)  begin
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < input_r_DEPTH; i = i + 1) begin 
         $fread(token_tmp,fp);
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_input_r [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_input_r [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_input_r [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_input_r [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_input_r [i/factor] = tmp_cache_mem;
          end
      end 
      $fread(trans_depth,fp);
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_input_r;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
task write_binary_output_r;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_output_r_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [output_r_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (output_r_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (output_r_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
    fp = $fopen(`TV_OUT_output_r, "ab"); 
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", str);
        $finish;
    end
        bin_data = output_r_DEPTH;
        write_binary(fp,bin_data,64);
      for (i = 0; i < (output_r_DEPTH - output_r_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_output_r[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_output_r[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_output_r[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_output_r[i/factor][31:24];
              end
              bin_data = tmp_cache_mem;
              write_binary_output_r(fp,bin_data,8);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_output_r[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_output_r[i/factor][31:16];
              end
              bin_data = tmp_cache_mem;
              write_binary_output_r(fp,bin_data,16);
          end
          if (factor == 1) begin
              bin_data = mem_output_r[i];
              write_binary_output_r(fp,bin_data,16);
          end
      end 
      if (factor == 4) begin
          if ((output_r_DEPTH - 1) % factor == 2) begin
              bin_data = mem_output_r[output_r_DEPTH / factor][7:0];
              write_binary_output_r(fp,bin_data,8);
              bin_data = mem_output_r[output_r_DEPTH / factor][15:8];
              write_binary_output_r(fp,bin_data,8);
              bin_data = mem_output_r[output_r_DEPTH / factor][23:16];
              write_binary_output_r(fp,bin_data,8);
          end
          if ((output_r_DEPTH - 1) % factor == 1) begin
              bin_data = mem_output_r[output_r_DEPTH / factor][7:0];
              write_binary_output_r(fp,bin_data,8);
              bin_data = mem_output_r[output_r_DEPTH / factor][15:8];
              write_binary_output_r(fp,bin_data,8);
          end
          if ((output_r_DEPTH - 1) % factor == 0) begin
              bin_data = mem_output_r[output_r_DEPTH / factor][7:0];
              write_binary_output_r(fp,bin_data,8);
          end
      end
      if (factor == 2) begin
          if ((output_r_DEPTH - 1) % factor == 0) begin
              bin_data = mem_output_r[output_r_DEPTH / factor][15:0];
              write_binary_output_r(fp,bin_data,16);
          end
      end
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_bias_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [16 - 1 : 0] token_tmp; 
  //reg [bias_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (bias_c_bitwidth , factor);
  fp = $fopen(`TV_IN_bias ,"rb"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_bias); 
      $finish; 
  end 
  $fread(trans_depth,fp);
  while (trans_depth != 64'h5a5aa5a50f0ff0f0)  begin
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < bias_DEPTH; i = i + 1) begin 
         $fread(token_tmp,fp);
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_bias [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_bias [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_bias [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_bias [i/factor] = tmp_cache_mem;
          end
      end 
      $fread(trans_depth,fp);
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_bias;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_weights_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [16 - 1 : 0] token_tmp; 
  //reg [weights_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (weights_c_bitwidth , factor);
  fp = $fopen(`TV_IN_weights ,"rb"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_weights); 
      $finish; 
  end 
  $fread(trans_depth,fp);
  while (trans_depth != 64'h5a5aa5a50f0ff0f0)  begin
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < weights_DEPTH; i = i + 1) begin 
         $fread(token_tmp,fp);
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_weights [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_weights [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_weights [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_weights [i/factor] = tmp_cache_mem;
          end
      end 
      $fread(trans_depth,fp);
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_weights;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_numOfInNeurons_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [numOfInNeurons_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (numOfInNeurons_c_bitwidth , factor);
  fp = $fopen(`TV_IN_numOfInNeurons ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_numOfInNeurons); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < numOfInNeurons_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_numOfInNeurons [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_numOfInNeurons [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_numOfInNeurons [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_numOfInNeurons [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_numOfInNeurons [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_numOfInNeurons;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_numOfOutputNeurons_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [numOfOutputNeurons_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (numOfOutputNeurons_c_bitwidth , factor);
  fp = $fopen(`TV_IN_numOfOutputNeurons ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_numOfOutputNeurons); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < numOfOutputNeurons_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_numOfOutputNeurons [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_numOfOutputNeurons [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_numOfOutputNeurons [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_numOfOutputNeurons [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_numOfOutputNeurons [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_numOfOutputNeurons;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_activation_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [activation_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (activation_c_bitwidth , factor);
  fp = $fopen(`TV_IN_activation ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_activation); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < activation_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_activation [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_activation [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_activation [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_activation [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_activation [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_activation;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
endmodule
