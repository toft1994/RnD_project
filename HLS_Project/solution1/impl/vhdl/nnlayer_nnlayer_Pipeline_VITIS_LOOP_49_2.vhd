-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nnlayer_nnlayer_Pipeline_VITIS_LOOP_49_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp : IN STD_LOGIC_VECTOR (15 downto 0);
    conv1250_i_cast : IN STD_LOGIC_VECTOR (15 downto 0);
    trunc_ln3 : IN STD_LOGIC_VECTOR (14 downto 0);
    lhs_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    lhs_out_ap_vld : OUT STD_LOGIC;
    p_ZL8weights_0_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_ZL8weights_0_ce0 : OUT STD_LOGIC;
    p_ZL8weights_0_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_ZL8weights_0_address1 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_ZL8weights_0_ce1 : OUT STD_LOGIC;
    p_ZL8weights_0_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_ZL8weights_1_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_ZL8weights_1_ce0 : OUT STD_LOGIC;
    p_ZL8weights_1_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_ZL8weights_1_address1 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_ZL8weights_1_ce1 : OUT STD_LOGIC;
    p_ZL8weights_1_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_ZL6input_0_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_ZL6input_0_ce0 : OUT STD_LOGIC;
    p_ZL6input_0_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_ZL6input_0_address1 : OUT STD_LOGIC_VECTOR (14 downto 0);
    p_ZL6input_0_ce1 : OUT STD_LOGIC;
    p_ZL6input_0_q1 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of nnlayer_nnlayer_Pipeline_VITIS_LOOP_49_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv9_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal tmp_1_reg_413 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_1_fu_191_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_413_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal lshr_ln_reg_417 : STD_LOGIC_VECTOR (1 downto 0);
    signal lshr_ln1169_1_reg_437 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal r_V_1_fu_319_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_V_1_reg_467 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_ZL6input_0_load_1_reg_472 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal zext_ln1169_fu_233_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln1171_fu_239_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1169_1_fu_280_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1171_1_fu_286_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal inc3741_i_fu_66 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln49_fu_291_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_inc3741_i_load : STD_LOGIC_VECTOR (8 downto 0);
    signal lhs_fu_70 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_lhs_load_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage1_01001 : BOOLEAN;
    signal zext_ln49_fu_203_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal conv1250_i_cast_cast_fu_174_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln52_fu_207_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln52_fu_211_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln1169_fu_217_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal empty_32_fu_199_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln49_fu_244_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln52_1_fu_250_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln52_2_fu_254_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln52_1_fu_258_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln1169_1_fu_264_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal r_V_fu_302_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_3_fu_345_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_380_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_3_fu_345_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln4_fu_362_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_389_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_380_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_389_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to2 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component nnlayer_mux_22_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component nnlayer_mac_muladd_16s_16s_24ns_24_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (23 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component nnlayer_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_22_16_1_1_U12 : component nnlayer_mux_22_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 2,
        dout_WIDTH => 16)
    port map (
        din0 => p_ZL8weights_0_q1,
        din1 => p_ZL8weights_1_q1,
        din2 => lshr_ln_reg_417,
        dout => r_V_fu_302_p4);

    mux_22_16_1_1_U13 : component nnlayer_mux_22_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 2,
        dout_WIDTH => 16)
    port map (
        din0 => p_ZL8weights_0_q0,
        din1 => p_ZL8weights_1_q0,
        din2 => lshr_ln1169_1_reg_437,
        dout => r_V_1_fu_319_p4);

    mac_muladd_16s_16s_24ns_24_4_1_U14 : component nnlayer_mac_muladd_16s_16s_24ns_24_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 24,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_ZL6input_0_q1,
        din1 => r_V_fu_302_p4,
        din2 => grp_fu_380_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_380_p3);

    mac_muladd_16s_16s_24ns_24_4_1_U15 : component nnlayer_mac_muladd_16s_16s_24ns_24_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 24,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_ZL6input_0_load_1_reg_472,
        din1 => r_V_1_reg_467,
        din2 => grp_fu_389_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_389_p3);

    flow_control_loop_pipe_sequential_init_U : component nnlayer_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    inc3741_i_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((tmp_1_fu_191_p3 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    inc3741_i_fu_66 <= add_ln49_fu_291_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    inc3741_i_fu_66 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    lhs_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                lhs_fu_70 <= tmp;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                lhs_fu_70 <= trunc_ln4_fu_362_p1(23 downto 8);
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_fu_191_p3 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                lshr_ln1169_1_reg_437 <= add_ln52_1_fu_258_p2(16 downto 15);
                lshr_ln_reg_417 <= add_ln52_fu_211_p2(16 downto 15);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_413 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                p_ZL6input_0_load_1_reg_472 <= p_ZL6input_0_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_413 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                r_V_1_reg_467 <= r_V_1_fu_319_p4;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_1_reg_413 <= ap_sig_allocacmp_inc3741_i_load(8 downto 8);
                tmp_1_reg_413_pp0_iter1_reg <= tmp_1_reg_413;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to2 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln1169_1_fu_264_p2 <= std_logic_vector(unsigned(zext_ln52_2_fu_254_p1) + unsigned(trunc_ln3));
    add_ln1169_fu_217_p2 <= std_logic_vector(unsigned(zext_ln52_fu_207_p1) + unsigned(trunc_ln3));
    add_ln49_fu_291_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_inc3741_i_load) + unsigned(ap_const_lv9_2));
    add_ln52_1_fu_258_p2 <= std_logic_vector(unsigned(zext_ln52_1_fu_250_p1) + unsigned(conv1250_i_cast_cast_fu_174_p1));
    add_ln52_fu_211_p2 <= std_logic_vector(unsigned(zext_ln49_fu_203_p1) + unsigned(conv1250_i_cast_cast_fu_174_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, tmp_1_reg_413)
    begin
        if (((tmp_1_reg_413 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to2_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to2 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_inc3741_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, inc3741_i_fu_66, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_inc3741_i_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_inc3741_i_load <= inc3741_i_fu_66;
        end if; 
    end process;


    ap_sig_allocacmp_lhs_load_1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_CS_fsm_pp0_stage1, lhs_fu_70, ap_block_pp0_stage1, trunc_ln4_fu_362_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_sig_allocacmp_lhs_load_1 <= trunc_ln4_fu_362_p1(23 downto 8);
        else 
            ap_sig_allocacmp_lhs_load_1 <= lhs_fu_70;
        end if; 
    end process;

    conv1250_i_cast_cast_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(conv1250_i_cast),17));
    empty_32_fu_199_p1 <= ap_sig_allocacmp_inc3741_i_load(8 - 1 downto 0);
    grp_fu_380_p2 <= (ap_sig_allocacmp_lhs_load_1 & ap_const_lv8_0);
    grp_fu_389_p2 <= (tmp_3_fu_345_p4 & ap_const_lv8_0);
    lhs_out <= lhs_fu_70;

    lhs_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, tmp_1_reg_413_pp0_iter1_reg, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (tmp_1_reg_413_pp0_iter1_reg = ap_const_lv1_1))) then 
            lhs_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    or_ln49_fu_244_p2 <= (empty_32_fu_199_p1 or ap_const_lv8_1);
    p_ZL6input_0_address0 <= zext_ln1171_1_fu_286_p1(15 - 1 downto 0);
    p_ZL6input_0_address1 <= zext_ln1171_fu_239_p1(15 - 1 downto 0);

    p_ZL6input_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ZL6input_0_ce0 <= ap_const_logic_1;
        else 
            p_ZL6input_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    p_ZL6input_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ZL6input_0_ce1 <= ap_const_logic_1;
        else 
            p_ZL6input_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    p_ZL8weights_0_address0 <= zext_ln1169_1_fu_280_p1(15 - 1 downto 0);
    p_ZL8weights_0_address1 <= zext_ln1169_fu_233_p1(15 - 1 downto 0);

    p_ZL8weights_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ZL8weights_0_ce0 <= ap_const_logic_1;
        else 
            p_ZL8weights_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    p_ZL8weights_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ZL8weights_0_ce1 <= ap_const_logic_1;
        else 
            p_ZL8weights_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    p_ZL8weights_1_address0 <= zext_ln1169_1_fu_280_p1(15 - 1 downto 0);
    p_ZL8weights_1_address1 <= zext_ln1169_fu_233_p1(15 - 1 downto 0);

    p_ZL8weights_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ZL8weights_1_ce0 <= ap_const_logic_1;
        else 
            p_ZL8weights_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    p_ZL8weights_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_ZL8weights_1_ce1 <= ap_const_logic_1;
        else 
            p_ZL8weights_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_191_p3 <= ap_sig_allocacmp_inc3741_i_load(8 downto 8);
    tmp_3_fu_345_p1 <= grp_fu_380_p3;
    tmp_3_fu_345_p4 <= tmp_3_fu_345_p1(23 downto 8);
    trunc_ln4_fu_362_p1 <= grp_fu_389_p3;
    zext_ln1169_1_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1169_1_fu_264_p2),64));
    zext_ln1169_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1169_fu_217_p2),64));
    zext_ln1171_1_fu_286_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln49_fu_244_p2),64));
    zext_ln1171_fu_239_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_32_fu_199_p1),64));
    zext_ln49_fu_203_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_inc3741_i_load),17));
    zext_ln52_1_fu_250_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln49_fu_244_p2),17));
    zext_ln52_2_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln49_fu_244_p2),15));
    zext_ln52_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_inc3741_i_load),15));
end behav;