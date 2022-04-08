-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nnlayer_nnlayer_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_45_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    numOfInNeurons : IN STD_LOGIC_VECTOR (15 downto 0);
    weights_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    weights_V_ce0 : OUT STD_LOGIC;
    weights_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    weights_V_address1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    weights_V_ce1 : OUT STD_LOGIC;
    weights_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    input_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    input_V_ce0 : OUT STD_LOGIC;
    input_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    input_V_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    input_V_ce1 : OUT STD_LOGIC;
    input_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    output_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_V_ce0 : OUT STD_LOGIC;
    output_V_we0 : OUT STD_LOGIC;
    output_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    output_V_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_V_ce1 : OUT STD_LOGIC;
    output_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of nnlayer_nnlayer_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_45_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv17_10000 : STD_LOGIC_VECTOR (16 downto 0) := "10000000000000000";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

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
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln43_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln43_reg_402 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_reg_402_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_reg_402_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_reg_402_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_fu_213_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_reg_406 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_reg_406_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_reg_406_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_reg_406_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal output_V_addr_reg_421 : STD_LOGIC_VECTOR (7 downto 0);
    signal output_V_addr_reg_421_pp0_iter2_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal output_V_addr_reg_421_pp0_iter3_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal output_V_addr_reg_421_pp0_iter4_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_reg_447 : STD_LOGIC_VECTOR (15 downto 0);
    signal idxprom_fu_183_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idxprom5_fu_188_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal idxprom_mid1_fu_243_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal idxprom5_mid1_fu_248_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln48_fu_269_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal inc159168_fu_56 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln45_fu_274_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal inc13160175_fu_60 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln43_3_fu_261_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal conv12181_fu_64 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln43_2_fu_253_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal indvar_flatten_fu_68 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln43_fu_204_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln43_fu_173_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_fu_177_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln43_1_fu_227_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln43_1_fu_233_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln50_fu_193_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_mid1_fu_237_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln43_fu_219_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_352_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_345_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal lhs_1_fu_321_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal select_ln43_1_fu_316_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal ret_V_fu_328_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component nnlayer_mul_mul_16s_16s_24_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
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
    mul_mul_16s_16s_24_4_1_U7 : component nnlayer_mul_mul_16s_16s_24_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => input_V_q1,
        din1 => weights_V_q1,
        ce => ap_const_logic_1,
        dout => grp_fu_345_p2);

    mul_mul_16s_16s_24_4_1_U8 : component nnlayer_mul_mul_16s_16s_24_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => input_V_q0,
        din1 => weights_V_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_352_p2);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter5_reg = ap_const_logic_1))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
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


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter5_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_0))) then 
                ap_loop_exit_ready_pp0_iter5_reg <= ap_const_logic_0;
            elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then 
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
            end if; 
        end if;
    end process;

    conv12181_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    conv12181_fu_64 <= ap_const_lv16_0;
                elsif (((icmp_ln43_fu_198_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    conv12181_fu_64 <= select_ln43_2_fu_253_p3;
                end if;
            end if; 
        end if;
    end process;

    inc13160175_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    inc13160175_fu_60 <= ap_const_lv9_0;
                elsif (((icmp_ln43_fu_198_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    inc13160175_fu_60 <= select_ln43_3_fu_261_p3;
                end if;
            end if; 
        end if;
    end process;

    inc159168_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    inc159168_fu_56 <= ap_const_lv9_0;
                elsif (((icmp_ln43_fu_198_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    inc159168_fu_56 <= add_ln45_fu_274_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_68 <= ap_const_lv17_0;
                elsif (((icmp_ln43_fu_198_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten_fu_68 <= add_ln43_fu_204_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                icmp_ln43_reg_402 <= icmp_ln43_fu_198_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
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
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln43_fu_198_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln45_reg_406 <= icmp_ln45_fu_213_p2;
                output_V_addr_reg_421 <= zext_ln48_fu_269_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (icmp_ln43_reg_402_pp0_iter3_reg = ap_const_lv1_0))) then
                lhs_reg_447 <= output_V_q1;
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
    add_fu_177_p2 <= std_logic_vector(unsigned(zext_ln43_fu_173_p1) + unsigned(conv12181_fu_64));
    add_ln43_1_fu_227_p2 <= std_logic_vector(unsigned(inc13160175_fu_60) + unsigned(ap_const_lv9_1));
    add_ln43_fu_204_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_68) + unsigned(ap_const_lv17_1));
    add_ln45_fu_274_p2 <= std_logic_vector(unsigned(select_ln43_fu_219_p3) + unsigned(ap_const_lv9_1));
    add_ln50_fu_193_p2 <= std_logic_vector(unsigned(conv12181_fu_64) + unsigned(numOfInNeurons));
    add_mid1_fu_237_p2 <= std_logic_vector(unsigned(zext_ln43_1_fu_233_p1) + unsigned(add_ln50_fu_193_p2));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln43_fu_198_p2)
    begin
        if (((icmp_ln43_fu_198_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter5_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter5_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln43_fu_198_p2 <= "1" when (indvar_flatten_fu_68 = ap_const_lv17_10000) else "0";
    icmp_ln45_fu_213_p2 <= "1" when (inc159168_fu_56 = ap_const_lv9_100) else "0";
    idxprom5_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inc13160175_fu_60),64));
    idxprom5_mid1_fu_248_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln43_1_fu_227_p2),64));
    idxprom_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_fu_177_p2),64));
    idxprom_mid1_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_mid1_fu_237_p2),64));
    input_V_address0 <= idxprom5_mid1_fu_248_p1(8 - 1 downto 0);
    input_V_address1 <= idxprom5_fu_188_p1(8 - 1 downto 0);

    input_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            input_V_ce0 <= ap_const_logic_1;
        else 
            input_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    input_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            input_V_ce1 <= ap_const_logic_1;
        else 
            input_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    lhs_1_fu_321_p3 <= (lhs_reg_447 & ap_const_lv8_0);
    output_V_address0 <= output_V_addr_reg_421_pp0_iter4_reg;
    output_V_address1 <= output_V_addr_reg_421_pp0_iter2_reg;

    output_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            output_V_ce0 <= ap_const_logic_1;
        else 
            output_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    output_V_ce1_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            output_V_ce1 <= ap_const_logic_1;
        else 
            output_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    output_V_d0 <= ret_V_fu_328_p2(23 downto 8);

    output_V_we0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001, icmp_ln43_reg_402_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (icmp_ln43_reg_402_pp0_iter4_reg = ap_const_lv1_0))) then 
            output_V_we0 <= ap_const_logic_1;
        else 
            output_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_328_p2 <= std_logic_vector(unsigned(lhs_1_fu_321_p3) + unsigned(select_ln43_1_fu_316_p3));
    select_ln43_1_fu_316_p3 <= 
        grp_fu_352_p2 when (icmp_ln45_reg_406_pp0_iter4_reg(0) = '1') else 
        grp_fu_345_p2;
    select_ln43_2_fu_253_p3 <= 
        add_ln50_fu_193_p2 when (icmp_ln45_fu_213_p2(0) = '1') else 
        conv12181_fu_64;
    select_ln43_3_fu_261_p3 <= 
        add_ln43_1_fu_227_p2 when (icmp_ln45_fu_213_p2(0) = '1') else 
        inc13160175_fu_60;
    select_ln43_fu_219_p3 <= 
        ap_const_lv9_0 when (icmp_ln45_fu_213_p2(0) = '1') else 
        inc159168_fu_56;
    weights_V_address0 <= idxprom_mid1_fu_243_p1(16 - 1 downto 0);
    weights_V_address1 <= idxprom_fu_183_p1(16 - 1 downto 0);

    weights_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weights_V_ce0 <= ap_const_logic_1;
        else 
            weights_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    weights_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weights_V_ce1 <= ap_const_logic_1;
        else 
            weights_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln43_1_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln43_1_fu_227_p2),16));
    zext_ln43_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inc13160175_fu_60),16));
    zext_ln48_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln43_fu_219_p3),64));
end behav;