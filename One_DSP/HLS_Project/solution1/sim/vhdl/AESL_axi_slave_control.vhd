-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity AESL_axi_slave_control is
  generic (
      constant    TV_IN_input_r : STRING (1 to 46) := "../tv/cdatafile/c.nnlayer.autotvin_input_r.dat";
      constant    TV_OUT_output_r : STRING (1 to 52) := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_r.dat";
      constant    TV_IN_bias : STRING (1 to 43) := "../tv/cdatafile/c.nnlayer.autotvin_bias.dat";
      constant    TV_IN_weights : STRING (1 to 46) := "../tv/cdatafile/c.nnlayer.autotvin_weights.dat";
      constant    TV_IN_numOfInNeurons : STRING (1 to 53) := "../tv/cdatafile/c.nnlayer.autotvin_numOfInNeurons.dat";
      constant    TV_IN_numOfOutputNeurons : STRING (1 to 57) := "../tv/cdatafile/c.nnlayer.autotvin_numOfOutputNeurons.dat";
      constant    TV_IN_activation : STRING (1 to 49) := "../tv/cdatafile/c.nnlayer.autotvin_activation.dat";
constant ADDR_WIDTH : INTEGER := 16;
constant DATA_WIDTH : INTEGER := 32;
constant input_r_DEPTH : INTEGER := 128;
constant input_r_c_bitwidth : INTEGER := 16;
constant output_r_DEPTH : INTEGER := 128;
constant output_r_c_bitwidth : INTEGER := 16;
constant bias_DEPTH : INTEGER := 128;
constant bias_c_bitwidth : INTEGER := 16;
constant weights_DEPTH : INTEGER := 16384;
constant weights_c_bitwidth : INTEGER := 16;
constant numOfInNeurons_DEPTH : INTEGER := 1;
constant numOfInNeurons_c_bitwidth : INTEGER := 16;
constant numOfOutputNeurons_DEPTH : INTEGER := 1;
constant numOfOutputNeurons_c_bitwidth : INTEGER := 16;
constant activation_DEPTH : INTEGER := 1;
constant activation_c_bitwidth : INTEGER := 8;
constant START_ADDR : INTEGER := 0;
constant nnlayer_continue_addr : INTEGER := 0;
constant nnlayer_auto_start_addr : INTEGER := 0;
constant numOfInNeurons_data_in_addr : INTEGER := 16;
constant numOfOutputNeurons_data_in_addr : INTEGER := 24;
constant activation_data_in_addr : INTEGER := 32;
constant input_r_data_in_addr : INTEGER := 256;
constant bias_data_in_addr : INTEGER := 768;
constant weights_data_in_addr : INTEGER := 32768;
constant output_r_data_out_addr : INTEGER := 512;
constant ap_local_deadlock_data_out_addr : INTEGER := 0;
constant STATUS_ADDR : INTEGER := 0;
      constant    INTERFACE_TYPE : STRING (1 to 7) := "control"

  );
  port (
clk   :   IN STD_LOGIC;
reset :   IN STD_LOGIC;
TRAN_s_axi_control_AWADDR  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0);
TRAN_s_axi_control_AWVALID  : OUT STD_LOGIC;
TRAN_s_axi_control_AWREADY  : IN STD_LOGIC;
TRAN_s_axi_control_WVALID  : OUT STD_LOGIC;
TRAN_s_axi_control_WREADY  : IN STD_LOGIC;
TRAN_s_axi_control_WDATA  : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
TRAN_s_axi_control_WSTRB  : OUT STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0);
TRAN_s_axi_control_ARADDR  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0);
TRAN_s_axi_control_ARVALID  : OUT STD_LOGIC;
TRAN_s_axi_control_ARREADY  : IN STD_LOGIC;
TRAN_s_axi_control_RVALID  : IN STD_LOGIC;
TRAN_s_axi_control_RREADY  : OUT STD_LOGIC;
TRAN_s_axi_control_RDATA  : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
TRAN_s_axi_control_RRESP  : IN STD_LOGIC_VECTOR(2 - 1 downto 0);
TRAN_s_axi_control_BVALID  : IN STD_LOGIC;
TRAN_s_axi_control_BREADY  : OUT STD_LOGIC;
TRAN_s_axi_control_BRESP  : IN STD_LOGIC_VECTOR(2 - 1 downto 0);
TRAN_control_interrupt   : IN STD_LOGIC;
TRAN_control_write_data_finish   : OUT STD_LOGIC;
TRAN_control_read_data_finish   : OUT STD_LOGIC;
TRAN_control_start_in   : IN STD_LOGIC;
TRAN_control_done_out   : OUT STD_LOGIC;
TRAN_control_ready_out   : OUT STD_LOGIC;
TRAN_control_ready_in   : IN STD_LOGIC;
TRAN_control_idle_out   : OUT STD_LOGIC;
TRAN_control_write_start_in   : IN STD_LOGIC;
TRAN_control_write_start_finish   : OUT STD_LOGIC;
TRAN_control_transaction_done_in   : IN STD_LOGIC

  );
end AESL_axi_slave_control;

