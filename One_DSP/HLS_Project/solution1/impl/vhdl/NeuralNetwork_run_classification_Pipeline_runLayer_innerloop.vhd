-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity NeuralNetwork_run_classification_Pipeline_runLayer_innerloop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    resArray1_load : IN STD_LOGIC_VECTOR (31 downto 0);
    zext_ln69 : IN STD_LOGIC_VECTOR (6 downto 0);
    zext_ln74_1 : IN STD_LOGIC_VECTOR (6 downto 0);
    input_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weights_s_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    weights_s_ce0 : OUT STD_LOGIC;
    weights_s_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    resArray1_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    resArray1_ce0 : OUT STD_LOGIC;
    resArray1_we0 : OUT STD_LOGIC;
    resArray1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of NeuralNetwork_run_classification_Pipeline_runLayer_innerloop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_50 : STD_LOGIC_VECTOR (6 downto 0) := "1010000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv13_46 : STD_LOGIC_VECTOR (12 downto 0) := "0000001000110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln71_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal resArray1_addr_reg_249 : STD_LOGIC_VECTOR (6 downto 0);
    signal resArray1_addr_reg_249_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal resArray1_addr_reg_249_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln71_2_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln71_2_reg_268 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln71_2_reg_268_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln71_2_reg_268_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal weights_load_reg_272 : STD_LOGIC_VECTOR (7 downto 0);
    signal input_r_load_reg_277 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln74_fu_209_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln74_reg_282 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln69_cast_fu_130_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln59_1_fu_180_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln74_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal phi_mul_fu_58 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln59_1_fu_168_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_phi_mul_load : STD_LOGIC_VECTOR (12 downto 0);
    signal empty_fu_62 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln74_fu_217_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal inNeurons_fu_66 : STD_LOGIC_VECTOR (6 downto 0);
    signal inNeurons_5_fu_159_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_inNeurons_4 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln74_1_cast_fu_126_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln59_fu_174_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component NeuralNetwork_mul_32s_8s_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component NeuralNetwork_flow_control_loop_pipe_sequential_init IS
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
    mul_32s_8s_32_1_1_U7 : component NeuralNetwork_mul_32s_8s_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 8,
        dout_WIDTH => 32)
    port map (
        din0 => input_r_load_reg_277,
        din1 => weights_load_reg_272,
        dout => mul_ln74_fu_209_p2);

    flow_control_loop_pipe_sequential_init_U : component NeuralNetwork_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    empty_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    empty_fu_62 <= resArray1_load;
                elsif ((ap_enable_reg_pp0_iter3 = ap_const_logic_1)) then 
                    empty_fu_62 <= add_ln74_fu_217_p2;
                end if;
            end if; 
        end if;
    end process;

    inNeurons_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln71_fu_153_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    inNeurons_fu_66 <= inNeurons_5_fu_159_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    inNeurons_fu_66 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    phi_mul_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln71_fu_153_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    phi_mul_fu_58 <= add_ln59_1_fu_168_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    phi_mul_fu_58 <= ap_const_lv13_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln71_2_reg_268_pp0_iter1_reg <= icmp_ln71_2_reg_268;
                input_r_load_reg_277 <= input_r_q0;
                resArray1_addr_reg_249 <= zext_ln69_cast_fu_130_p1(7 - 1 downto 0);
                resArray1_addr_reg_249_pp0_iter1_reg <= resArray1_addr_reg_249;
                weights_load_reg_272 <= weights_s_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln71_fu_153_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln71_2_reg_268 <= icmp_ln71_2_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln71_2_reg_268_pp0_iter2_reg <= icmp_ln71_2_reg_268_pp0_iter1_reg;
                mul_ln74_reg_282 <= mul_ln74_fu_209_p2;
                resArray1_addr_reg_249_pp0_iter2_reg <= resArray1_addr_reg_249_pp0_iter1_reg;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln59_1_fu_168_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_phi_mul_load) + unsigned(ap_const_lv13_46));
    add_ln59_fu_174_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_phi_mul_load) + unsigned(zext_ln74_1_cast_fu_126_p1));
    add_ln74_fu_217_p2 <= std_logic_vector(unsigned(mul_ln74_reg_282) + unsigned(empty_fu_62));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln71_fu_153_p2)
    begin
        if (((icmp_ln71_fu_153_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_inNeurons_4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, inNeurons_fu_66)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_inNeurons_4 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_inNeurons_4 <= inNeurons_fu_66;
        end if; 
    end process;


    ap_sig_allocacmp_phi_mul_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, phi_mul_fu_58, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_phi_mul_load <= ap_const_lv13_0;
        else 
            ap_sig_allocacmp_phi_mul_load <= phi_mul_fu_58;
        end if; 
    end process;

    icmp_ln71_2_fu_190_p2 <= "1" when (inNeurons_5_fu_159_p2 = ap_const_lv7_50) else "0";
    icmp_ln71_fu_153_p2 <= "1" when (ap_sig_allocacmp_inNeurons_4 = ap_const_lv7_50) else "0";
    inNeurons_5_fu_159_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_inNeurons_4) + unsigned(ap_const_lv7_1));
    input_r_address0 <= zext_ln74_fu_185_p1(7 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    resArray1_address0 <= resArray1_addr_reg_249_pp0_iter2_reg;

    resArray1_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            resArray1_ce0 <= ap_const_logic_1;
        else 
            resArray1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    resArray1_d0 <= std_logic_vector(unsigned(mul_ln74_reg_282) + unsigned(empty_fu_62));

    resArray1_we0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, icmp_ln71_2_reg_268_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln71_2_reg_268_pp0_iter2_reg = ap_const_lv1_1))) then 
            resArray1_we0 <= ap_const_logic_1;
        else 
            resArray1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    weights_s_address0 <= zext_ln59_1_fu_180_p1(14 - 1 downto 0);

    weights_s_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weights_s_ce0 <= ap_const_logic_1;
        else 
            weights_s_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln59_1_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln59_fu_174_p2),64));
    zext_ln69_cast_fu_130_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln69),64));
    zext_ln74_1_cast_fu_126_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln74_1),13));
    zext_ln74_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_inNeurons_4),64));
end behav;