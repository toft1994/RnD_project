-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity NNLayer is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 17;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_local_block : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    activation : IN STD_LOGIC_VECTOR (7 downto 0);
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of NNLayer is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "NNLayer_NNLayer,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.585000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=35,HLS_SYN_DSP=0,HLS_SYN_FF=706,HLS_SYN_LUT=882,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_boolean_0 : BOOLEAN := false;

    signal ap_local_deadlock : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal input_r_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal output_r_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal output_r_ce0 : STD_LOGIC;
    signal output_r_we0 : STD_LOGIC;
    signal output_r_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal output_r_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal weights_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal bias_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal bias_ce0 : STD_LOGIC;
    signal bias_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal numOfInNeurons : STD_LOGIC_VECTOR (15 downto 0);
    signal numOfOutNeurons : STD_LOGIC_VECTOR (15 downto 0);
    signal numOfOutNeurons_read_reg_246 : STD_LOGIC_VECTOR (15 downto 0);
    signal numOfInNeurons_read_reg_252 : STD_LOGIC_VECTOR (15 downto 0);
    signal cmp45_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp45_reg_264 : STD_LOGIC_VECTOR (0 downto 0);
    signal outNeurons_2_fu_179_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal outNeurons_2_reg_271 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal empty_fu_185_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal empty_reg_276 : STD_LOGIC_VECTOR (14 downto 0);
    signal icmp_ln30_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal idxprom11_fu_189_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal idxprom11_reg_281 : STD_LOGIC_VECTOR (63 downto 0);
    signal output_r_addr_reg_286 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln40_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln40_reg_291 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_20_fu_199_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_20_reg_295 : STD_LOGIC_VECTOR (7 downto 0);
    signal output_r_load_reg_300 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal bias_load_reg_310 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_done : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_idle : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_ready : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_ce0 : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_we0 : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_done : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_idle : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_ready : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_weights_address0 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_weights_ce0 : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_input_r_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_input_r_ce0 : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_conv1514_out : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_conv1514_out_ap_vld : STD_LOGIC;
    signal grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal outNeurons_fu_76 : STD_LOGIC_VECTOR (15 downto 0);
    signal weightIndexAdded_fu_80 : STD_LOGIC_VECTOR (15 downto 0);
    signal weightIndexAdded_1_fu_207_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal add_ln36_fu_221_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state8_on_subcall_done : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component NNLayer_NNLayer_Pipeline_VITIS_LOOP_10_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        numOfOutNeurons_cast : IN STD_LOGIC_VECTOR (7 downto 0);
        output_r_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        output_r_ce0 : OUT STD_LOGIC;
        output_r_we0 : OUT STD_LOGIC;
        output_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        output_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component NNLayer_NNLayer_Pipeline_VITIS_LOOP_32_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        output_r_load : IN STD_LOGIC_VECTOR (15 downto 0);
        numOfInNeurons_cast : IN STD_LOGIC_VECTOR (15 downto 0);
        weightIndexAdded_cast : IN STD_LOGIC_VECTOR (14 downto 0);
        weights_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
        weights_ce0 : OUT STD_LOGIC;
        weights_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        input_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        input_r_ce0 : OUT STD_LOGIC;
        input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv1514_out : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv1514_out_ap_vld : OUT STD_LOGIC );
    end component;


    component NNLayer_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        numOfInNeurons : OUT STD_LOGIC_VECTOR (15 downto 0);
        numOfOutNeurons : OUT STD_LOGIC_VECTOR (15 downto 0);
        input_r_address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        input_r_ce0 : IN STD_LOGIC;
        input_r_q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        output_r_address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        output_r_ce0 : IN STD_LOGIC;
        output_r_we0 : IN STD_LOGIC;
        output_r_d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        output_r_q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        bias_address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        bias_ce0 : IN STD_LOGIC;
        bias_q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        weights_address0 : IN STD_LOGIC_VECTOR (14 downto 0);
        weights_ce0 : IN STD_LOGIC;
        weights_q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        ap_local_deadlock : IN STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132 : component NNLayer_NNLayer_Pipeline_VITIS_LOOP_10_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start,
        ap_done => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_done,
        ap_idle => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_idle,
        ap_ready => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_ready,
        numOfOutNeurons_cast => empty_20_reg_295,
        output_r_address0 => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_address0,
        output_r_ce0 => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_ce0,
        output_r_we0 => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_we0,
        output_r_d0 => grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_d0,
        output_r_q0 => output_r_q0);

    grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139 : component NNLayer_NNLayer_Pipeline_VITIS_LOOP_32_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start,
        ap_done => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_done,
        ap_idle => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_idle,
        ap_ready => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_ready,
        output_r_load => output_r_load_reg_300,
        numOfInNeurons_cast => numOfInNeurons_read_reg_252,
        weightIndexAdded_cast => empty_reg_276,
        weights_address0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_weights_address0,
        weights_ce0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_weights_ce0,
        weights_q0 => weights_q0,
        input_r_address0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_input_r_address0,
        input_r_ce0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_input_r_ce0,
        input_r_q0 => input_r_q0,
        conv1514_out => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_conv1514_out,
        conv1514_out_ap_vld => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_conv1514_out_ap_vld);

    control_s_axi_U : component NNLayer_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        numOfInNeurons => numOfInNeurons,
        numOfOutNeurons => numOfOutNeurons,
        input_r_address0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_input_r_address0,
        input_r_ce0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_input_r_ce0,
        input_r_q0 => input_r_q0,
        output_r_address0 => output_r_address0,
        output_r_ce0 => output_r_ce0,
        output_r_we0 => output_r_we0,
        output_r_d0 => output_r_d0,
        output_r_q0 => output_r_q0,
        bias_address0 => bias_address0,
        bias_ce0 => bias_ce0,
        bias_q0 => bias_q0,
        weights_address0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_weights_address0,
        weights_ce0 => grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_weights_ce0,
        weights_q0 => weights_q0,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        ap_local_deadlock => ap_local_deadlock);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln40_fu_194_p2 = ap_const_lv1_1) and (icmp_ln30_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_ready = ap_const_logic_1)) then 
                    grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_ready = ap_const_logic_1)) then 
                    grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    outNeurons_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                outNeurons_fu_76 <= ap_const_lv16_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                outNeurons_fu_76 <= outNeurons_2_reg_271;
            end if; 
        end if;
    end process;

    weightIndexAdded_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                weightIndexAdded_fu_80 <= ap_const_lv16_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                weightIndexAdded_fu_80 <= weightIndexAdded_1_fu_207_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                bias_load_reg_310 <= bias_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                cmp45_reg_264 <= cmp45_fu_155_p2;
                numOfInNeurons_read_reg_252 <= numOfInNeurons;
                numOfOutNeurons_read_reg_246 <= numOfOutNeurons;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln40_fu_194_p2 = ap_const_lv1_1) and (icmp_ln30_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                empty_20_reg_295 <= empty_20_fu_199_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln30_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                empty_reg_276 <= empty_fu_185_p1;
                    idxprom11_reg_281(15 downto 0) <= idxprom11_fu_189_p1(15 downto 0);
                output_r_addr_reg_286 <= idxprom11_fu_189_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln30_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln40_reg_291 <= icmp_ln40_fu_194_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                outNeurons_2_reg_271 <= outNeurons_2_fu_179_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                output_r_load_reg_300 <= output_r_q0;
            end if;
        end if;
    end process;
    idxprom11_reg_281(63 downto 16) <= "000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, cmp45_reg_264, ap_CS_fsm_state2, icmp_ln30_fu_174_p2, grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_done, ap_CS_fsm_state8, ap_CS_fsm_state4, ap_block_state8_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln30_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                elsif (((icmp_ln30_fu_174_p2 = ap_const_lv1_0) and (cmp45_reg_264 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_boolean_0 = ap_block_state8_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    add_ln36_fu_221_p2 <= std_logic_vector(unsigned(output_r_q0) + unsigned(bias_load_reg_310));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_done)
    begin
        if ((grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;

    ap_ST_fsm_state8_blk_assign_proc : process(ap_block_state8_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state8_on_subcall_done)) then 
            ap_ST_fsm_state8_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state8_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state8_on_subcall_done_assign_proc : process(icmp_ln40_reg_291, grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_done)
    begin
                ap_block_state8_on_subcall_done <= ((icmp_ln40_reg_291 = ap_const_lv1_1) and (grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state8, ap_block_state8_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_boolean_0 = ap_block_state8_on_subcall_done))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_lv1_0;

    ap_ready_assign_proc : process(ap_CS_fsm_state8, ap_block_state8_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_boolean_0 = ap_block_state8_on_subcall_done))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    bias_address0 <= idxprom11_reg_281(8 - 1 downto 0);

    bias_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bias_ce0 <= ap_const_logic_1;
        else 
            bias_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    cmp45_fu_155_p2 <= "1" when (numOfInNeurons = ap_const_lv16_0) else "0";
    empty_20_fu_199_p1 <= numOfOutNeurons_read_reg_246(8 - 1 downto 0);
    empty_fu_185_p1 <= weightIndexAdded_fu_80(15 - 1 downto 0);
    grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start <= grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_ap_start_reg;
    grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start <= grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_ap_start_reg;
    icmp_ln30_fu_174_p2 <= "1" when (outNeurons_fu_76 = numOfOutNeurons_read_reg_246) else "0";
    icmp_ln40_fu_194_p2 <= "1" when (activation = ap_const_lv8_1) else "0";
    idxprom11_fu_189_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(outNeurons_fu_76),64));
    outNeurons_2_fu_179_p2 <= std_logic_vector(unsigned(outNeurons_fu_76) + unsigned(ap_const_lv16_1));

    output_r_address0_assign_proc : process(cmp45_reg_264, ap_CS_fsm_state2, icmp_ln30_fu_174_p2, idxprom11_fu_189_p1, output_r_addr_reg_286, icmp_ln40_reg_291, ap_CS_fsm_state5, ap_CS_fsm_state6, grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_address0, ap_CS_fsm_state8, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            output_r_address0 <= output_r_addr_reg_286;
        elsif (((icmp_ln30_fu_174_p2 = ap_const_lv1_0) and (cmp45_reg_264 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            output_r_address0 <= idxprom11_fu_189_p1(8 - 1 downto 0);
        elsif (((icmp_ln40_reg_291 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            output_r_address0 <= grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_address0;
        else 
            output_r_address0 <= "XXXXXXXX";
        end if; 
    end process;


    output_r_ce0_assign_proc : process(cmp45_reg_264, ap_CS_fsm_state2, icmp_ln30_fu_174_p2, icmp_ln40_reg_291, ap_CS_fsm_state5, ap_CS_fsm_state6, grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_ce0, ap_CS_fsm_state8, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln30_fu_174_p2 = ap_const_lv1_0) and (cmp45_reg_264 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            output_r_ce0 <= ap_const_logic_1;
        elsif (((icmp_ln40_reg_291 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            output_r_ce0 <= grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_ce0;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    output_r_d0_assign_proc : process(icmp_ln40_reg_291, ap_CS_fsm_state5, grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_d0, grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_conv1514_out, ap_CS_fsm_state8, ap_CS_fsm_state7, add_ln36_fu_221_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            output_r_d0 <= add_ln36_fu_221_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            output_r_d0 <= grp_NNLayer_Pipeline_VITIS_LOOP_32_2_fu_139_conv1514_out;
        elsif (((icmp_ln40_reg_291 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            output_r_d0 <= grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_d0;
        else 
            output_r_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    output_r_we0_assign_proc : process(cmp45_reg_264, icmp_ln40_reg_291, ap_CS_fsm_state5, grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_we0, ap_CS_fsm_state8, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or ((cmp45_reg_264 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            output_r_we0 <= ap_const_logic_1;
        elsif (((icmp_ln40_reg_291 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            output_r_we0 <= grp_NNLayer_Pipeline_VITIS_LOOP_10_1_fu_132_output_r_we0;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    weightIndexAdded_1_fu_207_p2 <= std_logic_vector(unsigned(weightIndexAdded_fu_80) + unsigned(numOfInNeurons_read_reg_252));
end behav;