architecture behav of AESL_axi_slave_control is
------------------------Local signal-------------------
shared variable input_r_OPERATE_DEPTH : INTEGER;
shared variable output_r_OPERATE_DEPTH : INTEGER;
shared variable bias_OPERATE_DEPTH : INTEGER;
shared variable weights_OPERATE_DEPTH : INTEGER;
shared variable numOfInNeurons_OPERATE_DEPTH : INTEGER;
shared variable numOfOutputNeurons_OPERATE_DEPTH : INTEGER;
shared variable activation_OPERATE_DEPTH : INTEGER;
signal AWADDR_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_0_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_1_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_2_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_3_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_4_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_5_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_6_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_7_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_8_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal AWVALID_reg : STD_LOGIC := '0';
signal process_0_AWVALID_var : STD_LOGIC := '0';
signal process_1_AWVALID_var : STD_LOGIC := '0';
signal process_2_AWVALID_var : STD_LOGIC := '0';
signal process_3_AWVALID_var : STD_LOGIC := '0';
signal process_4_AWVALID_var : STD_LOGIC := '0';
signal process_5_AWVALID_var : STD_LOGIC := '0';
signal process_6_AWVALID_var : STD_LOGIC := '0';
signal process_7_AWVALID_var : STD_LOGIC := '0';
signal process_8_AWVALID_var : STD_LOGIC := '0';
signal WVALID_reg : STD_LOGIC := '0';
signal process_0_WVALID_var : STD_LOGIC := '0';
signal process_1_WVALID_var : STD_LOGIC := '0';
signal process_2_WVALID_var : STD_LOGIC := '0';
signal process_3_WVALID_var : STD_LOGIC := '0';
signal process_4_WVALID_var : STD_LOGIC := '0';
signal process_5_WVALID_var : STD_LOGIC := '0';
signal process_6_WVALID_var : STD_LOGIC := '0';
signal process_7_WVALID_var : STD_LOGIC := '0';
signal process_8_WVALID_var : STD_LOGIC := '0';
signal WDATA_reg : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_0_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_1_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_2_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_3_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_4_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_5_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_6_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_7_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_8_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal WSTRB_reg : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_0_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_1_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_2_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_3_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_4_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_5_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_6_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_7_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_8_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal ARADDR_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_0_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_1_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_2_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_3_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_4_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_5_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_6_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_7_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_8_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal ARVALID_reg : STD_LOGIC := '0';
signal process_0_ARVALID_var : STD_LOGIC := '0';
signal process_1_ARVALID_var : STD_LOGIC := '0';
signal process_2_ARVALID_var : STD_LOGIC := '0';
signal process_3_ARVALID_var : STD_LOGIC := '0';
signal process_4_ARVALID_var : STD_LOGIC := '0';
signal process_5_ARVALID_var : STD_LOGIC := '0';
signal process_6_ARVALID_var : STD_LOGIC := '0';
signal process_7_ARVALID_var : STD_LOGIC := '0';
signal process_8_ARVALID_var : STD_LOGIC := '0';
signal RREADY_reg : STD_LOGIC := '0';
signal process_0_RREADY_var : STD_LOGIC := '0';
signal process_1_RREADY_var : STD_LOGIC := '0';
signal process_2_RREADY_var : STD_LOGIC := '0';
signal process_3_RREADY_var : STD_LOGIC := '0';
signal process_4_RREADY_var : STD_LOGIC := '0';
signal process_5_RREADY_var : STD_LOGIC := '0';
signal process_6_RREADY_var : STD_LOGIC := '0';
signal process_7_RREADY_var : STD_LOGIC := '0';
signal process_8_RREADY_var : STD_LOGIC := '0';
signal RDATA_reg : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_0_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_1_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_2_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_3_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_4_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_5_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_6_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_7_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_8_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal BREADY_reg : STD_LOGIC := '0';
signal process_0_BREADY_var : STD_LOGIC := '0';
signal process_1_BREADY_var : STD_LOGIC := '0';
signal process_2_BREADY_var : STD_LOGIC := '0';
signal process_3_BREADY_var : STD_LOGIC := '0';
signal process_4_BREADY_var : STD_LOGIC := '0';
signal process_5_BREADY_var : STD_LOGIC := '0';
signal process_6_BREADY_var : STD_LOGIC := '0';
signal process_7_BREADY_var : STD_LOGIC := '0';
signal process_8_BREADY_var : STD_LOGIC := '0';
  type    mem_input_r_arr2D is array(0 to input_r_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_input_r : mem_input_r_arr2D := (others => (others => '0'));
  type    image_mem_input_r_arr2D is array(0 to (input_r_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * input_r_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_input_r : image_mem_input_r_arr2D := (others => (others => '0'));
signal input_r_write_data_finish : STD_LOGIC := '0';
  type    mem_output_r_arr2D is array(0 to output_r_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_output_r : mem_output_r_arr2D := (others => (others => '0'));
  type    image_mem_output_r_arr2D is array(0 to (output_r_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * output_r_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_output_r : image_mem_output_r_arr2D := (others => (others => '0'));
signal output_r_read_data_finish : STD_LOGIC := '0';
  type    mem_bias_arr2D is array(0 to bias_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_bias : mem_bias_arr2D := (others => (others => '0'));
  type    image_mem_bias_arr2D is array(0 to (bias_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * bias_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_bias : image_mem_bias_arr2D := (others => (others => '0'));
signal bias_write_data_finish : STD_LOGIC := '0';
  type    mem_weights_arr2D is array(0 to weights_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_weights : mem_weights_arr2D := (others => (others => '0'));
  type    image_mem_weights_arr2D is array(0 to (weights_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * weights_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_weights : image_mem_weights_arr2D := (others => (others => '0'));
signal weights_write_data_finish : STD_LOGIC := '0';
  type    mem_numOfInNeurons_arr2D is array(0 to numOfInNeurons_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_numOfInNeurons : mem_numOfInNeurons_arr2D := (others => (others => '0'));
  type    image_mem_numOfInNeurons_arr2D is array(0 to (numOfInNeurons_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * numOfInNeurons_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_numOfInNeurons : image_mem_numOfInNeurons_arr2D := (others => (others => '0'));
signal numOfInNeurons_write_data_finish : STD_LOGIC := '0';
  type    mem_numOfOutputNeurons_arr2D is array(0 to numOfOutputNeurons_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_numOfOutputNeurons : mem_numOfOutputNeurons_arr2D := (others => (others => '0'));
  type    image_mem_numOfOutputNeurons_arr2D is array(0 to (numOfOutputNeurons_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * numOfOutputNeurons_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_numOfOutputNeurons : image_mem_numOfOutputNeurons_arr2D := (others => (others => '0'));
signal numOfOutputNeurons_write_data_finish : STD_LOGIC := '0';
  type    mem_activation_arr2D is array(0 to activation_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_activation : mem_activation_arr2D := (others => (others => '0'));
  type    image_mem_activation_arr2D is array(0 to (activation_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * activation_DEPTH -1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
  shared variable image_mem_activation : image_mem_activation_arr2D := (others => (others => '0'));
signal activation_write_data_finish : STD_LOGIC := '0';
signal AESL_ready_out_index_reg : STD_LOGIC := '0';
signal AESL_write_start_finish : STD_LOGIC := '0';
signal AESL_ready_reg : STD_LOGIC;
signal ready_initial : STD_LOGIC;
signal AESL_done_index_reg : STD_LOGIC := '0';
signal AESL_idle_index_reg : STD_LOGIC := '0';
signal AESL_auto_restart_index_reg : STD_LOGIC;
signal process_0_finish : STD_LOGIC := '0';
signal process_1_finish : STD_LOGIC := '0';
signal process_2_finish : STD_LOGIC := '0';
signal process_3_finish : STD_LOGIC := '0';
signal process_4_finish : STD_LOGIC := '0';
signal process_5_finish : STD_LOGIC := '0';
signal process_6_finish : STD_LOGIC := '0';
signal process_7_finish : STD_LOGIC := '0';
signal process_8_finish : STD_LOGIC := '0';
--write input_r reg
shared variable write_input_r_count : INTEGER;
signal write_input_r_run_flag : STD_LOGIC := '0';
signal write_one_input_r_data_done : STD_LOGIC := '0';
--write bias reg
shared variable write_bias_count : INTEGER;
signal write_bias_run_flag : STD_LOGIC := '0';
signal write_one_bias_data_done : STD_LOGIC := '0';
--write weights reg
shared variable write_weights_count : INTEGER;
signal write_weights_run_flag : STD_LOGIC := '0';
signal write_one_weights_data_done : STD_LOGIC := '0';
--write numOfInNeurons reg
shared variable write_numOfInNeurons_count : INTEGER;
signal write_numOfInNeurons_run_flag : STD_LOGIC := '0';
signal write_one_numOfInNeurons_data_done : STD_LOGIC := '0';
--write numOfOutputNeurons reg
shared variable write_numOfOutputNeurons_count : INTEGER;
signal write_numOfOutputNeurons_run_flag : STD_LOGIC := '0';
signal write_one_numOfOutputNeurons_data_done : STD_LOGIC := '0';
--write activation reg
shared variable write_activation_count : INTEGER;
signal write_activation_run_flag : STD_LOGIC := '0';
signal write_one_activation_data_done : STD_LOGIC := '0';
--read output_r reg
shared variable read_output_r_count : INTEGER;
signal read_output_r_run_flag : STD_LOGIC := '0';
signal read_one_output_r_data_done : STD_LOGIC := '0';
shared variable write_start_count : INTEGER;
signal write_start_run_flag : STD_LOGIC := '0';

--===================process control=================
signal ongoing_process_number : INTEGER;
-- Process number depends on how much processes needed.
shared variable process_busy : STD_LOGIC := '0';

      function esl_icmp_eq(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if v1 = v2 then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;
      procedure esl_read_token (file textfile: TEXT; textline: inout LINE; token: out STRING; token_len: out INTEGER) is
          variable whitespace : CHARACTER;
          variable i : INTEGER;
          variable ok: BOOLEAN;
          variable buff: STRING(1 to token'length);
      begin
          ok := false;
          i := 1;
          loop_main: while not endfile(textfile) loop
              if textline = null or textline'length = 0 then
                  readline(textfile, textline);
              end if;
              loop_remove_whitespace: while textline'length > 0 loop
                  if textline(textline'left) = ' ' or
                      textline(textline'left) = HT or
                      textline(textline'left) = CR or
                      textline(textline'left) = LF then
                      read(textline, whitespace);
                  else 
                      exit loop_remove_whitespace;
                  end if;
              end loop;
              loop_aesl_read_token: while textline'length > 0 and i <= buff'length loop
                  if textline(textline'left) = ' ' or
                     textline(textline'left) = HT or
                     textline(textline'left) = CR or
                     textline(textline'left) = LF then
                      exit loop_aesl_read_token;
                  else 
                      read(textline, buff(i));
                      i := i + 1;
                  end if;
                  ok := true;
              end loop;
              if ok = true then
                  exit loop_main;
              end if;
          end loop;
          buff(i) := ' ';
          token := buff;
          token_len:= i-1;
      end procedure esl_read_token;

      procedure esl_read_token (file textfile: TEXT; 
                                textline: inout LINE; 
                                token: out STRING) is
          variable i : INTEGER;
      begin
          esl_read_token (textfile, textline, token, i);
      end procedure esl_read_token;

      function esl_add(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : unsigned(v1'length-1 downto 0);
      begin
          res := unsigned(v1) + unsigned(v2);
          return std_logic_vector(res);
      end function;

      function esl_icmp_ult(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if unsigned(v1) < unsigned(v2) then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable    ret :   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable    idx :   integer := 3;
      begin
          ret := (others => '0');
          if(RHS(1) /= '0' and (RHS(2) /= 'x' or RHS(2) /= 'X')) then
              report "Error! The format of hex number is not initialed by 0x";
          end if;
          while true loop
              if (data_width > 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := ret(data_width - 5 downto 0) & "0000";
                      when '1'    =>  ret := ret(data_width - 5 downto 0) & "0001";
                      when '2'    =>  ret := ret(data_width - 5 downto 0) & "0010";
                      when '3'    =>  ret := ret(data_width - 5 downto 0) & "0011";
                      when '4'    =>  ret := ret(data_width - 5 downto 0) & "0100";
                      when '5'    =>  ret := ret(data_width - 5 downto 0) & "0101";
                      when '6'    =>  ret := ret(data_width - 5 downto 0) & "0110";
                      when '7'    =>  ret := ret(data_width - 5 downto 0) & "0111";
                      when '8'    =>  ret := ret(data_width - 5 downto 0) & "1000";
                      when '9'    =>  ret := ret(data_width - 5 downto 0) & "1001";
                      when 'a' | 'A'  =>  ret := ret(data_width - 5 downto 0) & "1010";
                      when 'b' | 'B'  =>  ret := ret(data_width - 5 downto 0) & "1011";
                      when 'c' | 'C'  =>  ret := ret(data_width - 5 downto 0) & "1100";
                      when 'd' | 'D'  =>  ret := ret(data_width - 5 downto 0) & "1101";
                      when 'e' | 'E'  =>  ret := ret(data_width - 5 downto 0) & "1110";
                      when 'f' | 'F'  =>  ret := ret(data_width - 5 downto 0) & "1111";
                      when 'x' | 'X'  =>  ret := ret(data_width - 5 downto 0) & "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);   return ret;
                  end case;
              elsif (data_width = 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0000";
                      when '1'    =>  ret := "0001";
                      when '2'    =>  ret := "0010";
                      when '3'    =>  ret := "0011";
                      when '4'    =>  ret := "0100";
                      when '5'    =>  ret := "0101";
                      when '6'    =>  ret := "0110";
                      when '7'    =>  ret := "0111";
                      when '8'    =>  ret := "1000";
                      when '9'    =>  ret := "1001";
                      when 'a' | 'A'  =>  ret := "1010";
                      when 'b' | 'B'  =>  ret := "1011";
                      when 'c' | 'C'  =>  ret := "1100";
                      when 'd' | 'D'  =>  ret := "1101";
                      when 'e' | 'E'  =>  ret := "1110";
                      when 'f' | 'F'  =>  ret := "1111";
                      when 'x' | 'X'  =>  ret := "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);   return ret;
                  end case;
              elsif (data_width = 3) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "000";
                      when '1'    =>  ret := "001";
                      when '2'    =>  ret := "010";
                      when '3'    =>  ret := "011";
                      when '4'    =>  ret := "100";
                      when '5'    =>  ret := "101";
                      when '6'    =>  ret := "110";
                      when '7'    =>  ret := "111";
                      when 'x' | 'X'  =>  ret := "XXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);   return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
                      when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);   return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
                      when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);   return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

      function esl_conv_string_hex (lv : STD_LOGIC_VECTOR) return STRING is
          constant str_len : integer := (lv'length + 3)/4;
          variable ret : STRING (1 to str_len);
          variable i, tmp: INTEGER;
          variable normal_lv : STD_LOGIC_VECTOR(lv'length - 1 downto 0);
          variable tmp_lv : STD_LOGIC_VECTOR(3 downto 0);
      begin
          normal_lv := lv;
          for i in 1 to str_len loop
              if(i = 1) then
                  if((lv'length mod 4) = 3) then
                      tmp_lv(2 downto 0) := normal_lv(lv'length - 1 downto lv'length - 3);
                      case tmp_lv(2 downto 0) is
                          when "000" => ret(i) := '0';
                          when "001" => ret(i) := '1';
                          when "010" => ret(i) := '2';
                          when "011" => ret(i) := '3';
                          when "100" => ret(i) := '4';
                          when "101" => ret(i) := '5';
                          when "110" => ret(i) := '6';
                          when "111" => ret(i) := '7';
                          when others  => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 2) then
                      tmp_lv(1 downto 0) := normal_lv(lv'length - 1 downto lv'length - 2);
                      case tmp_lv(1 downto 0) is
                          when "00" => ret(i) := '0';
                          when "01" => ret(i) := '1';
                          when "10" => ret(i) := '2';
                          when "11" => ret(i) := '3';
                          when others => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 1) then
                      tmp_lv(0 downto 0) := normal_lv(lv'length - 1 downto lv'length - 1);
                      case tmp_lv(0 downto 0) is
                          when "0" => ret(i) := '0';
                          when "1" => ret(i) := '1';
                          when others=> ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 0) then
                      tmp_lv(3 downto 0) := normal_lv(lv'length - 1 downto lv'length - 4);
                      case tmp_lv(3 downto 0) is
                          when "0000" => ret(i) := '0';
                          when "0001" => ret(i) := '1';
                          when "0010" => ret(i) := '2';
                          when "0011" => ret(i) := '3';
                          when "0100" => ret(i) := '4';
                          when "0101" => ret(i) := '5';
                          when "0110" => ret(i) := '6';
                          when "0111" => ret(i) := '7';
                          when "1000" => ret(i) := '8';
                          when "1001" => ret(i) := '9';
                          when "1010" => ret(i) := 'a';
                          when "1011" => ret(i) := 'b';
                          when "1100" => ret(i) := 'c';
                          when "1101" => ret(i) := 'd';
                          when "1110" => ret(i) := 'e';
                          when "1111" => ret(i) := 'f';
                          when others   => ret(i) := 'X';
                      end case;
                  end if;
              else
                  tmp_lv(3 downto 0) := normal_lv((str_len - i) * 4 + 3 downto (str_len - i) * 4);
                  case tmp_lv(3 downto 0) is
                      when "0000" => ret(i) := '0';
                      when "0001" => ret(i) := '1';
                      when "0010" => ret(i) := '2';
                      when "0011" => ret(i) := '3';
                      when "0100" => ret(i) := '4';
                      when "0101" => ret(i) := '5';
                      when "0110" => ret(i) := '6';
                      when "0111" => ret(i) := '7';
                      when "1000" => ret(i) := '8';
                      when "1001" => ret(i) := '9';
                      when "1010" => ret(i) := 'a';
                      when "1011" => ret(i) := 'b';
                      when "1100" => ret(i) := 'c';
                      when "1101" => ret(i) := 'd';
                      when "1110" => ret(i) := 'e';
                      when "1111" => ret(i) := 'f';
                      when others   => ret(i) := 'X';
                  end case;
              end if;
          end loop;
          return ret;
      end function;

procedure count_c_data_four_byte_num_by_bitwidth (constant bitwidth : IN INTEGER; variable num : OUT INTEGER) is
variable factor : INTEGER;
variable i : INTEGER;
begin
    factor := 32;
    for i in 1 to 32 loop
        if (bitwidth <= factor and bitwidth > factor - 32) then
            num := i;
        end if;
        factor := factor + 32;
    end loop;
end procedure; 

procedure count_seperate_factor_by_bitwidth(bitwidth : in INTEGER; factor : out INTEGER) is
begin
    if (bitwidth <= 8) then
        factor := 4;
    elsif (bitwidth <= 16 and bitwidth > 8 ) then
        factor := 2;
    elsif (bitwidth <= 32 and bitwidth > 16 ) then
        factor := 1;
    elsif (bitwidth <= 1024 and bitwidth > 32 ) then
        factor := 1;
    end if;
end procedure;

procedure count_operate_depth_by_bitwidth_and_depth(bitwidth : in INTEGER; depth : in INTEGER; operate_depth : out INTEGER) is
variable factor : INTEGER;
variable remain : INTEGER;
variable operate_depth_tmp : INTEGER;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth_tmp := depth / factor;
    remain := depth mod factor;
    if (remain > 0) then
        operate_depth_tmp := operate_depth_tmp + 1;
    end if;
    operate_depth := operate_depth_tmp;
end procedure;

begin
--=================== signal connection ==============
TRAN_s_axi_control_AWADDR <= AWADDR_reg;
TRAN_s_axi_control_AWVALID <= AWVALID_reg;
TRAN_s_axi_control_WVALID <= WVALID_reg;
TRAN_s_axi_control_WDATA <= WDATA_reg;
TRAN_s_axi_control_WSTRB <= WSTRB_reg;
TRAN_s_axi_control_ARADDR <= ARADDR_reg;
TRAN_s_axi_control_ARVALID <= ARVALID_reg;
TRAN_s_axi_control_RREADY <= RREADY_reg;
TRAN_s_axi_control_BREADY <= BREADY_reg;
TRAN_control_done_out <= AESL_done_index_reg;
TRAN_control_ready_out <= AESL_ready_out_index_reg;
TRAN_control_write_start_finish <= AESL_write_start_finish;
TRAN_control_idle_out <= AESL_idle_index_reg;
TRAN_control_read_data_finish <= '1' and output_r_read_data_finish;
TRAN_control_write_data_finish <= '1' and input_r_write_data_finish and bias_write_data_finish and weights_write_data_finish and numOfInNeurons_write_data_finish and numOfOutputNeurons_write_data_finish and activation_write_data_finish;
AESL_ready_reg_proc : process(TRAN_control_ready_in, ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in or ready_initial;
end process;
gen_ready_initial_proc : process
begin
    ready_initial <= '0';
    wait until reset = '1';
        wait until clk'event and clk = '1';
    ready_initial <= '1';
    wait until clk'event and clk = '1';
    ready_initial <= '0';
    wait;
end process;

ongoing_process_number_gen : process(reset , process_0_finish , process_1_finish , process_2_finish , process_3_finish , process_4_finish , process_5_finish , process_6_finish , process_7_finish , process_8_finish )
begin
    if (reset = '0') then
        ongoing_process_number <= 0;
    elsif (ongoing_process_number = 0 and process_0_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 1 and process_1_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 2 and process_2_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 3 and process_3_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 4 and process_4_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 5 and process_5_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 6 and process_6_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 7 and process_7_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 8 and process_8_finish = '1') then
            ongoing_process_number <= 0;
    end if;
end process;

output_reg_write_value_function : process
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    while (true) loop
        if (ongoing_process_number = 0 ) then
            AWADDR_reg <= process_0_AWADDR_var;
            AWVALID_reg <= process_0_AWVALID_var;
            WVALID_reg <= process_0_WVALID_var;
            WDATA_reg <= process_0_WDATA_var;
            WSTRB_reg <= process_0_WSTRB_var;
            ARADDR_reg <= process_0_ARADDR_var;
            ARVALID_reg <= process_0_ARVALID_var;
            RREADY_reg <= process_0_RREADY_var;
            BREADY_reg <= process_0_BREADY_var;
        elsif (ongoing_process_number = 1 ) then
            AWADDR_reg <= process_1_AWADDR_var;
            AWVALID_reg <= process_1_AWVALID_var;
            WVALID_reg <= process_1_WVALID_var;
            WDATA_reg <= process_1_WDATA_var;
            WSTRB_reg <= process_1_WSTRB_var;
            ARADDR_reg <= process_1_ARADDR_var;
            ARVALID_reg <= process_1_ARVALID_var;
            RREADY_reg <= process_1_RREADY_var;
            BREADY_reg <= process_1_BREADY_var;
        elsif (ongoing_process_number = 2 ) then
            AWADDR_reg <= process_2_AWADDR_var;
            AWVALID_reg <= process_2_AWVALID_var;
            WVALID_reg <= process_2_WVALID_var;
            WDATA_reg <= process_2_WDATA_var;
            WSTRB_reg <= process_2_WSTRB_var;
            ARADDR_reg <= process_2_ARADDR_var;
            ARVALID_reg <= process_2_ARVALID_var;
            RREADY_reg <= process_2_RREADY_var;
            BREADY_reg <= process_2_BREADY_var;
        elsif (ongoing_process_number = 3 ) then
            AWADDR_reg <= process_3_AWADDR_var;
            AWVALID_reg <= process_3_AWVALID_var;
            WVALID_reg <= process_3_WVALID_var;
            WDATA_reg <= process_3_WDATA_var;
            WSTRB_reg <= process_3_WSTRB_var;
            ARADDR_reg <= process_3_ARADDR_var;
            ARVALID_reg <= process_3_ARVALID_var;
            RREADY_reg <= process_3_RREADY_var;
            BREADY_reg <= process_3_BREADY_var;
        elsif (ongoing_process_number = 4 ) then
            AWADDR_reg <= process_4_AWADDR_var;
            AWVALID_reg <= process_4_AWVALID_var;
            WVALID_reg <= process_4_WVALID_var;
            WDATA_reg <= process_4_WDATA_var;
            WSTRB_reg <= process_4_WSTRB_var;
            ARADDR_reg <= process_4_ARADDR_var;
            ARVALID_reg <= process_4_ARVALID_var;
            RREADY_reg <= process_4_RREADY_var;
            BREADY_reg <= process_4_BREADY_var;
        elsif (ongoing_process_number = 5 ) then
            AWADDR_reg <= process_5_AWADDR_var;
            AWVALID_reg <= process_5_AWVALID_var;
            WVALID_reg <= process_5_WVALID_var;
            WDATA_reg <= process_5_WDATA_var;
            WSTRB_reg <= process_5_WSTRB_var;
            ARADDR_reg <= process_5_ARADDR_var;
            ARVALID_reg <= process_5_ARVALID_var;
            RREADY_reg <= process_5_RREADY_var;
            BREADY_reg <= process_5_BREADY_var;
        elsif (ongoing_process_number = 6 ) then
            AWADDR_reg <= process_6_AWADDR_var;
            AWVALID_reg <= process_6_AWVALID_var;
            WVALID_reg <= process_6_WVALID_var;
            WDATA_reg <= process_6_WDATA_var;
            WSTRB_reg <= process_6_WSTRB_var;
            ARADDR_reg <= process_6_ARADDR_var;
            ARVALID_reg <= process_6_ARVALID_var;
            RREADY_reg <= process_6_RREADY_var;
            BREADY_reg <= process_6_BREADY_var;
        elsif (ongoing_process_number = 7 ) then
            AWADDR_reg <= process_7_AWADDR_var;
            AWVALID_reg <= process_7_AWVALID_var;
            WVALID_reg <= process_7_WVALID_var;
            WDATA_reg <= process_7_WDATA_var;
            WSTRB_reg <= process_7_WSTRB_var;
            ARADDR_reg <= process_7_ARADDR_var;
            ARVALID_reg <= process_7_ARVALID_var;
            RREADY_reg <= process_7_RREADY_var;
            BREADY_reg <= process_7_BREADY_var;
        elsif (ongoing_process_number = 8 ) then
            AWADDR_reg <= process_8_AWADDR_var;
            AWVALID_reg <= process_8_AWVALID_var;
            WVALID_reg <= process_8_WVALID_var;
            WDATA_reg <= process_8_WDATA_var;
            WSTRB_reg <= process_8_WSTRB_var;
            ARADDR_reg <= process_8_ARADDR_var;
            ARVALID_reg <= process_8_ARVALID_var;
            RREADY_reg <= process_8_RREADY_var;
            BREADY_reg <= process_8_BREADY_var;
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
update_status_proc : process
    variable process_num : INTEGER;
    variable read_status_resp : INTEGER;
    variable process_0_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    process_num := 0;
    while (true) loop
        process_0_finish <= '0';
        AESL_done_index_reg         <= '0';
        AESL_ready_out_index_reg        <= '0';
        if (ongoing_process_number = process_num and process_busy = '0') then
            process_busy := '1';
--=======================one single read operate======================
                read_status_resp := 0;
                process_0_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(STATUS_ADDR, ADDR_WIDTH));
                process_0_ARVALID_var <= '1';
                while (TRAN_s_axi_control_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_0_ARVALID_var <= '0';
                process_0_RREADY_var <= '1';
                while (TRAN_s_axi_control_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_0_RDATA_tmp := TRAN_s_axi_control_RDATA;
                process_0_RREADY_var <= '0';
                if (TRAN_s_axi_control_RRESP = (2 => '0') ) then
                    read_status_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                AESL_done_index_reg         <= process_0_RDATA_tmp(1);
                AESL_ready_out_index_reg        <= process_0_RDATA_tmp(1);
                AESL_idle_index_reg         <= process_0_RDATA_tmp(2);
            process_busy := '0';
            process_0_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_write_input_r_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        input_r_write_data_finish <= '0';
        write_input_r_run_flag <= '0'; 
        write_input_r_count := 0;
        count_operate_depth_by_bitwidth_and_depth (input_r_c_bitwidth, input_r_DEPTH, input_r_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_control_start_in = '1') then
            input_r_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_input_r_run_flag <= '1'; 
            write_input_r_count := 0;
        end if;
        if (write_one_input_r_data_done = '1') then
            write_input_r_count := write_input_r_count + 1;
            if (write_input_r_count = input_r_OPERATE_DEPTH) then
                write_input_r_run_flag <= '0'; 
                input_r_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_input_r_proc : process
    variable write_input_r_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_1_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable input_r_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := input_r_c_bitwidth;
    process_num := 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_1_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_input_r_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write input_r data 
                for i in 0 to four_byte_num - 1 loop
                    if (input_r_c_bitwidth < 32) then
                        input_r_data_tmp_reg := mem_input_r(write_input_r_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < input_r_c_bitwidth) then
                                input_r_data_tmp_reg(j) := mem_input_r(write_input_r_count)(i*32 + j);
                            else 
                                input_r_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
                    if(image_mem_input_r(write_input_r_count * four_byte_num  + i)/=input_r_data_tmp_reg) then
--=======================one single write operate======================
                write_input_r_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_1_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(input_r_data_in_addr + write_input_r_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_1_AWVALID_var <= '1';
                process_1_WDATA_var   <= input_r_data_tmp_reg;
                process_1_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_1_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_1_AWVALID_var <= not aw_flag;
                    process_1_WVALID_var <= not w_flag;
                end loop;

                process_1_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_1_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_input_r_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                    image_mem_input_r(write_input_r_count * four_byte_num  + i) := input_r_data_tmp_reg;
                    end if;
                end loop;
                process_busy := '0';
                write_one_input_r_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_input_r_data_done <= '0';
            end if;
            process_1_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_bias_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        bias_write_data_finish <= '0';
        write_bias_run_flag <= '0'; 
        write_bias_count := 0;
        count_operate_depth_by_bitwidth_and_depth (bias_c_bitwidth, bias_DEPTH, bias_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_control_start_in = '1') then
            bias_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_bias_run_flag <= '1'; 
            write_bias_count := 0;
        end if;
        if (write_one_bias_data_done = '1') then
            write_bias_count := write_bias_count + 1;
            if (write_bias_count = bias_OPERATE_DEPTH) then
                write_bias_run_flag <= '0'; 
                bias_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_bias_proc : process
    variable write_bias_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_2_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable bias_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := bias_c_bitwidth;
    process_num := 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_2_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_bias_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write bias data 
                for i in 0 to four_byte_num - 1 loop
                    if (bias_c_bitwidth < 32) then
                        bias_data_tmp_reg := mem_bias(write_bias_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < bias_c_bitwidth) then
                                bias_data_tmp_reg(j) := mem_bias(write_bias_count)(i*32 + j);
                            else 
                                bias_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
                    if(image_mem_bias(write_bias_count * four_byte_num  + i)/=bias_data_tmp_reg) then
--=======================one single write operate======================
                write_bias_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_2_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(bias_data_in_addr + write_bias_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_2_AWVALID_var <= '1';
                process_2_WDATA_var   <= bias_data_tmp_reg;
                process_2_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_2_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_2_AWVALID_var <= not aw_flag;
                    process_2_WVALID_var <= not w_flag;
                end loop;

                process_2_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_2_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_bias_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                    image_mem_bias(write_bias_count * four_byte_num  + i) := bias_data_tmp_reg;
                    end if;
                end loop;
                process_busy := '0';
                write_one_bias_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_bias_data_done <= '0';
            end if;
            process_2_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_weights_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        weights_write_data_finish <= '0';
        write_weights_run_flag <= '0'; 
        write_weights_count := 0;
        count_operate_depth_by_bitwidth_and_depth (weights_c_bitwidth, weights_DEPTH, weights_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_control_start_in = '1') then
            weights_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_weights_run_flag <= '1'; 
            write_weights_count := 0;
        end if;
        if (write_one_weights_data_done = '1') then
            write_weights_count := write_weights_count + 1;
            if (write_weights_count = weights_OPERATE_DEPTH) then
                write_weights_run_flag <= '0'; 
                weights_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_weights_proc : process
    variable write_weights_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_3_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable weights_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := weights_c_bitwidth;
    process_num := 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_3_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_weights_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write weights data 
                for i in 0 to four_byte_num - 1 loop
                    if (weights_c_bitwidth < 32) then
                        weights_data_tmp_reg := mem_weights(write_weights_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < weights_c_bitwidth) then
                                weights_data_tmp_reg(j) := mem_weights(write_weights_count)(i*32 + j);
                            else 
                                weights_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
                    if(image_mem_weights(write_weights_count * four_byte_num  + i)/=weights_data_tmp_reg) then
--=======================one single write operate======================
                write_weights_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_3_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(weights_data_in_addr + write_weights_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_3_AWVALID_var <= '1';
                process_3_WDATA_var   <= weights_data_tmp_reg;
                process_3_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_3_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_3_AWVALID_var <= not aw_flag;
                    process_3_WVALID_var <= not w_flag;
                end loop;

                process_3_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_3_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_weights_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                    image_mem_weights(write_weights_count * four_byte_num  + i) := weights_data_tmp_reg;
                    end if;
                end loop;
                process_busy := '0';
                write_one_weights_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_weights_data_done <= '0';
            end if;
            process_3_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_numOfInNeurons_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        numOfInNeurons_write_data_finish <= '0';
        write_numOfInNeurons_run_flag <= '0'; 
        write_numOfInNeurons_count := 0;
        count_operate_depth_by_bitwidth_and_depth (numOfInNeurons_c_bitwidth, numOfInNeurons_DEPTH, numOfInNeurons_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_control_start_in = '1') then
            numOfInNeurons_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_numOfInNeurons_run_flag <= '1'; 
            write_numOfInNeurons_count := 0;
        end if;
        if (write_one_numOfInNeurons_data_done = '1') then
            write_numOfInNeurons_count := write_numOfInNeurons_count + 1;
            if (write_numOfInNeurons_count = numOfInNeurons_OPERATE_DEPTH) then
                write_numOfInNeurons_run_flag <= '0'; 
                numOfInNeurons_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_numOfInNeurons_proc : process
    variable write_numOfInNeurons_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_4_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable numOfInNeurons_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := numOfInNeurons_c_bitwidth;
    process_num := 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_4_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_numOfInNeurons_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write numOfInNeurons data 
                for i in 0 to four_byte_num - 1 loop
                    if (numOfInNeurons_c_bitwidth < 32) then
                        numOfInNeurons_data_tmp_reg := mem_numOfInNeurons(write_numOfInNeurons_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < numOfInNeurons_c_bitwidth) then
                                numOfInNeurons_data_tmp_reg(j) := mem_numOfInNeurons(write_numOfInNeurons_count)(i*32 + j);
                            else 
                                numOfInNeurons_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
                    if(image_mem_numOfInNeurons(write_numOfInNeurons_count * four_byte_num  + i)/=numOfInNeurons_data_tmp_reg) then
--=======================one single write operate======================
                write_numOfInNeurons_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_4_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(numOfInNeurons_data_in_addr + write_numOfInNeurons_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_4_AWVALID_var <= '1';
                process_4_WDATA_var   <= numOfInNeurons_data_tmp_reg;
                process_4_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_4_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_4_AWVALID_var <= not aw_flag;
                    process_4_WVALID_var <= not w_flag;
                end loop;

                process_4_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_4_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_numOfInNeurons_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                    image_mem_numOfInNeurons(write_numOfInNeurons_count * four_byte_num  + i) := numOfInNeurons_data_tmp_reg;
                    end if;
                end loop;
                process_busy := '0';
                write_one_numOfInNeurons_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_numOfInNeurons_data_done <= '0';
            end if;
            process_4_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_numOfOutputNeurons_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        numOfOutputNeurons_write_data_finish <= '0';
        write_numOfOutputNeurons_run_flag <= '0'; 
        write_numOfOutputNeurons_count := 0;
        count_operate_depth_by_bitwidth_and_depth (numOfOutputNeurons_c_bitwidth, numOfOutputNeurons_DEPTH, numOfOutputNeurons_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_control_start_in = '1') then
            numOfOutputNeurons_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_numOfOutputNeurons_run_flag <= '1'; 
            write_numOfOutputNeurons_count := 0;
        end if;
        if (write_one_numOfOutputNeurons_data_done = '1') then
            write_numOfOutputNeurons_count := write_numOfOutputNeurons_count + 1;
            if (write_numOfOutputNeurons_count = numOfOutputNeurons_OPERATE_DEPTH) then
                write_numOfOutputNeurons_run_flag <= '0'; 
                numOfOutputNeurons_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_numOfOutputNeurons_proc : process
    variable write_numOfOutputNeurons_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_5_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable numOfOutputNeurons_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := numOfOutputNeurons_c_bitwidth;
    process_num := 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_5_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_numOfOutputNeurons_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write numOfOutputNeurons data 
                for i in 0 to four_byte_num - 1 loop
                    if (numOfOutputNeurons_c_bitwidth < 32) then
                        numOfOutputNeurons_data_tmp_reg := mem_numOfOutputNeurons(write_numOfOutputNeurons_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < numOfOutputNeurons_c_bitwidth) then
                                numOfOutputNeurons_data_tmp_reg(j) := mem_numOfOutputNeurons(write_numOfOutputNeurons_count)(i*32 + j);
                            else 
                                numOfOutputNeurons_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
                    if(image_mem_numOfOutputNeurons(write_numOfOutputNeurons_count * four_byte_num  + i)/=numOfOutputNeurons_data_tmp_reg) then
--=======================one single write operate======================
                write_numOfOutputNeurons_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_5_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(numOfOutputNeurons_data_in_addr + write_numOfOutputNeurons_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_5_AWVALID_var <= '1';
                process_5_WDATA_var   <= numOfOutputNeurons_data_tmp_reg;
                process_5_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_5_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_5_AWVALID_var <= not aw_flag;
                    process_5_WVALID_var <= not w_flag;
                end loop;

                process_5_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_5_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_numOfOutputNeurons_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                    image_mem_numOfOutputNeurons(write_numOfOutputNeurons_count * four_byte_num  + i) := numOfOutputNeurons_data_tmp_reg;
                    end if;
                end loop;
                process_busy := '0';
                write_one_numOfOutputNeurons_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_numOfOutputNeurons_data_done <= '0';
            end if;
            process_5_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_activation_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        activation_write_data_finish <= '0';
        write_activation_run_flag <= '0'; 
        write_activation_count := 0;
        count_operate_depth_by_bitwidth_and_depth (activation_c_bitwidth, activation_DEPTH, activation_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_control_start_in = '1') then
            activation_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_activation_run_flag <= '1'; 
            write_activation_count := 0;
        end if;
        if (write_one_activation_data_done = '1') then
            write_activation_count := write_activation_count + 1;
            if (write_activation_count = activation_OPERATE_DEPTH) then
                write_activation_run_flag <= '0'; 
                activation_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_activation_proc : process
    variable write_activation_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_6_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable activation_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := activation_c_bitwidth;
    process_num := 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_6_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_activation_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write activation data 
                for i in 0 to four_byte_num - 1 loop
                    if (activation_c_bitwidth < 32) then
                        activation_data_tmp_reg := mem_activation(write_activation_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < activation_c_bitwidth) then
                                activation_data_tmp_reg(j) := mem_activation(write_activation_count)(i*32 + j);
                            else 
                                activation_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
                    if(image_mem_activation(write_activation_count * four_byte_num  + i)/=activation_data_tmp_reg) then
--=======================one single write operate======================
                write_activation_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_6_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(activation_data_in_addr + write_activation_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_6_AWVALID_var <= '1';
                process_6_WDATA_var   <= activation_data_tmp_reg;
                process_6_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_6_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_6_AWVALID_var <= not aw_flag;
                    process_6_WVALID_var <= not w_flag;
                end loop;

                process_6_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_6_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_activation_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                    image_mem_activation(write_activation_count * four_byte_num  + i) := activation_data_tmp_reg;
                    end if;
                end loop;
                process_busy := '0';
                write_one_activation_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_activation_data_done <= '0';
            end if;
            process_6_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_write_start_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        write_start_run_flag <= '0'; 
        write_start_count := 0;
    elsif (clk'event and clk = '1') then
        if (write_start_count >= 2) then
            write_start_run_flag <= '0'; 
        elsif (TRAN_control_write_start_in = '1') then
            write_start_run_flag <= '1'; 
        end if;
        if (AESL_write_start_finish = '1') then
            write_start_count := write_start_count + 1;
            write_start_run_flag <= '0'; 
        end if;
    end if;
end process;

write_start_proc : process
    variable process_num : INTEGER;
    variable write_start_resp : INTEGER;
    variable write_start_tmp : STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0) ;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
    variable i : INTEGER;
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    process_num := 7;
    while (true) loop
        process_7_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (write_start_run_flag = '1') then
                process_busy := '1';
                write_start_tmp := (others => '0');
                write_start_tmp(0) := '1';
--=======================one single write operate======================
                write_start_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_7_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(START_ADDR, ADDR_WIDTH));
                process_7_AWVALID_var <= '1';
                process_7_WDATA_var   <= write_start_tmp;
                process_7_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_7_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_control_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_control_WREADY and WVALID_reg;
                    end if;
                    process_7_AWVALID_var <= not aw_flag;
                    process_7_WVALID_var <= not w_flag;
                end loop;

                process_7_BREADY_var <= '1';
                while (TRAN_s_axi_control_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_7_BREADY_var <= '0';
                if (TRAN_s_axi_control_BRESP = (2 => '0')) then
                    write_start_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                process_busy := '0';
                AESL_write_start_finish <= '1';
                wait until clk'event and clk = '1';
                AESL_write_start_finish <= '0';
            end if;
            process_7_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_read_output_r_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        output_r_read_data_finish <= '0';
        read_output_r_run_flag <= '0'; 
        read_output_r_count := 0;
        count_operate_depth_by_bitwidth_and_depth (output_r_c_bitwidth, output_r_DEPTH, output_r_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (AESL_done_index_reg = '1') then
            read_output_r_run_flag <= '1'; 
        end if;
        if (TRAN_control_transaction_done_in = '1') then
            output_r_read_data_finish <= '0';
            read_output_r_count := 0; 
        end if;
        if (read_one_output_r_data_done = '1') then
            read_output_r_count := read_output_r_count + 1;
            if (read_output_r_count = output_r_OPERATE_DEPTH) then
                read_output_r_run_flag <= '0'; 
                output_r_read_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

read_output_r_proc : process
    variable read_output_r_resp : INTEGER;
    variable process_num : INTEGER;
    variable get_vld : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable process_8_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
    variable i : INTEGER;
    variable j : INTEGER;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 ) := (others => '0');

begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := output_r_c_bitwidth;
    process_num := 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_8_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (read_output_r_run_flag = '1') then
                process_busy := '1';
                get_vld := 1;
                if (get_vld = 1) then
                    --read output_r data 
                    for i in 0 to four_byte_num - 1 loop
--=======================one single read operate======================
                read_output_r_resp := 0;
                process_8_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(output_r_data_out_addr + read_output_r_count * four_byte_num * 4 + 4*i, ADDR_WIDTH));
                process_8_ARVALID_var <= '1';
                while (TRAN_s_axi_control_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_ARVALID_var <= '0';
                process_8_RREADY_var <= '1';
                while (TRAN_s_axi_control_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_RDATA_tmp := TRAN_s_axi_control_RDATA;
                process_8_RREADY_var <= '0';
                if (TRAN_s_axi_control_RRESP = (2 => '0') ) then
                    read_output_r_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                        if (output_r_c_bitwidth < 32) then
                            mem_output_r(read_output_r_count) := process_8_RDATA_tmp;
                        else
                            for j in 0 to 32 - 1 loop
                                if (i*32 + j < output_r_c_bitwidth) then
                                    mem_output_r(read_output_r_count)(i*32 + j) := process_8_RDATA_tmp(j);
                                end if;
                            end loop;
                        end if;
                    end loop;
                    
                    read_one_output_r_data_done <= '1';
                    wait until clk'event and clk = '1';
                    read_one_output_r_data_done <= '0';
                end if;
                process_busy := '0';
            end if;
            process_8_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
end process;
--------------------------Read file------------------------ 
 
-- Read data from file 
read_input_r_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(input_r_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (input_r_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_input_r , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_input_r & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to input_r_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, input_r_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              tmp_cache_mem_8 (7 downto 0) := (others => '0');
              for j in 0 to input_r_c_bitwidth - 1 loop
                  tmp_cache_mem_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (7 downto 0) := tmp_cache_mem_8;
              elsif (remain = 1) then
                  tmp_cache_mem (15 downto 8) := tmp_cache_mem_8;
              elsif (remain = 2) then
                  tmp_cache_mem (23 downto 16) := tmp_cache_mem_8;
              elsif (remain = 3) then
                  tmp_cache_mem (31 downto 24) := tmp_cache_mem_8;
                  mem_input_r(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              tmp_cache_mem_16 (15 downto 0) := (others => '0');
              for j in 0 to input_r_c_bitwidth - 1 loop
                  tmp_cache_mem_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (15 downto 0) := tmp_cache_mem_16;
              elsif (remain = 1) then
                  tmp_cache_mem (31 downto 16) := tmp_cache_mem_16;
                  mem_input_r(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (input_r_c_bitwidth < 32) then
                  tmp_cache_mem_32 (31 downto 0) := (others => '0');
                  for j in 0 to input_r_c_bitwidth - 1 loop
                      tmp_cache_mem_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_input_r(i)(31 downto 0) := tmp_cache_mem_32;
              else
                  mem_input_r(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_input_r(input_r_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_input_r(input_r_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
    wait;
end process;
 
--------------------------Write file----------------------- 
 
-- Write data to file 
 
write_output_r_file_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
  variable    transaction_idx :   INTEGER;
  variable    i               :   INTEGER; 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(output_r_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    factor : INTEGER; 
  variable    remain : INTEGER; 
  variable    mem_page : INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (output_r_c_bitwidth , factor);
  while(true) loop
      wait until clk'event and clk = '1';
      while (output_r_read_data_finish /= '1' or TRAN_control_transaction_done_in = '1') loop
          wait until clk'event and clk = '1';
      end loop;
      wait for 0.1 ns;
      file_open(fstatus, fp, TV_OUT_output_r, APPEND_MODE);
      if(fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_OUT_output_r & " failed!!!" severity failure;
      end if;
      write(token_line, "[[transaction]]    " & integer'image(transaction_idx));
      writeline(fp, token_line);
      for i in 0 to (output_r_DEPTH - output_r_DEPTH mod factor) - 1 loop
          remain := i mod factor;
          if (factor = 4) then
              if (remain = 0) then
                  tmp_cache_mem := mem_output_r(i/factor)(7 downto 0);
              elsif (remain = 1) then
                  tmp_cache_mem := mem_output_r(i/factor)(15 downto 8);
              elsif (remain = 2) then
                  tmp_cache_mem := mem_output_r(i/factor)(23 downto 16);
              elsif (remain = 3) then
                  tmp_cache_mem := mem_output_r(i/factor)(31 downto 24);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(tmp_cache_mem));
              writeline(fp, token_line);
          elsif (factor = 2) then
              if (remain = 0) then
                  tmp_cache_mem := mem_output_r(i/factor)(15 downto 0);
              elsif (remain = 1) then
                  tmp_cache_mem := mem_output_r(i/factor)(31 downto 16);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(tmp_cache_mem));
              writeline(fp, token_line);
          elsif (factor = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(i)));
              writeline(fp, token_line);
          end if;
      end loop;
      remain := (output_r_DEPTH - 1) mod factor;
      if (factor = 4) then
          if (remain = 2) then
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(23 downto 16)));
              writeline(fp, token_line);
          elsif (remain = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
          elsif (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
          end if;
      elsif (factor = 2) then
          if (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_output_r(output_r_DEPTH/factor)(15 downto 0)));
              writeline(fp, token_line);
          end if;
      end if;
      write(token_line, string'("[[/transaction]]"));
      writeline(fp, token_line);
      transaction_idx := transaction_idx + 1;
      file_close(fp);
      while (TRAN_control_start_in /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
  end loop;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_bias_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(bias_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (bias_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_bias , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_bias & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to bias_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, bias_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              tmp_cache_mem_8 (7 downto 0) := (others => '0');
              for j in 0 to bias_c_bitwidth - 1 loop
                  tmp_cache_mem_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (7 downto 0) := tmp_cache_mem_8;
              elsif (remain = 1) then
                  tmp_cache_mem (15 downto 8) := tmp_cache_mem_8;
              elsif (remain = 2) then
                  tmp_cache_mem (23 downto 16) := tmp_cache_mem_8;
              elsif (remain = 3) then
                  tmp_cache_mem (31 downto 24) := tmp_cache_mem_8;
                  mem_bias(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              tmp_cache_mem_16 (15 downto 0) := (others => '0');
              for j in 0 to bias_c_bitwidth - 1 loop
                  tmp_cache_mem_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (15 downto 0) := tmp_cache_mem_16;
              elsif (remain = 1) then
                  tmp_cache_mem (31 downto 16) := tmp_cache_mem_16;
                  mem_bias(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (bias_c_bitwidth < 32) then
                  tmp_cache_mem_32 (31 downto 0) := (others => '0');
                  for j in 0 to bias_c_bitwidth - 1 loop
                      tmp_cache_mem_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_bias(i)(31 downto 0) := tmp_cache_mem_32;
              else
                  mem_bias(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_bias(bias_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_bias(bias_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
    wait;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_weights_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(weights_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (weights_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_weights , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_weights & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to weights_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, weights_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              tmp_cache_mem_8 (7 downto 0) := (others => '0');
              for j in 0 to weights_c_bitwidth - 1 loop
                  tmp_cache_mem_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (7 downto 0) := tmp_cache_mem_8;
              elsif (remain = 1) then
                  tmp_cache_mem (15 downto 8) := tmp_cache_mem_8;
              elsif (remain = 2) then
                  tmp_cache_mem (23 downto 16) := tmp_cache_mem_8;
              elsif (remain = 3) then
                  tmp_cache_mem (31 downto 24) := tmp_cache_mem_8;
                  mem_weights(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              tmp_cache_mem_16 (15 downto 0) := (others => '0');
              for j in 0 to weights_c_bitwidth - 1 loop
                  tmp_cache_mem_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (15 downto 0) := tmp_cache_mem_16;
              elsif (remain = 1) then
                  tmp_cache_mem (31 downto 16) := tmp_cache_mem_16;
                  mem_weights(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (weights_c_bitwidth < 32) then
                  tmp_cache_mem_32 (31 downto 0) := (others => '0');
                  for j in 0 to weights_c_bitwidth - 1 loop
                      tmp_cache_mem_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_weights(i)(31 downto 0) := tmp_cache_mem_32;
              else
                  mem_weights(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_weights(weights_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_weights(weights_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
    wait;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_numOfInNeurons_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(numOfInNeurons_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (numOfInNeurons_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_numOfInNeurons , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_numOfInNeurons & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to numOfInNeurons_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, numOfInNeurons_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              tmp_cache_mem_8 (7 downto 0) := (others => '0');
              for j in 0 to numOfInNeurons_c_bitwidth - 1 loop
                  tmp_cache_mem_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (7 downto 0) := tmp_cache_mem_8;
              elsif (remain = 1) then
                  tmp_cache_mem (15 downto 8) := tmp_cache_mem_8;
              elsif (remain = 2) then
                  tmp_cache_mem (23 downto 16) := tmp_cache_mem_8;
              elsif (remain = 3) then
                  tmp_cache_mem (31 downto 24) := tmp_cache_mem_8;
                  mem_numOfInNeurons(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              tmp_cache_mem_16 (15 downto 0) := (others => '0');
              for j in 0 to numOfInNeurons_c_bitwidth - 1 loop
                  tmp_cache_mem_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (15 downto 0) := tmp_cache_mem_16;
              elsif (remain = 1) then
                  tmp_cache_mem (31 downto 16) := tmp_cache_mem_16;
                  mem_numOfInNeurons(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (numOfInNeurons_c_bitwidth < 32) then
                  tmp_cache_mem_32 (31 downto 0) := (others => '0');
                  for j in 0 to numOfInNeurons_c_bitwidth - 1 loop
                      tmp_cache_mem_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_numOfInNeurons(i)(31 downto 0) := tmp_cache_mem_32;
              else
                  mem_numOfInNeurons(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_numOfInNeurons(numOfInNeurons_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_numOfInNeurons(numOfInNeurons_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
    wait;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_numOfOutputNeurons_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(numOfOutputNeurons_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (numOfOutputNeurons_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_numOfOutputNeurons , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_numOfOutputNeurons & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to numOfOutputNeurons_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, numOfOutputNeurons_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              tmp_cache_mem_8 (7 downto 0) := (others => '0');
              for j in 0 to numOfOutputNeurons_c_bitwidth - 1 loop
                  tmp_cache_mem_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (7 downto 0) := tmp_cache_mem_8;
              elsif (remain = 1) then
                  tmp_cache_mem (15 downto 8) := tmp_cache_mem_8;
              elsif (remain = 2) then
                  tmp_cache_mem (23 downto 16) := tmp_cache_mem_8;
              elsif (remain = 3) then
                  tmp_cache_mem (31 downto 24) := tmp_cache_mem_8;
                  mem_numOfOutputNeurons(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              tmp_cache_mem_16 (15 downto 0) := (others => '0');
              for j in 0 to numOfOutputNeurons_c_bitwidth - 1 loop
                  tmp_cache_mem_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (15 downto 0) := tmp_cache_mem_16;
              elsif (remain = 1) then
                  tmp_cache_mem (31 downto 16) := tmp_cache_mem_16;
                  mem_numOfOutputNeurons(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (numOfOutputNeurons_c_bitwidth < 32) then
                  tmp_cache_mem_32 (31 downto 0) := (others => '0');
                  for j in 0 to numOfOutputNeurons_c_bitwidth - 1 loop
                      tmp_cache_mem_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_numOfOutputNeurons(i)(31 downto 0) := tmp_cache_mem_32;
              else
                  mem_numOfOutputNeurons(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_numOfOutputNeurons(numOfOutputNeurons_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_numOfOutputNeurons(numOfOutputNeurons_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
    wait;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_activation_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(activation_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    tmp_cache_mem_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (activation_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_activation , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_activation & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to activation_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, activation_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              tmp_cache_mem_8 (7 downto 0) := (others => '0');
              for j in 0 to activation_c_bitwidth - 1 loop
                  tmp_cache_mem_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (7 downto 0) := tmp_cache_mem_8;
              elsif (remain = 1) then
                  tmp_cache_mem (15 downto 8) := tmp_cache_mem_8;
              elsif (remain = 2) then
                  tmp_cache_mem (23 downto 16) := tmp_cache_mem_8;
              elsif (remain = 3) then
                  tmp_cache_mem (31 downto 24) := tmp_cache_mem_8;
                  mem_activation(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              tmp_cache_mem_16 (15 downto 0) := (others => '0');
              for j in 0 to activation_c_bitwidth - 1 loop
                  tmp_cache_mem_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  tmp_cache_mem (15 downto 0) := tmp_cache_mem_16;
              elsif (remain = 1) then
                  tmp_cache_mem (31 downto 16) := tmp_cache_mem_16;
                  mem_activation(i/factor)(31 downto 0) := tmp_cache_mem;
                  tmp_cache_mem (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (activation_c_bitwidth < 32) then
                  tmp_cache_mem_32 (31 downto 0) := (others => '0');
                  for j in 0 to activation_c_bitwidth - 1 loop
                      tmp_cache_mem_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_activation(i)(31 downto 0) := tmp_cache_mem_32;
              else
                  mem_activation(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_activation(activation_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_activation(activation_DEPTH/factor)(31 downto 0) := tmp_cache_mem;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
    wait;
end process;
 
end behav;
