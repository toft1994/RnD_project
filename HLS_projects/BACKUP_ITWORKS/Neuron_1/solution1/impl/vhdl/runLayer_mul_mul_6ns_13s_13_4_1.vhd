
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity runLayer_mul_mul_6ns_13s_13_4_1_DSP48_1 is
port (
    clk: in std_logic;
    rst: in std_logic;
    ce: in std_logic;
    a: in std_logic_vector(6 - 1 downto 0);
    b: in std_logic_vector(13 - 1 downto 0);
    p: out std_logic_vector(13 - 1 downto 0));

end entity;

architecture behav of runLayer_mul_mul_6ns_13s_13_4_1_DSP48_1 is
    signal a_cvt: unsigned(6 - 1 downto 0);
    signal b_cvt: signed(13 - 1 downto 0);
    signal p_cvt: signed(13 - 1 downto 0);

    signal p_reg: signed(13 - 1 downto 0);

    signal a_reg: unsigned(6 - 1 downto 0) ; 
    signal b_reg: signed(13 - 1 downto 0) ; 
    signal p_reg_tmp: signed(13 - 1 downto 0);
begin

    a_cvt <= unsigned(a);
    b_cvt <= signed(b);

    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (ce = '1') then
                a_reg <= a_cvt;
                b_reg <= b_cvt;
                p_reg_tmp <= p_cvt;
                p_reg <= p_reg_tmp;
            end if;
        end if;
    end process;

    p_cvt <= signed (resize(unsigned (signed ('0' & a_reg) * b_reg), 13));
    p <= std_logic_vector(p_reg);

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity runLayer_mul_mul_6ns_13s_13_4_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        ce : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of runLayer_mul_mul_6ns_13s_13_4_1 is
    component runLayer_mul_mul_6ns_13s_13_4_1_DSP48_1 is
        port (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            ce : IN STD_LOGIC;
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    runLayer_mul_mul_6ns_13s_13_4_1_DSP48_1_U :  component runLayer_mul_mul_6ns_13s_13_4_1_DSP48_1
    port map (
        clk => clk,
        rst => reset,
        ce => ce,
        a => din0,
        b => din1,
        p => dout);

end architecture;


