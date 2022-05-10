-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity nnlayer_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 16;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    input_0               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_1               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_2               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_3               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_4               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_5               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_6               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_7               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_8               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_9               :out  STD_LOGIC_VECTOR(15 downto 0);
    input_10              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_11              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_12              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_13              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_14              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_15              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_16              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_17              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_18              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_19              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_20              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_21              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_22              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_23              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_24              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_25              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_26              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_27              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_28              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_29              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_30              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_31              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_32              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_33              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_34              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_35              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_36              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_37              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_38              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_39              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_40              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_41              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_42              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_43              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_44              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_45              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_46              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_47              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_48              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_49              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_50              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_51              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_52              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_53              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_54              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_55              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_56              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_57              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_58              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_59              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_60              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_61              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_62              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_63              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_64              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_65              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_66              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_67              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_68              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_69              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_70              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_71              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_72              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_73              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_74              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_75              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_76              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_77              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_78              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_79              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_80              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_81              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_82              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_83              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_84              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_85              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_86              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_87              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_88              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_89              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_90              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_91              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_92              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_93              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_94              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_95              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_96              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_97              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_98              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_99              :out  STD_LOGIC_VECTOR(15 downto 0);
    input_100             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_101             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_102             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_103             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_104             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_105             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_106             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_107             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_108             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_109             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_110             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_111             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_112             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_113             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_114             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_115             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_116             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_117             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_118             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_119             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_120             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_121             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_122             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_123             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_124             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_125             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_126             :out  STD_LOGIC_VECTOR(15 downto 0);
    input_127             :out  STD_LOGIC_VECTOR(15 downto 0);
    output_0              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_0_ap_vld       :in   STD_LOGIC;
    output_1              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_1_ap_vld       :in   STD_LOGIC;
    output_2              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_2_ap_vld       :in   STD_LOGIC;
    output_3              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_3_ap_vld       :in   STD_LOGIC;
    output_4              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_4_ap_vld       :in   STD_LOGIC;
    output_5              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_5_ap_vld       :in   STD_LOGIC;
    output_6              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_6_ap_vld       :in   STD_LOGIC;
    output_7              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_7_ap_vld       :in   STD_LOGIC;
    output_8              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_8_ap_vld       :in   STD_LOGIC;
    output_9              :in   STD_LOGIC_VECTOR(15 downto 0);
    output_9_ap_vld       :in   STD_LOGIC;
    output_10             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_10_ap_vld      :in   STD_LOGIC;
    output_11             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_11_ap_vld      :in   STD_LOGIC;
    output_12             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_12_ap_vld      :in   STD_LOGIC;
    output_13             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_13_ap_vld      :in   STD_LOGIC;
    output_14             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_14_ap_vld      :in   STD_LOGIC;
    output_15             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_15_ap_vld      :in   STD_LOGIC;
    output_16             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_16_ap_vld      :in   STD_LOGIC;
    output_17             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_17_ap_vld      :in   STD_LOGIC;
    output_18             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_18_ap_vld      :in   STD_LOGIC;
    output_19             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_19_ap_vld      :in   STD_LOGIC;
    output_20             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_20_ap_vld      :in   STD_LOGIC;
    output_21             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_21_ap_vld      :in   STD_LOGIC;
    output_22             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_22_ap_vld      :in   STD_LOGIC;
    output_23             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_23_ap_vld      :in   STD_LOGIC;
    output_24             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_24_ap_vld      :in   STD_LOGIC;
    output_25             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_25_ap_vld      :in   STD_LOGIC;
    output_26             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_26_ap_vld      :in   STD_LOGIC;
    output_27             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_27_ap_vld      :in   STD_LOGIC;
    output_28             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_28_ap_vld      :in   STD_LOGIC;
    output_29             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_29_ap_vld      :in   STD_LOGIC;
    output_30             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_30_ap_vld      :in   STD_LOGIC;
    output_31             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_31_ap_vld      :in   STD_LOGIC;
    output_32             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_32_ap_vld      :in   STD_LOGIC;
    output_33             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_33_ap_vld      :in   STD_LOGIC;
    output_34             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_34_ap_vld      :in   STD_LOGIC;
    output_35             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_35_ap_vld      :in   STD_LOGIC;
    output_36             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_36_ap_vld      :in   STD_LOGIC;
    output_37             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_37_ap_vld      :in   STD_LOGIC;
    output_38             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_38_ap_vld      :in   STD_LOGIC;
    output_39             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_39_ap_vld      :in   STD_LOGIC;
    output_40             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_40_ap_vld      :in   STD_LOGIC;
    output_41             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_41_ap_vld      :in   STD_LOGIC;
    output_42             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_42_ap_vld      :in   STD_LOGIC;
    output_43             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_43_ap_vld      :in   STD_LOGIC;
    output_44             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_44_ap_vld      :in   STD_LOGIC;
    output_45             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_45_ap_vld      :in   STD_LOGIC;
    output_46             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_46_ap_vld      :in   STD_LOGIC;
    output_47             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_47_ap_vld      :in   STD_LOGIC;
    output_48             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_48_ap_vld      :in   STD_LOGIC;
    output_49             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_49_ap_vld      :in   STD_LOGIC;
    output_50             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_50_ap_vld      :in   STD_LOGIC;
    output_51             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_51_ap_vld      :in   STD_LOGIC;
    output_52             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_52_ap_vld      :in   STD_LOGIC;
    output_53             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_53_ap_vld      :in   STD_LOGIC;
    output_54             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_54_ap_vld      :in   STD_LOGIC;
    output_55             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_55_ap_vld      :in   STD_LOGIC;
    output_56             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_56_ap_vld      :in   STD_LOGIC;
    output_57             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_57_ap_vld      :in   STD_LOGIC;
    output_58             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_58_ap_vld      :in   STD_LOGIC;
    output_59             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_59_ap_vld      :in   STD_LOGIC;
    output_60             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_60_ap_vld      :in   STD_LOGIC;
    output_61             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_61_ap_vld      :in   STD_LOGIC;
    output_62             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_62_ap_vld      :in   STD_LOGIC;
    output_63             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_63_ap_vld      :in   STD_LOGIC;
    output_64             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_64_ap_vld      :in   STD_LOGIC;
    output_65             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_65_ap_vld      :in   STD_LOGIC;
    output_66             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_66_ap_vld      :in   STD_LOGIC;
    output_67             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_67_ap_vld      :in   STD_LOGIC;
    output_68             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_68_ap_vld      :in   STD_LOGIC;
    output_69             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_69_ap_vld      :in   STD_LOGIC;
    output_70             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_70_ap_vld      :in   STD_LOGIC;
    output_71             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_71_ap_vld      :in   STD_LOGIC;
    output_72             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_72_ap_vld      :in   STD_LOGIC;
    output_73             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_73_ap_vld      :in   STD_LOGIC;
    output_74             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_74_ap_vld      :in   STD_LOGIC;
    output_75             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_75_ap_vld      :in   STD_LOGIC;
    output_76             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_76_ap_vld      :in   STD_LOGIC;
    output_77             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_77_ap_vld      :in   STD_LOGIC;
    output_78             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_78_ap_vld      :in   STD_LOGIC;
    output_79             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_79_ap_vld      :in   STD_LOGIC;
    output_80             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_80_ap_vld      :in   STD_LOGIC;
    output_81             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_81_ap_vld      :in   STD_LOGIC;
    output_82             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_82_ap_vld      :in   STD_LOGIC;
    output_83             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_83_ap_vld      :in   STD_LOGIC;
    output_84             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_84_ap_vld      :in   STD_LOGIC;
    output_85             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_85_ap_vld      :in   STD_LOGIC;
    output_86             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_86_ap_vld      :in   STD_LOGIC;
    output_87             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_87_ap_vld      :in   STD_LOGIC;
    output_88             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_88_ap_vld      :in   STD_LOGIC;
    output_89             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_89_ap_vld      :in   STD_LOGIC;
    output_90             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_90_ap_vld      :in   STD_LOGIC;
    output_91             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_91_ap_vld      :in   STD_LOGIC;
    output_92             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_92_ap_vld      :in   STD_LOGIC;
    output_93             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_93_ap_vld      :in   STD_LOGIC;
    output_94             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_94_ap_vld      :in   STD_LOGIC;
    output_95             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_95_ap_vld      :in   STD_LOGIC;
    output_96             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_96_ap_vld      :in   STD_LOGIC;
    output_97             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_97_ap_vld      :in   STD_LOGIC;
    output_98             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_98_ap_vld      :in   STD_LOGIC;
    output_99             :in   STD_LOGIC_VECTOR(15 downto 0);
    output_99_ap_vld      :in   STD_LOGIC;
    output_100            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_100_ap_vld     :in   STD_LOGIC;
    output_101            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_101_ap_vld     :in   STD_LOGIC;
    output_102            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_102_ap_vld     :in   STD_LOGIC;
    output_103            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_103_ap_vld     :in   STD_LOGIC;
    output_104            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_104_ap_vld     :in   STD_LOGIC;
    output_105            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_105_ap_vld     :in   STD_LOGIC;
    output_106            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_106_ap_vld     :in   STD_LOGIC;
    output_107            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_107_ap_vld     :in   STD_LOGIC;
    output_108            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_108_ap_vld     :in   STD_LOGIC;
    output_109            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_109_ap_vld     :in   STD_LOGIC;
    output_110            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_110_ap_vld     :in   STD_LOGIC;
    output_111            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_111_ap_vld     :in   STD_LOGIC;
    output_112            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_112_ap_vld     :in   STD_LOGIC;
    output_113            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_113_ap_vld     :in   STD_LOGIC;
    output_114            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_114_ap_vld     :in   STD_LOGIC;
    output_115            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_115_ap_vld     :in   STD_LOGIC;
    output_116            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_116_ap_vld     :in   STD_LOGIC;
    output_117            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_117_ap_vld     :in   STD_LOGIC;
    output_118            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_118_ap_vld     :in   STD_LOGIC;
    output_119            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_119_ap_vld     :in   STD_LOGIC;
    output_120            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_120_ap_vld     :in   STD_LOGIC;
    output_121            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_121_ap_vld     :in   STD_LOGIC;
    output_122            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_122_ap_vld     :in   STD_LOGIC;
    output_123            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_123_ap_vld     :in   STD_LOGIC;
    output_124            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_124_ap_vld     :in   STD_LOGIC;
    output_125            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_125_ap_vld     :in   STD_LOGIC;
    output_126            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_126_ap_vld     :in   STD_LOGIC;
    output_127            :in   STD_LOGIC_VECTOR(15 downto 0);
    output_127_ap_vld     :in   STD_LOGIC;
    numOfOutputNeurons    :out  STD_LOGIC_VECTOR(15 downto 0);
    activation            :out  STD_LOGIC_VECTOR(7 downto 0);
    bias_address0         :in   STD_LOGIC_VECTOR(6 downto 0);
    bias_ce0              :in   STD_LOGIC;
    bias_q0               :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_0_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_0_ce0         :in   STD_LOGIC;
    weights_0_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_1_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_1_ce0         :in   STD_LOGIC;
    weights_1_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_2_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_2_ce0         :in   STD_LOGIC;
    weights_2_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_3_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_3_ce0         :in   STD_LOGIC;
    weights_3_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_4_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_4_ce0         :in   STD_LOGIC;
    weights_4_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_5_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_5_ce0         :in   STD_LOGIC;
    weights_5_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_6_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_6_ce0         :in   STD_LOGIC;
    weights_6_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_7_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_7_ce0         :in   STD_LOGIC;
    weights_7_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_8_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_8_ce0         :in   STD_LOGIC;
    weights_8_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_9_address0    :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_9_ce0         :in   STD_LOGIC;
    weights_9_q0          :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_10_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_10_ce0        :in   STD_LOGIC;
    weights_10_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_11_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_11_ce0        :in   STD_LOGIC;
    weights_11_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_12_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_12_ce0        :in   STD_LOGIC;
    weights_12_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_13_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_13_ce0        :in   STD_LOGIC;
    weights_13_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_14_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_14_ce0        :in   STD_LOGIC;
    weights_14_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_15_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_15_ce0        :in   STD_LOGIC;
    weights_15_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_16_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_16_ce0        :in   STD_LOGIC;
    weights_16_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_17_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_17_ce0        :in   STD_LOGIC;
    weights_17_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_18_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_18_ce0        :in   STD_LOGIC;
    weights_18_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_19_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_19_ce0        :in   STD_LOGIC;
    weights_19_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_20_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_20_ce0        :in   STD_LOGIC;
    weights_20_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_21_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_21_ce0        :in   STD_LOGIC;
    weights_21_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_22_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_22_ce0        :in   STD_LOGIC;
    weights_22_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_23_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_23_ce0        :in   STD_LOGIC;
    weights_23_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_24_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_24_ce0        :in   STD_LOGIC;
    weights_24_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_25_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_25_ce0        :in   STD_LOGIC;
    weights_25_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_26_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_26_ce0        :in   STD_LOGIC;
    weights_26_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_27_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_27_ce0        :in   STD_LOGIC;
    weights_27_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_28_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_28_ce0        :in   STD_LOGIC;
    weights_28_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_29_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_29_ce0        :in   STD_LOGIC;
    weights_29_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_30_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_30_ce0        :in   STD_LOGIC;
    weights_30_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_31_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_31_ce0        :in   STD_LOGIC;
    weights_31_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_32_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_32_ce0        :in   STD_LOGIC;
    weights_32_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_33_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_33_ce0        :in   STD_LOGIC;
    weights_33_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_34_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_34_ce0        :in   STD_LOGIC;
    weights_34_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_35_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_35_ce0        :in   STD_LOGIC;
    weights_35_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_36_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_36_ce0        :in   STD_LOGIC;
    weights_36_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_37_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_37_ce0        :in   STD_LOGIC;
    weights_37_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_38_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_38_ce0        :in   STD_LOGIC;
    weights_38_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_39_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_39_ce0        :in   STD_LOGIC;
    weights_39_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_40_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_40_ce0        :in   STD_LOGIC;
    weights_40_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_41_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_41_ce0        :in   STD_LOGIC;
    weights_41_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_42_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_42_ce0        :in   STD_LOGIC;
    weights_42_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_43_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_43_ce0        :in   STD_LOGIC;
    weights_43_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_44_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_44_ce0        :in   STD_LOGIC;
    weights_44_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_45_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_45_ce0        :in   STD_LOGIC;
    weights_45_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_46_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_46_ce0        :in   STD_LOGIC;
    weights_46_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_47_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_47_ce0        :in   STD_LOGIC;
    weights_47_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_48_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_48_ce0        :in   STD_LOGIC;
    weights_48_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_49_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_49_ce0        :in   STD_LOGIC;
    weights_49_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_50_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_50_ce0        :in   STD_LOGIC;
    weights_50_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_51_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_51_ce0        :in   STD_LOGIC;
    weights_51_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_52_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_52_ce0        :in   STD_LOGIC;
    weights_52_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_53_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_53_ce0        :in   STD_LOGIC;
    weights_53_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_54_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_54_ce0        :in   STD_LOGIC;
    weights_54_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_55_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_55_ce0        :in   STD_LOGIC;
    weights_55_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_56_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_56_ce0        :in   STD_LOGIC;
    weights_56_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_57_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_57_ce0        :in   STD_LOGIC;
    weights_57_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_58_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_58_ce0        :in   STD_LOGIC;
    weights_58_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_59_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_59_ce0        :in   STD_LOGIC;
    weights_59_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_60_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_60_ce0        :in   STD_LOGIC;
    weights_60_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_61_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_61_ce0        :in   STD_LOGIC;
    weights_61_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_62_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_62_ce0        :in   STD_LOGIC;
    weights_62_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_63_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_63_ce0        :in   STD_LOGIC;
    weights_63_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_64_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_64_ce0        :in   STD_LOGIC;
    weights_64_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_65_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_65_ce0        :in   STD_LOGIC;
    weights_65_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_66_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_66_ce0        :in   STD_LOGIC;
    weights_66_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_67_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_67_ce0        :in   STD_LOGIC;
    weights_67_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_68_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_68_ce0        :in   STD_LOGIC;
    weights_68_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_69_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_69_ce0        :in   STD_LOGIC;
    weights_69_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_70_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_70_ce0        :in   STD_LOGIC;
    weights_70_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_71_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_71_ce0        :in   STD_LOGIC;
    weights_71_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_72_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_72_ce0        :in   STD_LOGIC;
    weights_72_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_73_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_73_ce0        :in   STD_LOGIC;
    weights_73_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_74_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_74_ce0        :in   STD_LOGIC;
    weights_74_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_75_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_75_ce0        :in   STD_LOGIC;
    weights_75_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_76_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_76_ce0        :in   STD_LOGIC;
    weights_76_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_77_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_77_ce0        :in   STD_LOGIC;
    weights_77_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_78_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_78_ce0        :in   STD_LOGIC;
    weights_78_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_79_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_79_ce0        :in   STD_LOGIC;
    weights_79_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_80_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_80_ce0        :in   STD_LOGIC;
    weights_80_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_81_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_81_ce0        :in   STD_LOGIC;
    weights_81_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_82_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_82_ce0        :in   STD_LOGIC;
    weights_82_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_83_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_83_ce0        :in   STD_LOGIC;
    weights_83_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_84_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_84_ce0        :in   STD_LOGIC;
    weights_84_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_85_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_85_ce0        :in   STD_LOGIC;
    weights_85_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_86_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_86_ce0        :in   STD_LOGIC;
    weights_86_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_87_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_87_ce0        :in   STD_LOGIC;
    weights_87_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_88_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_88_ce0        :in   STD_LOGIC;
    weights_88_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_89_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_89_ce0        :in   STD_LOGIC;
    weights_89_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_90_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_90_ce0        :in   STD_LOGIC;
    weights_90_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_91_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_91_ce0        :in   STD_LOGIC;
    weights_91_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_92_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_92_ce0        :in   STD_LOGIC;
    weights_92_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_93_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_93_ce0        :in   STD_LOGIC;
    weights_93_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_94_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_94_ce0        :in   STD_LOGIC;
    weights_94_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_95_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_95_ce0        :in   STD_LOGIC;
    weights_95_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_96_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_96_ce0        :in   STD_LOGIC;
    weights_96_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_97_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_97_ce0        :in   STD_LOGIC;
    weights_97_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_98_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_98_ce0        :in   STD_LOGIC;
    weights_98_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_99_address0   :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_99_ce0        :in   STD_LOGIC;
    weights_99_q0         :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_100_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_100_ce0       :in   STD_LOGIC;
    weights_100_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_101_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_101_ce0       :in   STD_LOGIC;
    weights_101_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_102_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_102_ce0       :in   STD_LOGIC;
    weights_102_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_103_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_103_ce0       :in   STD_LOGIC;
    weights_103_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_104_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_104_ce0       :in   STD_LOGIC;
    weights_104_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_105_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_105_ce0       :in   STD_LOGIC;
    weights_105_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_106_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_106_ce0       :in   STD_LOGIC;
    weights_106_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_107_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_107_ce0       :in   STD_LOGIC;
    weights_107_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_108_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_108_ce0       :in   STD_LOGIC;
    weights_108_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_109_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_109_ce0       :in   STD_LOGIC;
    weights_109_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_110_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_110_ce0       :in   STD_LOGIC;
    weights_110_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_111_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_111_ce0       :in   STD_LOGIC;
    weights_111_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_112_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_112_ce0       :in   STD_LOGIC;
    weights_112_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_113_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_113_ce0       :in   STD_LOGIC;
    weights_113_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_114_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_114_ce0       :in   STD_LOGIC;
    weights_114_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_115_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_115_ce0       :in   STD_LOGIC;
    weights_115_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_116_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_116_ce0       :in   STD_LOGIC;
    weights_116_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_117_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_117_ce0       :in   STD_LOGIC;
    weights_117_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_118_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_118_ce0       :in   STD_LOGIC;
    weights_118_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_119_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_119_ce0       :in   STD_LOGIC;
    weights_119_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_120_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_120_ce0       :in   STD_LOGIC;
    weights_120_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_121_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_121_ce0       :in   STD_LOGIC;
    weights_121_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_122_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_122_ce0       :in   STD_LOGIC;
    weights_122_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_123_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_123_ce0       :in   STD_LOGIC;
    weights_123_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_124_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_124_ce0       :in   STD_LOGIC;
    weights_124_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_125_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_125_ce0       :in   STD_LOGIC;
    weights_125_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_126_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_126_ce0       :in   STD_LOGIC;
    weights_126_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    weights_127_address0  :in   STD_LOGIC_VECTOR(6 downto 0);
    weights_127_ce0       :in   STD_LOGIC;
    weights_127_q0        :out  STD_LOGIC_VECTOR(15 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    ap_local_deadlock     :in   STD_LOGIC_VECTOR(0 downto 0)
);
end entity nnlayer_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x0000 : Control signals
--          bit 0  - ap_start (Read/Write/COH)
--          bit 1  - ap_done (Read/COR)
--          bit 2  - ap_idle (Read)
--          bit 3  - ap_ready (Read/COR)
--          bit 7  - auto_restart (Read/Write)
--          others - reserved
-- 0x0004 : Global Interrupt Enable Register
--          bit 0  - Global Interrupt Enable (Read/Write)
--          others - reserved
-- 0x0008 : IP Interrupt Enable Register (Read/Write)
--          bit 0 - enable ap_done interrupt (Read/Write)
--          bit 1 - enable ap_ready interrupt (Read/Write)
--          bit 5 - enable ap_local_deadlock interrupt (Read/Write)
--          others - reserved
-- 0x000c : IP Interrupt Status Register (Read/TOW)
--          bit 0 - ap_done (COR/TOW)
--          bit 1 - ap_ready (COR/TOW)
--          bit 5 - ap_local_deadlock (COR/TOW)
--          others - reserved
-- 0x0010 : Data signal of input_0
--          bit 15~0 - input_0[15:0] (Read/Write)
--          others   - reserved
-- 0x0014 : reserved
-- 0x0018 : Data signal of input_1
--          bit 15~0 - input_1[15:0] (Read/Write)
--          others   - reserved
-- 0x001c : reserved
-- 0x0020 : Data signal of input_2
--          bit 15~0 - input_2[15:0] (Read/Write)
--          others   - reserved
-- 0x0024 : reserved
-- 0x0028 : Data signal of input_3
--          bit 15~0 - input_3[15:0] (Read/Write)
--          others   - reserved
-- 0x002c : reserved
-- 0x0030 : Data signal of input_4
--          bit 15~0 - input_4[15:0] (Read/Write)
--          others   - reserved
-- 0x0034 : reserved
-- 0x0038 : Data signal of input_5
--          bit 15~0 - input_5[15:0] (Read/Write)
--          others   - reserved
-- 0x003c : reserved
-- 0x0040 : Data signal of input_6
--          bit 15~0 - input_6[15:0] (Read/Write)
--          others   - reserved
-- 0x0044 : reserved
-- 0x0048 : Data signal of input_7
--          bit 15~0 - input_7[15:0] (Read/Write)
--          others   - reserved
-- 0x004c : reserved
-- 0x0050 : Data signal of input_8
--          bit 15~0 - input_8[15:0] (Read/Write)
--          others   - reserved
-- 0x0054 : reserved
-- 0x0058 : Data signal of input_9
--          bit 15~0 - input_9[15:0] (Read/Write)
--          others   - reserved
-- 0x005c : reserved
-- 0x0060 : Data signal of input_10
--          bit 15~0 - input_10[15:0] (Read/Write)
--          others   - reserved
-- 0x0064 : reserved
-- 0x0068 : Data signal of input_11
--          bit 15~0 - input_11[15:0] (Read/Write)
--          others   - reserved
-- 0x006c : reserved
-- 0x0070 : Data signal of input_12
--          bit 15~0 - input_12[15:0] (Read/Write)
--          others   - reserved
-- 0x0074 : reserved
-- 0x0078 : Data signal of input_13
--          bit 15~0 - input_13[15:0] (Read/Write)
--          others   - reserved
-- 0x007c : reserved
-- 0x0080 : Data signal of input_14
--          bit 15~0 - input_14[15:0] (Read/Write)
--          others   - reserved
-- 0x0084 : reserved
-- 0x0088 : Data signal of input_15
--          bit 15~0 - input_15[15:0] (Read/Write)
--          others   - reserved
-- 0x008c : reserved
-- 0x0090 : Data signal of input_16
--          bit 15~0 - input_16[15:0] (Read/Write)
--          others   - reserved
-- 0x0094 : reserved
-- 0x0098 : Data signal of input_17
--          bit 15~0 - input_17[15:0] (Read/Write)
--          others   - reserved
-- 0x009c : reserved
-- 0x00a0 : Data signal of input_18
--          bit 15~0 - input_18[15:0] (Read/Write)
--          others   - reserved
-- 0x00a4 : reserved
-- 0x00a8 : Data signal of input_19
--          bit 15~0 - input_19[15:0] (Read/Write)
--          others   - reserved
-- 0x00ac : reserved
-- 0x00b0 : Data signal of input_20
--          bit 15~0 - input_20[15:0] (Read/Write)
--          others   - reserved
-- 0x00b4 : reserved
-- 0x00b8 : Data signal of input_21
--          bit 15~0 - input_21[15:0] (Read/Write)
--          others   - reserved
-- 0x00bc : reserved
-- 0x00c0 : Data signal of input_22
--          bit 15~0 - input_22[15:0] (Read/Write)
--          others   - reserved
-- 0x00c4 : reserved
-- 0x00c8 : Data signal of input_23
--          bit 15~0 - input_23[15:0] (Read/Write)
--          others   - reserved
-- 0x00cc : reserved
-- 0x00d0 : Data signal of input_24
--          bit 15~0 - input_24[15:0] (Read/Write)
--          others   - reserved
-- 0x00d4 : reserved
-- 0x00d8 : Data signal of input_25
--          bit 15~0 - input_25[15:0] (Read/Write)
--          others   - reserved
-- 0x00dc : reserved
-- 0x00e0 : Data signal of input_26
--          bit 15~0 - input_26[15:0] (Read/Write)
--          others   - reserved
-- 0x00e4 : reserved
-- 0x00e8 : Data signal of input_27
--          bit 15~0 - input_27[15:0] (Read/Write)
--          others   - reserved
-- 0x00ec : reserved
-- 0x00f0 : Data signal of input_28
--          bit 15~0 - input_28[15:0] (Read/Write)
--          others   - reserved
-- 0x00f4 : reserved
-- 0x00f8 : Data signal of input_29
--          bit 15~0 - input_29[15:0] (Read/Write)
--          others   - reserved
-- 0x00fc : reserved
-- 0x0100 : Data signal of input_30
--          bit 15~0 - input_30[15:0] (Read/Write)
--          others   - reserved
-- 0x0104 : reserved
-- 0x0108 : Data signal of input_31
--          bit 15~0 - input_31[15:0] (Read/Write)
--          others   - reserved
-- 0x010c : reserved
-- 0x0110 : Data signal of input_32
--          bit 15~0 - input_32[15:0] (Read/Write)
--          others   - reserved
-- 0x0114 : reserved
-- 0x0118 : Data signal of input_33
--          bit 15~0 - input_33[15:0] (Read/Write)
--          others   - reserved
-- 0x011c : reserved
-- 0x0120 : Data signal of input_34
--          bit 15~0 - input_34[15:0] (Read/Write)
--          others   - reserved
-- 0x0124 : reserved
-- 0x0128 : Data signal of input_35
--          bit 15~0 - input_35[15:0] (Read/Write)
--          others   - reserved
-- 0x012c : reserved
-- 0x0130 : Data signal of input_36
--          bit 15~0 - input_36[15:0] (Read/Write)
--          others   - reserved
-- 0x0134 : reserved
-- 0x0138 : Data signal of input_37
--          bit 15~0 - input_37[15:0] (Read/Write)
--          others   - reserved
-- 0x013c : reserved
-- 0x0140 : Data signal of input_38
--          bit 15~0 - input_38[15:0] (Read/Write)
--          others   - reserved
-- 0x0144 : reserved
-- 0x0148 : Data signal of input_39
--          bit 15~0 - input_39[15:0] (Read/Write)
--          others   - reserved
-- 0x014c : reserved
-- 0x0150 : Data signal of input_40
--          bit 15~0 - input_40[15:0] (Read/Write)
--          others   - reserved
-- 0x0154 : reserved
-- 0x0158 : Data signal of input_41
--          bit 15~0 - input_41[15:0] (Read/Write)
--          others   - reserved
-- 0x015c : reserved
-- 0x0160 : Data signal of input_42
--          bit 15~0 - input_42[15:0] (Read/Write)
--          others   - reserved
-- 0x0164 : reserved
-- 0x0168 : Data signal of input_43
--          bit 15~0 - input_43[15:0] (Read/Write)
--          others   - reserved
-- 0x016c : reserved
-- 0x0170 : Data signal of input_44
--          bit 15~0 - input_44[15:0] (Read/Write)
--          others   - reserved
-- 0x0174 : reserved
-- 0x0178 : Data signal of input_45
--          bit 15~0 - input_45[15:0] (Read/Write)
--          others   - reserved
-- 0x017c : reserved
-- 0x0180 : Data signal of input_46
--          bit 15~0 - input_46[15:0] (Read/Write)
--          others   - reserved
-- 0x0184 : reserved
-- 0x0188 : Data signal of input_47
--          bit 15~0 - input_47[15:0] (Read/Write)
--          others   - reserved
-- 0x018c : reserved
-- 0x0190 : Data signal of input_48
--          bit 15~0 - input_48[15:0] (Read/Write)
--          others   - reserved
-- 0x0194 : reserved
-- 0x0198 : Data signal of input_49
--          bit 15~0 - input_49[15:0] (Read/Write)
--          others   - reserved
-- 0x019c : reserved
-- 0x01a0 : Data signal of input_50
--          bit 15~0 - input_50[15:0] (Read/Write)
--          others   - reserved
-- 0x01a4 : reserved
-- 0x01a8 : Data signal of input_51
--          bit 15~0 - input_51[15:0] (Read/Write)
--          others   - reserved
-- 0x01ac : reserved
-- 0x01b0 : Data signal of input_52
--          bit 15~0 - input_52[15:0] (Read/Write)
--          others   - reserved
-- 0x01b4 : reserved
-- 0x01b8 : Data signal of input_53
--          bit 15~0 - input_53[15:0] (Read/Write)
--          others   - reserved
-- 0x01bc : reserved
-- 0x01c0 : Data signal of input_54
--          bit 15~0 - input_54[15:0] (Read/Write)
--          others   - reserved
-- 0x01c4 : reserved
-- 0x01c8 : Data signal of input_55
--          bit 15~0 - input_55[15:0] (Read/Write)
--          others   - reserved
-- 0x01cc : reserved
-- 0x01d0 : Data signal of input_56
--          bit 15~0 - input_56[15:0] (Read/Write)
--          others   - reserved
-- 0x01d4 : reserved
-- 0x01d8 : Data signal of input_57
--          bit 15~0 - input_57[15:0] (Read/Write)
--          others   - reserved
-- 0x01dc : reserved
-- 0x01e0 : Data signal of input_58
--          bit 15~0 - input_58[15:0] (Read/Write)
--          others   - reserved
-- 0x01e4 : reserved
-- 0x01e8 : Data signal of input_59
--          bit 15~0 - input_59[15:0] (Read/Write)
--          others   - reserved
-- 0x01ec : reserved
-- 0x01f0 : Data signal of input_60
--          bit 15~0 - input_60[15:0] (Read/Write)
--          others   - reserved
-- 0x01f4 : reserved
-- 0x01f8 : Data signal of input_61
--          bit 15~0 - input_61[15:0] (Read/Write)
--          others   - reserved
-- 0x01fc : reserved
-- 0x0200 : Data signal of input_62
--          bit 15~0 - input_62[15:0] (Read/Write)
--          others   - reserved
-- 0x0204 : reserved
-- 0x0208 : Data signal of input_63
--          bit 15~0 - input_63[15:0] (Read/Write)
--          others   - reserved
-- 0x020c : reserved
-- 0x0210 : Data signal of input_64
--          bit 15~0 - input_64[15:0] (Read/Write)
--          others   - reserved
-- 0x0214 : reserved
-- 0x0218 : Data signal of input_65
--          bit 15~0 - input_65[15:0] (Read/Write)
--          others   - reserved
-- 0x021c : reserved
-- 0x0220 : Data signal of input_66
--          bit 15~0 - input_66[15:0] (Read/Write)
--          others   - reserved
-- 0x0224 : reserved
-- 0x0228 : Data signal of input_67
--          bit 15~0 - input_67[15:0] (Read/Write)
--          others   - reserved
-- 0x022c : reserved
-- 0x0230 : Data signal of input_68
--          bit 15~0 - input_68[15:0] (Read/Write)
--          others   - reserved
-- 0x0234 : reserved
-- 0x0238 : Data signal of input_69
--          bit 15~0 - input_69[15:0] (Read/Write)
--          others   - reserved
-- 0x023c : reserved
-- 0x0240 : Data signal of input_70
--          bit 15~0 - input_70[15:0] (Read/Write)
--          others   - reserved
-- 0x0244 : reserved
-- 0x0248 : Data signal of input_71
--          bit 15~0 - input_71[15:0] (Read/Write)
--          others   - reserved
-- 0x024c : reserved
-- 0x0250 : Data signal of input_72
--          bit 15~0 - input_72[15:0] (Read/Write)
--          others   - reserved
-- 0x0254 : reserved
-- 0x0258 : Data signal of input_73
--          bit 15~0 - input_73[15:0] (Read/Write)
--          others   - reserved
-- 0x025c : reserved
-- 0x0260 : Data signal of input_74
--          bit 15~0 - input_74[15:0] (Read/Write)
--          others   - reserved
-- 0x0264 : reserved
-- 0x0268 : Data signal of input_75
--          bit 15~0 - input_75[15:0] (Read/Write)
--          others   - reserved
-- 0x026c : reserved
-- 0x0270 : Data signal of input_76
--          bit 15~0 - input_76[15:0] (Read/Write)
--          others   - reserved
-- 0x0274 : reserved
-- 0x0278 : Data signal of input_77
--          bit 15~0 - input_77[15:0] (Read/Write)
--          others   - reserved
-- 0x027c : reserved
-- 0x0280 : Data signal of input_78
--          bit 15~0 - input_78[15:0] (Read/Write)
--          others   - reserved
-- 0x0284 : reserved
-- 0x0288 : Data signal of input_79
--          bit 15~0 - input_79[15:0] (Read/Write)
--          others   - reserved
-- 0x028c : reserved
-- 0x0290 : Data signal of input_80
--          bit 15~0 - input_80[15:0] (Read/Write)
--          others   - reserved
-- 0x0294 : reserved
-- 0x0298 : Data signal of input_81
--          bit 15~0 - input_81[15:0] (Read/Write)
--          others   - reserved
-- 0x029c : reserved
-- 0x02a0 : Data signal of input_82
--          bit 15~0 - input_82[15:0] (Read/Write)
--          others   - reserved
-- 0x02a4 : reserved
-- 0x02a8 : Data signal of input_83
--          bit 15~0 - input_83[15:0] (Read/Write)
--          others   - reserved
-- 0x02ac : reserved
-- 0x02b0 : Data signal of input_84
--          bit 15~0 - input_84[15:0] (Read/Write)
--          others   - reserved
-- 0x02b4 : reserved
-- 0x02b8 : Data signal of input_85
--          bit 15~0 - input_85[15:0] (Read/Write)
--          others   - reserved
-- 0x02bc : reserved
-- 0x02c0 : Data signal of input_86
--          bit 15~0 - input_86[15:0] (Read/Write)
--          others   - reserved
-- 0x02c4 : reserved
-- 0x02c8 : Data signal of input_87
--          bit 15~0 - input_87[15:0] (Read/Write)
--          others   - reserved
-- 0x02cc : reserved
-- 0x02d0 : Data signal of input_88
--          bit 15~0 - input_88[15:0] (Read/Write)
--          others   - reserved
-- 0x02d4 : reserved
-- 0x02d8 : Data signal of input_89
--          bit 15~0 - input_89[15:0] (Read/Write)
--          others   - reserved
-- 0x02dc : reserved
-- 0x02e0 : Data signal of input_90
--          bit 15~0 - input_90[15:0] (Read/Write)
--          others   - reserved
-- 0x02e4 : reserved
-- 0x02e8 : Data signal of input_91
--          bit 15~0 - input_91[15:0] (Read/Write)
--          others   - reserved
-- 0x02ec : reserved
-- 0x02f0 : Data signal of input_92
--          bit 15~0 - input_92[15:0] (Read/Write)
--          others   - reserved
-- 0x02f4 : reserved
-- 0x02f8 : Data signal of input_93
--          bit 15~0 - input_93[15:0] (Read/Write)
--          others   - reserved
-- 0x02fc : reserved
-- 0x0300 : Data signal of input_94
--          bit 15~0 - input_94[15:0] (Read/Write)
--          others   - reserved
-- 0x0304 : reserved
-- 0x0308 : Data signal of input_95
--          bit 15~0 - input_95[15:0] (Read/Write)
--          others   - reserved
-- 0x030c : reserved
-- 0x0310 : Data signal of input_96
--          bit 15~0 - input_96[15:0] (Read/Write)
--          others   - reserved
-- 0x0314 : reserved
-- 0x0318 : Data signal of input_97
--          bit 15~0 - input_97[15:0] (Read/Write)
--          others   - reserved
-- 0x031c : reserved
-- 0x0320 : Data signal of input_98
--          bit 15~0 - input_98[15:0] (Read/Write)
--          others   - reserved
-- 0x0324 : reserved
-- 0x0328 : Data signal of input_99
--          bit 15~0 - input_99[15:0] (Read/Write)
--          others   - reserved
-- 0x032c : reserved
-- 0x0330 : Data signal of input_100
--          bit 15~0 - input_100[15:0] (Read/Write)
--          others   - reserved
-- 0x0334 : reserved
-- 0x0338 : Data signal of input_101
--          bit 15~0 - input_101[15:0] (Read/Write)
--          others   - reserved
-- 0x033c : reserved
-- 0x0340 : Data signal of input_102
--          bit 15~0 - input_102[15:0] (Read/Write)
--          others   - reserved
-- 0x0344 : reserved
-- 0x0348 : Data signal of input_103
--          bit 15~0 - input_103[15:0] (Read/Write)
--          others   - reserved
-- 0x034c : reserved
-- 0x0350 : Data signal of input_104
--          bit 15~0 - input_104[15:0] (Read/Write)
--          others   - reserved
-- 0x0354 : reserved
-- 0x0358 : Data signal of input_105
--          bit 15~0 - input_105[15:0] (Read/Write)
--          others   - reserved
-- 0x035c : reserved
-- 0x0360 : Data signal of input_106
--          bit 15~0 - input_106[15:0] (Read/Write)
--          others   - reserved
-- 0x0364 : reserved
-- 0x0368 : Data signal of input_107
--          bit 15~0 - input_107[15:0] (Read/Write)
--          others   - reserved
-- 0x036c : reserved
-- 0x0370 : Data signal of input_108
--          bit 15~0 - input_108[15:0] (Read/Write)
--          others   - reserved
-- 0x0374 : reserved
-- 0x0378 : Data signal of input_109
--          bit 15~0 - input_109[15:0] (Read/Write)
--          others   - reserved
-- 0x037c : reserved
-- 0x0380 : Data signal of input_110
--          bit 15~0 - input_110[15:0] (Read/Write)
--          others   - reserved
-- 0x0384 : reserved
-- 0x0388 : Data signal of input_111
--          bit 15~0 - input_111[15:0] (Read/Write)
--          others   - reserved
-- 0x038c : reserved
-- 0x0390 : Data signal of input_112
--          bit 15~0 - input_112[15:0] (Read/Write)
--          others   - reserved
-- 0x0394 : reserved
-- 0x0398 : Data signal of input_113
--          bit 15~0 - input_113[15:0] (Read/Write)
--          others   - reserved
-- 0x039c : reserved
-- 0x03a0 : Data signal of input_114
--          bit 15~0 - input_114[15:0] (Read/Write)
--          others   - reserved
-- 0x03a4 : reserved
-- 0x03a8 : Data signal of input_115
--          bit 15~0 - input_115[15:0] (Read/Write)
--          others   - reserved
-- 0x03ac : reserved
-- 0x03b0 : Data signal of input_116
--          bit 15~0 - input_116[15:0] (Read/Write)
--          others   - reserved
-- 0x03b4 : reserved
-- 0x03b8 : Data signal of input_117
--          bit 15~0 - input_117[15:0] (Read/Write)
--          others   - reserved
-- 0x03bc : reserved
-- 0x03c0 : Data signal of input_118
--          bit 15~0 - input_118[15:0] (Read/Write)
--          others   - reserved
-- 0x03c4 : reserved
-- 0x03c8 : Data signal of input_119
--          bit 15~0 - input_119[15:0] (Read/Write)
--          others   - reserved
-- 0x03cc : reserved
-- 0x03d0 : Data signal of input_120
--          bit 15~0 - input_120[15:0] (Read/Write)
--          others   - reserved
-- 0x03d4 : reserved
-- 0x03d8 : Data signal of input_121
--          bit 15~0 - input_121[15:0] (Read/Write)
--          others   - reserved
-- 0x03dc : reserved
-- 0x03e0 : Data signal of input_122
--          bit 15~0 - input_122[15:0] (Read/Write)
--          others   - reserved
-- 0x03e4 : reserved
-- 0x03e8 : Data signal of input_123
--          bit 15~0 - input_123[15:0] (Read/Write)
--          others   - reserved
-- 0x03ec : reserved
-- 0x03f0 : Data signal of input_124
--          bit 15~0 - input_124[15:0] (Read/Write)
--          others   - reserved
-- 0x03f4 : reserved
-- 0x03f8 : Data signal of input_125
--          bit 15~0 - input_125[15:0] (Read/Write)
--          others   - reserved
-- 0x03fc : reserved
-- 0x0400 : Data signal of input_126
--          bit 15~0 - input_126[15:0] (Read/Write)
--          others   - reserved
-- 0x0404 : reserved
-- 0x0408 : Data signal of input_127
--          bit 15~0 - input_127[15:0] (Read/Write)
--          others   - reserved
-- 0x040c : reserved
-- 0x0410 : Data signal of output_0
--          bit 15~0 - output_0[15:0] (Read)
--          others   - reserved
-- 0x0414 : Control signal of output_0
--          bit 0  - output_0_ap_vld (Read/COR)
--          others - reserved
-- 0x0420 : Data signal of output_1
--          bit 15~0 - output_1[15:0] (Read)
--          others   - reserved
-- 0x0424 : Control signal of output_1
--          bit 0  - output_1_ap_vld (Read/COR)
--          others - reserved
-- 0x0430 : Data signal of output_2
--          bit 15~0 - output_2[15:0] (Read)
--          others   - reserved
-- 0x0434 : Control signal of output_2
--          bit 0  - output_2_ap_vld (Read/COR)
--          others - reserved
-- 0x0440 : Data signal of output_3
--          bit 15~0 - output_3[15:0] (Read)
--          others   - reserved
-- 0x0444 : Control signal of output_3
--          bit 0  - output_3_ap_vld (Read/COR)
--          others - reserved
-- 0x0450 : Data signal of output_4
--          bit 15~0 - output_4[15:0] (Read)
--          others   - reserved
-- 0x0454 : Control signal of output_4
--          bit 0  - output_4_ap_vld (Read/COR)
--          others - reserved
-- 0x0460 : Data signal of output_5
--          bit 15~0 - output_5[15:0] (Read)
--          others   - reserved
-- 0x0464 : Control signal of output_5
--          bit 0  - output_5_ap_vld (Read/COR)
--          others - reserved
-- 0x0470 : Data signal of output_6
--          bit 15~0 - output_6[15:0] (Read)
--          others   - reserved
-- 0x0474 : Control signal of output_6
--          bit 0  - output_6_ap_vld (Read/COR)
--          others - reserved
-- 0x0480 : Data signal of output_7
--          bit 15~0 - output_7[15:0] (Read)
--          others   - reserved
-- 0x0484 : Control signal of output_7
--          bit 0  - output_7_ap_vld (Read/COR)
--          others - reserved
-- 0x0490 : Data signal of output_8
--          bit 15~0 - output_8[15:0] (Read)
--          others   - reserved
-- 0x0494 : Control signal of output_8
--          bit 0  - output_8_ap_vld (Read/COR)
--          others - reserved
-- 0x04a0 : Data signal of output_9
--          bit 15~0 - output_9[15:0] (Read)
--          others   - reserved
-- 0x04a4 : Control signal of output_9
--          bit 0  - output_9_ap_vld (Read/COR)
--          others - reserved
-- 0x04b0 : Data signal of output_10
--          bit 15~0 - output_10[15:0] (Read)
--          others   - reserved
-- 0x04b4 : Control signal of output_10
--          bit 0  - output_10_ap_vld (Read/COR)
--          others - reserved
-- 0x04c0 : Data signal of output_11
--          bit 15~0 - output_11[15:0] (Read)
--          others   - reserved
-- 0x04c4 : Control signal of output_11
--          bit 0  - output_11_ap_vld (Read/COR)
--          others - reserved
-- 0x04d0 : Data signal of output_12
--          bit 15~0 - output_12[15:0] (Read)
--          others   - reserved
-- 0x04d4 : Control signal of output_12
--          bit 0  - output_12_ap_vld (Read/COR)
--          others - reserved
-- 0x04e0 : Data signal of output_13
--          bit 15~0 - output_13[15:0] (Read)
--          others   - reserved
-- 0x04e4 : Control signal of output_13
--          bit 0  - output_13_ap_vld (Read/COR)
--          others - reserved
-- 0x04f0 : Data signal of output_14
--          bit 15~0 - output_14[15:0] (Read)
--          others   - reserved
-- 0x04f4 : Control signal of output_14
--          bit 0  - output_14_ap_vld (Read/COR)
--          others - reserved
-- 0x0500 : Data signal of output_15
--          bit 15~0 - output_15[15:0] (Read)
--          others   - reserved
-- 0x0504 : Control signal of output_15
--          bit 0  - output_15_ap_vld (Read/COR)
--          others - reserved
-- 0x0510 : Data signal of output_16
--          bit 15~0 - output_16[15:0] (Read)
--          others   - reserved
-- 0x0514 : Control signal of output_16
--          bit 0  - output_16_ap_vld (Read/COR)
--          others - reserved
-- 0x0520 : Data signal of output_17
--          bit 15~0 - output_17[15:0] (Read)
--          others   - reserved
-- 0x0524 : Control signal of output_17
--          bit 0  - output_17_ap_vld (Read/COR)
--          others - reserved
-- 0x0530 : Data signal of output_18
--          bit 15~0 - output_18[15:0] (Read)
--          others   - reserved
-- 0x0534 : Control signal of output_18
--          bit 0  - output_18_ap_vld (Read/COR)
--          others - reserved
-- 0x0540 : Data signal of output_19
--          bit 15~0 - output_19[15:0] (Read)
--          others   - reserved
-- 0x0544 : Control signal of output_19
--          bit 0  - output_19_ap_vld (Read/COR)
--          others - reserved
-- 0x0550 : Data signal of output_20
--          bit 15~0 - output_20[15:0] (Read)
--          others   - reserved
-- 0x0554 : Control signal of output_20
--          bit 0  - output_20_ap_vld (Read/COR)
--          others - reserved
-- 0x0560 : Data signal of output_21
--          bit 15~0 - output_21[15:0] (Read)
--          others   - reserved
-- 0x0564 : Control signal of output_21
--          bit 0  - output_21_ap_vld (Read/COR)
--          others - reserved
-- 0x0570 : Data signal of output_22
--          bit 15~0 - output_22[15:0] (Read)
--          others   - reserved
-- 0x0574 : Control signal of output_22
--          bit 0  - output_22_ap_vld (Read/COR)
--          others - reserved
-- 0x0580 : Data signal of output_23
--          bit 15~0 - output_23[15:0] (Read)
--          others   - reserved
-- 0x0584 : Control signal of output_23
--          bit 0  - output_23_ap_vld (Read/COR)
--          others - reserved
-- 0x0590 : Data signal of output_24
--          bit 15~0 - output_24[15:0] (Read)
--          others   - reserved
-- 0x0594 : Control signal of output_24
--          bit 0  - output_24_ap_vld (Read/COR)
--          others - reserved
-- 0x05a0 : Data signal of output_25
--          bit 15~0 - output_25[15:0] (Read)
--          others   - reserved
-- 0x05a4 : Control signal of output_25
--          bit 0  - output_25_ap_vld (Read/COR)
--          others - reserved
-- 0x05b0 : Data signal of output_26
--          bit 15~0 - output_26[15:0] (Read)
--          others   - reserved
-- 0x05b4 : Control signal of output_26
--          bit 0  - output_26_ap_vld (Read/COR)
--          others - reserved
-- 0x05c0 : Data signal of output_27
--          bit 15~0 - output_27[15:0] (Read)
--          others   - reserved
-- 0x05c4 : Control signal of output_27
--          bit 0  - output_27_ap_vld (Read/COR)
--          others - reserved
-- 0x05d0 : Data signal of output_28
--          bit 15~0 - output_28[15:0] (Read)
--          others   - reserved
-- 0x05d4 : Control signal of output_28
--          bit 0  - output_28_ap_vld (Read/COR)
--          others - reserved
-- 0x05e0 : Data signal of output_29
--          bit 15~0 - output_29[15:0] (Read)
--          others   - reserved
-- 0x05e4 : Control signal of output_29
--          bit 0  - output_29_ap_vld (Read/COR)
--          others - reserved
-- 0x05f0 : Data signal of output_30
--          bit 15~0 - output_30[15:0] (Read)
--          others   - reserved
-- 0x05f4 : Control signal of output_30
--          bit 0  - output_30_ap_vld (Read/COR)
--          others - reserved
-- 0x0600 : Data signal of output_31
--          bit 15~0 - output_31[15:0] (Read)
--          others   - reserved
-- 0x0604 : Control signal of output_31
--          bit 0  - output_31_ap_vld (Read/COR)
--          others - reserved
-- 0x0610 : Data signal of output_32
--          bit 15~0 - output_32[15:0] (Read)
--          others   - reserved
-- 0x0614 : Control signal of output_32
--          bit 0  - output_32_ap_vld (Read/COR)
--          others - reserved
-- 0x0620 : Data signal of output_33
--          bit 15~0 - output_33[15:0] (Read)
--          others   - reserved
-- 0x0624 : Control signal of output_33
--          bit 0  - output_33_ap_vld (Read/COR)
--          others - reserved
-- 0x0630 : Data signal of output_34
--          bit 15~0 - output_34[15:0] (Read)
--          others   - reserved
-- 0x0634 : Control signal of output_34
--          bit 0  - output_34_ap_vld (Read/COR)
--          others - reserved
-- 0x0640 : Data signal of output_35
--          bit 15~0 - output_35[15:0] (Read)
--          others   - reserved
-- 0x0644 : Control signal of output_35
--          bit 0  - output_35_ap_vld (Read/COR)
--          others - reserved
-- 0x0650 : Data signal of output_36
--          bit 15~0 - output_36[15:0] (Read)
--          others   - reserved
-- 0x0654 : Control signal of output_36
--          bit 0  - output_36_ap_vld (Read/COR)
--          others - reserved
-- 0x0660 : Data signal of output_37
--          bit 15~0 - output_37[15:0] (Read)
--          others   - reserved
-- 0x0664 : Control signal of output_37
--          bit 0  - output_37_ap_vld (Read/COR)
--          others - reserved
-- 0x0670 : Data signal of output_38
--          bit 15~0 - output_38[15:0] (Read)
--          others   - reserved
-- 0x0674 : Control signal of output_38
--          bit 0  - output_38_ap_vld (Read/COR)
--          others - reserved
-- 0x0680 : Data signal of output_39
--          bit 15~0 - output_39[15:0] (Read)
--          others   - reserved
-- 0x0684 : Control signal of output_39
--          bit 0  - output_39_ap_vld (Read/COR)
--          others - reserved
-- 0x0690 : Data signal of output_40
--          bit 15~0 - output_40[15:0] (Read)
--          others   - reserved
-- 0x0694 : Control signal of output_40
--          bit 0  - output_40_ap_vld (Read/COR)
--          others - reserved
-- 0x06a0 : Data signal of output_41
--          bit 15~0 - output_41[15:0] (Read)
--          others   - reserved
-- 0x06a4 : Control signal of output_41
--          bit 0  - output_41_ap_vld (Read/COR)
--          others - reserved
-- 0x06b0 : Data signal of output_42
--          bit 15~0 - output_42[15:0] (Read)
--          others   - reserved
-- 0x06b4 : Control signal of output_42
--          bit 0  - output_42_ap_vld (Read/COR)
--          others - reserved
-- 0x06c0 : Data signal of output_43
--          bit 15~0 - output_43[15:0] (Read)
--          others   - reserved
-- 0x06c4 : Control signal of output_43
--          bit 0  - output_43_ap_vld (Read/COR)
--          others - reserved
-- 0x06d0 : Data signal of output_44
--          bit 15~0 - output_44[15:0] (Read)
--          others   - reserved
-- 0x06d4 : Control signal of output_44
--          bit 0  - output_44_ap_vld (Read/COR)
--          others - reserved
-- 0x06e0 : Data signal of output_45
--          bit 15~0 - output_45[15:0] (Read)
--          others   - reserved
-- 0x06e4 : Control signal of output_45
--          bit 0  - output_45_ap_vld (Read/COR)
--          others - reserved
-- 0x06f0 : Data signal of output_46
--          bit 15~0 - output_46[15:0] (Read)
--          others   - reserved
-- 0x06f4 : Control signal of output_46
--          bit 0  - output_46_ap_vld (Read/COR)
--          others - reserved
-- 0x0700 : Data signal of output_47
--          bit 15~0 - output_47[15:0] (Read)
--          others   - reserved
-- 0x0704 : Control signal of output_47
--          bit 0  - output_47_ap_vld (Read/COR)
--          others - reserved
-- 0x0710 : Data signal of output_48
--          bit 15~0 - output_48[15:0] (Read)
--          others   - reserved
-- 0x0714 : Control signal of output_48
--          bit 0  - output_48_ap_vld (Read/COR)
--          others - reserved
-- 0x0720 : Data signal of output_49
--          bit 15~0 - output_49[15:0] (Read)
--          others   - reserved
-- 0x0724 : Control signal of output_49
--          bit 0  - output_49_ap_vld (Read/COR)
--          others - reserved
-- 0x0730 : Data signal of output_50
--          bit 15~0 - output_50[15:0] (Read)
--          others   - reserved
-- 0x0734 : Control signal of output_50
--          bit 0  - output_50_ap_vld (Read/COR)
--          others - reserved
-- 0x0740 : Data signal of output_51
--          bit 15~0 - output_51[15:0] (Read)
--          others   - reserved
-- 0x0744 : Control signal of output_51
--          bit 0  - output_51_ap_vld (Read/COR)
--          others - reserved
-- 0x0750 : Data signal of output_52
--          bit 15~0 - output_52[15:0] (Read)
--          others   - reserved
-- 0x0754 : Control signal of output_52
--          bit 0  - output_52_ap_vld (Read/COR)
--          others - reserved
-- 0x0760 : Data signal of output_53
--          bit 15~0 - output_53[15:0] (Read)
--          others   - reserved
-- 0x0764 : Control signal of output_53
--          bit 0  - output_53_ap_vld (Read/COR)
--          others - reserved
-- 0x0770 : Data signal of output_54
--          bit 15~0 - output_54[15:0] (Read)
--          others   - reserved
-- 0x0774 : Control signal of output_54
--          bit 0  - output_54_ap_vld (Read/COR)
--          others - reserved
-- 0x0780 : Data signal of output_55
--          bit 15~0 - output_55[15:0] (Read)
--          others   - reserved
-- 0x0784 : Control signal of output_55
--          bit 0  - output_55_ap_vld (Read/COR)
--          others - reserved
-- 0x0790 : Data signal of output_56
--          bit 15~0 - output_56[15:0] (Read)
--          others   - reserved
-- 0x0794 : Control signal of output_56
--          bit 0  - output_56_ap_vld (Read/COR)
--          others - reserved
-- 0x07a0 : Data signal of output_57
--          bit 15~0 - output_57[15:0] (Read)
--          others   - reserved
-- 0x07a4 : Control signal of output_57
--          bit 0  - output_57_ap_vld (Read/COR)
--          others - reserved
-- 0x07b0 : Data signal of output_58
--          bit 15~0 - output_58[15:0] (Read)
--          others   - reserved
-- 0x07b4 : Control signal of output_58
--          bit 0  - output_58_ap_vld (Read/COR)
--          others - reserved
-- 0x07c0 : Data signal of output_59
--          bit 15~0 - output_59[15:0] (Read)
--          others   - reserved
-- 0x07c4 : Control signal of output_59
--          bit 0  - output_59_ap_vld (Read/COR)
--          others - reserved
-- 0x07d0 : Data signal of output_60
--          bit 15~0 - output_60[15:0] (Read)
--          others   - reserved
-- 0x07d4 : Control signal of output_60
--          bit 0  - output_60_ap_vld (Read/COR)
--          others - reserved
-- 0x07e0 : Data signal of output_61
--          bit 15~0 - output_61[15:0] (Read)
--          others   - reserved
-- 0x07e4 : Control signal of output_61
--          bit 0  - output_61_ap_vld (Read/COR)
--          others - reserved
-- 0x07f0 : Data signal of output_62
--          bit 15~0 - output_62[15:0] (Read)
--          others   - reserved
-- 0x07f4 : Control signal of output_62
--          bit 0  - output_62_ap_vld (Read/COR)
--          others - reserved
-- 0x0800 : Data signal of output_63
--          bit 15~0 - output_63[15:0] (Read)
--          others   - reserved
-- 0x0804 : Control signal of output_63
--          bit 0  - output_63_ap_vld (Read/COR)
--          others - reserved
-- 0x0810 : Data signal of output_64
--          bit 15~0 - output_64[15:0] (Read)
--          others   - reserved
-- 0x0814 : Control signal of output_64
--          bit 0  - output_64_ap_vld (Read/COR)
--          others - reserved
-- 0x0820 : Data signal of output_65
--          bit 15~0 - output_65[15:0] (Read)
--          others   - reserved
-- 0x0824 : Control signal of output_65
--          bit 0  - output_65_ap_vld (Read/COR)
--          others - reserved
-- 0x0830 : Data signal of output_66
--          bit 15~0 - output_66[15:0] (Read)
--          others   - reserved
-- 0x0834 : Control signal of output_66
--          bit 0  - output_66_ap_vld (Read/COR)
--          others - reserved
-- 0x0840 : Data signal of output_67
--          bit 15~0 - output_67[15:0] (Read)
--          others   - reserved
-- 0x0844 : Control signal of output_67
--          bit 0  - output_67_ap_vld (Read/COR)
--          others - reserved
-- 0x0850 : Data signal of output_68
--          bit 15~0 - output_68[15:0] (Read)
--          others   - reserved
-- 0x0854 : Control signal of output_68
--          bit 0  - output_68_ap_vld (Read/COR)
--          others - reserved
-- 0x0860 : Data signal of output_69
--          bit 15~0 - output_69[15:0] (Read)
--          others   - reserved
-- 0x0864 : Control signal of output_69
--          bit 0  - output_69_ap_vld (Read/COR)
--          others - reserved
-- 0x0870 : Data signal of output_70
--          bit 15~0 - output_70[15:0] (Read)
--          others   - reserved
-- 0x0874 : Control signal of output_70
--          bit 0  - output_70_ap_vld (Read/COR)
--          others - reserved
-- 0x0880 : Data signal of output_71
--          bit 15~0 - output_71[15:0] (Read)
--          others   - reserved
-- 0x0884 : Control signal of output_71
--          bit 0  - output_71_ap_vld (Read/COR)
--          others - reserved
-- 0x0890 : Data signal of output_72
--          bit 15~0 - output_72[15:0] (Read)
--          others   - reserved
-- 0x0894 : Control signal of output_72
--          bit 0  - output_72_ap_vld (Read/COR)
--          others - reserved
-- 0x08a0 : Data signal of output_73
--          bit 15~0 - output_73[15:0] (Read)
--          others   - reserved
-- 0x08a4 : Control signal of output_73
--          bit 0  - output_73_ap_vld (Read/COR)
--          others - reserved
-- 0x08b0 : Data signal of output_74
--          bit 15~0 - output_74[15:0] (Read)
--          others   - reserved
-- 0x08b4 : Control signal of output_74
--          bit 0  - output_74_ap_vld (Read/COR)
--          others - reserved
-- 0x08c0 : Data signal of output_75
--          bit 15~0 - output_75[15:0] (Read)
--          others   - reserved
-- 0x08c4 : Control signal of output_75
--          bit 0  - output_75_ap_vld (Read/COR)
--          others - reserved
-- 0x08d0 : Data signal of output_76
--          bit 15~0 - output_76[15:0] (Read)
--          others   - reserved
-- 0x08d4 : Control signal of output_76
--          bit 0  - output_76_ap_vld (Read/COR)
--          others - reserved
-- 0x08e0 : Data signal of output_77
--          bit 15~0 - output_77[15:0] (Read)
--          others   - reserved
-- 0x08e4 : Control signal of output_77
--          bit 0  - output_77_ap_vld (Read/COR)
--          others - reserved
-- 0x08f0 : Data signal of output_78
--          bit 15~0 - output_78[15:0] (Read)
--          others   - reserved
-- 0x08f4 : Control signal of output_78
--          bit 0  - output_78_ap_vld (Read/COR)
--          others - reserved
-- 0x0900 : Data signal of output_79
--          bit 15~0 - output_79[15:0] (Read)
--          others   - reserved
-- 0x0904 : Control signal of output_79
--          bit 0  - output_79_ap_vld (Read/COR)
--          others - reserved
-- 0x0910 : Data signal of output_80
--          bit 15~0 - output_80[15:0] (Read)
--          others   - reserved
-- 0x0914 : Control signal of output_80
--          bit 0  - output_80_ap_vld (Read/COR)
--          others - reserved
-- 0x0920 : Data signal of output_81
--          bit 15~0 - output_81[15:0] (Read)
--          others   - reserved
-- 0x0924 : Control signal of output_81
--          bit 0  - output_81_ap_vld (Read/COR)
--          others - reserved
-- 0x0930 : Data signal of output_82
--          bit 15~0 - output_82[15:0] (Read)
--          others   - reserved
-- 0x0934 : Control signal of output_82
--          bit 0  - output_82_ap_vld (Read/COR)
--          others - reserved
-- 0x0940 : Data signal of output_83
--          bit 15~0 - output_83[15:0] (Read)
--          others   - reserved
-- 0x0944 : Control signal of output_83
--          bit 0  - output_83_ap_vld (Read/COR)
--          others - reserved
-- 0x0950 : Data signal of output_84
--          bit 15~0 - output_84[15:0] (Read)
--          others   - reserved
-- 0x0954 : Control signal of output_84
--          bit 0  - output_84_ap_vld (Read/COR)
--          others - reserved
-- 0x0960 : Data signal of output_85
--          bit 15~0 - output_85[15:0] (Read)
--          others   - reserved
-- 0x0964 : Control signal of output_85
--          bit 0  - output_85_ap_vld (Read/COR)
--          others - reserved
-- 0x0970 : Data signal of output_86
--          bit 15~0 - output_86[15:0] (Read)
--          others   - reserved
-- 0x0974 : Control signal of output_86
--          bit 0  - output_86_ap_vld (Read/COR)
--          others - reserved
-- 0x0980 : Data signal of output_87
--          bit 15~0 - output_87[15:0] (Read)
--          others   - reserved
-- 0x0984 : Control signal of output_87
--          bit 0  - output_87_ap_vld (Read/COR)
--          others - reserved
-- 0x0990 : Data signal of output_88
--          bit 15~0 - output_88[15:0] (Read)
--          others   - reserved
-- 0x0994 : Control signal of output_88
--          bit 0  - output_88_ap_vld (Read/COR)
--          others - reserved
-- 0x09a0 : Data signal of output_89
--          bit 15~0 - output_89[15:0] (Read)
--          others   - reserved
-- 0x09a4 : Control signal of output_89
--          bit 0  - output_89_ap_vld (Read/COR)
--          others - reserved
-- 0x09b0 : Data signal of output_90
--          bit 15~0 - output_90[15:0] (Read)
--          others   - reserved
-- 0x09b4 : Control signal of output_90
--          bit 0  - output_90_ap_vld (Read/COR)
--          others - reserved
-- 0x09c0 : Data signal of output_91
--          bit 15~0 - output_91[15:0] (Read)
--          others   - reserved
-- 0x09c4 : Control signal of output_91
--          bit 0  - output_91_ap_vld (Read/COR)
--          others - reserved
-- 0x09d0 : Data signal of output_92
--          bit 15~0 - output_92[15:0] (Read)
--          others   - reserved
-- 0x09d4 : Control signal of output_92
--          bit 0  - output_92_ap_vld (Read/COR)
--          others - reserved
-- 0x09e0 : Data signal of output_93
--          bit 15~0 - output_93[15:0] (Read)
--          others   - reserved
-- 0x09e4 : Control signal of output_93
--          bit 0  - output_93_ap_vld (Read/COR)
--          others - reserved
-- 0x09f0 : Data signal of output_94
--          bit 15~0 - output_94[15:0] (Read)
--          others   - reserved
-- 0x09f4 : Control signal of output_94
--          bit 0  - output_94_ap_vld (Read/COR)
--          others - reserved
-- 0x0a00 : Data signal of output_95
--          bit 15~0 - output_95[15:0] (Read)
--          others   - reserved
-- 0x0a04 : Control signal of output_95
--          bit 0  - output_95_ap_vld (Read/COR)
--          others - reserved
-- 0x0a10 : Data signal of output_96
--          bit 15~0 - output_96[15:0] (Read)
--          others   - reserved
-- 0x0a14 : Control signal of output_96
--          bit 0  - output_96_ap_vld (Read/COR)
--          others - reserved
-- 0x0a20 : Data signal of output_97
--          bit 15~0 - output_97[15:0] (Read)
--          others   - reserved
-- 0x0a24 : Control signal of output_97
--          bit 0  - output_97_ap_vld (Read/COR)
--          others - reserved
-- 0x0a30 : Data signal of output_98
--          bit 15~0 - output_98[15:0] (Read)
--          others   - reserved
-- 0x0a34 : Control signal of output_98
--          bit 0  - output_98_ap_vld (Read/COR)
--          others - reserved
-- 0x0a40 : Data signal of output_99
--          bit 15~0 - output_99[15:0] (Read)
--          others   - reserved
-- 0x0a44 : Control signal of output_99
--          bit 0  - output_99_ap_vld (Read/COR)
--          others - reserved
-- 0x0a50 : Data signal of output_100
--          bit 15~0 - output_100[15:0] (Read)
--          others   - reserved
-- 0x0a54 : Control signal of output_100
--          bit 0  - output_100_ap_vld (Read/COR)
--          others - reserved
-- 0x0a60 : Data signal of output_101
--          bit 15~0 - output_101[15:0] (Read)
--          others   - reserved
-- 0x0a64 : Control signal of output_101
--          bit 0  - output_101_ap_vld (Read/COR)
--          others - reserved
-- 0x0a70 : Data signal of output_102
--          bit 15~0 - output_102[15:0] (Read)
--          others   - reserved
-- 0x0a74 : Control signal of output_102
--          bit 0  - output_102_ap_vld (Read/COR)
--          others - reserved
-- 0x0a80 : Data signal of output_103
--          bit 15~0 - output_103[15:0] (Read)
--          others   - reserved
-- 0x0a84 : Control signal of output_103
--          bit 0  - output_103_ap_vld (Read/COR)
--          others - reserved
-- 0x0a90 : Data signal of output_104
--          bit 15~0 - output_104[15:0] (Read)
--          others   - reserved
-- 0x0a94 : Control signal of output_104
--          bit 0  - output_104_ap_vld (Read/COR)
--          others - reserved
-- 0x0aa0 : Data signal of output_105
--          bit 15~0 - output_105[15:0] (Read)
--          others   - reserved
-- 0x0aa4 : Control signal of output_105
--          bit 0  - output_105_ap_vld (Read/COR)
--          others - reserved
-- 0x0ab0 : Data signal of output_106
--          bit 15~0 - output_106[15:0] (Read)
--          others   - reserved
-- 0x0ab4 : Control signal of output_106
--          bit 0  - output_106_ap_vld (Read/COR)
--          others - reserved
-- 0x0ac0 : Data signal of output_107
--          bit 15~0 - output_107[15:0] (Read)
--          others   - reserved
-- 0x0ac4 : Control signal of output_107
--          bit 0  - output_107_ap_vld (Read/COR)
--          others - reserved
-- 0x0ad0 : Data signal of output_108
--          bit 15~0 - output_108[15:0] (Read)
--          others   - reserved
-- 0x0ad4 : Control signal of output_108
--          bit 0  - output_108_ap_vld (Read/COR)
--          others - reserved
-- 0x0ae0 : Data signal of output_109
--          bit 15~0 - output_109[15:0] (Read)
--          others   - reserved
-- 0x0ae4 : Control signal of output_109
--          bit 0  - output_109_ap_vld (Read/COR)
--          others - reserved
-- 0x0af0 : Data signal of output_110
--          bit 15~0 - output_110[15:0] (Read)
--          others   - reserved
-- 0x0af4 : Control signal of output_110
--          bit 0  - output_110_ap_vld (Read/COR)
--          others - reserved
-- 0x0b00 : Data signal of output_111
--          bit 15~0 - output_111[15:0] (Read)
--          others   - reserved
-- 0x0b04 : Control signal of output_111
--          bit 0  - output_111_ap_vld (Read/COR)
--          others - reserved
-- 0x0b10 : Data signal of output_112
--          bit 15~0 - output_112[15:0] (Read)
--          others   - reserved
-- 0x0b14 : Control signal of output_112
--          bit 0  - output_112_ap_vld (Read/COR)
--          others - reserved
-- 0x0b20 : Data signal of output_113
--          bit 15~0 - output_113[15:0] (Read)
--          others   - reserved
-- 0x0b24 : Control signal of output_113
--          bit 0  - output_113_ap_vld (Read/COR)
--          others - reserved
-- 0x0b30 : Data signal of output_114
--          bit 15~0 - output_114[15:0] (Read)
--          others   - reserved
-- 0x0b34 : Control signal of output_114
--          bit 0  - output_114_ap_vld (Read/COR)
--          others - reserved
-- 0x0b40 : Data signal of output_115
--          bit 15~0 - output_115[15:0] (Read)
--          others   - reserved
-- 0x0b44 : Control signal of output_115
--          bit 0  - output_115_ap_vld (Read/COR)
--          others - reserved
-- 0x0b50 : Data signal of output_116
--          bit 15~0 - output_116[15:0] (Read)
--          others   - reserved
-- 0x0b54 : Control signal of output_116
--          bit 0  - output_116_ap_vld (Read/COR)
--          others - reserved
-- 0x0b60 : Data signal of output_117
--          bit 15~0 - output_117[15:0] (Read)
--          others   - reserved
-- 0x0b64 : Control signal of output_117
--          bit 0  - output_117_ap_vld (Read/COR)
--          others - reserved
-- 0x0b70 : Data signal of output_118
--          bit 15~0 - output_118[15:0] (Read)
--          others   - reserved
-- 0x0b74 : Control signal of output_118
--          bit 0  - output_118_ap_vld (Read/COR)
--          others - reserved
-- 0x0b80 : Data signal of output_119
--          bit 15~0 - output_119[15:0] (Read)
--          others   - reserved
-- 0x0b84 : Control signal of output_119
--          bit 0  - output_119_ap_vld (Read/COR)
--          others - reserved
-- 0x0b90 : Data signal of output_120
--          bit 15~0 - output_120[15:0] (Read)
--          others   - reserved
-- 0x0b94 : Control signal of output_120
--          bit 0  - output_120_ap_vld (Read/COR)
--          others - reserved
-- 0x0ba0 : Data signal of output_121
--          bit 15~0 - output_121[15:0] (Read)
--          others   - reserved
-- 0x0ba4 : Control signal of output_121
--          bit 0  - output_121_ap_vld (Read/COR)
--          others - reserved
-- 0x0bb0 : Data signal of output_122
--          bit 15~0 - output_122[15:0] (Read)
--          others   - reserved
-- 0x0bb4 : Control signal of output_122
--          bit 0  - output_122_ap_vld (Read/COR)
--          others - reserved
-- 0x0bc0 : Data signal of output_123
--          bit 15~0 - output_123[15:0] (Read)
--          others   - reserved
-- 0x0bc4 : Control signal of output_123
--          bit 0  - output_123_ap_vld (Read/COR)
--          others - reserved
-- 0x0bd0 : Data signal of output_124
--          bit 15~0 - output_124[15:0] (Read)
--          others   - reserved
-- 0x0bd4 : Control signal of output_124
--          bit 0  - output_124_ap_vld (Read/COR)
--          others - reserved
-- 0x0be0 : Data signal of output_125
--          bit 15~0 - output_125[15:0] (Read)
--          others   - reserved
-- 0x0be4 : Control signal of output_125
--          bit 0  - output_125_ap_vld (Read/COR)
--          others - reserved
-- 0x0bf0 : Data signal of output_126
--          bit 15~0 - output_126[15:0] (Read)
--          others   - reserved
-- 0x0bf4 : Control signal of output_126
--          bit 0  - output_126_ap_vld (Read/COR)
--          others - reserved
-- 0x0c00 : Data signal of output_127
--          bit 15~0 - output_127[15:0] (Read)
--          others   - reserved
-- 0x0c04 : Control signal of output_127
--          bit 0  - output_127_ap_vld (Read/COR)
--          others - reserved
-- 0x0c10 : Data signal of numOfOutputNeurons
--          bit 15~0 - numOfOutputNeurons[15:0] (Read/Write)
--          others   - reserved
-- 0x0c14 : reserved
-- 0x0c18 : Data signal of activation
--          bit 7~0 - activation[7:0] (Read/Write)
--          others  - reserved
-- 0x0c1c : reserved
-- 0x0d00 ~
-- 0x0dff : Memory 'bias' (128 * 16b)
--          Word n : bit [15: 0] - bias[2n]
--                   bit [31:16] - bias[2n+1]
-- 0x0e00 ~
-- 0x0eff : Memory 'weights_0' (128 * 16b)
--          Word n : bit [15: 0] - weights_0[2n]
--                   bit [31:16] - weights_0[2n+1]
-- 0x0f00 ~
-- 0x0fff : Memory 'weights_1' (128 * 16b)
--          Word n : bit [15: 0] - weights_1[2n]
--                   bit [31:16] - weights_1[2n+1]
-- 0x1000 ~
-- 0x10ff : Memory 'weights_2' (128 * 16b)
--          Word n : bit [15: 0] - weights_2[2n]
--                   bit [31:16] - weights_2[2n+1]
-- 0x1100 ~
-- 0x11ff : Memory 'weights_3' (128 * 16b)
--          Word n : bit [15: 0] - weights_3[2n]
--                   bit [31:16] - weights_3[2n+1]
-- 0x1200 ~
-- 0x12ff : Memory 'weights_4' (128 * 16b)
--          Word n : bit [15: 0] - weights_4[2n]
--                   bit [31:16] - weights_4[2n+1]
-- 0x1300 ~
-- 0x13ff : Memory 'weights_5' (128 * 16b)
--          Word n : bit [15: 0] - weights_5[2n]
--                   bit [31:16] - weights_5[2n+1]
-- 0x1400 ~
-- 0x14ff : Memory 'weights_6' (128 * 16b)
--          Word n : bit [15: 0] - weights_6[2n]
--                   bit [31:16] - weights_6[2n+1]
-- 0x1500 ~
-- 0x15ff : Memory 'weights_7' (128 * 16b)
--          Word n : bit [15: 0] - weights_7[2n]
--                   bit [31:16] - weights_7[2n+1]
-- 0x1600 ~
-- 0x16ff : Memory 'weights_8' (128 * 16b)
--          Word n : bit [15: 0] - weights_8[2n]
--                   bit [31:16] - weights_8[2n+1]
-- 0x1700 ~
-- 0x17ff : Memory 'weights_9' (128 * 16b)
--          Word n : bit [15: 0] - weights_9[2n]
--                   bit [31:16] - weights_9[2n+1]
-- 0x1800 ~
-- 0x18ff : Memory 'weights_10' (128 * 16b)
--          Word n : bit [15: 0] - weights_10[2n]
--                   bit [31:16] - weights_10[2n+1]
-- 0x1900 ~
-- 0x19ff : Memory 'weights_11' (128 * 16b)
--          Word n : bit [15: 0] - weights_11[2n]
--                   bit [31:16] - weights_11[2n+1]
-- 0x1a00 ~
-- 0x1aff : Memory 'weights_12' (128 * 16b)
--          Word n : bit [15: 0] - weights_12[2n]
--                   bit [31:16] - weights_12[2n+1]
-- 0x1b00 ~
-- 0x1bff : Memory 'weights_13' (128 * 16b)
--          Word n : bit [15: 0] - weights_13[2n]
--                   bit [31:16] - weights_13[2n+1]
-- 0x1c00 ~
-- 0x1cff : Memory 'weights_14' (128 * 16b)
--          Word n : bit [15: 0] - weights_14[2n]
--                   bit [31:16] - weights_14[2n+1]
-- 0x1d00 ~
-- 0x1dff : Memory 'weights_15' (128 * 16b)
--          Word n : bit [15: 0] - weights_15[2n]
--                   bit [31:16] - weights_15[2n+1]
-- 0x1e00 ~
-- 0x1eff : Memory 'weights_16' (128 * 16b)
--          Word n : bit [15: 0] - weights_16[2n]
--                   bit [31:16] - weights_16[2n+1]
-- 0x1f00 ~
-- 0x1fff : Memory 'weights_17' (128 * 16b)
--          Word n : bit [15: 0] - weights_17[2n]
--                   bit [31:16] - weights_17[2n+1]
-- 0x2000 ~
-- 0x20ff : Memory 'weights_18' (128 * 16b)
--          Word n : bit [15: 0] - weights_18[2n]
--                   bit [31:16] - weights_18[2n+1]
-- 0x2100 ~
-- 0x21ff : Memory 'weights_19' (128 * 16b)
--          Word n : bit [15: 0] - weights_19[2n]
--                   bit [31:16] - weights_19[2n+1]
-- 0x2200 ~
-- 0x22ff : Memory 'weights_20' (128 * 16b)
--          Word n : bit [15: 0] - weights_20[2n]
--                   bit [31:16] - weights_20[2n+1]
-- 0x2300 ~
-- 0x23ff : Memory 'weights_21' (128 * 16b)
--          Word n : bit [15: 0] - weights_21[2n]
--                   bit [31:16] - weights_21[2n+1]
-- 0x2400 ~
-- 0x24ff : Memory 'weights_22' (128 * 16b)
--          Word n : bit [15: 0] - weights_22[2n]
--                   bit [31:16] - weights_22[2n+1]
-- 0x2500 ~
-- 0x25ff : Memory 'weights_23' (128 * 16b)
--          Word n : bit [15: 0] - weights_23[2n]
--                   bit [31:16] - weights_23[2n+1]
-- 0x2600 ~
-- 0x26ff : Memory 'weights_24' (128 * 16b)
--          Word n : bit [15: 0] - weights_24[2n]
--                   bit [31:16] - weights_24[2n+1]
-- 0x2700 ~
-- 0x27ff : Memory 'weights_25' (128 * 16b)
--          Word n : bit [15: 0] - weights_25[2n]
--                   bit [31:16] - weights_25[2n+1]
-- 0x2800 ~
-- 0x28ff : Memory 'weights_26' (128 * 16b)
--          Word n : bit [15: 0] - weights_26[2n]
--                   bit [31:16] - weights_26[2n+1]
-- 0x2900 ~
-- 0x29ff : Memory 'weights_27' (128 * 16b)
--          Word n : bit [15: 0] - weights_27[2n]
--                   bit [31:16] - weights_27[2n+1]
-- 0x2a00 ~
-- 0x2aff : Memory 'weights_28' (128 * 16b)
--          Word n : bit [15: 0] - weights_28[2n]
--                   bit [31:16] - weights_28[2n+1]
-- 0x2b00 ~
-- 0x2bff : Memory 'weights_29' (128 * 16b)
--          Word n : bit [15: 0] - weights_29[2n]
--                   bit [31:16] - weights_29[2n+1]
-- 0x2c00 ~
-- 0x2cff : Memory 'weights_30' (128 * 16b)
--          Word n : bit [15: 0] - weights_30[2n]
--                   bit [31:16] - weights_30[2n+1]
-- 0x2d00 ~
-- 0x2dff : Memory 'weights_31' (128 * 16b)
--          Word n : bit [15: 0] - weights_31[2n]
--                   bit [31:16] - weights_31[2n+1]
-- 0x2e00 ~
-- 0x2eff : Memory 'weights_32' (128 * 16b)
--          Word n : bit [15: 0] - weights_32[2n]
--                   bit [31:16] - weights_32[2n+1]
-- 0x2f00 ~
-- 0x2fff : Memory 'weights_33' (128 * 16b)
--          Word n : bit [15: 0] - weights_33[2n]
--                   bit [31:16] - weights_33[2n+1]
-- 0x3000 ~
-- 0x30ff : Memory 'weights_34' (128 * 16b)
--          Word n : bit [15: 0] - weights_34[2n]
--                   bit [31:16] - weights_34[2n+1]
-- 0x3100 ~
-- 0x31ff : Memory 'weights_35' (128 * 16b)
--          Word n : bit [15: 0] - weights_35[2n]
--                   bit [31:16] - weights_35[2n+1]
-- 0x3200 ~
-- 0x32ff : Memory 'weights_36' (128 * 16b)
--          Word n : bit [15: 0] - weights_36[2n]
--                   bit [31:16] - weights_36[2n+1]
-- 0x3300 ~
-- 0x33ff : Memory 'weights_37' (128 * 16b)
--          Word n : bit [15: 0] - weights_37[2n]
--                   bit [31:16] - weights_37[2n+1]
-- 0x3400 ~
-- 0x34ff : Memory 'weights_38' (128 * 16b)
--          Word n : bit [15: 0] - weights_38[2n]
--                   bit [31:16] - weights_38[2n+1]
-- 0x3500 ~
-- 0x35ff : Memory 'weights_39' (128 * 16b)
--          Word n : bit [15: 0] - weights_39[2n]
--                   bit [31:16] - weights_39[2n+1]
-- 0x3600 ~
-- 0x36ff : Memory 'weights_40' (128 * 16b)
--          Word n : bit [15: 0] - weights_40[2n]
--                   bit [31:16] - weights_40[2n+1]
-- 0x3700 ~
-- 0x37ff : Memory 'weights_41' (128 * 16b)
--          Word n : bit [15: 0] - weights_41[2n]
--                   bit [31:16] - weights_41[2n+1]
-- 0x3800 ~
-- 0x38ff : Memory 'weights_42' (128 * 16b)
--          Word n : bit [15: 0] - weights_42[2n]
--                   bit [31:16] - weights_42[2n+1]
-- 0x3900 ~
-- 0x39ff : Memory 'weights_43' (128 * 16b)
--          Word n : bit [15: 0] - weights_43[2n]
--                   bit [31:16] - weights_43[2n+1]
-- 0x3a00 ~
-- 0x3aff : Memory 'weights_44' (128 * 16b)
--          Word n : bit [15: 0] - weights_44[2n]
--                   bit [31:16] - weights_44[2n+1]
-- 0x3b00 ~
-- 0x3bff : Memory 'weights_45' (128 * 16b)
--          Word n : bit [15: 0] - weights_45[2n]
--                   bit [31:16] - weights_45[2n+1]
-- 0x3c00 ~
-- 0x3cff : Memory 'weights_46' (128 * 16b)
--          Word n : bit [15: 0] - weights_46[2n]
--                   bit [31:16] - weights_46[2n+1]
-- 0x3d00 ~
-- 0x3dff : Memory 'weights_47' (128 * 16b)
--          Word n : bit [15: 0] - weights_47[2n]
--                   bit [31:16] - weights_47[2n+1]
-- 0x3e00 ~
-- 0x3eff : Memory 'weights_48' (128 * 16b)
--          Word n : bit [15: 0] - weights_48[2n]
--                   bit [31:16] - weights_48[2n+1]
-- 0x3f00 ~
-- 0x3fff : Memory 'weights_49' (128 * 16b)
--          Word n : bit [15: 0] - weights_49[2n]
--                   bit [31:16] - weights_49[2n+1]
-- 0x4000 ~
-- 0x40ff : Memory 'weights_50' (128 * 16b)
--          Word n : bit [15: 0] - weights_50[2n]
--                   bit [31:16] - weights_50[2n+1]
-- 0x4100 ~
-- 0x41ff : Memory 'weights_51' (128 * 16b)
--          Word n : bit [15: 0] - weights_51[2n]
--                   bit [31:16] - weights_51[2n+1]
-- 0x4200 ~
-- 0x42ff : Memory 'weights_52' (128 * 16b)
--          Word n : bit [15: 0] - weights_52[2n]
--                   bit [31:16] - weights_52[2n+1]
-- 0x4300 ~
-- 0x43ff : Memory 'weights_53' (128 * 16b)
--          Word n : bit [15: 0] - weights_53[2n]
--                   bit [31:16] - weights_53[2n+1]
-- 0x4400 ~
-- 0x44ff : Memory 'weights_54' (128 * 16b)
--          Word n : bit [15: 0] - weights_54[2n]
--                   bit [31:16] - weights_54[2n+1]
-- 0x4500 ~
-- 0x45ff : Memory 'weights_55' (128 * 16b)
--          Word n : bit [15: 0] - weights_55[2n]
--                   bit [31:16] - weights_55[2n+1]
-- 0x4600 ~
-- 0x46ff : Memory 'weights_56' (128 * 16b)
--          Word n : bit [15: 0] - weights_56[2n]
--                   bit [31:16] - weights_56[2n+1]
-- 0x4700 ~
-- 0x47ff : Memory 'weights_57' (128 * 16b)
--          Word n : bit [15: 0] - weights_57[2n]
--                   bit [31:16] - weights_57[2n+1]
-- 0x4800 ~
-- 0x48ff : Memory 'weights_58' (128 * 16b)
--          Word n : bit [15: 0] - weights_58[2n]
--                   bit [31:16] - weights_58[2n+1]
-- 0x4900 ~
-- 0x49ff : Memory 'weights_59' (128 * 16b)
--          Word n : bit [15: 0] - weights_59[2n]
--                   bit [31:16] - weights_59[2n+1]
-- 0x4a00 ~
-- 0x4aff : Memory 'weights_60' (128 * 16b)
--          Word n : bit [15: 0] - weights_60[2n]
--                   bit [31:16] - weights_60[2n+1]
-- 0x4b00 ~
-- 0x4bff : Memory 'weights_61' (128 * 16b)
--          Word n : bit [15: 0] - weights_61[2n]
--                   bit [31:16] - weights_61[2n+1]
-- 0x4c00 ~
-- 0x4cff : Memory 'weights_62' (128 * 16b)
--          Word n : bit [15: 0] - weights_62[2n]
--                   bit [31:16] - weights_62[2n+1]
-- 0x4d00 ~
-- 0x4dff : Memory 'weights_63' (128 * 16b)
--          Word n : bit [15: 0] - weights_63[2n]
--                   bit [31:16] - weights_63[2n+1]
-- 0x4e00 ~
-- 0x4eff : Memory 'weights_64' (128 * 16b)
--          Word n : bit [15: 0] - weights_64[2n]
--                   bit [31:16] - weights_64[2n+1]
-- 0x4f00 ~
-- 0x4fff : Memory 'weights_65' (128 * 16b)
--          Word n : bit [15: 0] - weights_65[2n]
--                   bit [31:16] - weights_65[2n+1]
-- 0x5000 ~
-- 0x50ff : Memory 'weights_66' (128 * 16b)
--          Word n : bit [15: 0] - weights_66[2n]
--                   bit [31:16] - weights_66[2n+1]
-- 0x5100 ~
-- 0x51ff : Memory 'weights_67' (128 * 16b)
--          Word n : bit [15: 0] - weights_67[2n]
--                   bit [31:16] - weights_67[2n+1]
-- 0x5200 ~
-- 0x52ff : Memory 'weights_68' (128 * 16b)
--          Word n : bit [15: 0] - weights_68[2n]
--                   bit [31:16] - weights_68[2n+1]
-- 0x5300 ~
-- 0x53ff : Memory 'weights_69' (128 * 16b)
--          Word n : bit [15: 0] - weights_69[2n]
--                   bit [31:16] - weights_69[2n+1]
-- 0x5400 ~
-- 0x54ff : Memory 'weights_70' (128 * 16b)
--          Word n : bit [15: 0] - weights_70[2n]
--                   bit [31:16] - weights_70[2n+1]
-- 0x5500 ~
-- 0x55ff : Memory 'weights_71' (128 * 16b)
--          Word n : bit [15: 0] - weights_71[2n]
--                   bit [31:16] - weights_71[2n+1]
-- 0x5600 ~
-- 0x56ff : Memory 'weights_72' (128 * 16b)
--          Word n : bit [15: 0] - weights_72[2n]
--                   bit [31:16] - weights_72[2n+1]
-- 0x5700 ~
-- 0x57ff : Memory 'weights_73' (128 * 16b)
--          Word n : bit [15: 0] - weights_73[2n]
--                   bit [31:16] - weights_73[2n+1]
-- 0x5800 ~
-- 0x58ff : Memory 'weights_74' (128 * 16b)
--          Word n : bit [15: 0] - weights_74[2n]
--                   bit [31:16] - weights_74[2n+1]
-- 0x5900 ~
-- 0x59ff : Memory 'weights_75' (128 * 16b)
--          Word n : bit [15: 0] - weights_75[2n]
--                   bit [31:16] - weights_75[2n+1]
-- 0x5a00 ~
-- 0x5aff : Memory 'weights_76' (128 * 16b)
--          Word n : bit [15: 0] - weights_76[2n]
--                   bit [31:16] - weights_76[2n+1]
-- 0x5b00 ~
-- 0x5bff : Memory 'weights_77' (128 * 16b)
--          Word n : bit [15: 0] - weights_77[2n]
--                   bit [31:16] - weights_77[2n+1]
-- 0x5c00 ~
-- 0x5cff : Memory 'weights_78' (128 * 16b)
--          Word n : bit [15: 0] - weights_78[2n]
--                   bit [31:16] - weights_78[2n+1]
-- 0x5d00 ~
-- 0x5dff : Memory 'weights_79' (128 * 16b)
--          Word n : bit [15: 0] - weights_79[2n]
--                   bit [31:16] - weights_79[2n+1]
-- 0x5e00 ~
-- 0x5eff : Memory 'weights_80' (128 * 16b)
--          Word n : bit [15: 0] - weights_80[2n]
--                   bit [31:16] - weights_80[2n+1]
-- 0x5f00 ~
-- 0x5fff : Memory 'weights_81' (128 * 16b)
--          Word n : bit [15: 0] - weights_81[2n]
--                   bit [31:16] - weights_81[2n+1]
-- 0x6000 ~
-- 0x60ff : Memory 'weights_82' (128 * 16b)
--          Word n : bit [15: 0] - weights_82[2n]
--                   bit [31:16] - weights_82[2n+1]
-- 0x6100 ~
-- 0x61ff : Memory 'weights_83' (128 * 16b)
--          Word n : bit [15: 0] - weights_83[2n]
--                   bit [31:16] - weights_83[2n+1]
-- 0x6200 ~
-- 0x62ff : Memory 'weights_84' (128 * 16b)
--          Word n : bit [15: 0] - weights_84[2n]
--                   bit [31:16] - weights_84[2n+1]
-- 0x6300 ~
-- 0x63ff : Memory 'weights_85' (128 * 16b)
--          Word n : bit [15: 0] - weights_85[2n]
--                   bit [31:16] - weights_85[2n+1]
-- 0x6400 ~
-- 0x64ff : Memory 'weights_86' (128 * 16b)
--          Word n : bit [15: 0] - weights_86[2n]
--                   bit [31:16] - weights_86[2n+1]
-- 0x6500 ~
-- 0x65ff : Memory 'weights_87' (128 * 16b)
--          Word n : bit [15: 0] - weights_87[2n]
--                   bit [31:16] - weights_87[2n+1]
-- 0x6600 ~
-- 0x66ff : Memory 'weights_88' (128 * 16b)
--          Word n : bit [15: 0] - weights_88[2n]
--                   bit [31:16] - weights_88[2n+1]
-- 0x6700 ~
-- 0x67ff : Memory 'weights_89' (128 * 16b)
--          Word n : bit [15: 0] - weights_89[2n]
--                   bit [31:16] - weights_89[2n+1]
-- 0x6800 ~
-- 0x68ff : Memory 'weights_90' (128 * 16b)
--          Word n : bit [15: 0] - weights_90[2n]
--                   bit [31:16] - weights_90[2n+1]
-- 0x6900 ~
-- 0x69ff : Memory 'weights_91' (128 * 16b)
--          Word n : bit [15: 0] - weights_91[2n]
--                   bit [31:16] - weights_91[2n+1]
-- 0x6a00 ~
-- 0x6aff : Memory 'weights_92' (128 * 16b)
--          Word n : bit [15: 0] - weights_92[2n]
--                   bit [31:16] - weights_92[2n+1]
-- 0x6b00 ~
-- 0x6bff : Memory 'weights_93' (128 * 16b)
--          Word n : bit [15: 0] - weights_93[2n]
--                   bit [31:16] - weights_93[2n+1]
-- 0x6c00 ~
-- 0x6cff : Memory 'weights_94' (128 * 16b)
--          Word n : bit [15: 0] - weights_94[2n]
--                   bit [31:16] - weights_94[2n+1]
-- 0x6d00 ~
-- 0x6dff : Memory 'weights_95' (128 * 16b)
--          Word n : bit [15: 0] - weights_95[2n]
--                   bit [31:16] - weights_95[2n+1]
-- 0x6e00 ~
-- 0x6eff : Memory 'weights_96' (128 * 16b)
--          Word n : bit [15: 0] - weights_96[2n]
--                   bit [31:16] - weights_96[2n+1]
-- 0x6f00 ~
-- 0x6fff : Memory 'weights_97' (128 * 16b)
--          Word n : bit [15: 0] - weights_97[2n]
--                   bit [31:16] - weights_97[2n+1]
-- 0x7000 ~
-- 0x70ff : Memory 'weights_98' (128 * 16b)
--          Word n : bit [15: 0] - weights_98[2n]
--                   bit [31:16] - weights_98[2n+1]
-- 0x7100 ~
-- 0x71ff : Memory 'weights_99' (128 * 16b)
--          Word n : bit [15: 0] - weights_99[2n]
--                   bit [31:16] - weights_99[2n+1]
-- 0x7200 ~
-- 0x72ff : Memory 'weights_100' (128 * 16b)
--          Word n : bit [15: 0] - weights_100[2n]
--                   bit [31:16] - weights_100[2n+1]
-- 0x7300 ~
-- 0x73ff : Memory 'weights_101' (128 * 16b)
--          Word n : bit [15: 0] - weights_101[2n]
--                   bit [31:16] - weights_101[2n+1]
-- 0x7400 ~
-- 0x74ff : Memory 'weights_102' (128 * 16b)
--          Word n : bit [15: 0] - weights_102[2n]
--                   bit [31:16] - weights_102[2n+1]
-- 0x7500 ~
-- 0x75ff : Memory 'weights_103' (128 * 16b)
--          Word n : bit [15: 0] - weights_103[2n]
--                   bit [31:16] - weights_103[2n+1]
-- 0x7600 ~
-- 0x76ff : Memory 'weights_104' (128 * 16b)
--          Word n : bit [15: 0] - weights_104[2n]
--                   bit [31:16] - weights_104[2n+1]
-- 0x7700 ~
-- 0x77ff : Memory 'weights_105' (128 * 16b)
--          Word n : bit [15: 0] - weights_105[2n]
--                   bit [31:16] - weights_105[2n+1]
-- 0x7800 ~
-- 0x78ff : Memory 'weights_106' (128 * 16b)
--          Word n : bit [15: 0] - weights_106[2n]
--                   bit [31:16] - weights_106[2n+1]
-- 0x7900 ~
-- 0x79ff : Memory 'weights_107' (128 * 16b)
--          Word n : bit [15: 0] - weights_107[2n]
--                   bit [31:16] - weights_107[2n+1]
-- 0x7a00 ~
-- 0x7aff : Memory 'weights_108' (128 * 16b)
--          Word n : bit [15: 0] - weights_108[2n]
--                   bit [31:16] - weights_108[2n+1]
-- 0x7b00 ~
-- 0x7bff : Memory 'weights_109' (128 * 16b)
--          Word n : bit [15: 0] - weights_109[2n]
--                   bit [31:16] - weights_109[2n+1]
-- 0x7c00 ~
-- 0x7cff : Memory 'weights_110' (128 * 16b)
--          Word n : bit [15: 0] - weights_110[2n]
--                   bit [31:16] - weights_110[2n+1]
-- 0x7d00 ~
-- 0x7dff : Memory 'weights_111' (128 * 16b)
--          Word n : bit [15: 0] - weights_111[2n]
--                   bit [31:16] - weights_111[2n+1]
-- 0x7e00 ~
-- 0x7eff : Memory 'weights_112' (128 * 16b)
--          Word n : bit [15: 0] - weights_112[2n]
--                   bit [31:16] - weights_112[2n+1]
-- 0x7f00 ~
-- 0x7fff : Memory 'weights_113' (128 * 16b)
--          Word n : bit [15: 0] - weights_113[2n]
--                   bit [31:16] - weights_113[2n+1]
-- 0x8000 ~
-- 0x80ff : Memory 'weights_114' (128 * 16b)
--          Word n : bit [15: 0] - weights_114[2n]
--                   bit [31:16] - weights_114[2n+1]
-- 0x8100 ~
-- 0x81ff : Memory 'weights_115' (128 * 16b)
--          Word n : bit [15: 0] - weights_115[2n]
--                   bit [31:16] - weights_115[2n+1]
-- 0x8200 ~
-- 0x82ff : Memory 'weights_116' (128 * 16b)
--          Word n : bit [15: 0] - weights_116[2n]
--                   bit [31:16] - weights_116[2n+1]
-- 0x8300 ~
-- 0x83ff : Memory 'weights_117' (128 * 16b)
--          Word n : bit [15: 0] - weights_117[2n]
--                   bit [31:16] - weights_117[2n+1]
-- 0x8400 ~
-- 0x84ff : Memory 'weights_118' (128 * 16b)
--          Word n : bit [15: 0] - weights_118[2n]
--                   bit [31:16] - weights_118[2n+1]
-- 0x8500 ~
-- 0x85ff : Memory 'weights_119' (128 * 16b)
--          Word n : bit [15: 0] - weights_119[2n]
--                   bit [31:16] - weights_119[2n+1]
-- 0x8600 ~
-- 0x86ff : Memory 'weights_120' (128 * 16b)
--          Word n : bit [15: 0] - weights_120[2n]
--                   bit [31:16] - weights_120[2n+1]
-- 0x8700 ~
-- 0x87ff : Memory 'weights_121' (128 * 16b)
--          Word n : bit [15: 0] - weights_121[2n]
--                   bit [31:16] - weights_121[2n+1]
-- 0x8800 ~
-- 0x88ff : Memory 'weights_122' (128 * 16b)
--          Word n : bit [15: 0] - weights_122[2n]
--                   bit [31:16] - weights_122[2n+1]
-- 0x8900 ~
-- 0x89ff : Memory 'weights_123' (128 * 16b)
--          Word n : bit [15: 0] - weights_123[2n]
--                   bit [31:16] - weights_123[2n+1]
-- 0x8a00 ~
-- 0x8aff : Memory 'weights_124' (128 * 16b)
--          Word n : bit [15: 0] - weights_124[2n]
--                   bit [31:16] - weights_124[2n+1]
-- 0x8b00 ~
-- 0x8bff : Memory 'weights_125' (128 * 16b)
--          Word n : bit [15: 0] - weights_125[2n]
--                   bit [31:16] - weights_125[2n+1]
-- 0x8c00 ~
-- 0x8cff : Memory 'weights_126' (128 * 16b)
--          Word n : bit [15: 0] - weights_126[2n]
--                   bit [31:16] - weights_126[2n+1]
-- 0x8d00 ~
-- 0x8dff : Memory 'weights_127' (128 * 16b)
--          Word n : bit [15: 0] - weights_127[2n]
--                   bit [31:16] - weights_127[2n+1]
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of nnlayer_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                   : INTEGER := 16#0000#;
    constant ADDR_GIE                       : INTEGER := 16#0004#;
    constant ADDR_IER                       : INTEGER := 16#0008#;
    constant ADDR_ISR                       : INTEGER := 16#000c#;
    constant ADDR_INPUT_0_DATA_0            : INTEGER := 16#0010#;
    constant ADDR_INPUT_0_CTRL              : INTEGER := 16#0014#;
    constant ADDR_INPUT_1_DATA_0            : INTEGER := 16#0018#;
    constant ADDR_INPUT_1_CTRL              : INTEGER := 16#001c#;
    constant ADDR_INPUT_2_DATA_0            : INTEGER := 16#0020#;
    constant ADDR_INPUT_2_CTRL              : INTEGER := 16#0024#;
    constant ADDR_INPUT_3_DATA_0            : INTEGER := 16#0028#;
    constant ADDR_INPUT_3_CTRL              : INTEGER := 16#002c#;
    constant ADDR_INPUT_4_DATA_0            : INTEGER := 16#0030#;
    constant ADDR_INPUT_4_CTRL              : INTEGER := 16#0034#;
    constant ADDR_INPUT_5_DATA_0            : INTEGER := 16#0038#;
    constant ADDR_INPUT_5_CTRL              : INTEGER := 16#003c#;
    constant ADDR_INPUT_6_DATA_0            : INTEGER := 16#0040#;
    constant ADDR_INPUT_6_CTRL              : INTEGER := 16#0044#;
    constant ADDR_INPUT_7_DATA_0            : INTEGER := 16#0048#;
    constant ADDR_INPUT_7_CTRL              : INTEGER := 16#004c#;
    constant ADDR_INPUT_8_DATA_0            : INTEGER := 16#0050#;
    constant ADDR_INPUT_8_CTRL              : INTEGER := 16#0054#;
    constant ADDR_INPUT_9_DATA_0            : INTEGER := 16#0058#;
    constant ADDR_INPUT_9_CTRL              : INTEGER := 16#005c#;
    constant ADDR_INPUT_10_DATA_0           : INTEGER := 16#0060#;
    constant ADDR_INPUT_10_CTRL             : INTEGER := 16#0064#;
    constant ADDR_INPUT_11_DATA_0           : INTEGER := 16#0068#;
    constant ADDR_INPUT_11_CTRL             : INTEGER := 16#006c#;
    constant ADDR_INPUT_12_DATA_0           : INTEGER := 16#0070#;
    constant ADDR_INPUT_12_CTRL             : INTEGER := 16#0074#;
    constant ADDR_INPUT_13_DATA_0           : INTEGER := 16#0078#;
    constant ADDR_INPUT_13_CTRL             : INTEGER := 16#007c#;
    constant ADDR_INPUT_14_DATA_0           : INTEGER := 16#0080#;
    constant ADDR_INPUT_14_CTRL             : INTEGER := 16#0084#;
    constant ADDR_INPUT_15_DATA_0           : INTEGER := 16#0088#;
    constant ADDR_INPUT_15_CTRL             : INTEGER := 16#008c#;
    constant ADDR_INPUT_16_DATA_0           : INTEGER := 16#0090#;
    constant ADDR_INPUT_16_CTRL             : INTEGER := 16#0094#;
    constant ADDR_INPUT_17_DATA_0           : INTEGER := 16#0098#;
    constant ADDR_INPUT_17_CTRL             : INTEGER := 16#009c#;
    constant ADDR_INPUT_18_DATA_0           : INTEGER := 16#00a0#;
    constant ADDR_INPUT_18_CTRL             : INTEGER := 16#00a4#;
    constant ADDR_INPUT_19_DATA_0           : INTEGER := 16#00a8#;
    constant ADDR_INPUT_19_CTRL             : INTEGER := 16#00ac#;
    constant ADDR_INPUT_20_DATA_0           : INTEGER := 16#00b0#;
    constant ADDR_INPUT_20_CTRL             : INTEGER := 16#00b4#;
    constant ADDR_INPUT_21_DATA_0           : INTEGER := 16#00b8#;
    constant ADDR_INPUT_21_CTRL             : INTEGER := 16#00bc#;
    constant ADDR_INPUT_22_DATA_0           : INTEGER := 16#00c0#;
    constant ADDR_INPUT_22_CTRL             : INTEGER := 16#00c4#;
    constant ADDR_INPUT_23_DATA_0           : INTEGER := 16#00c8#;
    constant ADDR_INPUT_23_CTRL             : INTEGER := 16#00cc#;
    constant ADDR_INPUT_24_DATA_0           : INTEGER := 16#00d0#;
    constant ADDR_INPUT_24_CTRL             : INTEGER := 16#00d4#;
    constant ADDR_INPUT_25_DATA_0           : INTEGER := 16#00d8#;
    constant ADDR_INPUT_25_CTRL             : INTEGER := 16#00dc#;
    constant ADDR_INPUT_26_DATA_0           : INTEGER := 16#00e0#;
    constant ADDR_INPUT_26_CTRL             : INTEGER := 16#00e4#;
    constant ADDR_INPUT_27_DATA_0           : INTEGER := 16#00e8#;
    constant ADDR_INPUT_27_CTRL             : INTEGER := 16#00ec#;
    constant ADDR_INPUT_28_DATA_0           : INTEGER := 16#00f0#;
    constant ADDR_INPUT_28_CTRL             : INTEGER := 16#00f4#;
    constant ADDR_INPUT_29_DATA_0           : INTEGER := 16#00f8#;
    constant ADDR_INPUT_29_CTRL             : INTEGER := 16#00fc#;
    constant ADDR_INPUT_30_DATA_0           : INTEGER := 16#0100#;
    constant ADDR_INPUT_30_CTRL             : INTEGER := 16#0104#;
    constant ADDR_INPUT_31_DATA_0           : INTEGER := 16#0108#;
    constant ADDR_INPUT_31_CTRL             : INTEGER := 16#010c#;
    constant ADDR_INPUT_32_DATA_0           : INTEGER := 16#0110#;
    constant ADDR_INPUT_32_CTRL             : INTEGER := 16#0114#;
    constant ADDR_INPUT_33_DATA_0           : INTEGER := 16#0118#;
    constant ADDR_INPUT_33_CTRL             : INTEGER := 16#011c#;
    constant ADDR_INPUT_34_DATA_0           : INTEGER := 16#0120#;
    constant ADDR_INPUT_34_CTRL             : INTEGER := 16#0124#;
    constant ADDR_INPUT_35_DATA_0           : INTEGER := 16#0128#;
    constant ADDR_INPUT_35_CTRL             : INTEGER := 16#012c#;
    constant ADDR_INPUT_36_DATA_0           : INTEGER := 16#0130#;
    constant ADDR_INPUT_36_CTRL             : INTEGER := 16#0134#;
    constant ADDR_INPUT_37_DATA_0           : INTEGER := 16#0138#;
    constant ADDR_INPUT_37_CTRL             : INTEGER := 16#013c#;
    constant ADDR_INPUT_38_DATA_0           : INTEGER := 16#0140#;
    constant ADDR_INPUT_38_CTRL             : INTEGER := 16#0144#;
    constant ADDR_INPUT_39_DATA_0           : INTEGER := 16#0148#;
    constant ADDR_INPUT_39_CTRL             : INTEGER := 16#014c#;
    constant ADDR_INPUT_40_DATA_0           : INTEGER := 16#0150#;
    constant ADDR_INPUT_40_CTRL             : INTEGER := 16#0154#;
    constant ADDR_INPUT_41_DATA_0           : INTEGER := 16#0158#;
    constant ADDR_INPUT_41_CTRL             : INTEGER := 16#015c#;
    constant ADDR_INPUT_42_DATA_0           : INTEGER := 16#0160#;
    constant ADDR_INPUT_42_CTRL             : INTEGER := 16#0164#;
    constant ADDR_INPUT_43_DATA_0           : INTEGER := 16#0168#;
    constant ADDR_INPUT_43_CTRL             : INTEGER := 16#016c#;
    constant ADDR_INPUT_44_DATA_0           : INTEGER := 16#0170#;
    constant ADDR_INPUT_44_CTRL             : INTEGER := 16#0174#;
    constant ADDR_INPUT_45_DATA_0           : INTEGER := 16#0178#;
    constant ADDR_INPUT_45_CTRL             : INTEGER := 16#017c#;
    constant ADDR_INPUT_46_DATA_0           : INTEGER := 16#0180#;
    constant ADDR_INPUT_46_CTRL             : INTEGER := 16#0184#;
    constant ADDR_INPUT_47_DATA_0           : INTEGER := 16#0188#;
    constant ADDR_INPUT_47_CTRL             : INTEGER := 16#018c#;
    constant ADDR_INPUT_48_DATA_0           : INTEGER := 16#0190#;
    constant ADDR_INPUT_48_CTRL             : INTEGER := 16#0194#;
    constant ADDR_INPUT_49_DATA_0           : INTEGER := 16#0198#;
    constant ADDR_INPUT_49_CTRL             : INTEGER := 16#019c#;
    constant ADDR_INPUT_50_DATA_0           : INTEGER := 16#01a0#;
    constant ADDR_INPUT_50_CTRL             : INTEGER := 16#01a4#;
    constant ADDR_INPUT_51_DATA_0           : INTEGER := 16#01a8#;
    constant ADDR_INPUT_51_CTRL             : INTEGER := 16#01ac#;
    constant ADDR_INPUT_52_DATA_0           : INTEGER := 16#01b0#;
    constant ADDR_INPUT_52_CTRL             : INTEGER := 16#01b4#;
    constant ADDR_INPUT_53_DATA_0           : INTEGER := 16#01b8#;
    constant ADDR_INPUT_53_CTRL             : INTEGER := 16#01bc#;
    constant ADDR_INPUT_54_DATA_0           : INTEGER := 16#01c0#;
    constant ADDR_INPUT_54_CTRL             : INTEGER := 16#01c4#;
    constant ADDR_INPUT_55_DATA_0           : INTEGER := 16#01c8#;
    constant ADDR_INPUT_55_CTRL             : INTEGER := 16#01cc#;
    constant ADDR_INPUT_56_DATA_0           : INTEGER := 16#01d0#;
    constant ADDR_INPUT_56_CTRL             : INTEGER := 16#01d4#;
    constant ADDR_INPUT_57_DATA_0           : INTEGER := 16#01d8#;
    constant ADDR_INPUT_57_CTRL             : INTEGER := 16#01dc#;
    constant ADDR_INPUT_58_DATA_0           : INTEGER := 16#01e0#;
    constant ADDR_INPUT_58_CTRL             : INTEGER := 16#01e4#;
    constant ADDR_INPUT_59_DATA_0           : INTEGER := 16#01e8#;
    constant ADDR_INPUT_59_CTRL             : INTEGER := 16#01ec#;
    constant ADDR_INPUT_60_DATA_0           : INTEGER := 16#01f0#;
    constant ADDR_INPUT_60_CTRL             : INTEGER := 16#01f4#;
    constant ADDR_INPUT_61_DATA_0           : INTEGER := 16#01f8#;
    constant ADDR_INPUT_61_CTRL             : INTEGER := 16#01fc#;
    constant ADDR_INPUT_62_DATA_0           : INTEGER := 16#0200#;
    constant ADDR_INPUT_62_CTRL             : INTEGER := 16#0204#;
    constant ADDR_INPUT_63_DATA_0           : INTEGER := 16#0208#;
    constant ADDR_INPUT_63_CTRL             : INTEGER := 16#020c#;
    constant ADDR_INPUT_64_DATA_0           : INTEGER := 16#0210#;
    constant ADDR_INPUT_64_CTRL             : INTEGER := 16#0214#;
    constant ADDR_INPUT_65_DATA_0           : INTEGER := 16#0218#;
    constant ADDR_INPUT_65_CTRL             : INTEGER := 16#021c#;
    constant ADDR_INPUT_66_DATA_0           : INTEGER := 16#0220#;
    constant ADDR_INPUT_66_CTRL             : INTEGER := 16#0224#;
    constant ADDR_INPUT_67_DATA_0           : INTEGER := 16#0228#;
    constant ADDR_INPUT_67_CTRL             : INTEGER := 16#022c#;
    constant ADDR_INPUT_68_DATA_0           : INTEGER := 16#0230#;
    constant ADDR_INPUT_68_CTRL             : INTEGER := 16#0234#;
    constant ADDR_INPUT_69_DATA_0           : INTEGER := 16#0238#;
    constant ADDR_INPUT_69_CTRL             : INTEGER := 16#023c#;
    constant ADDR_INPUT_70_DATA_0           : INTEGER := 16#0240#;
    constant ADDR_INPUT_70_CTRL             : INTEGER := 16#0244#;
    constant ADDR_INPUT_71_DATA_0           : INTEGER := 16#0248#;
    constant ADDR_INPUT_71_CTRL             : INTEGER := 16#024c#;
    constant ADDR_INPUT_72_DATA_0           : INTEGER := 16#0250#;
    constant ADDR_INPUT_72_CTRL             : INTEGER := 16#0254#;
    constant ADDR_INPUT_73_DATA_0           : INTEGER := 16#0258#;
    constant ADDR_INPUT_73_CTRL             : INTEGER := 16#025c#;
    constant ADDR_INPUT_74_DATA_0           : INTEGER := 16#0260#;
    constant ADDR_INPUT_74_CTRL             : INTEGER := 16#0264#;
    constant ADDR_INPUT_75_DATA_0           : INTEGER := 16#0268#;
    constant ADDR_INPUT_75_CTRL             : INTEGER := 16#026c#;
    constant ADDR_INPUT_76_DATA_0           : INTEGER := 16#0270#;
    constant ADDR_INPUT_76_CTRL             : INTEGER := 16#0274#;
    constant ADDR_INPUT_77_DATA_0           : INTEGER := 16#0278#;
    constant ADDR_INPUT_77_CTRL             : INTEGER := 16#027c#;
    constant ADDR_INPUT_78_DATA_0           : INTEGER := 16#0280#;
    constant ADDR_INPUT_78_CTRL             : INTEGER := 16#0284#;
    constant ADDR_INPUT_79_DATA_0           : INTEGER := 16#0288#;
    constant ADDR_INPUT_79_CTRL             : INTEGER := 16#028c#;
    constant ADDR_INPUT_80_DATA_0           : INTEGER := 16#0290#;
    constant ADDR_INPUT_80_CTRL             : INTEGER := 16#0294#;
    constant ADDR_INPUT_81_DATA_0           : INTEGER := 16#0298#;
    constant ADDR_INPUT_81_CTRL             : INTEGER := 16#029c#;
    constant ADDR_INPUT_82_DATA_0           : INTEGER := 16#02a0#;
    constant ADDR_INPUT_82_CTRL             : INTEGER := 16#02a4#;
    constant ADDR_INPUT_83_DATA_0           : INTEGER := 16#02a8#;
    constant ADDR_INPUT_83_CTRL             : INTEGER := 16#02ac#;
    constant ADDR_INPUT_84_DATA_0           : INTEGER := 16#02b0#;
    constant ADDR_INPUT_84_CTRL             : INTEGER := 16#02b4#;
    constant ADDR_INPUT_85_DATA_0           : INTEGER := 16#02b8#;
    constant ADDR_INPUT_85_CTRL             : INTEGER := 16#02bc#;
    constant ADDR_INPUT_86_DATA_0           : INTEGER := 16#02c0#;
    constant ADDR_INPUT_86_CTRL             : INTEGER := 16#02c4#;
    constant ADDR_INPUT_87_DATA_0           : INTEGER := 16#02c8#;
    constant ADDR_INPUT_87_CTRL             : INTEGER := 16#02cc#;
    constant ADDR_INPUT_88_DATA_0           : INTEGER := 16#02d0#;
    constant ADDR_INPUT_88_CTRL             : INTEGER := 16#02d4#;
    constant ADDR_INPUT_89_DATA_0           : INTEGER := 16#02d8#;
    constant ADDR_INPUT_89_CTRL             : INTEGER := 16#02dc#;
    constant ADDR_INPUT_90_DATA_0           : INTEGER := 16#02e0#;
    constant ADDR_INPUT_90_CTRL             : INTEGER := 16#02e4#;
    constant ADDR_INPUT_91_DATA_0           : INTEGER := 16#02e8#;
    constant ADDR_INPUT_91_CTRL             : INTEGER := 16#02ec#;
    constant ADDR_INPUT_92_DATA_0           : INTEGER := 16#02f0#;
    constant ADDR_INPUT_92_CTRL             : INTEGER := 16#02f4#;
    constant ADDR_INPUT_93_DATA_0           : INTEGER := 16#02f8#;
    constant ADDR_INPUT_93_CTRL             : INTEGER := 16#02fc#;
    constant ADDR_INPUT_94_DATA_0           : INTEGER := 16#0300#;
    constant ADDR_INPUT_94_CTRL             : INTEGER := 16#0304#;
    constant ADDR_INPUT_95_DATA_0           : INTEGER := 16#0308#;
    constant ADDR_INPUT_95_CTRL             : INTEGER := 16#030c#;
    constant ADDR_INPUT_96_DATA_0           : INTEGER := 16#0310#;
    constant ADDR_INPUT_96_CTRL             : INTEGER := 16#0314#;
    constant ADDR_INPUT_97_DATA_0           : INTEGER := 16#0318#;
    constant ADDR_INPUT_97_CTRL             : INTEGER := 16#031c#;
    constant ADDR_INPUT_98_DATA_0           : INTEGER := 16#0320#;
    constant ADDR_INPUT_98_CTRL             : INTEGER := 16#0324#;
    constant ADDR_INPUT_99_DATA_0           : INTEGER := 16#0328#;
    constant ADDR_INPUT_99_CTRL             : INTEGER := 16#032c#;
    constant ADDR_INPUT_100_DATA_0          : INTEGER := 16#0330#;
    constant ADDR_INPUT_100_CTRL            : INTEGER := 16#0334#;
    constant ADDR_INPUT_101_DATA_0          : INTEGER := 16#0338#;
    constant ADDR_INPUT_101_CTRL            : INTEGER := 16#033c#;
    constant ADDR_INPUT_102_DATA_0          : INTEGER := 16#0340#;
    constant ADDR_INPUT_102_CTRL            : INTEGER := 16#0344#;
    constant ADDR_INPUT_103_DATA_0          : INTEGER := 16#0348#;
    constant ADDR_INPUT_103_CTRL            : INTEGER := 16#034c#;
    constant ADDR_INPUT_104_DATA_0          : INTEGER := 16#0350#;
    constant ADDR_INPUT_104_CTRL            : INTEGER := 16#0354#;
    constant ADDR_INPUT_105_DATA_0          : INTEGER := 16#0358#;
    constant ADDR_INPUT_105_CTRL            : INTEGER := 16#035c#;
    constant ADDR_INPUT_106_DATA_0          : INTEGER := 16#0360#;
    constant ADDR_INPUT_106_CTRL            : INTEGER := 16#0364#;
    constant ADDR_INPUT_107_DATA_0          : INTEGER := 16#0368#;
    constant ADDR_INPUT_107_CTRL            : INTEGER := 16#036c#;
    constant ADDR_INPUT_108_DATA_0          : INTEGER := 16#0370#;
    constant ADDR_INPUT_108_CTRL            : INTEGER := 16#0374#;
    constant ADDR_INPUT_109_DATA_0          : INTEGER := 16#0378#;
    constant ADDR_INPUT_109_CTRL            : INTEGER := 16#037c#;
    constant ADDR_INPUT_110_DATA_0          : INTEGER := 16#0380#;
    constant ADDR_INPUT_110_CTRL            : INTEGER := 16#0384#;
    constant ADDR_INPUT_111_DATA_0          : INTEGER := 16#0388#;
    constant ADDR_INPUT_111_CTRL            : INTEGER := 16#038c#;
    constant ADDR_INPUT_112_DATA_0          : INTEGER := 16#0390#;
    constant ADDR_INPUT_112_CTRL            : INTEGER := 16#0394#;
    constant ADDR_INPUT_113_DATA_0          : INTEGER := 16#0398#;
    constant ADDR_INPUT_113_CTRL            : INTEGER := 16#039c#;
    constant ADDR_INPUT_114_DATA_0          : INTEGER := 16#03a0#;
    constant ADDR_INPUT_114_CTRL            : INTEGER := 16#03a4#;
    constant ADDR_INPUT_115_DATA_0          : INTEGER := 16#03a8#;
    constant ADDR_INPUT_115_CTRL            : INTEGER := 16#03ac#;
    constant ADDR_INPUT_116_DATA_0          : INTEGER := 16#03b0#;
    constant ADDR_INPUT_116_CTRL            : INTEGER := 16#03b4#;
    constant ADDR_INPUT_117_DATA_0          : INTEGER := 16#03b8#;
    constant ADDR_INPUT_117_CTRL            : INTEGER := 16#03bc#;
    constant ADDR_INPUT_118_DATA_0          : INTEGER := 16#03c0#;
    constant ADDR_INPUT_118_CTRL            : INTEGER := 16#03c4#;
    constant ADDR_INPUT_119_DATA_0          : INTEGER := 16#03c8#;
    constant ADDR_INPUT_119_CTRL            : INTEGER := 16#03cc#;
    constant ADDR_INPUT_120_DATA_0          : INTEGER := 16#03d0#;
    constant ADDR_INPUT_120_CTRL            : INTEGER := 16#03d4#;
    constant ADDR_INPUT_121_DATA_0          : INTEGER := 16#03d8#;
    constant ADDR_INPUT_121_CTRL            : INTEGER := 16#03dc#;
    constant ADDR_INPUT_122_DATA_0          : INTEGER := 16#03e0#;
    constant ADDR_INPUT_122_CTRL            : INTEGER := 16#03e4#;
    constant ADDR_INPUT_123_DATA_0          : INTEGER := 16#03e8#;
    constant ADDR_INPUT_123_CTRL            : INTEGER := 16#03ec#;
    constant ADDR_INPUT_124_DATA_0          : INTEGER := 16#03f0#;
    constant ADDR_INPUT_124_CTRL            : INTEGER := 16#03f4#;
    constant ADDR_INPUT_125_DATA_0          : INTEGER := 16#03f8#;
    constant ADDR_INPUT_125_CTRL            : INTEGER := 16#03fc#;
    constant ADDR_INPUT_126_DATA_0          : INTEGER := 16#0400#;
    constant ADDR_INPUT_126_CTRL            : INTEGER := 16#0404#;
    constant ADDR_INPUT_127_DATA_0          : INTEGER := 16#0408#;
    constant ADDR_INPUT_127_CTRL            : INTEGER := 16#040c#;
    constant ADDR_OUTPUT_0_DATA_0           : INTEGER := 16#0410#;
    constant ADDR_OUTPUT_0_CTRL             : INTEGER := 16#0414#;
    constant ADDR_OUTPUT_1_DATA_0           : INTEGER := 16#0420#;
    constant ADDR_OUTPUT_1_CTRL             : INTEGER := 16#0424#;
    constant ADDR_OUTPUT_2_DATA_0           : INTEGER := 16#0430#;
    constant ADDR_OUTPUT_2_CTRL             : INTEGER := 16#0434#;
    constant ADDR_OUTPUT_3_DATA_0           : INTEGER := 16#0440#;
    constant ADDR_OUTPUT_3_CTRL             : INTEGER := 16#0444#;
    constant ADDR_OUTPUT_4_DATA_0           : INTEGER := 16#0450#;
    constant ADDR_OUTPUT_4_CTRL             : INTEGER := 16#0454#;
    constant ADDR_OUTPUT_5_DATA_0           : INTEGER := 16#0460#;
    constant ADDR_OUTPUT_5_CTRL             : INTEGER := 16#0464#;
    constant ADDR_OUTPUT_6_DATA_0           : INTEGER := 16#0470#;
    constant ADDR_OUTPUT_6_CTRL             : INTEGER := 16#0474#;
    constant ADDR_OUTPUT_7_DATA_0           : INTEGER := 16#0480#;
    constant ADDR_OUTPUT_7_CTRL             : INTEGER := 16#0484#;
    constant ADDR_OUTPUT_8_DATA_0           : INTEGER := 16#0490#;
    constant ADDR_OUTPUT_8_CTRL             : INTEGER := 16#0494#;
    constant ADDR_OUTPUT_9_DATA_0           : INTEGER := 16#04a0#;
    constant ADDR_OUTPUT_9_CTRL             : INTEGER := 16#04a4#;
    constant ADDR_OUTPUT_10_DATA_0          : INTEGER := 16#04b0#;
    constant ADDR_OUTPUT_10_CTRL            : INTEGER := 16#04b4#;
    constant ADDR_OUTPUT_11_DATA_0          : INTEGER := 16#04c0#;
    constant ADDR_OUTPUT_11_CTRL            : INTEGER := 16#04c4#;
    constant ADDR_OUTPUT_12_DATA_0          : INTEGER := 16#04d0#;
    constant ADDR_OUTPUT_12_CTRL            : INTEGER := 16#04d4#;
    constant ADDR_OUTPUT_13_DATA_0          : INTEGER := 16#04e0#;
    constant ADDR_OUTPUT_13_CTRL            : INTEGER := 16#04e4#;
    constant ADDR_OUTPUT_14_DATA_0          : INTEGER := 16#04f0#;
    constant ADDR_OUTPUT_14_CTRL            : INTEGER := 16#04f4#;
    constant ADDR_OUTPUT_15_DATA_0          : INTEGER := 16#0500#;
    constant ADDR_OUTPUT_15_CTRL            : INTEGER := 16#0504#;
    constant ADDR_OUTPUT_16_DATA_0          : INTEGER := 16#0510#;
    constant ADDR_OUTPUT_16_CTRL            : INTEGER := 16#0514#;
    constant ADDR_OUTPUT_17_DATA_0          : INTEGER := 16#0520#;
    constant ADDR_OUTPUT_17_CTRL            : INTEGER := 16#0524#;
    constant ADDR_OUTPUT_18_DATA_0          : INTEGER := 16#0530#;
    constant ADDR_OUTPUT_18_CTRL            : INTEGER := 16#0534#;
    constant ADDR_OUTPUT_19_DATA_0          : INTEGER := 16#0540#;
    constant ADDR_OUTPUT_19_CTRL            : INTEGER := 16#0544#;
    constant ADDR_OUTPUT_20_DATA_0          : INTEGER := 16#0550#;
    constant ADDR_OUTPUT_20_CTRL            : INTEGER := 16#0554#;
    constant ADDR_OUTPUT_21_DATA_0          : INTEGER := 16#0560#;
    constant ADDR_OUTPUT_21_CTRL            : INTEGER := 16#0564#;
    constant ADDR_OUTPUT_22_DATA_0          : INTEGER := 16#0570#;
    constant ADDR_OUTPUT_22_CTRL            : INTEGER := 16#0574#;
    constant ADDR_OUTPUT_23_DATA_0          : INTEGER := 16#0580#;
    constant ADDR_OUTPUT_23_CTRL            : INTEGER := 16#0584#;
    constant ADDR_OUTPUT_24_DATA_0          : INTEGER := 16#0590#;
    constant ADDR_OUTPUT_24_CTRL            : INTEGER := 16#0594#;
    constant ADDR_OUTPUT_25_DATA_0          : INTEGER := 16#05a0#;
    constant ADDR_OUTPUT_25_CTRL            : INTEGER := 16#05a4#;
    constant ADDR_OUTPUT_26_DATA_0          : INTEGER := 16#05b0#;
    constant ADDR_OUTPUT_26_CTRL            : INTEGER := 16#05b4#;
    constant ADDR_OUTPUT_27_DATA_0          : INTEGER := 16#05c0#;
    constant ADDR_OUTPUT_27_CTRL            : INTEGER := 16#05c4#;
    constant ADDR_OUTPUT_28_DATA_0          : INTEGER := 16#05d0#;
    constant ADDR_OUTPUT_28_CTRL            : INTEGER := 16#05d4#;
    constant ADDR_OUTPUT_29_DATA_0          : INTEGER := 16#05e0#;
    constant ADDR_OUTPUT_29_CTRL            : INTEGER := 16#05e4#;
    constant ADDR_OUTPUT_30_DATA_0          : INTEGER := 16#05f0#;
    constant ADDR_OUTPUT_30_CTRL            : INTEGER := 16#05f4#;
    constant ADDR_OUTPUT_31_DATA_0          : INTEGER := 16#0600#;
    constant ADDR_OUTPUT_31_CTRL            : INTEGER := 16#0604#;
    constant ADDR_OUTPUT_32_DATA_0          : INTEGER := 16#0610#;
    constant ADDR_OUTPUT_32_CTRL            : INTEGER := 16#0614#;
    constant ADDR_OUTPUT_33_DATA_0          : INTEGER := 16#0620#;
    constant ADDR_OUTPUT_33_CTRL            : INTEGER := 16#0624#;
    constant ADDR_OUTPUT_34_DATA_0          : INTEGER := 16#0630#;
    constant ADDR_OUTPUT_34_CTRL            : INTEGER := 16#0634#;
    constant ADDR_OUTPUT_35_DATA_0          : INTEGER := 16#0640#;
    constant ADDR_OUTPUT_35_CTRL            : INTEGER := 16#0644#;
    constant ADDR_OUTPUT_36_DATA_0          : INTEGER := 16#0650#;
    constant ADDR_OUTPUT_36_CTRL            : INTEGER := 16#0654#;
    constant ADDR_OUTPUT_37_DATA_0          : INTEGER := 16#0660#;
    constant ADDR_OUTPUT_37_CTRL            : INTEGER := 16#0664#;
    constant ADDR_OUTPUT_38_DATA_0          : INTEGER := 16#0670#;
    constant ADDR_OUTPUT_38_CTRL            : INTEGER := 16#0674#;
    constant ADDR_OUTPUT_39_DATA_0          : INTEGER := 16#0680#;
    constant ADDR_OUTPUT_39_CTRL            : INTEGER := 16#0684#;
    constant ADDR_OUTPUT_40_DATA_0          : INTEGER := 16#0690#;
    constant ADDR_OUTPUT_40_CTRL            : INTEGER := 16#0694#;
    constant ADDR_OUTPUT_41_DATA_0          : INTEGER := 16#06a0#;
    constant ADDR_OUTPUT_41_CTRL            : INTEGER := 16#06a4#;
    constant ADDR_OUTPUT_42_DATA_0          : INTEGER := 16#06b0#;
    constant ADDR_OUTPUT_42_CTRL            : INTEGER := 16#06b4#;
    constant ADDR_OUTPUT_43_DATA_0          : INTEGER := 16#06c0#;
    constant ADDR_OUTPUT_43_CTRL            : INTEGER := 16#06c4#;
    constant ADDR_OUTPUT_44_DATA_0          : INTEGER := 16#06d0#;
    constant ADDR_OUTPUT_44_CTRL            : INTEGER := 16#06d4#;
    constant ADDR_OUTPUT_45_DATA_0          : INTEGER := 16#06e0#;
    constant ADDR_OUTPUT_45_CTRL            : INTEGER := 16#06e4#;
    constant ADDR_OUTPUT_46_DATA_0          : INTEGER := 16#06f0#;
    constant ADDR_OUTPUT_46_CTRL            : INTEGER := 16#06f4#;
    constant ADDR_OUTPUT_47_DATA_0          : INTEGER := 16#0700#;
    constant ADDR_OUTPUT_47_CTRL            : INTEGER := 16#0704#;
    constant ADDR_OUTPUT_48_DATA_0          : INTEGER := 16#0710#;
    constant ADDR_OUTPUT_48_CTRL            : INTEGER := 16#0714#;
    constant ADDR_OUTPUT_49_DATA_0          : INTEGER := 16#0720#;
    constant ADDR_OUTPUT_49_CTRL            : INTEGER := 16#0724#;
    constant ADDR_OUTPUT_50_DATA_0          : INTEGER := 16#0730#;
    constant ADDR_OUTPUT_50_CTRL            : INTEGER := 16#0734#;
    constant ADDR_OUTPUT_51_DATA_0          : INTEGER := 16#0740#;
    constant ADDR_OUTPUT_51_CTRL            : INTEGER := 16#0744#;
    constant ADDR_OUTPUT_52_DATA_0          : INTEGER := 16#0750#;
    constant ADDR_OUTPUT_52_CTRL            : INTEGER := 16#0754#;
    constant ADDR_OUTPUT_53_DATA_0          : INTEGER := 16#0760#;
    constant ADDR_OUTPUT_53_CTRL            : INTEGER := 16#0764#;
    constant ADDR_OUTPUT_54_DATA_0          : INTEGER := 16#0770#;
    constant ADDR_OUTPUT_54_CTRL            : INTEGER := 16#0774#;
    constant ADDR_OUTPUT_55_DATA_0          : INTEGER := 16#0780#;
    constant ADDR_OUTPUT_55_CTRL            : INTEGER := 16#0784#;
    constant ADDR_OUTPUT_56_DATA_0          : INTEGER := 16#0790#;
    constant ADDR_OUTPUT_56_CTRL            : INTEGER := 16#0794#;
    constant ADDR_OUTPUT_57_DATA_0          : INTEGER := 16#07a0#;
    constant ADDR_OUTPUT_57_CTRL            : INTEGER := 16#07a4#;
    constant ADDR_OUTPUT_58_DATA_0          : INTEGER := 16#07b0#;
    constant ADDR_OUTPUT_58_CTRL            : INTEGER := 16#07b4#;
    constant ADDR_OUTPUT_59_DATA_0          : INTEGER := 16#07c0#;
    constant ADDR_OUTPUT_59_CTRL            : INTEGER := 16#07c4#;
    constant ADDR_OUTPUT_60_DATA_0          : INTEGER := 16#07d0#;
    constant ADDR_OUTPUT_60_CTRL            : INTEGER := 16#07d4#;
    constant ADDR_OUTPUT_61_DATA_0          : INTEGER := 16#07e0#;
    constant ADDR_OUTPUT_61_CTRL            : INTEGER := 16#07e4#;
    constant ADDR_OUTPUT_62_DATA_0          : INTEGER := 16#07f0#;
    constant ADDR_OUTPUT_62_CTRL            : INTEGER := 16#07f4#;
    constant ADDR_OUTPUT_63_DATA_0          : INTEGER := 16#0800#;
    constant ADDR_OUTPUT_63_CTRL            : INTEGER := 16#0804#;
    constant ADDR_OUTPUT_64_DATA_0          : INTEGER := 16#0810#;
    constant ADDR_OUTPUT_64_CTRL            : INTEGER := 16#0814#;
    constant ADDR_OUTPUT_65_DATA_0          : INTEGER := 16#0820#;
    constant ADDR_OUTPUT_65_CTRL            : INTEGER := 16#0824#;
    constant ADDR_OUTPUT_66_DATA_0          : INTEGER := 16#0830#;
    constant ADDR_OUTPUT_66_CTRL            : INTEGER := 16#0834#;
    constant ADDR_OUTPUT_67_DATA_0          : INTEGER := 16#0840#;
    constant ADDR_OUTPUT_67_CTRL            : INTEGER := 16#0844#;
    constant ADDR_OUTPUT_68_DATA_0          : INTEGER := 16#0850#;
    constant ADDR_OUTPUT_68_CTRL            : INTEGER := 16#0854#;
    constant ADDR_OUTPUT_69_DATA_0          : INTEGER := 16#0860#;
    constant ADDR_OUTPUT_69_CTRL            : INTEGER := 16#0864#;
    constant ADDR_OUTPUT_70_DATA_0          : INTEGER := 16#0870#;
    constant ADDR_OUTPUT_70_CTRL            : INTEGER := 16#0874#;
    constant ADDR_OUTPUT_71_DATA_0          : INTEGER := 16#0880#;
    constant ADDR_OUTPUT_71_CTRL            : INTEGER := 16#0884#;
    constant ADDR_OUTPUT_72_DATA_0          : INTEGER := 16#0890#;
    constant ADDR_OUTPUT_72_CTRL            : INTEGER := 16#0894#;
    constant ADDR_OUTPUT_73_DATA_0          : INTEGER := 16#08a0#;
    constant ADDR_OUTPUT_73_CTRL            : INTEGER := 16#08a4#;
    constant ADDR_OUTPUT_74_DATA_0          : INTEGER := 16#08b0#;
    constant ADDR_OUTPUT_74_CTRL            : INTEGER := 16#08b4#;
    constant ADDR_OUTPUT_75_DATA_0          : INTEGER := 16#08c0#;
    constant ADDR_OUTPUT_75_CTRL            : INTEGER := 16#08c4#;
    constant ADDR_OUTPUT_76_DATA_0          : INTEGER := 16#08d0#;
    constant ADDR_OUTPUT_76_CTRL            : INTEGER := 16#08d4#;
    constant ADDR_OUTPUT_77_DATA_0          : INTEGER := 16#08e0#;
    constant ADDR_OUTPUT_77_CTRL            : INTEGER := 16#08e4#;
    constant ADDR_OUTPUT_78_DATA_0          : INTEGER := 16#08f0#;
    constant ADDR_OUTPUT_78_CTRL            : INTEGER := 16#08f4#;
    constant ADDR_OUTPUT_79_DATA_0          : INTEGER := 16#0900#;
    constant ADDR_OUTPUT_79_CTRL            : INTEGER := 16#0904#;
    constant ADDR_OUTPUT_80_DATA_0          : INTEGER := 16#0910#;
    constant ADDR_OUTPUT_80_CTRL            : INTEGER := 16#0914#;
    constant ADDR_OUTPUT_81_DATA_0          : INTEGER := 16#0920#;
    constant ADDR_OUTPUT_81_CTRL            : INTEGER := 16#0924#;
    constant ADDR_OUTPUT_82_DATA_0          : INTEGER := 16#0930#;
    constant ADDR_OUTPUT_82_CTRL            : INTEGER := 16#0934#;
    constant ADDR_OUTPUT_83_DATA_0          : INTEGER := 16#0940#;
    constant ADDR_OUTPUT_83_CTRL            : INTEGER := 16#0944#;
    constant ADDR_OUTPUT_84_DATA_0          : INTEGER := 16#0950#;
    constant ADDR_OUTPUT_84_CTRL            : INTEGER := 16#0954#;
    constant ADDR_OUTPUT_85_DATA_0          : INTEGER := 16#0960#;
    constant ADDR_OUTPUT_85_CTRL            : INTEGER := 16#0964#;
    constant ADDR_OUTPUT_86_DATA_0          : INTEGER := 16#0970#;
    constant ADDR_OUTPUT_86_CTRL            : INTEGER := 16#0974#;
    constant ADDR_OUTPUT_87_DATA_0          : INTEGER := 16#0980#;
    constant ADDR_OUTPUT_87_CTRL            : INTEGER := 16#0984#;
    constant ADDR_OUTPUT_88_DATA_0          : INTEGER := 16#0990#;
    constant ADDR_OUTPUT_88_CTRL            : INTEGER := 16#0994#;
    constant ADDR_OUTPUT_89_DATA_0          : INTEGER := 16#09a0#;
    constant ADDR_OUTPUT_89_CTRL            : INTEGER := 16#09a4#;
    constant ADDR_OUTPUT_90_DATA_0          : INTEGER := 16#09b0#;
    constant ADDR_OUTPUT_90_CTRL            : INTEGER := 16#09b4#;
    constant ADDR_OUTPUT_91_DATA_0          : INTEGER := 16#09c0#;
    constant ADDR_OUTPUT_91_CTRL            : INTEGER := 16#09c4#;
    constant ADDR_OUTPUT_92_DATA_0          : INTEGER := 16#09d0#;
    constant ADDR_OUTPUT_92_CTRL            : INTEGER := 16#09d4#;
    constant ADDR_OUTPUT_93_DATA_0          : INTEGER := 16#09e0#;
    constant ADDR_OUTPUT_93_CTRL            : INTEGER := 16#09e4#;
    constant ADDR_OUTPUT_94_DATA_0          : INTEGER := 16#09f0#;
    constant ADDR_OUTPUT_94_CTRL            : INTEGER := 16#09f4#;
    constant ADDR_OUTPUT_95_DATA_0          : INTEGER := 16#0a00#;
    constant ADDR_OUTPUT_95_CTRL            : INTEGER := 16#0a04#;
    constant ADDR_OUTPUT_96_DATA_0          : INTEGER := 16#0a10#;
    constant ADDR_OUTPUT_96_CTRL            : INTEGER := 16#0a14#;
    constant ADDR_OUTPUT_97_DATA_0          : INTEGER := 16#0a20#;
    constant ADDR_OUTPUT_97_CTRL            : INTEGER := 16#0a24#;
    constant ADDR_OUTPUT_98_DATA_0          : INTEGER := 16#0a30#;
    constant ADDR_OUTPUT_98_CTRL            : INTEGER := 16#0a34#;
    constant ADDR_OUTPUT_99_DATA_0          : INTEGER := 16#0a40#;
    constant ADDR_OUTPUT_99_CTRL            : INTEGER := 16#0a44#;
    constant ADDR_OUTPUT_100_DATA_0         : INTEGER := 16#0a50#;
    constant ADDR_OUTPUT_100_CTRL           : INTEGER := 16#0a54#;
    constant ADDR_OUTPUT_101_DATA_0         : INTEGER := 16#0a60#;
    constant ADDR_OUTPUT_101_CTRL           : INTEGER := 16#0a64#;
    constant ADDR_OUTPUT_102_DATA_0         : INTEGER := 16#0a70#;
    constant ADDR_OUTPUT_102_CTRL           : INTEGER := 16#0a74#;
    constant ADDR_OUTPUT_103_DATA_0         : INTEGER := 16#0a80#;
    constant ADDR_OUTPUT_103_CTRL           : INTEGER := 16#0a84#;
    constant ADDR_OUTPUT_104_DATA_0         : INTEGER := 16#0a90#;
    constant ADDR_OUTPUT_104_CTRL           : INTEGER := 16#0a94#;
    constant ADDR_OUTPUT_105_DATA_0         : INTEGER := 16#0aa0#;
    constant ADDR_OUTPUT_105_CTRL           : INTEGER := 16#0aa4#;
    constant ADDR_OUTPUT_106_DATA_0         : INTEGER := 16#0ab0#;
    constant ADDR_OUTPUT_106_CTRL           : INTEGER := 16#0ab4#;
    constant ADDR_OUTPUT_107_DATA_0         : INTEGER := 16#0ac0#;
    constant ADDR_OUTPUT_107_CTRL           : INTEGER := 16#0ac4#;
    constant ADDR_OUTPUT_108_DATA_0         : INTEGER := 16#0ad0#;
    constant ADDR_OUTPUT_108_CTRL           : INTEGER := 16#0ad4#;
    constant ADDR_OUTPUT_109_DATA_0         : INTEGER := 16#0ae0#;
    constant ADDR_OUTPUT_109_CTRL           : INTEGER := 16#0ae4#;
    constant ADDR_OUTPUT_110_DATA_0         : INTEGER := 16#0af0#;
    constant ADDR_OUTPUT_110_CTRL           : INTEGER := 16#0af4#;
    constant ADDR_OUTPUT_111_DATA_0         : INTEGER := 16#0b00#;
    constant ADDR_OUTPUT_111_CTRL           : INTEGER := 16#0b04#;
    constant ADDR_OUTPUT_112_DATA_0         : INTEGER := 16#0b10#;
    constant ADDR_OUTPUT_112_CTRL           : INTEGER := 16#0b14#;
    constant ADDR_OUTPUT_113_DATA_0         : INTEGER := 16#0b20#;
    constant ADDR_OUTPUT_113_CTRL           : INTEGER := 16#0b24#;
    constant ADDR_OUTPUT_114_DATA_0         : INTEGER := 16#0b30#;
    constant ADDR_OUTPUT_114_CTRL           : INTEGER := 16#0b34#;
    constant ADDR_OUTPUT_115_DATA_0         : INTEGER := 16#0b40#;
    constant ADDR_OUTPUT_115_CTRL           : INTEGER := 16#0b44#;
    constant ADDR_OUTPUT_116_DATA_0         : INTEGER := 16#0b50#;
    constant ADDR_OUTPUT_116_CTRL           : INTEGER := 16#0b54#;
    constant ADDR_OUTPUT_117_DATA_0         : INTEGER := 16#0b60#;
    constant ADDR_OUTPUT_117_CTRL           : INTEGER := 16#0b64#;
    constant ADDR_OUTPUT_118_DATA_0         : INTEGER := 16#0b70#;
    constant ADDR_OUTPUT_118_CTRL           : INTEGER := 16#0b74#;
    constant ADDR_OUTPUT_119_DATA_0         : INTEGER := 16#0b80#;
    constant ADDR_OUTPUT_119_CTRL           : INTEGER := 16#0b84#;
    constant ADDR_OUTPUT_120_DATA_0         : INTEGER := 16#0b90#;
    constant ADDR_OUTPUT_120_CTRL           : INTEGER := 16#0b94#;
    constant ADDR_OUTPUT_121_DATA_0         : INTEGER := 16#0ba0#;
    constant ADDR_OUTPUT_121_CTRL           : INTEGER := 16#0ba4#;
    constant ADDR_OUTPUT_122_DATA_0         : INTEGER := 16#0bb0#;
    constant ADDR_OUTPUT_122_CTRL           : INTEGER := 16#0bb4#;
    constant ADDR_OUTPUT_123_DATA_0         : INTEGER := 16#0bc0#;
    constant ADDR_OUTPUT_123_CTRL           : INTEGER := 16#0bc4#;
    constant ADDR_OUTPUT_124_DATA_0         : INTEGER := 16#0bd0#;
    constant ADDR_OUTPUT_124_CTRL           : INTEGER := 16#0bd4#;
    constant ADDR_OUTPUT_125_DATA_0         : INTEGER := 16#0be0#;
    constant ADDR_OUTPUT_125_CTRL           : INTEGER := 16#0be4#;
    constant ADDR_OUTPUT_126_DATA_0         : INTEGER := 16#0bf0#;
    constant ADDR_OUTPUT_126_CTRL           : INTEGER := 16#0bf4#;
    constant ADDR_OUTPUT_127_DATA_0         : INTEGER := 16#0c00#;
    constant ADDR_OUTPUT_127_CTRL           : INTEGER := 16#0c04#;
    constant ADDR_NUMOFOUTPUTNEURONS_DATA_0 : INTEGER := 16#0c10#;
    constant ADDR_NUMOFOUTPUTNEURONS_CTRL   : INTEGER := 16#0c14#;
    constant ADDR_ACTIVATION_DATA_0         : INTEGER := 16#0c18#;
    constant ADDR_ACTIVATION_CTRL           : INTEGER := 16#0c1c#;
    constant ADDR_BIAS_BASE                 : INTEGER := 16#0d00#;
    constant ADDR_BIAS_HIGH                 : INTEGER := 16#0dff#;
    constant ADDR_WEIGHTS_0_BASE            : INTEGER := 16#0e00#;
    constant ADDR_WEIGHTS_0_HIGH            : INTEGER := 16#0eff#;
    constant ADDR_WEIGHTS_1_BASE            : INTEGER := 16#0f00#;
    constant ADDR_WEIGHTS_1_HIGH            : INTEGER := 16#0fff#;
    constant ADDR_WEIGHTS_2_BASE            : INTEGER := 16#1000#;
    constant ADDR_WEIGHTS_2_HIGH            : INTEGER := 16#10ff#;
    constant ADDR_WEIGHTS_3_BASE            : INTEGER := 16#1100#;
    constant ADDR_WEIGHTS_3_HIGH            : INTEGER := 16#11ff#;
    constant ADDR_WEIGHTS_4_BASE            : INTEGER := 16#1200#;
    constant ADDR_WEIGHTS_4_HIGH            : INTEGER := 16#12ff#;
    constant ADDR_WEIGHTS_5_BASE            : INTEGER := 16#1300#;
    constant ADDR_WEIGHTS_5_HIGH            : INTEGER := 16#13ff#;
    constant ADDR_WEIGHTS_6_BASE            : INTEGER := 16#1400#;
    constant ADDR_WEIGHTS_6_HIGH            : INTEGER := 16#14ff#;
    constant ADDR_WEIGHTS_7_BASE            : INTEGER := 16#1500#;
    constant ADDR_WEIGHTS_7_HIGH            : INTEGER := 16#15ff#;
    constant ADDR_WEIGHTS_8_BASE            : INTEGER := 16#1600#;
    constant ADDR_WEIGHTS_8_HIGH            : INTEGER := 16#16ff#;
    constant ADDR_WEIGHTS_9_BASE            : INTEGER := 16#1700#;
    constant ADDR_WEIGHTS_9_HIGH            : INTEGER := 16#17ff#;
    constant ADDR_WEIGHTS_10_BASE           : INTEGER := 16#1800#;
    constant ADDR_WEIGHTS_10_HIGH           : INTEGER := 16#18ff#;
    constant ADDR_WEIGHTS_11_BASE           : INTEGER := 16#1900#;
    constant ADDR_WEIGHTS_11_HIGH           : INTEGER := 16#19ff#;
    constant ADDR_WEIGHTS_12_BASE           : INTEGER := 16#1a00#;
    constant ADDR_WEIGHTS_12_HIGH           : INTEGER := 16#1aff#;
    constant ADDR_WEIGHTS_13_BASE           : INTEGER := 16#1b00#;
    constant ADDR_WEIGHTS_13_HIGH           : INTEGER := 16#1bff#;
    constant ADDR_WEIGHTS_14_BASE           : INTEGER := 16#1c00#;
    constant ADDR_WEIGHTS_14_HIGH           : INTEGER := 16#1cff#;
    constant ADDR_WEIGHTS_15_BASE           : INTEGER := 16#1d00#;
    constant ADDR_WEIGHTS_15_HIGH           : INTEGER := 16#1dff#;
    constant ADDR_WEIGHTS_16_BASE           : INTEGER := 16#1e00#;
    constant ADDR_WEIGHTS_16_HIGH           : INTEGER := 16#1eff#;
    constant ADDR_WEIGHTS_17_BASE           : INTEGER := 16#1f00#;
    constant ADDR_WEIGHTS_17_HIGH           : INTEGER := 16#1fff#;
    constant ADDR_WEIGHTS_18_BASE           : INTEGER := 16#2000#;
    constant ADDR_WEIGHTS_18_HIGH           : INTEGER := 16#20ff#;
    constant ADDR_WEIGHTS_19_BASE           : INTEGER := 16#2100#;
    constant ADDR_WEIGHTS_19_HIGH           : INTEGER := 16#21ff#;
    constant ADDR_WEIGHTS_20_BASE           : INTEGER := 16#2200#;
    constant ADDR_WEIGHTS_20_HIGH           : INTEGER := 16#22ff#;
    constant ADDR_WEIGHTS_21_BASE           : INTEGER := 16#2300#;
    constant ADDR_WEIGHTS_21_HIGH           : INTEGER := 16#23ff#;
    constant ADDR_WEIGHTS_22_BASE           : INTEGER := 16#2400#;
    constant ADDR_WEIGHTS_22_HIGH           : INTEGER := 16#24ff#;
    constant ADDR_WEIGHTS_23_BASE           : INTEGER := 16#2500#;
    constant ADDR_WEIGHTS_23_HIGH           : INTEGER := 16#25ff#;
    constant ADDR_WEIGHTS_24_BASE           : INTEGER := 16#2600#;
    constant ADDR_WEIGHTS_24_HIGH           : INTEGER := 16#26ff#;
    constant ADDR_WEIGHTS_25_BASE           : INTEGER := 16#2700#;
    constant ADDR_WEIGHTS_25_HIGH           : INTEGER := 16#27ff#;
    constant ADDR_WEIGHTS_26_BASE           : INTEGER := 16#2800#;
    constant ADDR_WEIGHTS_26_HIGH           : INTEGER := 16#28ff#;
    constant ADDR_WEIGHTS_27_BASE           : INTEGER := 16#2900#;
    constant ADDR_WEIGHTS_27_HIGH           : INTEGER := 16#29ff#;
    constant ADDR_WEIGHTS_28_BASE           : INTEGER := 16#2a00#;
    constant ADDR_WEIGHTS_28_HIGH           : INTEGER := 16#2aff#;
    constant ADDR_WEIGHTS_29_BASE           : INTEGER := 16#2b00#;
    constant ADDR_WEIGHTS_29_HIGH           : INTEGER := 16#2bff#;
    constant ADDR_WEIGHTS_30_BASE           : INTEGER := 16#2c00#;
    constant ADDR_WEIGHTS_30_HIGH           : INTEGER := 16#2cff#;
    constant ADDR_WEIGHTS_31_BASE           : INTEGER := 16#2d00#;
    constant ADDR_WEIGHTS_31_HIGH           : INTEGER := 16#2dff#;
    constant ADDR_WEIGHTS_32_BASE           : INTEGER := 16#2e00#;
    constant ADDR_WEIGHTS_32_HIGH           : INTEGER := 16#2eff#;
    constant ADDR_WEIGHTS_33_BASE           : INTEGER := 16#2f00#;
    constant ADDR_WEIGHTS_33_HIGH           : INTEGER := 16#2fff#;
    constant ADDR_WEIGHTS_34_BASE           : INTEGER := 16#3000#;
    constant ADDR_WEIGHTS_34_HIGH           : INTEGER := 16#30ff#;
    constant ADDR_WEIGHTS_35_BASE           : INTEGER := 16#3100#;
    constant ADDR_WEIGHTS_35_HIGH           : INTEGER := 16#31ff#;
    constant ADDR_WEIGHTS_36_BASE           : INTEGER := 16#3200#;
    constant ADDR_WEIGHTS_36_HIGH           : INTEGER := 16#32ff#;
    constant ADDR_WEIGHTS_37_BASE           : INTEGER := 16#3300#;
    constant ADDR_WEIGHTS_37_HIGH           : INTEGER := 16#33ff#;
    constant ADDR_WEIGHTS_38_BASE           : INTEGER := 16#3400#;
    constant ADDR_WEIGHTS_38_HIGH           : INTEGER := 16#34ff#;
    constant ADDR_WEIGHTS_39_BASE           : INTEGER := 16#3500#;
    constant ADDR_WEIGHTS_39_HIGH           : INTEGER := 16#35ff#;
    constant ADDR_WEIGHTS_40_BASE           : INTEGER := 16#3600#;
    constant ADDR_WEIGHTS_40_HIGH           : INTEGER := 16#36ff#;
    constant ADDR_WEIGHTS_41_BASE           : INTEGER := 16#3700#;
    constant ADDR_WEIGHTS_41_HIGH           : INTEGER := 16#37ff#;
    constant ADDR_WEIGHTS_42_BASE           : INTEGER := 16#3800#;
    constant ADDR_WEIGHTS_42_HIGH           : INTEGER := 16#38ff#;
    constant ADDR_WEIGHTS_43_BASE           : INTEGER := 16#3900#;
    constant ADDR_WEIGHTS_43_HIGH           : INTEGER := 16#39ff#;
    constant ADDR_WEIGHTS_44_BASE           : INTEGER := 16#3a00#;
    constant ADDR_WEIGHTS_44_HIGH           : INTEGER := 16#3aff#;
    constant ADDR_WEIGHTS_45_BASE           : INTEGER := 16#3b00#;
    constant ADDR_WEIGHTS_45_HIGH           : INTEGER := 16#3bff#;
    constant ADDR_WEIGHTS_46_BASE           : INTEGER := 16#3c00#;
    constant ADDR_WEIGHTS_46_HIGH           : INTEGER := 16#3cff#;
    constant ADDR_WEIGHTS_47_BASE           : INTEGER := 16#3d00#;
    constant ADDR_WEIGHTS_47_HIGH           : INTEGER := 16#3dff#;
    constant ADDR_WEIGHTS_48_BASE           : INTEGER := 16#3e00#;
    constant ADDR_WEIGHTS_48_HIGH           : INTEGER := 16#3eff#;
    constant ADDR_WEIGHTS_49_BASE           : INTEGER := 16#3f00#;
    constant ADDR_WEIGHTS_49_HIGH           : INTEGER := 16#3fff#;
    constant ADDR_WEIGHTS_50_BASE           : INTEGER := 16#4000#;
    constant ADDR_WEIGHTS_50_HIGH           : INTEGER := 16#40ff#;
    constant ADDR_WEIGHTS_51_BASE           : INTEGER := 16#4100#;
    constant ADDR_WEIGHTS_51_HIGH           : INTEGER := 16#41ff#;
    constant ADDR_WEIGHTS_52_BASE           : INTEGER := 16#4200#;
    constant ADDR_WEIGHTS_52_HIGH           : INTEGER := 16#42ff#;
    constant ADDR_WEIGHTS_53_BASE           : INTEGER := 16#4300#;
    constant ADDR_WEIGHTS_53_HIGH           : INTEGER := 16#43ff#;
    constant ADDR_WEIGHTS_54_BASE           : INTEGER := 16#4400#;
    constant ADDR_WEIGHTS_54_HIGH           : INTEGER := 16#44ff#;
    constant ADDR_WEIGHTS_55_BASE           : INTEGER := 16#4500#;
    constant ADDR_WEIGHTS_55_HIGH           : INTEGER := 16#45ff#;
    constant ADDR_WEIGHTS_56_BASE           : INTEGER := 16#4600#;
    constant ADDR_WEIGHTS_56_HIGH           : INTEGER := 16#46ff#;
    constant ADDR_WEIGHTS_57_BASE           : INTEGER := 16#4700#;
    constant ADDR_WEIGHTS_57_HIGH           : INTEGER := 16#47ff#;
    constant ADDR_WEIGHTS_58_BASE           : INTEGER := 16#4800#;
    constant ADDR_WEIGHTS_58_HIGH           : INTEGER := 16#48ff#;
    constant ADDR_WEIGHTS_59_BASE           : INTEGER := 16#4900#;
    constant ADDR_WEIGHTS_59_HIGH           : INTEGER := 16#49ff#;
    constant ADDR_WEIGHTS_60_BASE           : INTEGER := 16#4a00#;
    constant ADDR_WEIGHTS_60_HIGH           : INTEGER := 16#4aff#;
    constant ADDR_WEIGHTS_61_BASE           : INTEGER := 16#4b00#;
    constant ADDR_WEIGHTS_61_HIGH           : INTEGER := 16#4bff#;
    constant ADDR_WEIGHTS_62_BASE           : INTEGER := 16#4c00#;
    constant ADDR_WEIGHTS_62_HIGH           : INTEGER := 16#4cff#;
    constant ADDR_WEIGHTS_63_BASE           : INTEGER := 16#4d00#;
    constant ADDR_WEIGHTS_63_HIGH           : INTEGER := 16#4dff#;
    constant ADDR_WEIGHTS_64_BASE           : INTEGER := 16#4e00#;
    constant ADDR_WEIGHTS_64_HIGH           : INTEGER := 16#4eff#;
    constant ADDR_WEIGHTS_65_BASE           : INTEGER := 16#4f00#;
    constant ADDR_WEIGHTS_65_HIGH           : INTEGER := 16#4fff#;
    constant ADDR_WEIGHTS_66_BASE           : INTEGER := 16#5000#;
    constant ADDR_WEIGHTS_66_HIGH           : INTEGER := 16#50ff#;
    constant ADDR_WEIGHTS_67_BASE           : INTEGER := 16#5100#;
    constant ADDR_WEIGHTS_67_HIGH           : INTEGER := 16#51ff#;
    constant ADDR_WEIGHTS_68_BASE           : INTEGER := 16#5200#;
    constant ADDR_WEIGHTS_68_HIGH           : INTEGER := 16#52ff#;
    constant ADDR_WEIGHTS_69_BASE           : INTEGER := 16#5300#;
    constant ADDR_WEIGHTS_69_HIGH           : INTEGER := 16#53ff#;
    constant ADDR_WEIGHTS_70_BASE           : INTEGER := 16#5400#;
    constant ADDR_WEIGHTS_70_HIGH           : INTEGER := 16#54ff#;
    constant ADDR_WEIGHTS_71_BASE           : INTEGER := 16#5500#;
    constant ADDR_WEIGHTS_71_HIGH           : INTEGER := 16#55ff#;
    constant ADDR_WEIGHTS_72_BASE           : INTEGER := 16#5600#;
    constant ADDR_WEIGHTS_72_HIGH           : INTEGER := 16#56ff#;
    constant ADDR_WEIGHTS_73_BASE           : INTEGER := 16#5700#;
    constant ADDR_WEIGHTS_73_HIGH           : INTEGER := 16#57ff#;
    constant ADDR_WEIGHTS_74_BASE           : INTEGER := 16#5800#;
    constant ADDR_WEIGHTS_74_HIGH           : INTEGER := 16#58ff#;
    constant ADDR_WEIGHTS_75_BASE           : INTEGER := 16#5900#;
    constant ADDR_WEIGHTS_75_HIGH           : INTEGER := 16#59ff#;
    constant ADDR_WEIGHTS_76_BASE           : INTEGER := 16#5a00#;
    constant ADDR_WEIGHTS_76_HIGH           : INTEGER := 16#5aff#;
    constant ADDR_WEIGHTS_77_BASE           : INTEGER := 16#5b00#;
    constant ADDR_WEIGHTS_77_HIGH           : INTEGER := 16#5bff#;
    constant ADDR_WEIGHTS_78_BASE           : INTEGER := 16#5c00#;
    constant ADDR_WEIGHTS_78_HIGH           : INTEGER := 16#5cff#;
    constant ADDR_WEIGHTS_79_BASE           : INTEGER := 16#5d00#;
    constant ADDR_WEIGHTS_79_HIGH           : INTEGER := 16#5dff#;
    constant ADDR_WEIGHTS_80_BASE           : INTEGER := 16#5e00#;
    constant ADDR_WEIGHTS_80_HIGH           : INTEGER := 16#5eff#;
    constant ADDR_WEIGHTS_81_BASE           : INTEGER := 16#5f00#;
    constant ADDR_WEIGHTS_81_HIGH           : INTEGER := 16#5fff#;
    constant ADDR_WEIGHTS_82_BASE           : INTEGER := 16#6000#;
    constant ADDR_WEIGHTS_82_HIGH           : INTEGER := 16#60ff#;
    constant ADDR_WEIGHTS_83_BASE           : INTEGER := 16#6100#;
    constant ADDR_WEIGHTS_83_HIGH           : INTEGER := 16#61ff#;
    constant ADDR_WEIGHTS_84_BASE           : INTEGER := 16#6200#;
    constant ADDR_WEIGHTS_84_HIGH           : INTEGER := 16#62ff#;
    constant ADDR_WEIGHTS_85_BASE           : INTEGER := 16#6300#;
    constant ADDR_WEIGHTS_85_HIGH           : INTEGER := 16#63ff#;
    constant ADDR_WEIGHTS_86_BASE           : INTEGER := 16#6400#;
    constant ADDR_WEIGHTS_86_HIGH           : INTEGER := 16#64ff#;
    constant ADDR_WEIGHTS_87_BASE           : INTEGER := 16#6500#;
    constant ADDR_WEIGHTS_87_HIGH           : INTEGER := 16#65ff#;
    constant ADDR_WEIGHTS_88_BASE           : INTEGER := 16#6600#;
    constant ADDR_WEIGHTS_88_HIGH           : INTEGER := 16#66ff#;
    constant ADDR_WEIGHTS_89_BASE           : INTEGER := 16#6700#;
    constant ADDR_WEIGHTS_89_HIGH           : INTEGER := 16#67ff#;
    constant ADDR_WEIGHTS_90_BASE           : INTEGER := 16#6800#;
    constant ADDR_WEIGHTS_90_HIGH           : INTEGER := 16#68ff#;
    constant ADDR_WEIGHTS_91_BASE           : INTEGER := 16#6900#;
    constant ADDR_WEIGHTS_91_HIGH           : INTEGER := 16#69ff#;
    constant ADDR_WEIGHTS_92_BASE           : INTEGER := 16#6a00#;
    constant ADDR_WEIGHTS_92_HIGH           : INTEGER := 16#6aff#;
    constant ADDR_WEIGHTS_93_BASE           : INTEGER := 16#6b00#;
    constant ADDR_WEIGHTS_93_HIGH           : INTEGER := 16#6bff#;
    constant ADDR_WEIGHTS_94_BASE           : INTEGER := 16#6c00#;
    constant ADDR_WEIGHTS_94_HIGH           : INTEGER := 16#6cff#;
    constant ADDR_WEIGHTS_95_BASE           : INTEGER := 16#6d00#;
    constant ADDR_WEIGHTS_95_HIGH           : INTEGER := 16#6dff#;
    constant ADDR_WEIGHTS_96_BASE           : INTEGER := 16#6e00#;
    constant ADDR_WEIGHTS_96_HIGH           : INTEGER := 16#6eff#;
    constant ADDR_WEIGHTS_97_BASE           : INTEGER := 16#6f00#;
    constant ADDR_WEIGHTS_97_HIGH           : INTEGER := 16#6fff#;
    constant ADDR_WEIGHTS_98_BASE           : INTEGER := 16#7000#;
    constant ADDR_WEIGHTS_98_HIGH           : INTEGER := 16#70ff#;
    constant ADDR_WEIGHTS_99_BASE           : INTEGER := 16#7100#;
    constant ADDR_WEIGHTS_99_HIGH           : INTEGER := 16#71ff#;
    constant ADDR_WEIGHTS_100_BASE          : INTEGER := 16#7200#;
    constant ADDR_WEIGHTS_100_HIGH          : INTEGER := 16#72ff#;
    constant ADDR_WEIGHTS_101_BASE          : INTEGER := 16#7300#;
    constant ADDR_WEIGHTS_101_HIGH          : INTEGER := 16#73ff#;
    constant ADDR_WEIGHTS_102_BASE          : INTEGER := 16#7400#;
    constant ADDR_WEIGHTS_102_HIGH          : INTEGER := 16#74ff#;
    constant ADDR_WEIGHTS_103_BASE          : INTEGER := 16#7500#;
    constant ADDR_WEIGHTS_103_HIGH          : INTEGER := 16#75ff#;
    constant ADDR_WEIGHTS_104_BASE          : INTEGER := 16#7600#;
    constant ADDR_WEIGHTS_104_HIGH          : INTEGER := 16#76ff#;
    constant ADDR_WEIGHTS_105_BASE          : INTEGER := 16#7700#;
    constant ADDR_WEIGHTS_105_HIGH          : INTEGER := 16#77ff#;
    constant ADDR_WEIGHTS_106_BASE          : INTEGER := 16#7800#;
    constant ADDR_WEIGHTS_106_HIGH          : INTEGER := 16#78ff#;
    constant ADDR_WEIGHTS_107_BASE          : INTEGER := 16#7900#;
    constant ADDR_WEIGHTS_107_HIGH          : INTEGER := 16#79ff#;
    constant ADDR_WEIGHTS_108_BASE          : INTEGER := 16#7a00#;
    constant ADDR_WEIGHTS_108_HIGH          : INTEGER := 16#7aff#;
    constant ADDR_WEIGHTS_109_BASE          : INTEGER := 16#7b00#;
    constant ADDR_WEIGHTS_109_HIGH          : INTEGER := 16#7bff#;
    constant ADDR_WEIGHTS_110_BASE          : INTEGER := 16#7c00#;
    constant ADDR_WEIGHTS_110_HIGH          : INTEGER := 16#7cff#;
    constant ADDR_WEIGHTS_111_BASE          : INTEGER := 16#7d00#;
    constant ADDR_WEIGHTS_111_HIGH          : INTEGER := 16#7dff#;
    constant ADDR_WEIGHTS_112_BASE          : INTEGER := 16#7e00#;
    constant ADDR_WEIGHTS_112_HIGH          : INTEGER := 16#7eff#;
    constant ADDR_WEIGHTS_113_BASE          : INTEGER := 16#7f00#;
    constant ADDR_WEIGHTS_113_HIGH          : INTEGER := 16#7fff#;
    constant ADDR_WEIGHTS_114_BASE          : INTEGER := 16#8000#;
    constant ADDR_WEIGHTS_114_HIGH          : INTEGER := 16#80ff#;
    constant ADDR_WEIGHTS_115_BASE          : INTEGER := 16#8100#;
    constant ADDR_WEIGHTS_115_HIGH          : INTEGER := 16#81ff#;
    constant ADDR_WEIGHTS_116_BASE          : INTEGER := 16#8200#;
    constant ADDR_WEIGHTS_116_HIGH          : INTEGER := 16#82ff#;
    constant ADDR_WEIGHTS_117_BASE          : INTEGER := 16#8300#;
    constant ADDR_WEIGHTS_117_HIGH          : INTEGER := 16#83ff#;
    constant ADDR_WEIGHTS_118_BASE          : INTEGER := 16#8400#;
    constant ADDR_WEIGHTS_118_HIGH          : INTEGER := 16#84ff#;
    constant ADDR_WEIGHTS_119_BASE          : INTEGER := 16#8500#;
    constant ADDR_WEIGHTS_119_HIGH          : INTEGER := 16#85ff#;
    constant ADDR_WEIGHTS_120_BASE          : INTEGER := 16#8600#;
    constant ADDR_WEIGHTS_120_HIGH          : INTEGER := 16#86ff#;
    constant ADDR_WEIGHTS_121_BASE          : INTEGER := 16#8700#;
    constant ADDR_WEIGHTS_121_HIGH          : INTEGER := 16#87ff#;
    constant ADDR_WEIGHTS_122_BASE          : INTEGER := 16#8800#;
    constant ADDR_WEIGHTS_122_HIGH          : INTEGER := 16#88ff#;
    constant ADDR_WEIGHTS_123_BASE          : INTEGER := 16#8900#;
    constant ADDR_WEIGHTS_123_HIGH          : INTEGER := 16#89ff#;
    constant ADDR_WEIGHTS_124_BASE          : INTEGER := 16#8a00#;
    constant ADDR_WEIGHTS_124_HIGH          : INTEGER := 16#8aff#;
    constant ADDR_WEIGHTS_125_BASE          : INTEGER := 16#8b00#;
    constant ADDR_WEIGHTS_125_HIGH          : INTEGER := 16#8bff#;
    constant ADDR_WEIGHTS_126_BASE          : INTEGER := 16#8c00#;
    constant ADDR_WEIGHTS_126_HIGH          : INTEGER := 16#8cff#;
    constant ADDR_WEIGHTS_127_BASE          : INTEGER := 16#8d00#;
    constant ADDR_WEIGHTS_127_HIGH          : INTEGER := 16#8dff#;
    constant ADDR_BITS         : INTEGER := 16;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(5 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(5 downto 0) := (others => '0');
    signal int_input_0         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_1         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_2         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_3         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_4         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_5         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_6         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_7         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_8         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_9         : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_10        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_11        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_12        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_13        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_14        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_15        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_16        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_17        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_18        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_19        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_20        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_21        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_22        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_23        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_24        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_25        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_26        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_27        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_28        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_29        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_30        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_31        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_32        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_33        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_34        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_35        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_36        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_37        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_38        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_39        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_40        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_41        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_42        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_43        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_44        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_45        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_46        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_47        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_48        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_49        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_50        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_51        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_52        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_53        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_54        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_55        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_56        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_57        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_58        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_59        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_60        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_61        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_62        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_63        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_64        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_65        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_66        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_67        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_68        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_69        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_70        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_71        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_72        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_73        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_74        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_75        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_76        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_77        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_78        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_79        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_80        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_81        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_82        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_83        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_84        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_85        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_86        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_87        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_88        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_89        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_90        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_91        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_92        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_93        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_94        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_95        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_96        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_97        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_98        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_99        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_100       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_101       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_102       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_103       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_104       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_105       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_106       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_107       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_108       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_109       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_110       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_111       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_112       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_113       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_114       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_115       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_116       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_117       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_118       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_119       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_120       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_121       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_122       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_123       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_124       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_125       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_126       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_input_127       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_0_ap_vld : STD_LOGIC;
    signal int_output_0        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_1_ap_vld : STD_LOGIC;
    signal int_output_1        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_2_ap_vld : STD_LOGIC;
    signal int_output_2        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_3_ap_vld : STD_LOGIC;
    signal int_output_3        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_4_ap_vld : STD_LOGIC;
    signal int_output_4        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_5_ap_vld : STD_LOGIC;
    signal int_output_5        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_6_ap_vld : STD_LOGIC;
    signal int_output_6        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_7_ap_vld : STD_LOGIC;
    signal int_output_7        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_8_ap_vld : STD_LOGIC;
    signal int_output_8        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_9_ap_vld : STD_LOGIC;
    signal int_output_9        : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_10_ap_vld : STD_LOGIC;
    signal int_output_10       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_11_ap_vld : STD_LOGIC;
    signal int_output_11       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_12_ap_vld : STD_LOGIC;
    signal int_output_12       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_13_ap_vld : STD_LOGIC;
    signal int_output_13       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_14_ap_vld : STD_LOGIC;
    signal int_output_14       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_15_ap_vld : STD_LOGIC;
    signal int_output_15       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_16_ap_vld : STD_LOGIC;
    signal int_output_16       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_17_ap_vld : STD_LOGIC;
    signal int_output_17       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_18_ap_vld : STD_LOGIC;
    signal int_output_18       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_19_ap_vld : STD_LOGIC;
    signal int_output_19       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_20_ap_vld : STD_LOGIC;
    signal int_output_20       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_21_ap_vld : STD_LOGIC;
    signal int_output_21       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_22_ap_vld : STD_LOGIC;
    signal int_output_22       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_23_ap_vld : STD_LOGIC;
    signal int_output_23       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_24_ap_vld : STD_LOGIC;
    signal int_output_24       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_25_ap_vld : STD_LOGIC;
    signal int_output_25       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_26_ap_vld : STD_LOGIC;
    signal int_output_26       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_27_ap_vld : STD_LOGIC;
    signal int_output_27       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_28_ap_vld : STD_LOGIC;
    signal int_output_28       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_29_ap_vld : STD_LOGIC;
    signal int_output_29       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_30_ap_vld : STD_LOGIC;
    signal int_output_30       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_31_ap_vld : STD_LOGIC;
    signal int_output_31       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_32_ap_vld : STD_LOGIC;
    signal int_output_32       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_33_ap_vld : STD_LOGIC;
    signal int_output_33       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_34_ap_vld : STD_LOGIC;
    signal int_output_34       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_35_ap_vld : STD_LOGIC;
    signal int_output_35       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_36_ap_vld : STD_LOGIC;
    signal int_output_36       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_37_ap_vld : STD_LOGIC;
    signal int_output_37       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_38_ap_vld : STD_LOGIC;
    signal int_output_38       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_39_ap_vld : STD_LOGIC;
    signal int_output_39       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_40_ap_vld : STD_LOGIC;
    signal int_output_40       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_41_ap_vld : STD_LOGIC;
    signal int_output_41       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_42_ap_vld : STD_LOGIC;
    signal int_output_42       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_43_ap_vld : STD_LOGIC;
    signal int_output_43       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_44_ap_vld : STD_LOGIC;
    signal int_output_44       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_45_ap_vld : STD_LOGIC;
    signal int_output_45       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_46_ap_vld : STD_LOGIC;
    signal int_output_46       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_47_ap_vld : STD_LOGIC;
    signal int_output_47       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_48_ap_vld : STD_LOGIC;
    signal int_output_48       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_49_ap_vld : STD_LOGIC;
    signal int_output_49       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_50_ap_vld : STD_LOGIC;
    signal int_output_50       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_51_ap_vld : STD_LOGIC;
    signal int_output_51       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_52_ap_vld : STD_LOGIC;
    signal int_output_52       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_53_ap_vld : STD_LOGIC;
    signal int_output_53       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_54_ap_vld : STD_LOGIC;
    signal int_output_54       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_55_ap_vld : STD_LOGIC;
    signal int_output_55       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_56_ap_vld : STD_LOGIC;
    signal int_output_56       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_57_ap_vld : STD_LOGIC;
    signal int_output_57       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_58_ap_vld : STD_LOGIC;
    signal int_output_58       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_59_ap_vld : STD_LOGIC;
    signal int_output_59       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_60_ap_vld : STD_LOGIC;
    signal int_output_60       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_61_ap_vld : STD_LOGIC;
    signal int_output_61       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_62_ap_vld : STD_LOGIC;
    signal int_output_62       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_63_ap_vld : STD_LOGIC;
    signal int_output_63       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_64_ap_vld : STD_LOGIC;
    signal int_output_64       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_65_ap_vld : STD_LOGIC;
    signal int_output_65       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_66_ap_vld : STD_LOGIC;
    signal int_output_66       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_67_ap_vld : STD_LOGIC;
    signal int_output_67       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_68_ap_vld : STD_LOGIC;
    signal int_output_68       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_69_ap_vld : STD_LOGIC;
    signal int_output_69       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_70_ap_vld : STD_LOGIC;
    signal int_output_70       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_71_ap_vld : STD_LOGIC;
    signal int_output_71       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_72_ap_vld : STD_LOGIC;
    signal int_output_72       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_73_ap_vld : STD_LOGIC;
    signal int_output_73       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_74_ap_vld : STD_LOGIC;
    signal int_output_74       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_75_ap_vld : STD_LOGIC;
    signal int_output_75       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_76_ap_vld : STD_LOGIC;
    signal int_output_76       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_77_ap_vld : STD_LOGIC;
    signal int_output_77       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_78_ap_vld : STD_LOGIC;
    signal int_output_78       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_79_ap_vld : STD_LOGIC;
    signal int_output_79       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_80_ap_vld : STD_LOGIC;
    signal int_output_80       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_81_ap_vld : STD_LOGIC;
    signal int_output_81       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_82_ap_vld : STD_LOGIC;
    signal int_output_82       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_83_ap_vld : STD_LOGIC;
    signal int_output_83       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_84_ap_vld : STD_LOGIC;
    signal int_output_84       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_85_ap_vld : STD_LOGIC;
    signal int_output_85       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_86_ap_vld : STD_LOGIC;
    signal int_output_86       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_87_ap_vld : STD_LOGIC;
    signal int_output_87       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_88_ap_vld : STD_LOGIC;
    signal int_output_88       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_89_ap_vld : STD_LOGIC;
    signal int_output_89       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_90_ap_vld : STD_LOGIC;
    signal int_output_90       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_91_ap_vld : STD_LOGIC;
    signal int_output_91       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_92_ap_vld : STD_LOGIC;
    signal int_output_92       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_93_ap_vld : STD_LOGIC;
    signal int_output_93       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_94_ap_vld : STD_LOGIC;
    signal int_output_94       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_95_ap_vld : STD_LOGIC;
    signal int_output_95       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_96_ap_vld : STD_LOGIC;
    signal int_output_96       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_97_ap_vld : STD_LOGIC;
    signal int_output_97       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_98_ap_vld : STD_LOGIC;
    signal int_output_98       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_99_ap_vld : STD_LOGIC;
    signal int_output_99       : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_100_ap_vld : STD_LOGIC;
    signal int_output_100      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_101_ap_vld : STD_LOGIC;
    signal int_output_101      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_102_ap_vld : STD_LOGIC;
    signal int_output_102      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_103_ap_vld : STD_LOGIC;
    signal int_output_103      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_104_ap_vld : STD_LOGIC;
    signal int_output_104      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_105_ap_vld : STD_LOGIC;
    signal int_output_105      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_106_ap_vld : STD_LOGIC;
    signal int_output_106      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_107_ap_vld : STD_LOGIC;
    signal int_output_107      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_108_ap_vld : STD_LOGIC;
    signal int_output_108      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_109_ap_vld : STD_LOGIC;
    signal int_output_109      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_110_ap_vld : STD_LOGIC;
    signal int_output_110      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_111_ap_vld : STD_LOGIC;
    signal int_output_111      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_112_ap_vld : STD_LOGIC;
    signal int_output_112      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_113_ap_vld : STD_LOGIC;
    signal int_output_113      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_114_ap_vld : STD_LOGIC;
    signal int_output_114      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_115_ap_vld : STD_LOGIC;
    signal int_output_115      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_116_ap_vld : STD_LOGIC;
    signal int_output_116      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_117_ap_vld : STD_LOGIC;
    signal int_output_117      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_118_ap_vld : STD_LOGIC;
    signal int_output_118      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_119_ap_vld : STD_LOGIC;
    signal int_output_119      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_120_ap_vld : STD_LOGIC;
    signal int_output_120      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_121_ap_vld : STD_LOGIC;
    signal int_output_121      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_122_ap_vld : STD_LOGIC;
    signal int_output_122      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_123_ap_vld : STD_LOGIC;
    signal int_output_123      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_124_ap_vld : STD_LOGIC;
    signal int_output_124      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_125_ap_vld : STD_LOGIC;
    signal int_output_125      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_126_ap_vld : STD_LOGIC;
    signal int_output_126      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_output_127_ap_vld : STD_LOGIC;
    signal int_output_127      : UNSIGNED(15 downto 0) := (others => '0');
    signal int_numOfOutputNeurons : UNSIGNED(15 downto 0) := (others => '0');
    signal int_activation      : UNSIGNED(7 downto 0) := (others => '0');
    -- memory signals
    signal int_bias_address0   : UNSIGNED(5 downto 0);
    signal int_bias_ce0        : STD_LOGIC;
    signal int_bias_q0         : UNSIGNED(31 downto 0);
    signal int_bias_address1   : UNSIGNED(5 downto 0);
    signal int_bias_ce1        : STD_LOGIC;
    signal int_bias_we1        : STD_LOGIC;
    signal int_bias_be1        : UNSIGNED(3 downto 0);
    signal int_bias_d1         : UNSIGNED(31 downto 0);
    signal int_bias_q1         : UNSIGNED(31 downto 0);
    signal int_bias_read       : STD_LOGIC;
    signal int_bias_write      : STD_LOGIC;
    signal int_bias_shift0     : UNSIGNED(0 downto 0);
    signal int_weights_0_address0 : UNSIGNED(5 downto 0);
    signal int_weights_0_ce0   : STD_LOGIC;
    signal int_weights_0_q0    : UNSIGNED(31 downto 0);
    signal int_weights_0_address1 : UNSIGNED(5 downto 0);
    signal int_weights_0_ce1   : STD_LOGIC;
    signal int_weights_0_we1   : STD_LOGIC;
    signal int_weights_0_be1   : UNSIGNED(3 downto 0);
    signal int_weights_0_d1    : UNSIGNED(31 downto 0);
    signal int_weights_0_q1    : UNSIGNED(31 downto 0);
    signal int_weights_0_read  : STD_LOGIC;
    signal int_weights_0_write : STD_LOGIC;
    signal int_weights_0_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_1_address0 : UNSIGNED(5 downto 0);
    signal int_weights_1_ce0   : STD_LOGIC;
    signal int_weights_1_q0    : UNSIGNED(31 downto 0);
    signal int_weights_1_address1 : UNSIGNED(5 downto 0);
    signal int_weights_1_ce1   : STD_LOGIC;
    signal int_weights_1_we1   : STD_LOGIC;
    signal int_weights_1_be1   : UNSIGNED(3 downto 0);
    signal int_weights_1_d1    : UNSIGNED(31 downto 0);
    signal int_weights_1_q1    : UNSIGNED(31 downto 0);
    signal int_weights_1_read  : STD_LOGIC;
    signal int_weights_1_write : STD_LOGIC;
    signal int_weights_1_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_2_address0 : UNSIGNED(5 downto 0);
    signal int_weights_2_ce0   : STD_LOGIC;
    signal int_weights_2_q0    : UNSIGNED(31 downto 0);
    signal int_weights_2_address1 : UNSIGNED(5 downto 0);
    signal int_weights_2_ce1   : STD_LOGIC;
    signal int_weights_2_we1   : STD_LOGIC;
    signal int_weights_2_be1   : UNSIGNED(3 downto 0);
    signal int_weights_2_d1    : UNSIGNED(31 downto 0);
    signal int_weights_2_q1    : UNSIGNED(31 downto 0);
    signal int_weights_2_read  : STD_LOGIC;
    signal int_weights_2_write : STD_LOGIC;
    signal int_weights_2_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_3_address0 : UNSIGNED(5 downto 0);
    signal int_weights_3_ce0   : STD_LOGIC;
    signal int_weights_3_q0    : UNSIGNED(31 downto 0);
    signal int_weights_3_address1 : UNSIGNED(5 downto 0);
    signal int_weights_3_ce1   : STD_LOGIC;
    signal int_weights_3_we1   : STD_LOGIC;
    signal int_weights_3_be1   : UNSIGNED(3 downto 0);
    signal int_weights_3_d1    : UNSIGNED(31 downto 0);
    signal int_weights_3_q1    : UNSIGNED(31 downto 0);
    signal int_weights_3_read  : STD_LOGIC;
    signal int_weights_3_write : STD_LOGIC;
    signal int_weights_3_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_4_address0 : UNSIGNED(5 downto 0);
    signal int_weights_4_ce0   : STD_LOGIC;
    signal int_weights_4_q0    : UNSIGNED(31 downto 0);
    signal int_weights_4_address1 : UNSIGNED(5 downto 0);
    signal int_weights_4_ce1   : STD_LOGIC;
    signal int_weights_4_we1   : STD_LOGIC;
    signal int_weights_4_be1   : UNSIGNED(3 downto 0);
    signal int_weights_4_d1    : UNSIGNED(31 downto 0);
    signal int_weights_4_q1    : UNSIGNED(31 downto 0);
    signal int_weights_4_read  : STD_LOGIC;
    signal int_weights_4_write : STD_LOGIC;
    signal int_weights_4_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_5_address0 : UNSIGNED(5 downto 0);
    signal int_weights_5_ce0   : STD_LOGIC;
    signal int_weights_5_q0    : UNSIGNED(31 downto 0);
    signal int_weights_5_address1 : UNSIGNED(5 downto 0);
    signal int_weights_5_ce1   : STD_LOGIC;
    signal int_weights_5_we1   : STD_LOGIC;
    signal int_weights_5_be1   : UNSIGNED(3 downto 0);
    signal int_weights_5_d1    : UNSIGNED(31 downto 0);
    signal int_weights_5_q1    : UNSIGNED(31 downto 0);
    signal int_weights_5_read  : STD_LOGIC;
    signal int_weights_5_write : STD_LOGIC;
    signal int_weights_5_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_6_address0 : UNSIGNED(5 downto 0);
    signal int_weights_6_ce0   : STD_LOGIC;
    signal int_weights_6_q0    : UNSIGNED(31 downto 0);
    signal int_weights_6_address1 : UNSIGNED(5 downto 0);
    signal int_weights_6_ce1   : STD_LOGIC;
    signal int_weights_6_we1   : STD_LOGIC;
    signal int_weights_6_be1   : UNSIGNED(3 downto 0);
    signal int_weights_6_d1    : UNSIGNED(31 downto 0);
    signal int_weights_6_q1    : UNSIGNED(31 downto 0);
    signal int_weights_6_read  : STD_LOGIC;
    signal int_weights_6_write : STD_LOGIC;
    signal int_weights_6_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_7_address0 : UNSIGNED(5 downto 0);
    signal int_weights_7_ce0   : STD_LOGIC;
    signal int_weights_7_q0    : UNSIGNED(31 downto 0);
    signal int_weights_7_address1 : UNSIGNED(5 downto 0);
    signal int_weights_7_ce1   : STD_LOGIC;
    signal int_weights_7_we1   : STD_LOGIC;
    signal int_weights_7_be1   : UNSIGNED(3 downto 0);
    signal int_weights_7_d1    : UNSIGNED(31 downto 0);
    signal int_weights_7_q1    : UNSIGNED(31 downto 0);
    signal int_weights_7_read  : STD_LOGIC;
    signal int_weights_7_write : STD_LOGIC;
    signal int_weights_7_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_8_address0 : UNSIGNED(5 downto 0);
    signal int_weights_8_ce0   : STD_LOGIC;
    signal int_weights_8_q0    : UNSIGNED(31 downto 0);
    signal int_weights_8_address1 : UNSIGNED(5 downto 0);
    signal int_weights_8_ce1   : STD_LOGIC;
    signal int_weights_8_we1   : STD_LOGIC;
    signal int_weights_8_be1   : UNSIGNED(3 downto 0);
    signal int_weights_8_d1    : UNSIGNED(31 downto 0);
    signal int_weights_8_q1    : UNSIGNED(31 downto 0);
    signal int_weights_8_read  : STD_LOGIC;
    signal int_weights_8_write : STD_LOGIC;
    signal int_weights_8_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_9_address0 : UNSIGNED(5 downto 0);
    signal int_weights_9_ce0   : STD_LOGIC;
    signal int_weights_9_q0    : UNSIGNED(31 downto 0);
    signal int_weights_9_address1 : UNSIGNED(5 downto 0);
    signal int_weights_9_ce1   : STD_LOGIC;
    signal int_weights_9_we1   : STD_LOGIC;
    signal int_weights_9_be1   : UNSIGNED(3 downto 0);
    signal int_weights_9_d1    : UNSIGNED(31 downto 0);
    signal int_weights_9_q1    : UNSIGNED(31 downto 0);
    signal int_weights_9_read  : STD_LOGIC;
    signal int_weights_9_write : STD_LOGIC;
    signal int_weights_9_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_10_address0 : UNSIGNED(5 downto 0);
    signal int_weights_10_ce0  : STD_LOGIC;
    signal int_weights_10_q0   : UNSIGNED(31 downto 0);
    signal int_weights_10_address1 : UNSIGNED(5 downto 0);
    signal int_weights_10_ce1  : STD_LOGIC;
    signal int_weights_10_we1  : STD_LOGIC;
    signal int_weights_10_be1  : UNSIGNED(3 downto 0);
    signal int_weights_10_d1   : UNSIGNED(31 downto 0);
    signal int_weights_10_q1   : UNSIGNED(31 downto 0);
    signal int_weights_10_read : STD_LOGIC;
    signal int_weights_10_write : STD_LOGIC;
    signal int_weights_10_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_11_address0 : UNSIGNED(5 downto 0);
    signal int_weights_11_ce0  : STD_LOGIC;
    signal int_weights_11_q0   : UNSIGNED(31 downto 0);
    signal int_weights_11_address1 : UNSIGNED(5 downto 0);
    signal int_weights_11_ce1  : STD_LOGIC;
    signal int_weights_11_we1  : STD_LOGIC;
    signal int_weights_11_be1  : UNSIGNED(3 downto 0);
    signal int_weights_11_d1   : UNSIGNED(31 downto 0);
    signal int_weights_11_q1   : UNSIGNED(31 downto 0);
    signal int_weights_11_read : STD_LOGIC;
    signal int_weights_11_write : STD_LOGIC;
    signal int_weights_11_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_12_address0 : UNSIGNED(5 downto 0);
    signal int_weights_12_ce0  : STD_LOGIC;
    signal int_weights_12_q0   : UNSIGNED(31 downto 0);
    signal int_weights_12_address1 : UNSIGNED(5 downto 0);
    signal int_weights_12_ce1  : STD_LOGIC;
    signal int_weights_12_we1  : STD_LOGIC;
    signal int_weights_12_be1  : UNSIGNED(3 downto 0);
    signal int_weights_12_d1   : UNSIGNED(31 downto 0);
    signal int_weights_12_q1   : UNSIGNED(31 downto 0);
    signal int_weights_12_read : STD_LOGIC;
    signal int_weights_12_write : STD_LOGIC;
    signal int_weights_12_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_13_address0 : UNSIGNED(5 downto 0);
    signal int_weights_13_ce0  : STD_LOGIC;
    signal int_weights_13_q0   : UNSIGNED(31 downto 0);
    signal int_weights_13_address1 : UNSIGNED(5 downto 0);
    signal int_weights_13_ce1  : STD_LOGIC;
    signal int_weights_13_we1  : STD_LOGIC;
    signal int_weights_13_be1  : UNSIGNED(3 downto 0);
    signal int_weights_13_d1   : UNSIGNED(31 downto 0);
    signal int_weights_13_q1   : UNSIGNED(31 downto 0);
    signal int_weights_13_read : STD_LOGIC;
    signal int_weights_13_write : STD_LOGIC;
    signal int_weights_13_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_14_address0 : UNSIGNED(5 downto 0);
    signal int_weights_14_ce0  : STD_LOGIC;
    signal int_weights_14_q0   : UNSIGNED(31 downto 0);
    signal int_weights_14_address1 : UNSIGNED(5 downto 0);
    signal int_weights_14_ce1  : STD_LOGIC;
    signal int_weights_14_we1  : STD_LOGIC;
    signal int_weights_14_be1  : UNSIGNED(3 downto 0);
    signal int_weights_14_d1   : UNSIGNED(31 downto 0);
    signal int_weights_14_q1   : UNSIGNED(31 downto 0);
    signal int_weights_14_read : STD_LOGIC;
    signal int_weights_14_write : STD_LOGIC;
    signal int_weights_14_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_15_address0 : UNSIGNED(5 downto 0);
    signal int_weights_15_ce0  : STD_LOGIC;
    signal int_weights_15_q0   : UNSIGNED(31 downto 0);
    signal int_weights_15_address1 : UNSIGNED(5 downto 0);
    signal int_weights_15_ce1  : STD_LOGIC;
    signal int_weights_15_we1  : STD_LOGIC;
    signal int_weights_15_be1  : UNSIGNED(3 downto 0);
    signal int_weights_15_d1   : UNSIGNED(31 downto 0);
    signal int_weights_15_q1   : UNSIGNED(31 downto 0);
    signal int_weights_15_read : STD_LOGIC;
    signal int_weights_15_write : STD_LOGIC;
    signal int_weights_15_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_16_address0 : UNSIGNED(5 downto 0);
    signal int_weights_16_ce0  : STD_LOGIC;
    signal int_weights_16_q0   : UNSIGNED(31 downto 0);
    signal int_weights_16_address1 : UNSIGNED(5 downto 0);
    signal int_weights_16_ce1  : STD_LOGIC;
    signal int_weights_16_we1  : STD_LOGIC;
    signal int_weights_16_be1  : UNSIGNED(3 downto 0);
    signal int_weights_16_d1   : UNSIGNED(31 downto 0);
    signal int_weights_16_q1   : UNSIGNED(31 downto 0);
    signal int_weights_16_read : STD_LOGIC;
    signal int_weights_16_write : STD_LOGIC;
    signal int_weights_16_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_17_address0 : UNSIGNED(5 downto 0);
    signal int_weights_17_ce0  : STD_LOGIC;
    signal int_weights_17_q0   : UNSIGNED(31 downto 0);
    signal int_weights_17_address1 : UNSIGNED(5 downto 0);
    signal int_weights_17_ce1  : STD_LOGIC;
    signal int_weights_17_we1  : STD_LOGIC;
    signal int_weights_17_be1  : UNSIGNED(3 downto 0);
    signal int_weights_17_d1   : UNSIGNED(31 downto 0);
    signal int_weights_17_q1   : UNSIGNED(31 downto 0);
    signal int_weights_17_read : STD_LOGIC;
    signal int_weights_17_write : STD_LOGIC;
    signal int_weights_17_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_18_address0 : UNSIGNED(5 downto 0);
    signal int_weights_18_ce0  : STD_LOGIC;
    signal int_weights_18_q0   : UNSIGNED(31 downto 0);
    signal int_weights_18_address1 : UNSIGNED(5 downto 0);
    signal int_weights_18_ce1  : STD_LOGIC;
    signal int_weights_18_we1  : STD_LOGIC;
    signal int_weights_18_be1  : UNSIGNED(3 downto 0);
    signal int_weights_18_d1   : UNSIGNED(31 downto 0);
    signal int_weights_18_q1   : UNSIGNED(31 downto 0);
    signal int_weights_18_read : STD_LOGIC;
    signal int_weights_18_write : STD_LOGIC;
    signal int_weights_18_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_19_address0 : UNSIGNED(5 downto 0);
    signal int_weights_19_ce0  : STD_LOGIC;
    signal int_weights_19_q0   : UNSIGNED(31 downto 0);
    signal int_weights_19_address1 : UNSIGNED(5 downto 0);
    signal int_weights_19_ce1  : STD_LOGIC;
    signal int_weights_19_we1  : STD_LOGIC;
    signal int_weights_19_be1  : UNSIGNED(3 downto 0);
    signal int_weights_19_d1   : UNSIGNED(31 downto 0);
    signal int_weights_19_q1   : UNSIGNED(31 downto 0);
    signal int_weights_19_read : STD_LOGIC;
    signal int_weights_19_write : STD_LOGIC;
    signal int_weights_19_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_20_address0 : UNSIGNED(5 downto 0);
    signal int_weights_20_ce0  : STD_LOGIC;
    signal int_weights_20_q0   : UNSIGNED(31 downto 0);
    signal int_weights_20_address1 : UNSIGNED(5 downto 0);
    signal int_weights_20_ce1  : STD_LOGIC;
    signal int_weights_20_we1  : STD_LOGIC;
    signal int_weights_20_be1  : UNSIGNED(3 downto 0);
    signal int_weights_20_d1   : UNSIGNED(31 downto 0);
    signal int_weights_20_q1   : UNSIGNED(31 downto 0);
    signal int_weights_20_read : STD_LOGIC;
    signal int_weights_20_write : STD_LOGIC;
    signal int_weights_20_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_21_address0 : UNSIGNED(5 downto 0);
    signal int_weights_21_ce0  : STD_LOGIC;
    signal int_weights_21_q0   : UNSIGNED(31 downto 0);
    signal int_weights_21_address1 : UNSIGNED(5 downto 0);
    signal int_weights_21_ce1  : STD_LOGIC;
    signal int_weights_21_we1  : STD_LOGIC;
    signal int_weights_21_be1  : UNSIGNED(3 downto 0);
    signal int_weights_21_d1   : UNSIGNED(31 downto 0);
    signal int_weights_21_q1   : UNSIGNED(31 downto 0);
    signal int_weights_21_read : STD_LOGIC;
    signal int_weights_21_write : STD_LOGIC;
    signal int_weights_21_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_22_address0 : UNSIGNED(5 downto 0);
    signal int_weights_22_ce0  : STD_LOGIC;
    signal int_weights_22_q0   : UNSIGNED(31 downto 0);
    signal int_weights_22_address1 : UNSIGNED(5 downto 0);
    signal int_weights_22_ce1  : STD_LOGIC;
    signal int_weights_22_we1  : STD_LOGIC;
    signal int_weights_22_be1  : UNSIGNED(3 downto 0);
    signal int_weights_22_d1   : UNSIGNED(31 downto 0);
    signal int_weights_22_q1   : UNSIGNED(31 downto 0);
    signal int_weights_22_read : STD_LOGIC;
    signal int_weights_22_write : STD_LOGIC;
    signal int_weights_22_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_23_address0 : UNSIGNED(5 downto 0);
    signal int_weights_23_ce0  : STD_LOGIC;
    signal int_weights_23_q0   : UNSIGNED(31 downto 0);
    signal int_weights_23_address1 : UNSIGNED(5 downto 0);
    signal int_weights_23_ce1  : STD_LOGIC;
    signal int_weights_23_we1  : STD_LOGIC;
    signal int_weights_23_be1  : UNSIGNED(3 downto 0);
    signal int_weights_23_d1   : UNSIGNED(31 downto 0);
    signal int_weights_23_q1   : UNSIGNED(31 downto 0);
    signal int_weights_23_read : STD_LOGIC;
    signal int_weights_23_write : STD_LOGIC;
    signal int_weights_23_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_24_address0 : UNSIGNED(5 downto 0);
    signal int_weights_24_ce0  : STD_LOGIC;
    signal int_weights_24_q0   : UNSIGNED(31 downto 0);
    signal int_weights_24_address1 : UNSIGNED(5 downto 0);
    signal int_weights_24_ce1  : STD_LOGIC;
    signal int_weights_24_we1  : STD_LOGIC;
    signal int_weights_24_be1  : UNSIGNED(3 downto 0);
    signal int_weights_24_d1   : UNSIGNED(31 downto 0);
    signal int_weights_24_q1   : UNSIGNED(31 downto 0);
    signal int_weights_24_read : STD_LOGIC;
    signal int_weights_24_write : STD_LOGIC;
    signal int_weights_24_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_25_address0 : UNSIGNED(5 downto 0);
    signal int_weights_25_ce0  : STD_LOGIC;
    signal int_weights_25_q0   : UNSIGNED(31 downto 0);
    signal int_weights_25_address1 : UNSIGNED(5 downto 0);
    signal int_weights_25_ce1  : STD_LOGIC;
    signal int_weights_25_we1  : STD_LOGIC;
    signal int_weights_25_be1  : UNSIGNED(3 downto 0);
    signal int_weights_25_d1   : UNSIGNED(31 downto 0);
    signal int_weights_25_q1   : UNSIGNED(31 downto 0);
    signal int_weights_25_read : STD_LOGIC;
    signal int_weights_25_write : STD_LOGIC;
    signal int_weights_25_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_26_address0 : UNSIGNED(5 downto 0);
    signal int_weights_26_ce0  : STD_LOGIC;
    signal int_weights_26_q0   : UNSIGNED(31 downto 0);
    signal int_weights_26_address1 : UNSIGNED(5 downto 0);
    signal int_weights_26_ce1  : STD_LOGIC;
    signal int_weights_26_we1  : STD_LOGIC;
    signal int_weights_26_be1  : UNSIGNED(3 downto 0);
    signal int_weights_26_d1   : UNSIGNED(31 downto 0);
    signal int_weights_26_q1   : UNSIGNED(31 downto 0);
    signal int_weights_26_read : STD_LOGIC;
    signal int_weights_26_write : STD_LOGIC;
    signal int_weights_26_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_27_address0 : UNSIGNED(5 downto 0);
    signal int_weights_27_ce0  : STD_LOGIC;
    signal int_weights_27_q0   : UNSIGNED(31 downto 0);
    signal int_weights_27_address1 : UNSIGNED(5 downto 0);
    signal int_weights_27_ce1  : STD_LOGIC;
    signal int_weights_27_we1  : STD_LOGIC;
    signal int_weights_27_be1  : UNSIGNED(3 downto 0);
    signal int_weights_27_d1   : UNSIGNED(31 downto 0);
    signal int_weights_27_q1   : UNSIGNED(31 downto 0);
    signal int_weights_27_read : STD_LOGIC;
    signal int_weights_27_write : STD_LOGIC;
    signal int_weights_27_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_28_address0 : UNSIGNED(5 downto 0);
    signal int_weights_28_ce0  : STD_LOGIC;
    signal int_weights_28_q0   : UNSIGNED(31 downto 0);
    signal int_weights_28_address1 : UNSIGNED(5 downto 0);
    signal int_weights_28_ce1  : STD_LOGIC;
    signal int_weights_28_we1  : STD_LOGIC;
    signal int_weights_28_be1  : UNSIGNED(3 downto 0);
    signal int_weights_28_d1   : UNSIGNED(31 downto 0);
    signal int_weights_28_q1   : UNSIGNED(31 downto 0);
    signal int_weights_28_read : STD_LOGIC;
    signal int_weights_28_write : STD_LOGIC;
    signal int_weights_28_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_29_address0 : UNSIGNED(5 downto 0);
    signal int_weights_29_ce0  : STD_LOGIC;
    signal int_weights_29_q0   : UNSIGNED(31 downto 0);
    signal int_weights_29_address1 : UNSIGNED(5 downto 0);
    signal int_weights_29_ce1  : STD_LOGIC;
    signal int_weights_29_we1  : STD_LOGIC;
    signal int_weights_29_be1  : UNSIGNED(3 downto 0);
    signal int_weights_29_d1   : UNSIGNED(31 downto 0);
    signal int_weights_29_q1   : UNSIGNED(31 downto 0);
    signal int_weights_29_read : STD_LOGIC;
    signal int_weights_29_write : STD_LOGIC;
    signal int_weights_29_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_30_address0 : UNSIGNED(5 downto 0);
    signal int_weights_30_ce0  : STD_LOGIC;
    signal int_weights_30_q0   : UNSIGNED(31 downto 0);
    signal int_weights_30_address1 : UNSIGNED(5 downto 0);
    signal int_weights_30_ce1  : STD_LOGIC;
    signal int_weights_30_we1  : STD_LOGIC;
    signal int_weights_30_be1  : UNSIGNED(3 downto 0);
    signal int_weights_30_d1   : UNSIGNED(31 downto 0);
    signal int_weights_30_q1   : UNSIGNED(31 downto 0);
    signal int_weights_30_read : STD_LOGIC;
    signal int_weights_30_write : STD_LOGIC;
    signal int_weights_30_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_31_address0 : UNSIGNED(5 downto 0);
    signal int_weights_31_ce0  : STD_LOGIC;
    signal int_weights_31_q0   : UNSIGNED(31 downto 0);
    signal int_weights_31_address1 : UNSIGNED(5 downto 0);
    signal int_weights_31_ce1  : STD_LOGIC;
    signal int_weights_31_we1  : STD_LOGIC;
    signal int_weights_31_be1  : UNSIGNED(3 downto 0);
    signal int_weights_31_d1   : UNSIGNED(31 downto 0);
    signal int_weights_31_q1   : UNSIGNED(31 downto 0);
    signal int_weights_31_read : STD_LOGIC;
    signal int_weights_31_write : STD_LOGIC;
    signal int_weights_31_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_32_address0 : UNSIGNED(5 downto 0);
    signal int_weights_32_ce0  : STD_LOGIC;
    signal int_weights_32_q0   : UNSIGNED(31 downto 0);
    signal int_weights_32_address1 : UNSIGNED(5 downto 0);
    signal int_weights_32_ce1  : STD_LOGIC;
    signal int_weights_32_we1  : STD_LOGIC;
    signal int_weights_32_be1  : UNSIGNED(3 downto 0);
    signal int_weights_32_d1   : UNSIGNED(31 downto 0);
    signal int_weights_32_q1   : UNSIGNED(31 downto 0);
    signal int_weights_32_read : STD_LOGIC;
    signal int_weights_32_write : STD_LOGIC;
    signal int_weights_32_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_33_address0 : UNSIGNED(5 downto 0);
    signal int_weights_33_ce0  : STD_LOGIC;
    signal int_weights_33_q0   : UNSIGNED(31 downto 0);
    signal int_weights_33_address1 : UNSIGNED(5 downto 0);
    signal int_weights_33_ce1  : STD_LOGIC;
    signal int_weights_33_we1  : STD_LOGIC;
    signal int_weights_33_be1  : UNSIGNED(3 downto 0);
    signal int_weights_33_d1   : UNSIGNED(31 downto 0);
    signal int_weights_33_q1   : UNSIGNED(31 downto 0);
    signal int_weights_33_read : STD_LOGIC;
    signal int_weights_33_write : STD_LOGIC;
    signal int_weights_33_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_34_address0 : UNSIGNED(5 downto 0);
    signal int_weights_34_ce0  : STD_LOGIC;
    signal int_weights_34_q0   : UNSIGNED(31 downto 0);
    signal int_weights_34_address1 : UNSIGNED(5 downto 0);
    signal int_weights_34_ce1  : STD_LOGIC;
    signal int_weights_34_we1  : STD_LOGIC;
    signal int_weights_34_be1  : UNSIGNED(3 downto 0);
    signal int_weights_34_d1   : UNSIGNED(31 downto 0);
    signal int_weights_34_q1   : UNSIGNED(31 downto 0);
    signal int_weights_34_read : STD_LOGIC;
    signal int_weights_34_write : STD_LOGIC;
    signal int_weights_34_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_35_address0 : UNSIGNED(5 downto 0);
    signal int_weights_35_ce0  : STD_LOGIC;
    signal int_weights_35_q0   : UNSIGNED(31 downto 0);
    signal int_weights_35_address1 : UNSIGNED(5 downto 0);
    signal int_weights_35_ce1  : STD_LOGIC;
    signal int_weights_35_we1  : STD_LOGIC;
    signal int_weights_35_be1  : UNSIGNED(3 downto 0);
    signal int_weights_35_d1   : UNSIGNED(31 downto 0);
    signal int_weights_35_q1   : UNSIGNED(31 downto 0);
    signal int_weights_35_read : STD_LOGIC;
    signal int_weights_35_write : STD_LOGIC;
    signal int_weights_35_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_36_address0 : UNSIGNED(5 downto 0);
    signal int_weights_36_ce0  : STD_LOGIC;
    signal int_weights_36_q0   : UNSIGNED(31 downto 0);
    signal int_weights_36_address1 : UNSIGNED(5 downto 0);
    signal int_weights_36_ce1  : STD_LOGIC;
    signal int_weights_36_we1  : STD_LOGIC;
    signal int_weights_36_be1  : UNSIGNED(3 downto 0);
    signal int_weights_36_d1   : UNSIGNED(31 downto 0);
    signal int_weights_36_q1   : UNSIGNED(31 downto 0);
    signal int_weights_36_read : STD_LOGIC;
    signal int_weights_36_write : STD_LOGIC;
    signal int_weights_36_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_37_address0 : UNSIGNED(5 downto 0);
    signal int_weights_37_ce0  : STD_LOGIC;
    signal int_weights_37_q0   : UNSIGNED(31 downto 0);
    signal int_weights_37_address1 : UNSIGNED(5 downto 0);
    signal int_weights_37_ce1  : STD_LOGIC;
    signal int_weights_37_we1  : STD_LOGIC;
    signal int_weights_37_be1  : UNSIGNED(3 downto 0);
    signal int_weights_37_d1   : UNSIGNED(31 downto 0);
    signal int_weights_37_q1   : UNSIGNED(31 downto 0);
    signal int_weights_37_read : STD_LOGIC;
    signal int_weights_37_write : STD_LOGIC;
    signal int_weights_37_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_38_address0 : UNSIGNED(5 downto 0);
    signal int_weights_38_ce0  : STD_LOGIC;
    signal int_weights_38_q0   : UNSIGNED(31 downto 0);
    signal int_weights_38_address1 : UNSIGNED(5 downto 0);
    signal int_weights_38_ce1  : STD_LOGIC;
    signal int_weights_38_we1  : STD_LOGIC;
    signal int_weights_38_be1  : UNSIGNED(3 downto 0);
    signal int_weights_38_d1   : UNSIGNED(31 downto 0);
    signal int_weights_38_q1   : UNSIGNED(31 downto 0);
    signal int_weights_38_read : STD_LOGIC;
    signal int_weights_38_write : STD_LOGIC;
    signal int_weights_38_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_39_address0 : UNSIGNED(5 downto 0);
    signal int_weights_39_ce0  : STD_LOGIC;
    signal int_weights_39_q0   : UNSIGNED(31 downto 0);
    signal int_weights_39_address1 : UNSIGNED(5 downto 0);
    signal int_weights_39_ce1  : STD_LOGIC;
    signal int_weights_39_we1  : STD_LOGIC;
    signal int_weights_39_be1  : UNSIGNED(3 downto 0);
    signal int_weights_39_d1   : UNSIGNED(31 downto 0);
    signal int_weights_39_q1   : UNSIGNED(31 downto 0);
    signal int_weights_39_read : STD_LOGIC;
    signal int_weights_39_write : STD_LOGIC;
    signal int_weights_39_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_40_address0 : UNSIGNED(5 downto 0);
    signal int_weights_40_ce0  : STD_LOGIC;
    signal int_weights_40_q0   : UNSIGNED(31 downto 0);
    signal int_weights_40_address1 : UNSIGNED(5 downto 0);
    signal int_weights_40_ce1  : STD_LOGIC;
    signal int_weights_40_we1  : STD_LOGIC;
    signal int_weights_40_be1  : UNSIGNED(3 downto 0);
    signal int_weights_40_d1   : UNSIGNED(31 downto 0);
    signal int_weights_40_q1   : UNSIGNED(31 downto 0);
    signal int_weights_40_read : STD_LOGIC;
    signal int_weights_40_write : STD_LOGIC;
    signal int_weights_40_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_41_address0 : UNSIGNED(5 downto 0);
    signal int_weights_41_ce0  : STD_LOGIC;
    signal int_weights_41_q0   : UNSIGNED(31 downto 0);
    signal int_weights_41_address1 : UNSIGNED(5 downto 0);
    signal int_weights_41_ce1  : STD_LOGIC;
    signal int_weights_41_we1  : STD_LOGIC;
    signal int_weights_41_be1  : UNSIGNED(3 downto 0);
    signal int_weights_41_d1   : UNSIGNED(31 downto 0);
    signal int_weights_41_q1   : UNSIGNED(31 downto 0);
    signal int_weights_41_read : STD_LOGIC;
    signal int_weights_41_write : STD_LOGIC;
    signal int_weights_41_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_42_address0 : UNSIGNED(5 downto 0);
    signal int_weights_42_ce0  : STD_LOGIC;
    signal int_weights_42_q0   : UNSIGNED(31 downto 0);
    signal int_weights_42_address1 : UNSIGNED(5 downto 0);
    signal int_weights_42_ce1  : STD_LOGIC;
    signal int_weights_42_we1  : STD_LOGIC;
    signal int_weights_42_be1  : UNSIGNED(3 downto 0);
    signal int_weights_42_d1   : UNSIGNED(31 downto 0);
    signal int_weights_42_q1   : UNSIGNED(31 downto 0);
    signal int_weights_42_read : STD_LOGIC;
    signal int_weights_42_write : STD_LOGIC;
    signal int_weights_42_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_43_address0 : UNSIGNED(5 downto 0);
    signal int_weights_43_ce0  : STD_LOGIC;
    signal int_weights_43_q0   : UNSIGNED(31 downto 0);
    signal int_weights_43_address1 : UNSIGNED(5 downto 0);
    signal int_weights_43_ce1  : STD_LOGIC;
    signal int_weights_43_we1  : STD_LOGIC;
    signal int_weights_43_be1  : UNSIGNED(3 downto 0);
    signal int_weights_43_d1   : UNSIGNED(31 downto 0);
    signal int_weights_43_q1   : UNSIGNED(31 downto 0);
    signal int_weights_43_read : STD_LOGIC;
    signal int_weights_43_write : STD_LOGIC;
    signal int_weights_43_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_44_address0 : UNSIGNED(5 downto 0);
    signal int_weights_44_ce0  : STD_LOGIC;
    signal int_weights_44_q0   : UNSIGNED(31 downto 0);
    signal int_weights_44_address1 : UNSIGNED(5 downto 0);
    signal int_weights_44_ce1  : STD_LOGIC;
    signal int_weights_44_we1  : STD_LOGIC;
    signal int_weights_44_be1  : UNSIGNED(3 downto 0);
    signal int_weights_44_d1   : UNSIGNED(31 downto 0);
    signal int_weights_44_q1   : UNSIGNED(31 downto 0);
    signal int_weights_44_read : STD_LOGIC;
    signal int_weights_44_write : STD_LOGIC;
    signal int_weights_44_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_45_address0 : UNSIGNED(5 downto 0);
    signal int_weights_45_ce0  : STD_LOGIC;
    signal int_weights_45_q0   : UNSIGNED(31 downto 0);
    signal int_weights_45_address1 : UNSIGNED(5 downto 0);
    signal int_weights_45_ce1  : STD_LOGIC;
    signal int_weights_45_we1  : STD_LOGIC;
    signal int_weights_45_be1  : UNSIGNED(3 downto 0);
    signal int_weights_45_d1   : UNSIGNED(31 downto 0);
    signal int_weights_45_q1   : UNSIGNED(31 downto 0);
    signal int_weights_45_read : STD_LOGIC;
    signal int_weights_45_write : STD_LOGIC;
    signal int_weights_45_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_46_address0 : UNSIGNED(5 downto 0);
    signal int_weights_46_ce0  : STD_LOGIC;
    signal int_weights_46_q0   : UNSIGNED(31 downto 0);
    signal int_weights_46_address1 : UNSIGNED(5 downto 0);
    signal int_weights_46_ce1  : STD_LOGIC;
    signal int_weights_46_we1  : STD_LOGIC;
    signal int_weights_46_be1  : UNSIGNED(3 downto 0);
    signal int_weights_46_d1   : UNSIGNED(31 downto 0);
    signal int_weights_46_q1   : UNSIGNED(31 downto 0);
    signal int_weights_46_read : STD_LOGIC;
    signal int_weights_46_write : STD_LOGIC;
    signal int_weights_46_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_47_address0 : UNSIGNED(5 downto 0);
    signal int_weights_47_ce0  : STD_LOGIC;
    signal int_weights_47_q0   : UNSIGNED(31 downto 0);
    signal int_weights_47_address1 : UNSIGNED(5 downto 0);
    signal int_weights_47_ce1  : STD_LOGIC;
    signal int_weights_47_we1  : STD_LOGIC;
    signal int_weights_47_be1  : UNSIGNED(3 downto 0);
    signal int_weights_47_d1   : UNSIGNED(31 downto 0);
    signal int_weights_47_q1   : UNSIGNED(31 downto 0);
    signal int_weights_47_read : STD_LOGIC;
    signal int_weights_47_write : STD_LOGIC;
    signal int_weights_47_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_48_address0 : UNSIGNED(5 downto 0);
    signal int_weights_48_ce0  : STD_LOGIC;
    signal int_weights_48_q0   : UNSIGNED(31 downto 0);
    signal int_weights_48_address1 : UNSIGNED(5 downto 0);
    signal int_weights_48_ce1  : STD_LOGIC;
    signal int_weights_48_we1  : STD_LOGIC;
    signal int_weights_48_be1  : UNSIGNED(3 downto 0);
    signal int_weights_48_d1   : UNSIGNED(31 downto 0);
    signal int_weights_48_q1   : UNSIGNED(31 downto 0);
    signal int_weights_48_read : STD_LOGIC;
    signal int_weights_48_write : STD_LOGIC;
    signal int_weights_48_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_49_address0 : UNSIGNED(5 downto 0);
    signal int_weights_49_ce0  : STD_LOGIC;
    signal int_weights_49_q0   : UNSIGNED(31 downto 0);
    signal int_weights_49_address1 : UNSIGNED(5 downto 0);
    signal int_weights_49_ce1  : STD_LOGIC;
    signal int_weights_49_we1  : STD_LOGIC;
    signal int_weights_49_be1  : UNSIGNED(3 downto 0);
    signal int_weights_49_d1   : UNSIGNED(31 downto 0);
    signal int_weights_49_q1   : UNSIGNED(31 downto 0);
    signal int_weights_49_read : STD_LOGIC;
    signal int_weights_49_write : STD_LOGIC;
    signal int_weights_49_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_50_address0 : UNSIGNED(5 downto 0);
    signal int_weights_50_ce0  : STD_LOGIC;
    signal int_weights_50_q0   : UNSIGNED(31 downto 0);
    signal int_weights_50_address1 : UNSIGNED(5 downto 0);
    signal int_weights_50_ce1  : STD_LOGIC;
    signal int_weights_50_we1  : STD_LOGIC;
    signal int_weights_50_be1  : UNSIGNED(3 downto 0);
    signal int_weights_50_d1   : UNSIGNED(31 downto 0);
    signal int_weights_50_q1   : UNSIGNED(31 downto 0);
    signal int_weights_50_read : STD_LOGIC;
    signal int_weights_50_write : STD_LOGIC;
    signal int_weights_50_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_51_address0 : UNSIGNED(5 downto 0);
    signal int_weights_51_ce0  : STD_LOGIC;
    signal int_weights_51_q0   : UNSIGNED(31 downto 0);
    signal int_weights_51_address1 : UNSIGNED(5 downto 0);
    signal int_weights_51_ce1  : STD_LOGIC;
    signal int_weights_51_we1  : STD_LOGIC;
    signal int_weights_51_be1  : UNSIGNED(3 downto 0);
    signal int_weights_51_d1   : UNSIGNED(31 downto 0);
    signal int_weights_51_q1   : UNSIGNED(31 downto 0);
    signal int_weights_51_read : STD_LOGIC;
    signal int_weights_51_write : STD_LOGIC;
    signal int_weights_51_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_52_address0 : UNSIGNED(5 downto 0);
    signal int_weights_52_ce0  : STD_LOGIC;
    signal int_weights_52_q0   : UNSIGNED(31 downto 0);
    signal int_weights_52_address1 : UNSIGNED(5 downto 0);
    signal int_weights_52_ce1  : STD_LOGIC;
    signal int_weights_52_we1  : STD_LOGIC;
    signal int_weights_52_be1  : UNSIGNED(3 downto 0);
    signal int_weights_52_d1   : UNSIGNED(31 downto 0);
    signal int_weights_52_q1   : UNSIGNED(31 downto 0);
    signal int_weights_52_read : STD_LOGIC;
    signal int_weights_52_write : STD_LOGIC;
    signal int_weights_52_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_53_address0 : UNSIGNED(5 downto 0);
    signal int_weights_53_ce0  : STD_LOGIC;
    signal int_weights_53_q0   : UNSIGNED(31 downto 0);
    signal int_weights_53_address1 : UNSIGNED(5 downto 0);
    signal int_weights_53_ce1  : STD_LOGIC;
    signal int_weights_53_we1  : STD_LOGIC;
    signal int_weights_53_be1  : UNSIGNED(3 downto 0);
    signal int_weights_53_d1   : UNSIGNED(31 downto 0);
    signal int_weights_53_q1   : UNSIGNED(31 downto 0);
    signal int_weights_53_read : STD_LOGIC;
    signal int_weights_53_write : STD_LOGIC;
    signal int_weights_53_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_54_address0 : UNSIGNED(5 downto 0);
    signal int_weights_54_ce0  : STD_LOGIC;
    signal int_weights_54_q0   : UNSIGNED(31 downto 0);
    signal int_weights_54_address1 : UNSIGNED(5 downto 0);
    signal int_weights_54_ce1  : STD_LOGIC;
    signal int_weights_54_we1  : STD_LOGIC;
    signal int_weights_54_be1  : UNSIGNED(3 downto 0);
    signal int_weights_54_d1   : UNSIGNED(31 downto 0);
    signal int_weights_54_q1   : UNSIGNED(31 downto 0);
    signal int_weights_54_read : STD_LOGIC;
    signal int_weights_54_write : STD_LOGIC;
    signal int_weights_54_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_55_address0 : UNSIGNED(5 downto 0);
    signal int_weights_55_ce0  : STD_LOGIC;
    signal int_weights_55_q0   : UNSIGNED(31 downto 0);
    signal int_weights_55_address1 : UNSIGNED(5 downto 0);
    signal int_weights_55_ce1  : STD_LOGIC;
    signal int_weights_55_we1  : STD_LOGIC;
    signal int_weights_55_be1  : UNSIGNED(3 downto 0);
    signal int_weights_55_d1   : UNSIGNED(31 downto 0);
    signal int_weights_55_q1   : UNSIGNED(31 downto 0);
    signal int_weights_55_read : STD_LOGIC;
    signal int_weights_55_write : STD_LOGIC;
    signal int_weights_55_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_56_address0 : UNSIGNED(5 downto 0);
    signal int_weights_56_ce0  : STD_LOGIC;
    signal int_weights_56_q0   : UNSIGNED(31 downto 0);
    signal int_weights_56_address1 : UNSIGNED(5 downto 0);
    signal int_weights_56_ce1  : STD_LOGIC;
    signal int_weights_56_we1  : STD_LOGIC;
    signal int_weights_56_be1  : UNSIGNED(3 downto 0);
    signal int_weights_56_d1   : UNSIGNED(31 downto 0);
    signal int_weights_56_q1   : UNSIGNED(31 downto 0);
    signal int_weights_56_read : STD_LOGIC;
    signal int_weights_56_write : STD_LOGIC;
    signal int_weights_56_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_57_address0 : UNSIGNED(5 downto 0);
    signal int_weights_57_ce0  : STD_LOGIC;
    signal int_weights_57_q0   : UNSIGNED(31 downto 0);
    signal int_weights_57_address1 : UNSIGNED(5 downto 0);
    signal int_weights_57_ce1  : STD_LOGIC;
    signal int_weights_57_we1  : STD_LOGIC;
    signal int_weights_57_be1  : UNSIGNED(3 downto 0);
    signal int_weights_57_d1   : UNSIGNED(31 downto 0);
    signal int_weights_57_q1   : UNSIGNED(31 downto 0);
    signal int_weights_57_read : STD_LOGIC;
    signal int_weights_57_write : STD_LOGIC;
    signal int_weights_57_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_58_address0 : UNSIGNED(5 downto 0);
    signal int_weights_58_ce0  : STD_LOGIC;
    signal int_weights_58_q0   : UNSIGNED(31 downto 0);
    signal int_weights_58_address1 : UNSIGNED(5 downto 0);
    signal int_weights_58_ce1  : STD_LOGIC;
    signal int_weights_58_we1  : STD_LOGIC;
    signal int_weights_58_be1  : UNSIGNED(3 downto 0);
    signal int_weights_58_d1   : UNSIGNED(31 downto 0);
    signal int_weights_58_q1   : UNSIGNED(31 downto 0);
    signal int_weights_58_read : STD_LOGIC;
    signal int_weights_58_write : STD_LOGIC;
    signal int_weights_58_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_59_address0 : UNSIGNED(5 downto 0);
    signal int_weights_59_ce0  : STD_LOGIC;
    signal int_weights_59_q0   : UNSIGNED(31 downto 0);
    signal int_weights_59_address1 : UNSIGNED(5 downto 0);
    signal int_weights_59_ce1  : STD_LOGIC;
    signal int_weights_59_we1  : STD_LOGIC;
    signal int_weights_59_be1  : UNSIGNED(3 downto 0);
    signal int_weights_59_d1   : UNSIGNED(31 downto 0);
    signal int_weights_59_q1   : UNSIGNED(31 downto 0);
    signal int_weights_59_read : STD_LOGIC;
    signal int_weights_59_write : STD_LOGIC;
    signal int_weights_59_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_60_address0 : UNSIGNED(5 downto 0);
    signal int_weights_60_ce0  : STD_LOGIC;
    signal int_weights_60_q0   : UNSIGNED(31 downto 0);
    signal int_weights_60_address1 : UNSIGNED(5 downto 0);
    signal int_weights_60_ce1  : STD_LOGIC;
    signal int_weights_60_we1  : STD_LOGIC;
    signal int_weights_60_be1  : UNSIGNED(3 downto 0);
    signal int_weights_60_d1   : UNSIGNED(31 downto 0);
    signal int_weights_60_q1   : UNSIGNED(31 downto 0);
    signal int_weights_60_read : STD_LOGIC;
    signal int_weights_60_write : STD_LOGIC;
    signal int_weights_60_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_61_address0 : UNSIGNED(5 downto 0);
    signal int_weights_61_ce0  : STD_LOGIC;
    signal int_weights_61_q0   : UNSIGNED(31 downto 0);
    signal int_weights_61_address1 : UNSIGNED(5 downto 0);
    signal int_weights_61_ce1  : STD_LOGIC;
    signal int_weights_61_we1  : STD_LOGIC;
    signal int_weights_61_be1  : UNSIGNED(3 downto 0);
    signal int_weights_61_d1   : UNSIGNED(31 downto 0);
    signal int_weights_61_q1   : UNSIGNED(31 downto 0);
    signal int_weights_61_read : STD_LOGIC;
    signal int_weights_61_write : STD_LOGIC;
    signal int_weights_61_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_62_address0 : UNSIGNED(5 downto 0);
    signal int_weights_62_ce0  : STD_LOGIC;
    signal int_weights_62_q0   : UNSIGNED(31 downto 0);
    signal int_weights_62_address1 : UNSIGNED(5 downto 0);
    signal int_weights_62_ce1  : STD_LOGIC;
    signal int_weights_62_we1  : STD_LOGIC;
    signal int_weights_62_be1  : UNSIGNED(3 downto 0);
    signal int_weights_62_d1   : UNSIGNED(31 downto 0);
    signal int_weights_62_q1   : UNSIGNED(31 downto 0);
    signal int_weights_62_read : STD_LOGIC;
    signal int_weights_62_write : STD_LOGIC;
    signal int_weights_62_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_63_address0 : UNSIGNED(5 downto 0);
    signal int_weights_63_ce0  : STD_LOGIC;
    signal int_weights_63_q0   : UNSIGNED(31 downto 0);
    signal int_weights_63_address1 : UNSIGNED(5 downto 0);
    signal int_weights_63_ce1  : STD_LOGIC;
    signal int_weights_63_we1  : STD_LOGIC;
    signal int_weights_63_be1  : UNSIGNED(3 downto 0);
    signal int_weights_63_d1   : UNSIGNED(31 downto 0);
    signal int_weights_63_q1   : UNSIGNED(31 downto 0);
    signal int_weights_63_read : STD_LOGIC;
    signal int_weights_63_write : STD_LOGIC;
    signal int_weights_63_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_64_address0 : UNSIGNED(5 downto 0);
    signal int_weights_64_ce0  : STD_LOGIC;
    signal int_weights_64_q0   : UNSIGNED(31 downto 0);
    signal int_weights_64_address1 : UNSIGNED(5 downto 0);
    signal int_weights_64_ce1  : STD_LOGIC;
    signal int_weights_64_we1  : STD_LOGIC;
    signal int_weights_64_be1  : UNSIGNED(3 downto 0);
    signal int_weights_64_d1   : UNSIGNED(31 downto 0);
    signal int_weights_64_q1   : UNSIGNED(31 downto 0);
    signal int_weights_64_read : STD_LOGIC;
    signal int_weights_64_write : STD_LOGIC;
    signal int_weights_64_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_65_address0 : UNSIGNED(5 downto 0);
    signal int_weights_65_ce0  : STD_LOGIC;
    signal int_weights_65_q0   : UNSIGNED(31 downto 0);
    signal int_weights_65_address1 : UNSIGNED(5 downto 0);
    signal int_weights_65_ce1  : STD_LOGIC;
    signal int_weights_65_we1  : STD_LOGIC;
    signal int_weights_65_be1  : UNSIGNED(3 downto 0);
    signal int_weights_65_d1   : UNSIGNED(31 downto 0);
    signal int_weights_65_q1   : UNSIGNED(31 downto 0);
    signal int_weights_65_read : STD_LOGIC;
    signal int_weights_65_write : STD_LOGIC;
    signal int_weights_65_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_66_address0 : UNSIGNED(5 downto 0);
    signal int_weights_66_ce0  : STD_LOGIC;
    signal int_weights_66_q0   : UNSIGNED(31 downto 0);
    signal int_weights_66_address1 : UNSIGNED(5 downto 0);
    signal int_weights_66_ce1  : STD_LOGIC;
    signal int_weights_66_we1  : STD_LOGIC;
    signal int_weights_66_be1  : UNSIGNED(3 downto 0);
    signal int_weights_66_d1   : UNSIGNED(31 downto 0);
    signal int_weights_66_q1   : UNSIGNED(31 downto 0);
    signal int_weights_66_read : STD_LOGIC;
    signal int_weights_66_write : STD_LOGIC;
    signal int_weights_66_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_67_address0 : UNSIGNED(5 downto 0);
    signal int_weights_67_ce0  : STD_LOGIC;
    signal int_weights_67_q0   : UNSIGNED(31 downto 0);
    signal int_weights_67_address1 : UNSIGNED(5 downto 0);
    signal int_weights_67_ce1  : STD_LOGIC;
    signal int_weights_67_we1  : STD_LOGIC;
    signal int_weights_67_be1  : UNSIGNED(3 downto 0);
    signal int_weights_67_d1   : UNSIGNED(31 downto 0);
    signal int_weights_67_q1   : UNSIGNED(31 downto 0);
    signal int_weights_67_read : STD_LOGIC;
    signal int_weights_67_write : STD_LOGIC;
    signal int_weights_67_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_68_address0 : UNSIGNED(5 downto 0);
    signal int_weights_68_ce0  : STD_LOGIC;
    signal int_weights_68_q0   : UNSIGNED(31 downto 0);
    signal int_weights_68_address1 : UNSIGNED(5 downto 0);
    signal int_weights_68_ce1  : STD_LOGIC;
    signal int_weights_68_we1  : STD_LOGIC;
    signal int_weights_68_be1  : UNSIGNED(3 downto 0);
    signal int_weights_68_d1   : UNSIGNED(31 downto 0);
    signal int_weights_68_q1   : UNSIGNED(31 downto 0);
    signal int_weights_68_read : STD_LOGIC;
    signal int_weights_68_write : STD_LOGIC;
    signal int_weights_68_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_69_address0 : UNSIGNED(5 downto 0);
    signal int_weights_69_ce0  : STD_LOGIC;
    signal int_weights_69_q0   : UNSIGNED(31 downto 0);
    signal int_weights_69_address1 : UNSIGNED(5 downto 0);
    signal int_weights_69_ce1  : STD_LOGIC;
    signal int_weights_69_we1  : STD_LOGIC;
    signal int_weights_69_be1  : UNSIGNED(3 downto 0);
    signal int_weights_69_d1   : UNSIGNED(31 downto 0);
    signal int_weights_69_q1   : UNSIGNED(31 downto 0);
    signal int_weights_69_read : STD_LOGIC;
    signal int_weights_69_write : STD_LOGIC;
    signal int_weights_69_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_70_address0 : UNSIGNED(5 downto 0);
    signal int_weights_70_ce0  : STD_LOGIC;
    signal int_weights_70_q0   : UNSIGNED(31 downto 0);
    signal int_weights_70_address1 : UNSIGNED(5 downto 0);
    signal int_weights_70_ce1  : STD_LOGIC;
    signal int_weights_70_we1  : STD_LOGIC;
    signal int_weights_70_be1  : UNSIGNED(3 downto 0);
    signal int_weights_70_d1   : UNSIGNED(31 downto 0);
    signal int_weights_70_q1   : UNSIGNED(31 downto 0);
    signal int_weights_70_read : STD_LOGIC;
    signal int_weights_70_write : STD_LOGIC;
    signal int_weights_70_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_71_address0 : UNSIGNED(5 downto 0);
    signal int_weights_71_ce0  : STD_LOGIC;
    signal int_weights_71_q0   : UNSIGNED(31 downto 0);
    signal int_weights_71_address1 : UNSIGNED(5 downto 0);
    signal int_weights_71_ce1  : STD_LOGIC;
    signal int_weights_71_we1  : STD_LOGIC;
    signal int_weights_71_be1  : UNSIGNED(3 downto 0);
    signal int_weights_71_d1   : UNSIGNED(31 downto 0);
    signal int_weights_71_q1   : UNSIGNED(31 downto 0);
    signal int_weights_71_read : STD_LOGIC;
    signal int_weights_71_write : STD_LOGIC;
    signal int_weights_71_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_72_address0 : UNSIGNED(5 downto 0);
    signal int_weights_72_ce0  : STD_LOGIC;
    signal int_weights_72_q0   : UNSIGNED(31 downto 0);
    signal int_weights_72_address1 : UNSIGNED(5 downto 0);
    signal int_weights_72_ce1  : STD_LOGIC;
    signal int_weights_72_we1  : STD_LOGIC;
    signal int_weights_72_be1  : UNSIGNED(3 downto 0);
    signal int_weights_72_d1   : UNSIGNED(31 downto 0);
    signal int_weights_72_q1   : UNSIGNED(31 downto 0);
    signal int_weights_72_read : STD_LOGIC;
    signal int_weights_72_write : STD_LOGIC;
    signal int_weights_72_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_73_address0 : UNSIGNED(5 downto 0);
    signal int_weights_73_ce0  : STD_LOGIC;
    signal int_weights_73_q0   : UNSIGNED(31 downto 0);
    signal int_weights_73_address1 : UNSIGNED(5 downto 0);
    signal int_weights_73_ce1  : STD_LOGIC;
    signal int_weights_73_we1  : STD_LOGIC;
    signal int_weights_73_be1  : UNSIGNED(3 downto 0);
    signal int_weights_73_d1   : UNSIGNED(31 downto 0);
    signal int_weights_73_q1   : UNSIGNED(31 downto 0);
    signal int_weights_73_read : STD_LOGIC;
    signal int_weights_73_write : STD_LOGIC;
    signal int_weights_73_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_74_address0 : UNSIGNED(5 downto 0);
    signal int_weights_74_ce0  : STD_LOGIC;
    signal int_weights_74_q0   : UNSIGNED(31 downto 0);
    signal int_weights_74_address1 : UNSIGNED(5 downto 0);
    signal int_weights_74_ce1  : STD_LOGIC;
    signal int_weights_74_we1  : STD_LOGIC;
    signal int_weights_74_be1  : UNSIGNED(3 downto 0);
    signal int_weights_74_d1   : UNSIGNED(31 downto 0);
    signal int_weights_74_q1   : UNSIGNED(31 downto 0);
    signal int_weights_74_read : STD_LOGIC;
    signal int_weights_74_write : STD_LOGIC;
    signal int_weights_74_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_75_address0 : UNSIGNED(5 downto 0);
    signal int_weights_75_ce0  : STD_LOGIC;
    signal int_weights_75_q0   : UNSIGNED(31 downto 0);
    signal int_weights_75_address1 : UNSIGNED(5 downto 0);
    signal int_weights_75_ce1  : STD_LOGIC;
    signal int_weights_75_we1  : STD_LOGIC;
    signal int_weights_75_be1  : UNSIGNED(3 downto 0);
    signal int_weights_75_d1   : UNSIGNED(31 downto 0);
    signal int_weights_75_q1   : UNSIGNED(31 downto 0);
    signal int_weights_75_read : STD_LOGIC;
    signal int_weights_75_write : STD_LOGIC;
    signal int_weights_75_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_76_address0 : UNSIGNED(5 downto 0);
    signal int_weights_76_ce0  : STD_LOGIC;
    signal int_weights_76_q0   : UNSIGNED(31 downto 0);
    signal int_weights_76_address1 : UNSIGNED(5 downto 0);
    signal int_weights_76_ce1  : STD_LOGIC;
    signal int_weights_76_we1  : STD_LOGIC;
    signal int_weights_76_be1  : UNSIGNED(3 downto 0);
    signal int_weights_76_d1   : UNSIGNED(31 downto 0);
    signal int_weights_76_q1   : UNSIGNED(31 downto 0);
    signal int_weights_76_read : STD_LOGIC;
    signal int_weights_76_write : STD_LOGIC;
    signal int_weights_76_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_77_address0 : UNSIGNED(5 downto 0);
    signal int_weights_77_ce0  : STD_LOGIC;
    signal int_weights_77_q0   : UNSIGNED(31 downto 0);
    signal int_weights_77_address1 : UNSIGNED(5 downto 0);
    signal int_weights_77_ce1  : STD_LOGIC;
    signal int_weights_77_we1  : STD_LOGIC;
    signal int_weights_77_be1  : UNSIGNED(3 downto 0);
    signal int_weights_77_d1   : UNSIGNED(31 downto 0);
    signal int_weights_77_q1   : UNSIGNED(31 downto 0);
    signal int_weights_77_read : STD_LOGIC;
    signal int_weights_77_write : STD_LOGIC;
    signal int_weights_77_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_78_address0 : UNSIGNED(5 downto 0);
    signal int_weights_78_ce0  : STD_LOGIC;
    signal int_weights_78_q0   : UNSIGNED(31 downto 0);
    signal int_weights_78_address1 : UNSIGNED(5 downto 0);
    signal int_weights_78_ce1  : STD_LOGIC;
    signal int_weights_78_we1  : STD_LOGIC;
    signal int_weights_78_be1  : UNSIGNED(3 downto 0);
    signal int_weights_78_d1   : UNSIGNED(31 downto 0);
    signal int_weights_78_q1   : UNSIGNED(31 downto 0);
    signal int_weights_78_read : STD_LOGIC;
    signal int_weights_78_write : STD_LOGIC;
    signal int_weights_78_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_79_address0 : UNSIGNED(5 downto 0);
    signal int_weights_79_ce0  : STD_LOGIC;
    signal int_weights_79_q0   : UNSIGNED(31 downto 0);
    signal int_weights_79_address1 : UNSIGNED(5 downto 0);
    signal int_weights_79_ce1  : STD_LOGIC;
    signal int_weights_79_we1  : STD_LOGIC;
    signal int_weights_79_be1  : UNSIGNED(3 downto 0);
    signal int_weights_79_d1   : UNSIGNED(31 downto 0);
    signal int_weights_79_q1   : UNSIGNED(31 downto 0);
    signal int_weights_79_read : STD_LOGIC;
    signal int_weights_79_write : STD_LOGIC;
    signal int_weights_79_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_80_address0 : UNSIGNED(5 downto 0);
    signal int_weights_80_ce0  : STD_LOGIC;
    signal int_weights_80_q0   : UNSIGNED(31 downto 0);
    signal int_weights_80_address1 : UNSIGNED(5 downto 0);
    signal int_weights_80_ce1  : STD_LOGIC;
    signal int_weights_80_we1  : STD_LOGIC;
    signal int_weights_80_be1  : UNSIGNED(3 downto 0);
    signal int_weights_80_d1   : UNSIGNED(31 downto 0);
    signal int_weights_80_q1   : UNSIGNED(31 downto 0);
    signal int_weights_80_read : STD_LOGIC;
    signal int_weights_80_write : STD_LOGIC;
    signal int_weights_80_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_81_address0 : UNSIGNED(5 downto 0);
    signal int_weights_81_ce0  : STD_LOGIC;
    signal int_weights_81_q0   : UNSIGNED(31 downto 0);
    signal int_weights_81_address1 : UNSIGNED(5 downto 0);
    signal int_weights_81_ce1  : STD_LOGIC;
    signal int_weights_81_we1  : STD_LOGIC;
    signal int_weights_81_be1  : UNSIGNED(3 downto 0);
    signal int_weights_81_d1   : UNSIGNED(31 downto 0);
    signal int_weights_81_q1   : UNSIGNED(31 downto 0);
    signal int_weights_81_read : STD_LOGIC;
    signal int_weights_81_write : STD_LOGIC;
    signal int_weights_81_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_82_address0 : UNSIGNED(5 downto 0);
    signal int_weights_82_ce0  : STD_LOGIC;
    signal int_weights_82_q0   : UNSIGNED(31 downto 0);
    signal int_weights_82_address1 : UNSIGNED(5 downto 0);
    signal int_weights_82_ce1  : STD_LOGIC;
    signal int_weights_82_we1  : STD_LOGIC;
    signal int_weights_82_be1  : UNSIGNED(3 downto 0);
    signal int_weights_82_d1   : UNSIGNED(31 downto 0);
    signal int_weights_82_q1   : UNSIGNED(31 downto 0);
    signal int_weights_82_read : STD_LOGIC;
    signal int_weights_82_write : STD_LOGIC;
    signal int_weights_82_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_83_address0 : UNSIGNED(5 downto 0);
    signal int_weights_83_ce0  : STD_LOGIC;
    signal int_weights_83_q0   : UNSIGNED(31 downto 0);
    signal int_weights_83_address1 : UNSIGNED(5 downto 0);
    signal int_weights_83_ce1  : STD_LOGIC;
    signal int_weights_83_we1  : STD_LOGIC;
    signal int_weights_83_be1  : UNSIGNED(3 downto 0);
    signal int_weights_83_d1   : UNSIGNED(31 downto 0);
    signal int_weights_83_q1   : UNSIGNED(31 downto 0);
    signal int_weights_83_read : STD_LOGIC;
    signal int_weights_83_write : STD_LOGIC;
    signal int_weights_83_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_84_address0 : UNSIGNED(5 downto 0);
    signal int_weights_84_ce0  : STD_LOGIC;
    signal int_weights_84_q0   : UNSIGNED(31 downto 0);
    signal int_weights_84_address1 : UNSIGNED(5 downto 0);
    signal int_weights_84_ce1  : STD_LOGIC;
    signal int_weights_84_we1  : STD_LOGIC;
    signal int_weights_84_be1  : UNSIGNED(3 downto 0);
    signal int_weights_84_d1   : UNSIGNED(31 downto 0);
    signal int_weights_84_q1   : UNSIGNED(31 downto 0);
    signal int_weights_84_read : STD_LOGIC;
    signal int_weights_84_write : STD_LOGIC;
    signal int_weights_84_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_85_address0 : UNSIGNED(5 downto 0);
    signal int_weights_85_ce0  : STD_LOGIC;
    signal int_weights_85_q0   : UNSIGNED(31 downto 0);
    signal int_weights_85_address1 : UNSIGNED(5 downto 0);
    signal int_weights_85_ce1  : STD_LOGIC;
    signal int_weights_85_we1  : STD_LOGIC;
    signal int_weights_85_be1  : UNSIGNED(3 downto 0);
    signal int_weights_85_d1   : UNSIGNED(31 downto 0);
    signal int_weights_85_q1   : UNSIGNED(31 downto 0);
    signal int_weights_85_read : STD_LOGIC;
    signal int_weights_85_write : STD_LOGIC;
    signal int_weights_85_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_86_address0 : UNSIGNED(5 downto 0);
    signal int_weights_86_ce0  : STD_LOGIC;
    signal int_weights_86_q0   : UNSIGNED(31 downto 0);
    signal int_weights_86_address1 : UNSIGNED(5 downto 0);
    signal int_weights_86_ce1  : STD_LOGIC;
    signal int_weights_86_we1  : STD_LOGIC;
    signal int_weights_86_be1  : UNSIGNED(3 downto 0);
    signal int_weights_86_d1   : UNSIGNED(31 downto 0);
    signal int_weights_86_q1   : UNSIGNED(31 downto 0);
    signal int_weights_86_read : STD_LOGIC;
    signal int_weights_86_write : STD_LOGIC;
    signal int_weights_86_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_87_address0 : UNSIGNED(5 downto 0);
    signal int_weights_87_ce0  : STD_LOGIC;
    signal int_weights_87_q0   : UNSIGNED(31 downto 0);
    signal int_weights_87_address1 : UNSIGNED(5 downto 0);
    signal int_weights_87_ce1  : STD_LOGIC;
    signal int_weights_87_we1  : STD_LOGIC;
    signal int_weights_87_be1  : UNSIGNED(3 downto 0);
    signal int_weights_87_d1   : UNSIGNED(31 downto 0);
    signal int_weights_87_q1   : UNSIGNED(31 downto 0);
    signal int_weights_87_read : STD_LOGIC;
    signal int_weights_87_write : STD_LOGIC;
    signal int_weights_87_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_88_address0 : UNSIGNED(5 downto 0);
    signal int_weights_88_ce0  : STD_LOGIC;
    signal int_weights_88_q0   : UNSIGNED(31 downto 0);
    signal int_weights_88_address1 : UNSIGNED(5 downto 0);
    signal int_weights_88_ce1  : STD_LOGIC;
    signal int_weights_88_we1  : STD_LOGIC;
    signal int_weights_88_be1  : UNSIGNED(3 downto 0);
    signal int_weights_88_d1   : UNSIGNED(31 downto 0);
    signal int_weights_88_q1   : UNSIGNED(31 downto 0);
    signal int_weights_88_read : STD_LOGIC;
    signal int_weights_88_write : STD_LOGIC;
    signal int_weights_88_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_89_address0 : UNSIGNED(5 downto 0);
    signal int_weights_89_ce0  : STD_LOGIC;
    signal int_weights_89_q0   : UNSIGNED(31 downto 0);
    signal int_weights_89_address1 : UNSIGNED(5 downto 0);
    signal int_weights_89_ce1  : STD_LOGIC;
    signal int_weights_89_we1  : STD_LOGIC;
    signal int_weights_89_be1  : UNSIGNED(3 downto 0);
    signal int_weights_89_d1   : UNSIGNED(31 downto 0);
    signal int_weights_89_q1   : UNSIGNED(31 downto 0);
    signal int_weights_89_read : STD_LOGIC;
    signal int_weights_89_write : STD_LOGIC;
    signal int_weights_89_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_90_address0 : UNSIGNED(5 downto 0);
    signal int_weights_90_ce0  : STD_LOGIC;
    signal int_weights_90_q0   : UNSIGNED(31 downto 0);
    signal int_weights_90_address1 : UNSIGNED(5 downto 0);
    signal int_weights_90_ce1  : STD_LOGIC;
    signal int_weights_90_we1  : STD_LOGIC;
    signal int_weights_90_be1  : UNSIGNED(3 downto 0);
    signal int_weights_90_d1   : UNSIGNED(31 downto 0);
    signal int_weights_90_q1   : UNSIGNED(31 downto 0);
    signal int_weights_90_read : STD_LOGIC;
    signal int_weights_90_write : STD_LOGIC;
    signal int_weights_90_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_91_address0 : UNSIGNED(5 downto 0);
    signal int_weights_91_ce0  : STD_LOGIC;
    signal int_weights_91_q0   : UNSIGNED(31 downto 0);
    signal int_weights_91_address1 : UNSIGNED(5 downto 0);
    signal int_weights_91_ce1  : STD_LOGIC;
    signal int_weights_91_we1  : STD_LOGIC;
    signal int_weights_91_be1  : UNSIGNED(3 downto 0);
    signal int_weights_91_d1   : UNSIGNED(31 downto 0);
    signal int_weights_91_q1   : UNSIGNED(31 downto 0);
    signal int_weights_91_read : STD_LOGIC;
    signal int_weights_91_write : STD_LOGIC;
    signal int_weights_91_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_92_address0 : UNSIGNED(5 downto 0);
    signal int_weights_92_ce0  : STD_LOGIC;
    signal int_weights_92_q0   : UNSIGNED(31 downto 0);
    signal int_weights_92_address1 : UNSIGNED(5 downto 0);
    signal int_weights_92_ce1  : STD_LOGIC;
    signal int_weights_92_we1  : STD_LOGIC;
    signal int_weights_92_be1  : UNSIGNED(3 downto 0);
    signal int_weights_92_d1   : UNSIGNED(31 downto 0);
    signal int_weights_92_q1   : UNSIGNED(31 downto 0);
    signal int_weights_92_read : STD_LOGIC;
    signal int_weights_92_write : STD_LOGIC;
    signal int_weights_92_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_93_address0 : UNSIGNED(5 downto 0);
    signal int_weights_93_ce0  : STD_LOGIC;
    signal int_weights_93_q0   : UNSIGNED(31 downto 0);
    signal int_weights_93_address1 : UNSIGNED(5 downto 0);
    signal int_weights_93_ce1  : STD_LOGIC;
    signal int_weights_93_we1  : STD_LOGIC;
    signal int_weights_93_be1  : UNSIGNED(3 downto 0);
    signal int_weights_93_d1   : UNSIGNED(31 downto 0);
    signal int_weights_93_q1   : UNSIGNED(31 downto 0);
    signal int_weights_93_read : STD_LOGIC;
    signal int_weights_93_write : STD_LOGIC;
    signal int_weights_93_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_94_address0 : UNSIGNED(5 downto 0);
    signal int_weights_94_ce0  : STD_LOGIC;
    signal int_weights_94_q0   : UNSIGNED(31 downto 0);
    signal int_weights_94_address1 : UNSIGNED(5 downto 0);
    signal int_weights_94_ce1  : STD_LOGIC;
    signal int_weights_94_we1  : STD_LOGIC;
    signal int_weights_94_be1  : UNSIGNED(3 downto 0);
    signal int_weights_94_d1   : UNSIGNED(31 downto 0);
    signal int_weights_94_q1   : UNSIGNED(31 downto 0);
    signal int_weights_94_read : STD_LOGIC;
    signal int_weights_94_write : STD_LOGIC;
    signal int_weights_94_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_95_address0 : UNSIGNED(5 downto 0);
    signal int_weights_95_ce0  : STD_LOGIC;
    signal int_weights_95_q0   : UNSIGNED(31 downto 0);
    signal int_weights_95_address1 : UNSIGNED(5 downto 0);
    signal int_weights_95_ce1  : STD_LOGIC;
    signal int_weights_95_we1  : STD_LOGIC;
    signal int_weights_95_be1  : UNSIGNED(3 downto 0);
    signal int_weights_95_d1   : UNSIGNED(31 downto 0);
    signal int_weights_95_q1   : UNSIGNED(31 downto 0);
    signal int_weights_95_read : STD_LOGIC;
    signal int_weights_95_write : STD_LOGIC;
    signal int_weights_95_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_96_address0 : UNSIGNED(5 downto 0);
    signal int_weights_96_ce0  : STD_LOGIC;
    signal int_weights_96_q0   : UNSIGNED(31 downto 0);
    signal int_weights_96_address1 : UNSIGNED(5 downto 0);
    signal int_weights_96_ce1  : STD_LOGIC;
    signal int_weights_96_we1  : STD_LOGIC;
    signal int_weights_96_be1  : UNSIGNED(3 downto 0);
    signal int_weights_96_d1   : UNSIGNED(31 downto 0);
    signal int_weights_96_q1   : UNSIGNED(31 downto 0);
    signal int_weights_96_read : STD_LOGIC;
    signal int_weights_96_write : STD_LOGIC;
    signal int_weights_96_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_97_address0 : UNSIGNED(5 downto 0);
    signal int_weights_97_ce0  : STD_LOGIC;
    signal int_weights_97_q0   : UNSIGNED(31 downto 0);
    signal int_weights_97_address1 : UNSIGNED(5 downto 0);
    signal int_weights_97_ce1  : STD_LOGIC;
    signal int_weights_97_we1  : STD_LOGIC;
    signal int_weights_97_be1  : UNSIGNED(3 downto 0);
    signal int_weights_97_d1   : UNSIGNED(31 downto 0);
    signal int_weights_97_q1   : UNSIGNED(31 downto 0);
    signal int_weights_97_read : STD_LOGIC;
    signal int_weights_97_write : STD_LOGIC;
    signal int_weights_97_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_98_address0 : UNSIGNED(5 downto 0);
    signal int_weights_98_ce0  : STD_LOGIC;
    signal int_weights_98_q0   : UNSIGNED(31 downto 0);
    signal int_weights_98_address1 : UNSIGNED(5 downto 0);
    signal int_weights_98_ce1  : STD_LOGIC;
    signal int_weights_98_we1  : STD_LOGIC;
    signal int_weights_98_be1  : UNSIGNED(3 downto 0);
    signal int_weights_98_d1   : UNSIGNED(31 downto 0);
    signal int_weights_98_q1   : UNSIGNED(31 downto 0);
    signal int_weights_98_read : STD_LOGIC;
    signal int_weights_98_write : STD_LOGIC;
    signal int_weights_98_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_99_address0 : UNSIGNED(5 downto 0);
    signal int_weights_99_ce0  : STD_LOGIC;
    signal int_weights_99_q0   : UNSIGNED(31 downto 0);
    signal int_weights_99_address1 : UNSIGNED(5 downto 0);
    signal int_weights_99_ce1  : STD_LOGIC;
    signal int_weights_99_we1  : STD_LOGIC;
    signal int_weights_99_be1  : UNSIGNED(3 downto 0);
    signal int_weights_99_d1   : UNSIGNED(31 downto 0);
    signal int_weights_99_q1   : UNSIGNED(31 downto 0);
    signal int_weights_99_read : STD_LOGIC;
    signal int_weights_99_write : STD_LOGIC;
    signal int_weights_99_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_100_address0 : UNSIGNED(5 downto 0);
    signal int_weights_100_ce0 : STD_LOGIC;
    signal int_weights_100_q0  : UNSIGNED(31 downto 0);
    signal int_weights_100_address1 : UNSIGNED(5 downto 0);
    signal int_weights_100_ce1 : STD_LOGIC;
    signal int_weights_100_we1 : STD_LOGIC;
    signal int_weights_100_be1 : UNSIGNED(3 downto 0);
    signal int_weights_100_d1  : UNSIGNED(31 downto 0);
    signal int_weights_100_q1  : UNSIGNED(31 downto 0);
    signal int_weights_100_read : STD_LOGIC;
    signal int_weights_100_write : STD_LOGIC;
    signal int_weights_100_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_101_address0 : UNSIGNED(5 downto 0);
    signal int_weights_101_ce0 : STD_LOGIC;
    signal int_weights_101_q0  : UNSIGNED(31 downto 0);
    signal int_weights_101_address1 : UNSIGNED(5 downto 0);
    signal int_weights_101_ce1 : STD_LOGIC;
    signal int_weights_101_we1 : STD_LOGIC;
    signal int_weights_101_be1 : UNSIGNED(3 downto 0);
    signal int_weights_101_d1  : UNSIGNED(31 downto 0);
    signal int_weights_101_q1  : UNSIGNED(31 downto 0);
    signal int_weights_101_read : STD_LOGIC;
    signal int_weights_101_write : STD_LOGIC;
    signal int_weights_101_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_102_address0 : UNSIGNED(5 downto 0);
    signal int_weights_102_ce0 : STD_LOGIC;
    signal int_weights_102_q0  : UNSIGNED(31 downto 0);
    signal int_weights_102_address1 : UNSIGNED(5 downto 0);
    signal int_weights_102_ce1 : STD_LOGIC;
    signal int_weights_102_we1 : STD_LOGIC;
    signal int_weights_102_be1 : UNSIGNED(3 downto 0);
    signal int_weights_102_d1  : UNSIGNED(31 downto 0);
    signal int_weights_102_q1  : UNSIGNED(31 downto 0);
    signal int_weights_102_read : STD_LOGIC;
    signal int_weights_102_write : STD_LOGIC;
    signal int_weights_102_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_103_address0 : UNSIGNED(5 downto 0);
    signal int_weights_103_ce0 : STD_LOGIC;
    signal int_weights_103_q0  : UNSIGNED(31 downto 0);
    signal int_weights_103_address1 : UNSIGNED(5 downto 0);
    signal int_weights_103_ce1 : STD_LOGIC;
    signal int_weights_103_we1 : STD_LOGIC;
    signal int_weights_103_be1 : UNSIGNED(3 downto 0);
    signal int_weights_103_d1  : UNSIGNED(31 downto 0);
    signal int_weights_103_q1  : UNSIGNED(31 downto 0);
    signal int_weights_103_read : STD_LOGIC;
    signal int_weights_103_write : STD_LOGIC;
    signal int_weights_103_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_104_address0 : UNSIGNED(5 downto 0);
    signal int_weights_104_ce0 : STD_LOGIC;
    signal int_weights_104_q0  : UNSIGNED(31 downto 0);
    signal int_weights_104_address1 : UNSIGNED(5 downto 0);
    signal int_weights_104_ce1 : STD_LOGIC;
    signal int_weights_104_we1 : STD_LOGIC;
    signal int_weights_104_be1 : UNSIGNED(3 downto 0);
    signal int_weights_104_d1  : UNSIGNED(31 downto 0);
    signal int_weights_104_q1  : UNSIGNED(31 downto 0);
    signal int_weights_104_read : STD_LOGIC;
    signal int_weights_104_write : STD_LOGIC;
    signal int_weights_104_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_105_address0 : UNSIGNED(5 downto 0);
    signal int_weights_105_ce0 : STD_LOGIC;
    signal int_weights_105_q0  : UNSIGNED(31 downto 0);
    signal int_weights_105_address1 : UNSIGNED(5 downto 0);
    signal int_weights_105_ce1 : STD_LOGIC;
    signal int_weights_105_we1 : STD_LOGIC;
    signal int_weights_105_be1 : UNSIGNED(3 downto 0);
    signal int_weights_105_d1  : UNSIGNED(31 downto 0);
    signal int_weights_105_q1  : UNSIGNED(31 downto 0);
    signal int_weights_105_read : STD_LOGIC;
    signal int_weights_105_write : STD_LOGIC;
    signal int_weights_105_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_106_address0 : UNSIGNED(5 downto 0);
    signal int_weights_106_ce0 : STD_LOGIC;
    signal int_weights_106_q0  : UNSIGNED(31 downto 0);
    signal int_weights_106_address1 : UNSIGNED(5 downto 0);
    signal int_weights_106_ce1 : STD_LOGIC;
    signal int_weights_106_we1 : STD_LOGIC;
    signal int_weights_106_be1 : UNSIGNED(3 downto 0);
    signal int_weights_106_d1  : UNSIGNED(31 downto 0);
    signal int_weights_106_q1  : UNSIGNED(31 downto 0);
    signal int_weights_106_read : STD_LOGIC;
    signal int_weights_106_write : STD_LOGIC;
    signal int_weights_106_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_107_address0 : UNSIGNED(5 downto 0);
    signal int_weights_107_ce0 : STD_LOGIC;
    signal int_weights_107_q0  : UNSIGNED(31 downto 0);
    signal int_weights_107_address1 : UNSIGNED(5 downto 0);
    signal int_weights_107_ce1 : STD_LOGIC;
    signal int_weights_107_we1 : STD_LOGIC;
    signal int_weights_107_be1 : UNSIGNED(3 downto 0);
    signal int_weights_107_d1  : UNSIGNED(31 downto 0);
    signal int_weights_107_q1  : UNSIGNED(31 downto 0);
    signal int_weights_107_read : STD_LOGIC;
    signal int_weights_107_write : STD_LOGIC;
    signal int_weights_107_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_108_address0 : UNSIGNED(5 downto 0);
    signal int_weights_108_ce0 : STD_LOGIC;
    signal int_weights_108_q0  : UNSIGNED(31 downto 0);
    signal int_weights_108_address1 : UNSIGNED(5 downto 0);
    signal int_weights_108_ce1 : STD_LOGIC;
    signal int_weights_108_we1 : STD_LOGIC;
    signal int_weights_108_be1 : UNSIGNED(3 downto 0);
    signal int_weights_108_d1  : UNSIGNED(31 downto 0);
    signal int_weights_108_q1  : UNSIGNED(31 downto 0);
    signal int_weights_108_read : STD_LOGIC;
    signal int_weights_108_write : STD_LOGIC;
    signal int_weights_108_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_109_address0 : UNSIGNED(5 downto 0);
    signal int_weights_109_ce0 : STD_LOGIC;
    signal int_weights_109_q0  : UNSIGNED(31 downto 0);
    signal int_weights_109_address1 : UNSIGNED(5 downto 0);
    signal int_weights_109_ce1 : STD_LOGIC;
    signal int_weights_109_we1 : STD_LOGIC;
    signal int_weights_109_be1 : UNSIGNED(3 downto 0);
    signal int_weights_109_d1  : UNSIGNED(31 downto 0);
    signal int_weights_109_q1  : UNSIGNED(31 downto 0);
    signal int_weights_109_read : STD_LOGIC;
    signal int_weights_109_write : STD_LOGIC;
    signal int_weights_109_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_110_address0 : UNSIGNED(5 downto 0);
    signal int_weights_110_ce0 : STD_LOGIC;
    signal int_weights_110_q0  : UNSIGNED(31 downto 0);
    signal int_weights_110_address1 : UNSIGNED(5 downto 0);
    signal int_weights_110_ce1 : STD_LOGIC;
    signal int_weights_110_we1 : STD_LOGIC;
    signal int_weights_110_be1 : UNSIGNED(3 downto 0);
    signal int_weights_110_d1  : UNSIGNED(31 downto 0);
    signal int_weights_110_q1  : UNSIGNED(31 downto 0);
    signal int_weights_110_read : STD_LOGIC;
    signal int_weights_110_write : STD_LOGIC;
    signal int_weights_110_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_111_address0 : UNSIGNED(5 downto 0);
    signal int_weights_111_ce0 : STD_LOGIC;
    signal int_weights_111_q0  : UNSIGNED(31 downto 0);
    signal int_weights_111_address1 : UNSIGNED(5 downto 0);
    signal int_weights_111_ce1 : STD_LOGIC;
    signal int_weights_111_we1 : STD_LOGIC;
    signal int_weights_111_be1 : UNSIGNED(3 downto 0);
    signal int_weights_111_d1  : UNSIGNED(31 downto 0);
    signal int_weights_111_q1  : UNSIGNED(31 downto 0);
    signal int_weights_111_read : STD_LOGIC;
    signal int_weights_111_write : STD_LOGIC;
    signal int_weights_111_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_112_address0 : UNSIGNED(5 downto 0);
    signal int_weights_112_ce0 : STD_LOGIC;
    signal int_weights_112_q0  : UNSIGNED(31 downto 0);
    signal int_weights_112_address1 : UNSIGNED(5 downto 0);
    signal int_weights_112_ce1 : STD_LOGIC;
    signal int_weights_112_we1 : STD_LOGIC;
    signal int_weights_112_be1 : UNSIGNED(3 downto 0);
    signal int_weights_112_d1  : UNSIGNED(31 downto 0);
    signal int_weights_112_q1  : UNSIGNED(31 downto 0);
    signal int_weights_112_read : STD_LOGIC;
    signal int_weights_112_write : STD_LOGIC;
    signal int_weights_112_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_113_address0 : UNSIGNED(5 downto 0);
    signal int_weights_113_ce0 : STD_LOGIC;
    signal int_weights_113_q0  : UNSIGNED(31 downto 0);
    signal int_weights_113_address1 : UNSIGNED(5 downto 0);
    signal int_weights_113_ce1 : STD_LOGIC;
    signal int_weights_113_we1 : STD_LOGIC;
    signal int_weights_113_be1 : UNSIGNED(3 downto 0);
    signal int_weights_113_d1  : UNSIGNED(31 downto 0);
    signal int_weights_113_q1  : UNSIGNED(31 downto 0);
    signal int_weights_113_read : STD_LOGIC;
    signal int_weights_113_write : STD_LOGIC;
    signal int_weights_113_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_114_address0 : UNSIGNED(5 downto 0);
    signal int_weights_114_ce0 : STD_LOGIC;
    signal int_weights_114_q0  : UNSIGNED(31 downto 0);
    signal int_weights_114_address1 : UNSIGNED(5 downto 0);
    signal int_weights_114_ce1 : STD_LOGIC;
    signal int_weights_114_we1 : STD_LOGIC;
    signal int_weights_114_be1 : UNSIGNED(3 downto 0);
    signal int_weights_114_d1  : UNSIGNED(31 downto 0);
    signal int_weights_114_q1  : UNSIGNED(31 downto 0);
    signal int_weights_114_read : STD_LOGIC;
    signal int_weights_114_write : STD_LOGIC;
    signal int_weights_114_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_115_address0 : UNSIGNED(5 downto 0);
    signal int_weights_115_ce0 : STD_LOGIC;
    signal int_weights_115_q0  : UNSIGNED(31 downto 0);
    signal int_weights_115_address1 : UNSIGNED(5 downto 0);
    signal int_weights_115_ce1 : STD_LOGIC;
    signal int_weights_115_we1 : STD_LOGIC;
    signal int_weights_115_be1 : UNSIGNED(3 downto 0);
    signal int_weights_115_d1  : UNSIGNED(31 downto 0);
    signal int_weights_115_q1  : UNSIGNED(31 downto 0);
    signal int_weights_115_read : STD_LOGIC;
    signal int_weights_115_write : STD_LOGIC;
    signal int_weights_115_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_116_address0 : UNSIGNED(5 downto 0);
    signal int_weights_116_ce0 : STD_LOGIC;
    signal int_weights_116_q0  : UNSIGNED(31 downto 0);
    signal int_weights_116_address1 : UNSIGNED(5 downto 0);
    signal int_weights_116_ce1 : STD_LOGIC;
    signal int_weights_116_we1 : STD_LOGIC;
    signal int_weights_116_be1 : UNSIGNED(3 downto 0);
    signal int_weights_116_d1  : UNSIGNED(31 downto 0);
    signal int_weights_116_q1  : UNSIGNED(31 downto 0);
    signal int_weights_116_read : STD_LOGIC;
    signal int_weights_116_write : STD_LOGIC;
    signal int_weights_116_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_117_address0 : UNSIGNED(5 downto 0);
    signal int_weights_117_ce0 : STD_LOGIC;
    signal int_weights_117_q0  : UNSIGNED(31 downto 0);
    signal int_weights_117_address1 : UNSIGNED(5 downto 0);
    signal int_weights_117_ce1 : STD_LOGIC;
    signal int_weights_117_we1 : STD_LOGIC;
    signal int_weights_117_be1 : UNSIGNED(3 downto 0);
    signal int_weights_117_d1  : UNSIGNED(31 downto 0);
    signal int_weights_117_q1  : UNSIGNED(31 downto 0);
    signal int_weights_117_read : STD_LOGIC;
    signal int_weights_117_write : STD_LOGIC;
    signal int_weights_117_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_118_address0 : UNSIGNED(5 downto 0);
    signal int_weights_118_ce0 : STD_LOGIC;
    signal int_weights_118_q0  : UNSIGNED(31 downto 0);
    signal int_weights_118_address1 : UNSIGNED(5 downto 0);
    signal int_weights_118_ce1 : STD_LOGIC;
    signal int_weights_118_we1 : STD_LOGIC;
    signal int_weights_118_be1 : UNSIGNED(3 downto 0);
    signal int_weights_118_d1  : UNSIGNED(31 downto 0);
    signal int_weights_118_q1  : UNSIGNED(31 downto 0);
    signal int_weights_118_read : STD_LOGIC;
    signal int_weights_118_write : STD_LOGIC;
    signal int_weights_118_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_119_address0 : UNSIGNED(5 downto 0);
    signal int_weights_119_ce0 : STD_LOGIC;
    signal int_weights_119_q0  : UNSIGNED(31 downto 0);
    signal int_weights_119_address1 : UNSIGNED(5 downto 0);
    signal int_weights_119_ce1 : STD_LOGIC;
    signal int_weights_119_we1 : STD_LOGIC;
    signal int_weights_119_be1 : UNSIGNED(3 downto 0);
    signal int_weights_119_d1  : UNSIGNED(31 downto 0);
    signal int_weights_119_q1  : UNSIGNED(31 downto 0);
    signal int_weights_119_read : STD_LOGIC;
    signal int_weights_119_write : STD_LOGIC;
    signal int_weights_119_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_120_address0 : UNSIGNED(5 downto 0);
    signal int_weights_120_ce0 : STD_LOGIC;
    signal int_weights_120_q0  : UNSIGNED(31 downto 0);
    signal int_weights_120_address1 : UNSIGNED(5 downto 0);
    signal int_weights_120_ce1 : STD_LOGIC;
    signal int_weights_120_we1 : STD_LOGIC;
    signal int_weights_120_be1 : UNSIGNED(3 downto 0);
    signal int_weights_120_d1  : UNSIGNED(31 downto 0);
    signal int_weights_120_q1  : UNSIGNED(31 downto 0);
    signal int_weights_120_read : STD_LOGIC;
    signal int_weights_120_write : STD_LOGIC;
    signal int_weights_120_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_121_address0 : UNSIGNED(5 downto 0);
    signal int_weights_121_ce0 : STD_LOGIC;
    signal int_weights_121_q0  : UNSIGNED(31 downto 0);
    signal int_weights_121_address1 : UNSIGNED(5 downto 0);
    signal int_weights_121_ce1 : STD_LOGIC;
    signal int_weights_121_we1 : STD_LOGIC;
    signal int_weights_121_be1 : UNSIGNED(3 downto 0);
    signal int_weights_121_d1  : UNSIGNED(31 downto 0);
    signal int_weights_121_q1  : UNSIGNED(31 downto 0);
    signal int_weights_121_read : STD_LOGIC;
    signal int_weights_121_write : STD_LOGIC;
    signal int_weights_121_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_122_address0 : UNSIGNED(5 downto 0);
    signal int_weights_122_ce0 : STD_LOGIC;
    signal int_weights_122_q0  : UNSIGNED(31 downto 0);
    signal int_weights_122_address1 : UNSIGNED(5 downto 0);
    signal int_weights_122_ce1 : STD_LOGIC;
    signal int_weights_122_we1 : STD_LOGIC;
    signal int_weights_122_be1 : UNSIGNED(3 downto 0);
    signal int_weights_122_d1  : UNSIGNED(31 downto 0);
    signal int_weights_122_q1  : UNSIGNED(31 downto 0);
    signal int_weights_122_read : STD_LOGIC;
    signal int_weights_122_write : STD_LOGIC;
    signal int_weights_122_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_123_address0 : UNSIGNED(5 downto 0);
    signal int_weights_123_ce0 : STD_LOGIC;
    signal int_weights_123_q0  : UNSIGNED(31 downto 0);
    signal int_weights_123_address1 : UNSIGNED(5 downto 0);
    signal int_weights_123_ce1 : STD_LOGIC;
    signal int_weights_123_we1 : STD_LOGIC;
    signal int_weights_123_be1 : UNSIGNED(3 downto 0);
    signal int_weights_123_d1  : UNSIGNED(31 downto 0);
    signal int_weights_123_q1  : UNSIGNED(31 downto 0);
    signal int_weights_123_read : STD_LOGIC;
    signal int_weights_123_write : STD_LOGIC;
    signal int_weights_123_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_124_address0 : UNSIGNED(5 downto 0);
    signal int_weights_124_ce0 : STD_LOGIC;
    signal int_weights_124_q0  : UNSIGNED(31 downto 0);
    signal int_weights_124_address1 : UNSIGNED(5 downto 0);
    signal int_weights_124_ce1 : STD_LOGIC;
    signal int_weights_124_we1 : STD_LOGIC;
    signal int_weights_124_be1 : UNSIGNED(3 downto 0);
    signal int_weights_124_d1  : UNSIGNED(31 downto 0);
    signal int_weights_124_q1  : UNSIGNED(31 downto 0);
    signal int_weights_124_read : STD_LOGIC;
    signal int_weights_124_write : STD_LOGIC;
    signal int_weights_124_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_125_address0 : UNSIGNED(5 downto 0);
    signal int_weights_125_ce0 : STD_LOGIC;
    signal int_weights_125_q0  : UNSIGNED(31 downto 0);
    signal int_weights_125_address1 : UNSIGNED(5 downto 0);
    signal int_weights_125_ce1 : STD_LOGIC;
    signal int_weights_125_we1 : STD_LOGIC;
    signal int_weights_125_be1 : UNSIGNED(3 downto 0);
    signal int_weights_125_d1  : UNSIGNED(31 downto 0);
    signal int_weights_125_q1  : UNSIGNED(31 downto 0);
    signal int_weights_125_read : STD_LOGIC;
    signal int_weights_125_write : STD_LOGIC;
    signal int_weights_125_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_126_address0 : UNSIGNED(5 downto 0);
    signal int_weights_126_ce0 : STD_LOGIC;
    signal int_weights_126_q0  : UNSIGNED(31 downto 0);
    signal int_weights_126_address1 : UNSIGNED(5 downto 0);
    signal int_weights_126_ce1 : STD_LOGIC;
    signal int_weights_126_we1 : STD_LOGIC;
    signal int_weights_126_be1 : UNSIGNED(3 downto 0);
    signal int_weights_126_d1  : UNSIGNED(31 downto 0);
    signal int_weights_126_q1  : UNSIGNED(31 downto 0);
    signal int_weights_126_read : STD_LOGIC;
    signal int_weights_126_write : STD_LOGIC;
    signal int_weights_126_shift0 : UNSIGNED(0 downto 0);
    signal int_weights_127_address0 : UNSIGNED(5 downto 0);
    signal int_weights_127_ce0 : STD_LOGIC;
    signal int_weights_127_q0  : UNSIGNED(31 downto 0);
    signal int_weights_127_address1 : UNSIGNED(5 downto 0);
    signal int_weights_127_ce1 : STD_LOGIC;
    signal int_weights_127_we1 : STD_LOGIC;
    signal int_weights_127_be1 : UNSIGNED(3 downto 0);
    signal int_weights_127_d1  : UNSIGNED(31 downto 0);
    signal int_weights_127_q1  : UNSIGNED(31 downto 0);
    signal int_weights_127_read : STD_LOGIC;
    signal int_weights_127_write : STD_LOGIC;
    signal int_weights_127_shift0 : UNSIGNED(0 downto 0);

    component nnlayer_control_s_axi_ram is
        generic (
            MEM_STYLE : STRING :="auto";
            MEM_TYPE  : STRING :="S2P";
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component nnlayer_control_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_bias
int_bias : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_bias_address0,
     ce0       => int_bias_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_bias_q0,
     clk1      => ACLK,
     address1  => int_bias_address1,
     ce1       => int_bias_ce1,
     we1       => int_bias_be1,
     d1        => int_bias_d1,
     q1        => int_bias_q1);
-- int_weights_0
int_weights_0 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_0_address0,
     ce0       => int_weights_0_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_0_q0,
     clk1      => ACLK,
     address1  => int_weights_0_address1,
     ce1       => int_weights_0_ce1,
     we1       => int_weights_0_be1,
     d1        => int_weights_0_d1,
     q1        => int_weights_0_q1);
-- int_weights_1
int_weights_1 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_1_address0,
     ce0       => int_weights_1_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_1_q0,
     clk1      => ACLK,
     address1  => int_weights_1_address1,
     ce1       => int_weights_1_ce1,
     we1       => int_weights_1_be1,
     d1        => int_weights_1_d1,
     q1        => int_weights_1_q1);
-- int_weights_2
int_weights_2 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_2_address0,
     ce0       => int_weights_2_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_2_q0,
     clk1      => ACLK,
     address1  => int_weights_2_address1,
     ce1       => int_weights_2_ce1,
     we1       => int_weights_2_be1,
     d1        => int_weights_2_d1,
     q1        => int_weights_2_q1);
-- int_weights_3
int_weights_3 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_3_address0,
     ce0       => int_weights_3_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_3_q0,
     clk1      => ACLK,
     address1  => int_weights_3_address1,
     ce1       => int_weights_3_ce1,
     we1       => int_weights_3_be1,
     d1        => int_weights_3_d1,
     q1        => int_weights_3_q1);
-- int_weights_4
int_weights_4 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_4_address0,
     ce0       => int_weights_4_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_4_q0,
     clk1      => ACLK,
     address1  => int_weights_4_address1,
     ce1       => int_weights_4_ce1,
     we1       => int_weights_4_be1,
     d1        => int_weights_4_d1,
     q1        => int_weights_4_q1);
-- int_weights_5
int_weights_5 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_5_address0,
     ce0       => int_weights_5_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_5_q0,
     clk1      => ACLK,
     address1  => int_weights_5_address1,
     ce1       => int_weights_5_ce1,
     we1       => int_weights_5_be1,
     d1        => int_weights_5_d1,
     q1        => int_weights_5_q1);
-- int_weights_6
int_weights_6 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_6_address0,
     ce0       => int_weights_6_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_6_q0,
     clk1      => ACLK,
     address1  => int_weights_6_address1,
     ce1       => int_weights_6_ce1,
     we1       => int_weights_6_be1,
     d1        => int_weights_6_d1,
     q1        => int_weights_6_q1);
-- int_weights_7
int_weights_7 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_7_address0,
     ce0       => int_weights_7_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_7_q0,
     clk1      => ACLK,
     address1  => int_weights_7_address1,
     ce1       => int_weights_7_ce1,
     we1       => int_weights_7_be1,
     d1        => int_weights_7_d1,
     q1        => int_weights_7_q1);
-- int_weights_8
int_weights_8 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_8_address0,
     ce0       => int_weights_8_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_8_q0,
     clk1      => ACLK,
     address1  => int_weights_8_address1,
     ce1       => int_weights_8_ce1,
     we1       => int_weights_8_be1,
     d1        => int_weights_8_d1,
     q1        => int_weights_8_q1);
-- int_weights_9
int_weights_9 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_9_address0,
     ce0       => int_weights_9_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_9_q0,
     clk1      => ACLK,
     address1  => int_weights_9_address1,
     ce1       => int_weights_9_ce1,
     we1       => int_weights_9_be1,
     d1        => int_weights_9_d1,
     q1        => int_weights_9_q1);
-- int_weights_10
int_weights_10 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_10_address0,
     ce0       => int_weights_10_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_10_q0,
     clk1      => ACLK,
     address1  => int_weights_10_address1,
     ce1       => int_weights_10_ce1,
     we1       => int_weights_10_be1,
     d1        => int_weights_10_d1,
     q1        => int_weights_10_q1);
-- int_weights_11
int_weights_11 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_11_address0,
     ce0       => int_weights_11_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_11_q0,
     clk1      => ACLK,
     address1  => int_weights_11_address1,
     ce1       => int_weights_11_ce1,
     we1       => int_weights_11_be1,
     d1        => int_weights_11_d1,
     q1        => int_weights_11_q1);
-- int_weights_12
int_weights_12 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_12_address0,
     ce0       => int_weights_12_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_12_q0,
     clk1      => ACLK,
     address1  => int_weights_12_address1,
     ce1       => int_weights_12_ce1,
     we1       => int_weights_12_be1,
     d1        => int_weights_12_d1,
     q1        => int_weights_12_q1);
-- int_weights_13
int_weights_13 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_13_address0,
     ce0       => int_weights_13_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_13_q0,
     clk1      => ACLK,
     address1  => int_weights_13_address1,
     ce1       => int_weights_13_ce1,
     we1       => int_weights_13_be1,
     d1        => int_weights_13_d1,
     q1        => int_weights_13_q1);
-- int_weights_14
int_weights_14 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_14_address0,
     ce0       => int_weights_14_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_14_q0,
     clk1      => ACLK,
     address1  => int_weights_14_address1,
     ce1       => int_weights_14_ce1,
     we1       => int_weights_14_be1,
     d1        => int_weights_14_d1,
     q1        => int_weights_14_q1);
-- int_weights_15
int_weights_15 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_15_address0,
     ce0       => int_weights_15_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_15_q0,
     clk1      => ACLK,
     address1  => int_weights_15_address1,
     ce1       => int_weights_15_ce1,
     we1       => int_weights_15_be1,
     d1        => int_weights_15_d1,
     q1        => int_weights_15_q1);
-- int_weights_16
int_weights_16 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_16_address0,
     ce0       => int_weights_16_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_16_q0,
     clk1      => ACLK,
     address1  => int_weights_16_address1,
     ce1       => int_weights_16_ce1,
     we1       => int_weights_16_be1,
     d1        => int_weights_16_d1,
     q1        => int_weights_16_q1);
-- int_weights_17
int_weights_17 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_17_address0,
     ce0       => int_weights_17_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_17_q0,
     clk1      => ACLK,
     address1  => int_weights_17_address1,
     ce1       => int_weights_17_ce1,
     we1       => int_weights_17_be1,
     d1        => int_weights_17_d1,
     q1        => int_weights_17_q1);
-- int_weights_18
int_weights_18 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_18_address0,
     ce0       => int_weights_18_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_18_q0,
     clk1      => ACLK,
     address1  => int_weights_18_address1,
     ce1       => int_weights_18_ce1,
     we1       => int_weights_18_be1,
     d1        => int_weights_18_d1,
     q1        => int_weights_18_q1);
-- int_weights_19
int_weights_19 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_19_address0,
     ce0       => int_weights_19_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_19_q0,
     clk1      => ACLK,
     address1  => int_weights_19_address1,
     ce1       => int_weights_19_ce1,
     we1       => int_weights_19_be1,
     d1        => int_weights_19_d1,
     q1        => int_weights_19_q1);
-- int_weights_20
int_weights_20 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_20_address0,
     ce0       => int_weights_20_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_20_q0,
     clk1      => ACLK,
     address1  => int_weights_20_address1,
     ce1       => int_weights_20_ce1,
     we1       => int_weights_20_be1,
     d1        => int_weights_20_d1,
     q1        => int_weights_20_q1);
-- int_weights_21
int_weights_21 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_21_address0,
     ce0       => int_weights_21_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_21_q0,
     clk1      => ACLK,
     address1  => int_weights_21_address1,
     ce1       => int_weights_21_ce1,
     we1       => int_weights_21_be1,
     d1        => int_weights_21_d1,
     q1        => int_weights_21_q1);
-- int_weights_22
int_weights_22 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_22_address0,
     ce0       => int_weights_22_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_22_q0,
     clk1      => ACLK,
     address1  => int_weights_22_address1,
     ce1       => int_weights_22_ce1,
     we1       => int_weights_22_be1,
     d1        => int_weights_22_d1,
     q1        => int_weights_22_q1);
-- int_weights_23
int_weights_23 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_23_address0,
     ce0       => int_weights_23_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_23_q0,
     clk1      => ACLK,
     address1  => int_weights_23_address1,
     ce1       => int_weights_23_ce1,
     we1       => int_weights_23_be1,
     d1        => int_weights_23_d1,
     q1        => int_weights_23_q1);
-- int_weights_24
int_weights_24 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_24_address0,
     ce0       => int_weights_24_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_24_q0,
     clk1      => ACLK,
     address1  => int_weights_24_address1,
     ce1       => int_weights_24_ce1,
     we1       => int_weights_24_be1,
     d1        => int_weights_24_d1,
     q1        => int_weights_24_q1);
-- int_weights_25
int_weights_25 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_25_address0,
     ce0       => int_weights_25_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_25_q0,
     clk1      => ACLK,
     address1  => int_weights_25_address1,
     ce1       => int_weights_25_ce1,
     we1       => int_weights_25_be1,
     d1        => int_weights_25_d1,
     q1        => int_weights_25_q1);
-- int_weights_26
int_weights_26 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_26_address0,
     ce0       => int_weights_26_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_26_q0,
     clk1      => ACLK,
     address1  => int_weights_26_address1,
     ce1       => int_weights_26_ce1,
     we1       => int_weights_26_be1,
     d1        => int_weights_26_d1,
     q1        => int_weights_26_q1);
-- int_weights_27
int_weights_27 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_27_address0,
     ce0       => int_weights_27_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_27_q0,
     clk1      => ACLK,
     address1  => int_weights_27_address1,
     ce1       => int_weights_27_ce1,
     we1       => int_weights_27_be1,
     d1        => int_weights_27_d1,
     q1        => int_weights_27_q1);
-- int_weights_28
int_weights_28 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_28_address0,
     ce0       => int_weights_28_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_28_q0,
     clk1      => ACLK,
     address1  => int_weights_28_address1,
     ce1       => int_weights_28_ce1,
     we1       => int_weights_28_be1,
     d1        => int_weights_28_d1,
     q1        => int_weights_28_q1);
-- int_weights_29
int_weights_29 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_29_address0,
     ce0       => int_weights_29_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_29_q0,
     clk1      => ACLK,
     address1  => int_weights_29_address1,
     ce1       => int_weights_29_ce1,
     we1       => int_weights_29_be1,
     d1        => int_weights_29_d1,
     q1        => int_weights_29_q1);
-- int_weights_30
int_weights_30 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_30_address0,
     ce0       => int_weights_30_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_30_q0,
     clk1      => ACLK,
     address1  => int_weights_30_address1,
     ce1       => int_weights_30_ce1,
     we1       => int_weights_30_be1,
     d1        => int_weights_30_d1,
     q1        => int_weights_30_q1);
-- int_weights_31
int_weights_31 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_31_address0,
     ce0       => int_weights_31_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_31_q0,
     clk1      => ACLK,
     address1  => int_weights_31_address1,
     ce1       => int_weights_31_ce1,
     we1       => int_weights_31_be1,
     d1        => int_weights_31_d1,
     q1        => int_weights_31_q1);
-- int_weights_32
int_weights_32 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_32_address0,
     ce0       => int_weights_32_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_32_q0,
     clk1      => ACLK,
     address1  => int_weights_32_address1,
     ce1       => int_weights_32_ce1,
     we1       => int_weights_32_be1,
     d1        => int_weights_32_d1,
     q1        => int_weights_32_q1);
-- int_weights_33
int_weights_33 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_33_address0,
     ce0       => int_weights_33_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_33_q0,
     clk1      => ACLK,
     address1  => int_weights_33_address1,
     ce1       => int_weights_33_ce1,
     we1       => int_weights_33_be1,
     d1        => int_weights_33_d1,
     q1        => int_weights_33_q1);
-- int_weights_34
int_weights_34 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_34_address0,
     ce0       => int_weights_34_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_34_q0,
     clk1      => ACLK,
     address1  => int_weights_34_address1,
     ce1       => int_weights_34_ce1,
     we1       => int_weights_34_be1,
     d1        => int_weights_34_d1,
     q1        => int_weights_34_q1);
-- int_weights_35
int_weights_35 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_35_address0,
     ce0       => int_weights_35_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_35_q0,
     clk1      => ACLK,
     address1  => int_weights_35_address1,
     ce1       => int_weights_35_ce1,
     we1       => int_weights_35_be1,
     d1        => int_weights_35_d1,
     q1        => int_weights_35_q1);
-- int_weights_36
int_weights_36 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_36_address0,
     ce0       => int_weights_36_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_36_q0,
     clk1      => ACLK,
     address1  => int_weights_36_address1,
     ce1       => int_weights_36_ce1,
     we1       => int_weights_36_be1,
     d1        => int_weights_36_d1,
     q1        => int_weights_36_q1);
-- int_weights_37
int_weights_37 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_37_address0,
     ce0       => int_weights_37_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_37_q0,
     clk1      => ACLK,
     address1  => int_weights_37_address1,
     ce1       => int_weights_37_ce1,
     we1       => int_weights_37_be1,
     d1        => int_weights_37_d1,
     q1        => int_weights_37_q1);
-- int_weights_38
int_weights_38 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_38_address0,
     ce0       => int_weights_38_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_38_q0,
     clk1      => ACLK,
     address1  => int_weights_38_address1,
     ce1       => int_weights_38_ce1,
     we1       => int_weights_38_be1,
     d1        => int_weights_38_d1,
     q1        => int_weights_38_q1);
-- int_weights_39
int_weights_39 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_39_address0,
     ce0       => int_weights_39_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_39_q0,
     clk1      => ACLK,
     address1  => int_weights_39_address1,
     ce1       => int_weights_39_ce1,
     we1       => int_weights_39_be1,
     d1        => int_weights_39_d1,
     q1        => int_weights_39_q1);
-- int_weights_40
int_weights_40 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_40_address0,
     ce0       => int_weights_40_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_40_q0,
     clk1      => ACLK,
     address1  => int_weights_40_address1,
     ce1       => int_weights_40_ce1,
     we1       => int_weights_40_be1,
     d1        => int_weights_40_d1,
     q1        => int_weights_40_q1);
-- int_weights_41
int_weights_41 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_41_address0,
     ce0       => int_weights_41_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_41_q0,
     clk1      => ACLK,
     address1  => int_weights_41_address1,
     ce1       => int_weights_41_ce1,
     we1       => int_weights_41_be1,
     d1        => int_weights_41_d1,
     q1        => int_weights_41_q1);
-- int_weights_42
int_weights_42 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_42_address0,
     ce0       => int_weights_42_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_42_q0,
     clk1      => ACLK,
     address1  => int_weights_42_address1,
     ce1       => int_weights_42_ce1,
     we1       => int_weights_42_be1,
     d1        => int_weights_42_d1,
     q1        => int_weights_42_q1);
-- int_weights_43
int_weights_43 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_43_address0,
     ce0       => int_weights_43_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_43_q0,
     clk1      => ACLK,
     address1  => int_weights_43_address1,
     ce1       => int_weights_43_ce1,
     we1       => int_weights_43_be1,
     d1        => int_weights_43_d1,
     q1        => int_weights_43_q1);
-- int_weights_44
int_weights_44 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_44_address0,
     ce0       => int_weights_44_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_44_q0,
     clk1      => ACLK,
     address1  => int_weights_44_address1,
     ce1       => int_weights_44_ce1,
     we1       => int_weights_44_be1,
     d1        => int_weights_44_d1,
     q1        => int_weights_44_q1);
-- int_weights_45
int_weights_45 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_45_address0,
     ce0       => int_weights_45_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_45_q0,
     clk1      => ACLK,
     address1  => int_weights_45_address1,
     ce1       => int_weights_45_ce1,
     we1       => int_weights_45_be1,
     d1        => int_weights_45_d1,
     q1        => int_weights_45_q1);
-- int_weights_46
int_weights_46 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_46_address0,
     ce0       => int_weights_46_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_46_q0,
     clk1      => ACLK,
     address1  => int_weights_46_address1,
     ce1       => int_weights_46_ce1,
     we1       => int_weights_46_be1,
     d1        => int_weights_46_d1,
     q1        => int_weights_46_q1);
-- int_weights_47
int_weights_47 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_47_address0,
     ce0       => int_weights_47_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_47_q0,
     clk1      => ACLK,
     address1  => int_weights_47_address1,
     ce1       => int_weights_47_ce1,
     we1       => int_weights_47_be1,
     d1        => int_weights_47_d1,
     q1        => int_weights_47_q1);
-- int_weights_48
int_weights_48 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_48_address0,
     ce0       => int_weights_48_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_48_q0,
     clk1      => ACLK,
     address1  => int_weights_48_address1,
     ce1       => int_weights_48_ce1,
     we1       => int_weights_48_be1,
     d1        => int_weights_48_d1,
     q1        => int_weights_48_q1);
-- int_weights_49
int_weights_49 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_49_address0,
     ce0       => int_weights_49_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_49_q0,
     clk1      => ACLK,
     address1  => int_weights_49_address1,
     ce1       => int_weights_49_ce1,
     we1       => int_weights_49_be1,
     d1        => int_weights_49_d1,
     q1        => int_weights_49_q1);
-- int_weights_50
int_weights_50 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_50_address0,
     ce0       => int_weights_50_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_50_q0,
     clk1      => ACLK,
     address1  => int_weights_50_address1,
     ce1       => int_weights_50_ce1,
     we1       => int_weights_50_be1,
     d1        => int_weights_50_d1,
     q1        => int_weights_50_q1);
-- int_weights_51
int_weights_51 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_51_address0,
     ce0       => int_weights_51_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_51_q0,
     clk1      => ACLK,
     address1  => int_weights_51_address1,
     ce1       => int_weights_51_ce1,
     we1       => int_weights_51_be1,
     d1        => int_weights_51_d1,
     q1        => int_weights_51_q1);
-- int_weights_52
int_weights_52 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_52_address0,
     ce0       => int_weights_52_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_52_q0,
     clk1      => ACLK,
     address1  => int_weights_52_address1,
     ce1       => int_weights_52_ce1,
     we1       => int_weights_52_be1,
     d1        => int_weights_52_d1,
     q1        => int_weights_52_q1);
-- int_weights_53
int_weights_53 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_53_address0,
     ce0       => int_weights_53_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_53_q0,
     clk1      => ACLK,
     address1  => int_weights_53_address1,
     ce1       => int_weights_53_ce1,
     we1       => int_weights_53_be1,
     d1        => int_weights_53_d1,
     q1        => int_weights_53_q1);
-- int_weights_54
int_weights_54 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_54_address0,
     ce0       => int_weights_54_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_54_q0,
     clk1      => ACLK,
     address1  => int_weights_54_address1,
     ce1       => int_weights_54_ce1,
     we1       => int_weights_54_be1,
     d1        => int_weights_54_d1,
     q1        => int_weights_54_q1);
-- int_weights_55
int_weights_55 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_55_address0,
     ce0       => int_weights_55_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_55_q0,
     clk1      => ACLK,
     address1  => int_weights_55_address1,
     ce1       => int_weights_55_ce1,
     we1       => int_weights_55_be1,
     d1        => int_weights_55_d1,
     q1        => int_weights_55_q1);
-- int_weights_56
int_weights_56 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_56_address0,
     ce0       => int_weights_56_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_56_q0,
     clk1      => ACLK,
     address1  => int_weights_56_address1,
     ce1       => int_weights_56_ce1,
     we1       => int_weights_56_be1,
     d1        => int_weights_56_d1,
     q1        => int_weights_56_q1);
-- int_weights_57
int_weights_57 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_57_address0,
     ce0       => int_weights_57_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_57_q0,
     clk1      => ACLK,
     address1  => int_weights_57_address1,
     ce1       => int_weights_57_ce1,
     we1       => int_weights_57_be1,
     d1        => int_weights_57_d1,
     q1        => int_weights_57_q1);
-- int_weights_58
int_weights_58 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_58_address0,
     ce0       => int_weights_58_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_58_q0,
     clk1      => ACLK,
     address1  => int_weights_58_address1,
     ce1       => int_weights_58_ce1,
     we1       => int_weights_58_be1,
     d1        => int_weights_58_d1,
     q1        => int_weights_58_q1);
-- int_weights_59
int_weights_59 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_59_address0,
     ce0       => int_weights_59_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_59_q0,
     clk1      => ACLK,
     address1  => int_weights_59_address1,
     ce1       => int_weights_59_ce1,
     we1       => int_weights_59_be1,
     d1        => int_weights_59_d1,
     q1        => int_weights_59_q1);
-- int_weights_60
int_weights_60 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_60_address0,
     ce0       => int_weights_60_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_60_q0,
     clk1      => ACLK,
     address1  => int_weights_60_address1,
     ce1       => int_weights_60_ce1,
     we1       => int_weights_60_be1,
     d1        => int_weights_60_d1,
     q1        => int_weights_60_q1);
-- int_weights_61
int_weights_61 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_61_address0,
     ce0       => int_weights_61_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_61_q0,
     clk1      => ACLK,
     address1  => int_weights_61_address1,
     ce1       => int_weights_61_ce1,
     we1       => int_weights_61_be1,
     d1        => int_weights_61_d1,
     q1        => int_weights_61_q1);
-- int_weights_62
int_weights_62 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_62_address0,
     ce0       => int_weights_62_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_62_q0,
     clk1      => ACLK,
     address1  => int_weights_62_address1,
     ce1       => int_weights_62_ce1,
     we1       => int_weights_62_be1,
     d1        => int_weights_62_d1,
     q1        => int_weights_62_q1);
-- int_weights_63
int_weights_63 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_63_address0,
     ce0       => int_weights_63_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_63_q0,
     clk1      => ACLK,
     address1  => int_weights_63_address1,
     ce1       => int_weights_63_ce1,
     we1       => int_weights_63_be1,
     d1        => int_weights_63_d1,
     q1        => int_weights_63_q1);
-- int_weights_64
int_weights_64 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_64_address0,
     ce0       => int_weights_64_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_64_q0,
     clk1      => ACLK,
     address1  => int_weights_64_address1,
     ce1       => int_weights_64_ce1,
     we1       => int_weights_64_be1,
     d1        => int_weights_64_d1,
     q1        => int_weights_64_q1);
-- int_weights_65
int_weights_65 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_65_address0,
     ce0       => int_weights_65_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_65_q0,
     clk1      => ACLK,
     address1  => int_weights_65_address1,
     ce1       => int_weights_65_ce1,
     we1       => int_weights_65_be1,
     d1        => int_weights_65_d1,
     q1        => int_weights_65_q1);
-- int_weights_66
int_weights_66 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_66_address0,
     ce0       => int_weights_66_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_66_q0,
     clk1      => ACLK,
     address1  => int_weights_66_address1,
     ce1       => int_weights_66_ce1,
     we1       => int_weights_66_be1,
     d1        => int_weights_66_d1,
     q1        => int_weights_66_q1);
-- int_weights_67
int_weights_67 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_67_address0,
     ce0       => int_weights_67_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_67_q0,
     clk1      => ACLK,
     address1  => int_weights_67_address1,
     ce1       => int_weights_67_ce1,
     we1       => int_weights_67_be1,
     d1        => int_weights_67_d1,
     q1        => int_weights_67_q1);
-- int_weights_68
int_weights_68 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_68_address0,
     ce0       => int_weights_68_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_68_q0,
     clk1      => ACLK,
     address1  => int_weights_68_address1,
     ce1       => int_weights_68_ce1,
     we1       => int_weights_68_be1,
     d1        => int_weights_68_d1,
     q1        => int_weights_68_q1);
-- int_weights_69
int_weights_69 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_69_address0,
     ce0       => int_weights_69_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_69_q0,
     clk1      => ACLK,
     address1  => int_weights_69_address1,
     ce1       => int_weights_69_ce1,
     we1       => int_weights_69_be1,
     d1        => int_weights_69_d1,
     q1        => int_weights_69_q1);
-- int_weights_70
int_weights_70 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_70_address0,
     ce0       => int_weights_70_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_70_q0,
     clk1      => ACLK,
     address1  => int_weights_70_address1,
     ce1       => int_weights_70_ce1,
     we1       => int_weights_70_be1,
     d1        => int_weights_70_d1,
     q1        => int_weights_70_q1);
-- int_weights_71
int_weights_71 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_71_address0,
     ce0       => int_weights_71_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_71_q0,
     clk1      => ACLK,
     address1  => int_weights_71_address1,
     ce1       => int_weights_71_ce1,
     we1       => int_weights_71_be1,
     d1        => int_weights_71_d1,
     q1        => int_weights_71_q1);
-- int_weights_72
int_weights_72 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_72_address0,
     ce0       => int_weights_72_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_72_q0,
     clk1      => ACLK,
     address1  => int_weights_72_address1,
     ce1       => int_weights_72_ce1,
     we1       => int_weights_72_be1,
     d1        => int_weights_72_d1,
     q1        => int_weights_72_q1);
-- int_weights_73
int_weights_73 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_73_address0,
     ce0       => int_weights_73_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_73_q0,
     clk1      => ACLK,
     address1  => int_weights_73_address1,
     ce1       => int_weights_73_ce1,
     we1       => int_weights_73_be1,
     d1        => int_weights_73_d1,
     q1        => int_weights_73_q1);
-- int_weights_74
int_weights_74 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_74_address0,
     ce0       => int_weights_74_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_74_q0,
     clk1      => ACLK,
     address1  => int_weights_74_address1,
     ce1       => int_weights_74_ce1,
     we1       => int_weights_74_be1,
     d1        => int_weights_74_d1,
     q1        => int_weights_74_q1);
-- int_weights_75
int_weights_75 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_75_address0,
     ce0       => int_weights_75_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_75_q0,
     clk1      => ACLK,
     address1  => int_weights_75_address1,
     ce1       => int_weights_75_ce1,
     we1       => int_weights_75_be1,
     d1        => int_weights_75_d1,
     q1        => int_weights_75_q1);
-- int_weights_76
int_weights_76 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_76_address0,
     ce0       => int_weights_76_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_76_q0,
     clk1      => ACLK,
     address1  => int_weights_76_address1,
     ce1       => int_weights_76_ce1,
     we1       => int_weights_76_be1,
     d1        => int_weights_76_d1,
     q1        => int_weights_76_q1);
-- int_weights_77
int_weights_77 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_77_address0,
     ce0       => int_weights_77_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_77_q0,
     clk1      => ACLK,
     address1  => int_weights_77_address1,
     ce1       => int_weights_77_ce1,
     we1       => int_weights_77_be1,
     d1        => int_weights_77_d1,
     q1        => int_weights_77_q1);
-- int_weights_78
int_weights_78 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_78_address0,
     ce0       => int_weights_78_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_78_q0,
     clk1      => ACLK,
     address1  => int_weights_78_address1,
     ce1       => int_weights_78_ce1,
     we1       => int_weights_78_be1,
     d1        => int_weights_78_d1,
     q1        => int_weights_78_q1);
-- int_weights_79
int_weights_79 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_79_address0,
     ce0       => int_weights_79_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_79_q0,
     clk1      => ACLK,
     address1  => int_weights_79_address1,
     ce1       => int_weights_79_ce1,
     we1       => int_weights_79_be1,
     d1        => int_weights_79_d1,
     q1        => int_weights_79_q1);
-- int_weights_80
int_weights_80 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_80_address0,
     ce0       => int_weights_80_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_80_q0,
     clk1      => ACLK,
     address1  => int_weights_80_address1,
     ce1       => int_weights_80_ce1,
     we1       => int_weights_80_be1,
     d1        => int_weights_80_d1,
     q1        => int_weights_80_q1);
-- int_weights_81
int_weights_81 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_81_address0,
     ce0       => int_weights_81_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_81_q0,
     clk1      => ACLK,
     address1  => int_weights_81_address1,
     ce1       => int_weights_81_ce1,
     we1       => int_weights_81_be1,
     d1        => int_weights_81_d1,
     q1        => int_weights_81_q1);
-- int_weights_82
int_weights_82 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_82_address0,
     ce0       => int_weights_82_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_82_q0,
     clk1      => ACLK,
     address1  => int_weights_82_address1,
     ce1       => int_weights_82_ce1,
     we1       => int_weights_82_be1,
     d1        => int_weights_82_d1,
     q1        => int_weights_82_q1);
-- int_weights_83
int_weights_83 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_83_address0,
     ce0       => int_weights_83_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_83_q0,
     clk1      => ACLK,
     address1  => int_weights_83_address1,
     ce1       => int_weights_83_ce1,
     we1       => int_weights_83_be1,
     d1        => int_weights_83_d1,
     q1        => int_weights_83_q1);
-- int_weights_84
int_weights_84 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_84_address0,
     ce0       => int_weights_84_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_84_q0,
     clk1      => ACLK,
     address1  => int_weights_84_address1,
     ce1       => int_weights_84_ce1,
     we1       => int_weights_84_be1,
     d1        => int_weights_84_d1,
     q1        => int_weights_84_q1);
-- int_weights_85
int_weights_85 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_85_address0,
     ce0       => int_weights_85_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_85_q0,
     clk1      => ACLK,
     address1  => int_weights_85_address1,
     ce1       => int_weights_85_ce1,
     we1       => int_weights_85_be1,
     d1        => int_weights_85_d1,
     q1        => int_weights_85_q1);
-- int_weights_86
int_weights_86 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_86_address0,
     ce0       => int_weights_86_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_86_q0,
     clk1      => ACLK,
     address1  => int_weights_86_address1,
     ce1       => int_weights_86_ce1,
     we1       => int_weights_86_be1,
     d1        => int_weights_86_d1,
     q1        => int_weights_86_q1);
-- int_weights_87
int_weights_87 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_87_address0,
     ce0       => int_weights_87_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_87_q0,
     clk1      => ACLK,
     address1  => int_weights_87_address1,
     ce1       => int_weights_87_ce1,
     we1       => int_weights_87_be1,
     d1        => int_weights_87_d1,
     q1        => int_weights_87_q1);
-- int_weights_88
int_weights_88 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_88_address0,
     ce0       => int_weights_88_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_88_q0,
     clk1      => ACLK,
     address1  => int_weights_88_address1,
     ce1       => int_weights_88_ce1,
     we1       => int_weights_88_be1,
     d1        => int_weights_88_d1,
     q1        => int_weights_88_q1);
-- int_weights_89
int_weights_89 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_89_address0,
     ce0       => int_weights_89_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_89_q0,
     clk1      => ACLK,
     address1  => int_weights_89_address1,
     ce1       => int_weights_89_ce1,
     we1       => int_weights_89_be1,
     d1        => int_weights_89_d1,
     q1        => int_weights_89_q1);
-- int_weights_90
int_weights_90 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_90_address0,
     ce0       => int_weights_90_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_90_q0,
     clk1      => ACLK,
     address1  => int_weights_90_address1,
     ce1       => int_weights_90_ce1,
     we1       => int_weights_90_be1,
     d1        => int_weights_90_d1,
     q1        => int_weights_90_q1);
-- int_weights_91
int_weights_91 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_91_address0,
     ce0       => int_weights_91_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_91_q0,
     clk1      => ACLK,
     address1  => int_weights_91_address1,
     ce1       => int_weights_91_ce1,
     we1       => int_weights_91_be1,
     d1        => int_weights_91_d1,
     q1        => int_weights_91_q1);
-- int_weights_92
int_weights_92 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_92_address0,
     ce0       => int_weights_92_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_92_q0,
     clk1      => ACLK,
     address1  => int_weights_92_address1,
     ce1       => int_weights_92_ce1,
     we1       => int_weights_92_be1,
     d1        => int_weights_92_d1,
     q1        => int_weights_92_q1);
-- int_weights_93
int_weights_93 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_93_address0,
     ce0       => int_weights_93_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_93_q0,
     clk1      => ACLK,
     address1  => int_weights_93_address1,
     ce1       => int_weights_93_ce1,
     we1       => int_weights_93_be1,
     d1        => int_weights_93_d1,
     q1        => int_weights_93_q1);
-- int_weights_94
int_weights_94 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_94_address0,
     ce0       => int_weights_94_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_94_q0,
     clk1      => ACLK,
     address1  => int_weights_94_address1,
     ce1       => int_weights_94_ce1,
     we1       => int_weights_94_be1,
     d1        => int_weights_94_d1,
     q1        => int_weights_94_q1);
-- int_weights_95
int_weights_95 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_95_address0,
     ce0       => int_weights_95_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_95_q0,
     clk1      => ACLK,
     address1  => int_weights_95_address1,
     ce1       => int_weights_95_ce1,
     we1       => int_weights_95_be1,
     d1        => int_weights_95_d1,
     q1        => int_weights_95_q1);
-- int_weights_96
int_weights_96 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_96_address0,
     ce0       => int_weights_96_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_96_q0,
     clk1      => ACLK,
     address1  => int_weights_96_address1,
     ce1       => int_weights_96_ce1,
     we1       => int_weights_96_be1,
     d1        => int_weights_96_d1,
     q1        => int_weights_96_q1);
-- int_weights_97
int_weights_97 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_97_address0,
     ce0       => int_weights_97_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_97_q0,
     clk1      => ACLK,
     address1  => int_weights_97_address1,
     ce1       => int_weights_97_ce1,
     we1       => int_weights_97_be1,
     d1        => int_weights_97_d1,
     q1        => int_weights_97_q1);
-- int_weights_98
int_weights_98 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_98_address0,
     ce0       => int_weights_98_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_98_q0,
     clk1      => ACLK,
     address1  => int_weights_98_address1,
     ce1       => int_weights_98_ce1,
     we1       => int_weights_98_be1,
     d1        => int_weights_98_d1,
     q1        => int_weights_98_q1);
-- int_weights_99
int_weights_99 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_99_address0,
     ce0       => int_weights_99_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_99_q0,
     clk1      => ACLK,
     address1  => int_weights_99_address1,
     ce1       => int_weights_99_ce1,
     we1       => int_weights_99_be1,
     d1        => int_weights_99_d1,
     q1        => int_weights_99_q1);
-- int_weights_100
int_weights_100 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_100_address0,
     ce0       => int_weights_100_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_100_q0,
     clk1      => ACLK,
     address1  => int_weights_100_address1,
     ce1       => int_weights_100_ce1,
     we1       => int_weights_100_be1,
     d1        => int_weights_100_d1,
     q1        => int_weights_100_q1);
-- int_weights_101
int_weights_101 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_101_address0,
     ce0       => int_weights_101_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_101_q0,
     clk1      => ACLK,
     address1  => int_weights_101_address1,
     ce1       => int_weights_101_ce1,
     we1       => int_weights_101_be1,
     d1        => int_weights_101_d1,
     q1        => int_weights_101_q1);
-- int_weights_102
int_weights_102 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_102_address0,
     ce0       => int_weights_102_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_102_q0,
     clk1      => ACLK,
     address1  => int_weights_102_address1,
     ce1       => int_weights_102_ce1,
     we1       => int_weights_102_be1,
     d1        => int_weights_102_d1,
     q1        => int_weights_102_q1);
-- int_weights_103
int_weights_103 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_103_address0,
     ce0       => int_weights_103_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_103_q0,
     clk1      => ACLK,
     address1  => int_weights_103_address1,
     ce1       => int_weights_103_ce1,
     we1       => int_weights_103_be1,
     d1        => int_weights_103_d1,
     q1        => int_weights_103_q1);
-- int_weights_104
int_weights_104 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_104_address0,
     ce0       => int_weights_104_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_104_q0,
     clk1      => ACLK,
     address1  => int_weights_104_address1,
     ce1       => int_weights_104_ce1,
     we1       => int_weights_104_be1,
     d1        => int_weights_104_d1,
     q1        => int_weights_104_q1);
-- int_weights_105
int_weights_105 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_105_address0,
     ce0       => int_weights_105_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_105_q0,
     clk1      => ACLK,
     address1  => int_weights_105_address1,
     ce1       => int_weights_105_ce1,
     we1       => int_weights_105_be1,
     d1        => int_weights_105_d1,
     q1        => int_weights_105_q1);
-- int_weights_106
int_weights_106 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_106_address0,
     ce0       => int_weights_106_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_106_q0,
     clk1      => ACLK,
     address1  => int_weights_106_address1,
     ce1       => int_weights_106_ce1,
     we1       => int_weights_106_be1,
     d1        => int_weights_106_d1,
     q1        => int_weights_106_q1);
-- int_weights_107
int_weights_107 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_107_address0,
     ce0       => int_weights_107_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_107_q0,
     clk1      => ACLK,
     address1  => int_weights_107_address1,
     ce1       => int_weights_107_ce1,
     we1       => int_weights_107_be1,
     d1        => int_weights_107_d1,
     q1        => int_weights_107_q1);
-- int_weights_108
int_weights_108 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_108_address0,
     ce0       => int_weights_108_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_108_q0,
     clk1      => ACLK,
     address1  => int_weights_108_address1,
     ce1       => int_weights_108_ce1,
     we1       => int_weights_108_be1,
     d1        => int_weights_108_d1,
     q1        => int_weights_108_q1);
-- int_weights_109
int_weights_109 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_109_address0,
     ce0       => int_weights_109_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_109_q0,
     clk1      => ACLK,
     address1  => int_weights_109_address1,
     ce1       => int_weights_109_ce1,
     we1       => int_weights_109_be1,
     d1        => int_weights_109_d1,
     q1        => int_weights_109_q1);
-- int_weights_110
int_weights_110 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_110_address0,
     ce0       => int_weights_110_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_110_q0,
     clk1      => ACLK,
     address1  => int_weights_110_address1,
     ce1       => int_weights_110_ce1,
     we1       => int_weights_110_be1,
     d1        => int_weights_110_d1,
     q1        => int_weights_110_q1);
-- int_weights_111
int_weights_111 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_111_address0,
     ce0       => int_weights_111_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_111_q0,
     clk1      => ACLK,
     address1  => int_weights_111_address1,
     ce1       => int_weights_111_ce1,
     we1       => int_weights_111_be1,
     d1        => int_weights_111_d1,
     q1        => int_weights_111_q1);
-- int_weights_112
int_weights_112 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_112_address0,
     ce0       => int_weights_112_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_112_q0,
     clk1      => ACLK,
     address1  => int_weights_112_address1,
     ce1       => int_weights_112_ce1,
     we1       => int_weights_112_be1,
     d1        => int_weights_112_d1,
     q1        => int_weights_112_q1);
-- int_weights_113
int_weights_113 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_113_address0,
     ce0       => int_weights_113_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_113_q0,
     clk1      => ACLK,
     address1  => int_weights_113_address1,
     ce1       => int_weights_113_ce1,
     we1       => int_weights_113_be1,
     d1        => int_weights_113_d1,
     q1        => int_weights_113_q1);
-- int_weights_114
int_weights_114 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_114_address0,
     ce0       => int_weights_114_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_114_q0,
     clk1      => ACLK,
     address1  => int_weights_114_address1,
     ce1       => int_weights_114_ce1,
     we1       => int_weights_114_be1,
     d1        => int_weights_114_d1,
     q1        => int_weights_114_q1);
-- int_weights_115
int_weights_115 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_115_address0,
     ce0       => int_weights_115_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_115_q0,
     clk1      => ACLK,
     address1  => int_weights_115_address1,
     ce1       => int_weights_115_ce1,
     we1       => int_weights_115_be1,
     d1        => int_weights_115_d1,
     q1        => int_weights_115_q1);
-- int_weights_116
int_weights_116 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_116_address0,
     ce0       => int_weights_116_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_116_q0,
     clk1      => ACLK,
     address1  => int_weights_116_address1,
     ce1       => int_weights_116_ce1,
     we1       => int_weights_116_be1,
     d1        => int_weights_116_d1,
     q1        => int_weights_116_q1);
-- int_weights_117
int_weights_117 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_117_address0,
     ce0       => int_weights_117_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_117_q0,
     clk1      => ACLK,
     address1  => int_weights_117_address1,
     ce1       => int_weights_117_ce1,
     we1       => int_weights_117_be1,
     d1        => int_weights_117_d1,
     q1        => int_weights_117_q1);
-- int_weights_118
int_weights_118 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_118_address0,
     ce0       => int_weights_118_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_118_q0,
     clk1      => ACLK,
     address1  => int_weights_118_address1,
     ce1       => int_weights_118_ce1,
     we1       => int_weights_118_be1,
     d1        => int_weights_118_d1,
     q1        => int_weights_118_q1);
-- int_weights_119
int_weights_119 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_119_address0,
     ce0       => int_weights_119_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_119_q0,
     clk1      => ACLK,
     address1  => int_weights_119_address1,
     ce1       => int_weights_119_ce1,
     we1       => int_weights_119_be1,
     d1        => int_weights_119_d1,
     q1        => int_weights_119_q1);
-- int_weights_120
int_weights_120 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_120_address0,
     ce0       => int_weights_120_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_120_q0,
     clk1      => ACLK,
     address1  => int_weights_120_address1,
     ce1       => int_weights_120_ce1,
     we1       => int_weights_120_be1,
     d1        => int_weights_120_d1,
     q1        => int_weights_120_q1);
-- int_weights_121
int_weights_121 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_121_address0,
     ce0       => int_weights_121_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_121_q0,
     clk1      => ACLK,
     address1  => int_weights_121_address1,
     ce1       => int_weights_121_ce1,
     we1       => int_weights_121_be1,
     d1        => int_weights_121_d1,
     q1        => int_weights_121_q1);
-- int_weights_122
int_weights_122 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_122_address0,
     ce0       => int_weights_122_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_122_q0,
     clk1      => ACLK,
     address1  => int_weights_122_address1,
     ce1       => int_weights_122_ce1,
     we1       => int_weights_122_be1,
     d1        => int_weights_122_d1,
     q1        => int_weights_122_q1);
-- int_weights_123
int_weights_123 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_123_address0,
     ce0       => int_weights_123_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_123_q0,
     clk1      => ACLK,
     address1  => int_weights_123_address1,
     ce1       => int_weights_123_ce1,
     we1       => int_weights_123_be1,
     d1        => int_weights_123_d1,
     q1        => int_weights_123_q1);
-- int_weights_124
int_weights_124 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_124_address0,
     ce0       => int_weights_124_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_124_q0,
     clk1      => ACLK,
     address1  => int_weights_124_address1,
     ce1       => int_weights_124_ce1,
     we1       => int_weights_124_be1,
     d1        => int_weights_124_d1,
     q1        => int_weights_124_q1);
-- int_weights_125
int_weights_125 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_125_address0,
     ce0       => int_weights_125_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_125_q0,
     clk1      => ACLK,
     address1  => int_weights_125_address1,
     ce1       => int_weights_125_ce1,
     we1       => int_weights_125_be1,
     d1        => int_weights_125_d1,
     q1        => int_weights_125_q1);
-- int_weights_126
int_weights_126 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_126_address0,
     ce0       => int_weights_126_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_126_q0,
     clk1      => ACLK,
     address1  => int_weights_126_address1,
     ce1       => int_weights_126_ce1,
     we1       => int_weights_126_be1,
     d1        => int_weights_126_d1,
     q1        => int_weights_126_q1);
-- int_weights_127
int_weights_127 : nnlayer_control_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_weights_127_address0,
     ce0       => int_weights_127_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_weights_127_q0,
     clk1      => ACLK,
     address1  => int_weights_127_address1,
     ce1       => int_weights_127_ce1,
     we1       => int_weights_127_be1,
     d1        => int_weights_127_d1,
     q1        => int_weights_127_q1);


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata and ar_hs = '0' else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, w_hs, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (w_hs = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_bias_read = '0') and (int_weights_0_read = '0') and (int_weights_1_read = '0') and (int_weights_2_read = '0') and (int_weights_3_read = '0') and (int_weights_4_read = '0') and (int_weights_5_read = '0') and (int_weights_6_read = '0') and (int_weights_7_read = '0') and (int_weights_8_read = '0') and (int_weights_9_read = '0') and (int_weights_10_read = '0') and (int_weights_11_read = '0') and (int_weights_12_read = '0') and (int_weights_13_read = '0') and (int_weights_14_read = '0') and (int_weights_15_read = '0') and (int_weights_16_read = '0') and (int_weights_17_read = '0') and (int_weights_18_read = '0') and (int_weights_19_read = '0') and (int_weights_20_read = '0') and (int_weights_21_read = '0') and (int_weights_22_read = '0') and (int_weights_23_read = '0') and (int_weights_24_read = '0') and (int_weights_25_read = '0') and (int_weights_26_read = '0') and (int_weights_27_read = '0') and (int_weights_28_read = '0') and (int_weights_29_read = '0') and (int_weights_30_read = '0') and (int_weights_31_read = '0') and (int_weights_32_read = '0') and (int_weights_33_read = '0') and (int_weights_34_read = '0') and (int_weights_35_read = '0') and (int_weights_36_read = '0') and (int_weights_37_read = '0') and (int_weights_38_read = '0') and (int_weights_39_read = '0') and (int_weights_40_read = '0') and (int_weights_41_read = '0') and (int_weights_42_read = '0') and (int_weights_43_read = '0') and (int_weights_44_read = '0') and (int_weights_45_read = '0') and (int_weights_46_read = '0') and (int_weights_47_read = '0') and (int_weights_48_read = '0') and (int_weights_49_read = '0') and (int_weights_50_read = '0') and (int_weights_51_read = '0') and (int_weights_52_read = '0') and (int_weights_53_read = '0') and (int_weights_54_read = '0') and (int_weights_55_read = '0') and (int_weights_56_read = '0') and (int_weights_57_read = '0') and (int_weights_58_read = '0') and (int_weights_59_read = '0') and (int_weights_60_read = '0') and (int_weights_61_read = '0') and (int_weights_62_read = '0') and (int_weights_63_read = '0') and (int_weights_64_read = '0') and (int_weights_65_read = '0') and (int_weights_66_read = '0') and (int_weights_67_read = '0') and (int_weights_68_read = '0') and (int_weights_69_read = '0') and (int_weights_70_read = '0') and (int_weights_71_read = '0') and (int_weights_72_read = '0') and (int_weights_73_read = '0') and (int_weights_74_read = '0') and (int_weights_75_read = '0') and (int_weights_76_read = '0') and (int_weights_77_read = '0') and (int_weights_78_read = '0') and (int_weights_79_read = '0') and (int_weights_80_read = '0') and (int_weights_81_read = '0') and (int_weights_82_read = '0') and (int_weights_83_read = '0') and (int_weights_84_read = '0') and (int_weights_85_read = '0') and (int_weights_86_read = '0') and (int_weights_87_read = '0') and (int_weights_88_read = '0') and (int_weights_89_read = '0') and (int_weights_90_read = '0') and (int_weights_91_read = '0') and (int_weights_92_read = '0') and (int_weights_93_read = '0') and (int_weights_94_read = '0') and (int_weights_95_read = '0') and (int_weights_96_read = '0') and (int_weights_97_read = '0') and (int_weights_98_read = '0') and (int_weights_99_read = '0') and (int_weights_100_read = '0') and (int_weights_101_read = '0') and (int_weights_102_read = '0') and (int_weights_103_read = '0') and (int_weights_104_read = '0') and (int_weights_105_read = '0') and (int_weights_106_read = '0') and (int_weights_107_read = '0') and (int_weights_108_read = '0') and (int_weights_109_read = '0') and (int_weights_110_read = '0') and (int_weights_111_read = '0') and (int_weights_112_read = '0') and (int_weights_113_read = '0') and (int_weights_114_read = '0') and (int_weights_115_read = '0') and (int_weights_116_read = '0') and (int_weights_117_read = '0') and (int_weights_118_read = '0') and (int_weights_119_read = '0') and (int_weights_120_read = '0') and (int_weights_121_read = '0') and (int_weights_122_read = '0') and (int_weights_123_read = '0') and (int_weights_124_read = '0') and (int_weights_125_read = '0') and (int_weights_126_read = '0') and (int_weights_127_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(5 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(5 downto 0) <= int_isr;
                    when ADDR_INPUT_0_DATA_0 =>
                        rdata_data <= RESIZE(int_input_0(15 downto 0), 32);
                    when ADDR_INPUT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_input_1(15 downto 0), 32);
                    when ADDR_INPUT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_input_2(15 downto 0), 32);
                    when ADDR_INPUT_3_DATA_0 =>
                        rdata_data <= RESIZE(int_input_3(15 downto 0), 32);
                    when ADDR_INPUT_4_DATA_0 =>
                        rdata_data <= RESIZE(int_input_4(15 downto 0), 32);
                    when ADDR_INPUT_5_DATA_0 =>
                        rdata_data <= RESIZE(int_input_5(15 downto 0), 32);
                    when ADDR_INPUT_6_DATA_0 =>
                        rdata_data <= RESIZE(int_input_6(15 downto 0), 32);
                    when ADDR_INPUT_7_DATA_0 =>
                        rdata_data <= RESIZE(int_input_7(15 downto 0), 32);
                    when ADDR_INPUT_8_DATA_0 =>
                        rdata_data <= RESIZE(int_input_8(15 downto 0), 32);
                    when ADDR_INPUT_9_DATA_0 =>
                        rdata_data <= RESIZE(int_input_9(15 downto 0), 32);
                    when ADDR_INPUT_10_DATA_0 =>
                        rdata_data <= RESIZE(int_input_10(15 downto 0), 32);
                    when ADDR_INPUT_11_DATA_0 =>
                        rdata_data <= RESIZE(int_input_11(15 downto 0), 32);
                    when ADDR_INPUT_12_DATA_0 =>
                        rdata_data <= RESIZE(int_input_12(15 downto 0), 32);
                    when ADDR_INPUT_13_DATA_0 =>
                        rdata_data <= RESIZE(int_input_13(15 downto 0), 32);
                    when ADDR_INPUT_14_DATA_0 =>
                        rdata_data <= RESIZE(int_input_14(15 downto 0), 32);
                    when ADDR_INPUT_15_DATA_0 =>
                        rdata_data <= RESIZE(int_input_15(15 downto 0), 32);
                    when ADDR_INPUT_16_DATA_0 =>
                        rdata_data <= RESIZE(int_input_16(15 downto 0), 32);
                    when ADDR_INPUT_17_DATA_0 =>
                        rdata_data <= RESIZE(int_input_17(15 downto 0), 32);
                    when ADDR_INPUT_18_DATA_0 =>
                        rdata_data <= RESIZE(int_input_18(15 downto 0), 32);
                    when ADDR_INPUT_19_DATA_0 =>
                        rdata_data <= RESIZE(int_input_19(15 downto 0), 32);
                    when ADDR_INPUT_20_DATA_0 =>
                        rdata_data <= RESIZE(int_input_20(15 downto 0), 32);
                    when ADDR_INPUT_21_DATA_0 =>
                        rdata_data <= RESIZE(int_input_21(15 downto 0), 32);
                    when ADDR_INPUT_22_DATA_0 =>
                        rdata_data <= RESIZE(int_input_22(15 downto 0), 32);
                    when ADDR_INPUT_23_DATA_0 =>
                        rdata_data <= RESIZE(int_input_23(15 downto 0), 32);
                    when ADDR_INPUT_24_DATA_0 =>
                        rdata_data <= RESIZE(int_input_24(15 downto 0), 32);
                    when ADDR_INPUT_25_DATA_0 =>
                        rdata_data <= RESIZE(int_input_25(15 downto 0), 32);
                    when ADDR_INPUT_26_DATA_0 =>
                        rdata_data <= RESIZE(int_input_26(15 downto 0), 32);
                    when ADDR_INPUT_27_DATA_0 =>
                        rdata_data <= RESIZE(int_input_27(15 downto 0), 32);
                    when ADDR_INPUT_28_DATA_0 =>
                        rdata_data <= RESIZE(int_input_28(15 downto 0), 32);
                    when ADDR_INPUT_29_DATA_0 =>
                        rdata_data <= RESIZE(int_input_29(15 downto 0), 32);
                    when ADDR_INPUT_30_DATA_0 =>
                        rdata_data <= RESIZE(int_input_30(15 downto 0), 32);
                    when ADDR_INPUT_31_DATA_0 =>
                        rdata_data <= RESIZE(int_input_31(15 downto 0), 32);
                    when ADDR_INPUT_32_DATA_0 =>
                        rdata_data <= RESIZE(int_input_32(15 downto 0), 32);
                    when ADDR_INPUT_33_DATA_0 =>
                        rdata_data <= RESIZE(int_input_33(15 downto 0), 32);
                    when ADDR_INPUT_34_DATA_0 =>
                        rdata_data <= RESIZE(int_input_34(15 downto 0), 32);
                    when ADDR_INPUT_35_DATA_0 =>
                        rdata_data <= RESIZE(int_input_35(15 downto 0), 32);
                    when ADDR_INPUT_36_DATA_0 =>
                        rdata_data <= RESIZE(int_input_36(15 downto 0), 32);
                    when ADDR_INPUT_37_DATA_0 =>
                        rdata_data <= RESIZE(int_input_37(15 downto 0), 32);
                    when ADDR_INPUT_38_DATA_0 =>
                        rdata_data <= RESIZE(int_input_38(15 downto 0), 32);
                    when ADDR_INPUT_39_DATA_0 =>
                        rdata_data <= RESIZE(int_input_39(15 downto 0), 32);
                    when ADDR_INPUT_40_DATA_0 =>
                        rdata_data <= RESIZE(int_input_40(15 downto 0), 32);
                    when ADDR_INPUT_41_DATA_0 =>
                        rdata_data <= RESIZE(int_input_41(15 downto 0), 32);
                    when ADDR_INPUT_42_DATA_0 =>
                        rdata_data <= RESIZE(int_input_42(15 downto 0), 32);
                    when ADDR_INPUT_43_DATA_0 =>
                        rdata_data <= RESIZE(int_input_43(15 downto 0), 32);
                    when ADDR_INPUT_44_DATA_0 =>
                        rdata_data <= RESIZE(int_input_44(15 downto 0), 32);
                    when ADDR_INPUT_45_DATA_0 =>
                        rdata_data <= RESIZE(int_input_45(15 downto 0), 32);
                    when ADDR_INPUT_46_DATA_0 =>
                        rdata_data <= RESIZE(int_input_46(15 downto 0), 32);
                    when ADDR_INPUT_47_DATA_0 =>
                        rdata_data <= RESIZE(int_input_47(15 downto 0), 32);
                    when ADDR_INPUT_48_DATA_0 =>
                        rdata_data <= RESIZE(int_input_48(15 downto 0), 32);
                    when ADDR_INPUT_49_DATA_0 =>
                        rdata_data <= RESIZE(int_input_49(15 downto 0), 32);
                    when ADDR_INPUT_50_DATA_0 =>
                        rdata_data <= RESIZE(int_input_50(15 downto 0), 32);
                    when ADDR_INPUT_51_DATA_0 =>
                        rdata_data <= RESIZE(int_input_51(15 downto 0), 32);
                    when ADDR_INPUT_52_DATA_0 =>
                        rdata_data <= RESIZE(int_input_52(15 downto 0), 32);
                    when ADDR_INPUT_53_DATA_0 =>
                        rdata_data <= RESIZE(int_input_53(15 downto 0), 32);
                    when ADDR_INPUT_54_DATA_0 =>
                        rdata_data <= RESIZE(int_input_54(15 downto 0), 32);
                    when ADDR_INPUT_55_DATA_0 =>
                        rdata_data <= RESIZE(int_input_55(15 downto 0), 32);
                    when ADDR_INPUT_56_DATA_0 =>
                        rdata_data <= RESIZE(int_input_56(15 downto 0), 32);
                    when ADDR_INPUT_57_DATA_0 =>
                        rdata_data <= RESIZE(int_input_57(15 downto 0), 32);
                    when ADDR_INPUT_58_DATA_0 =>
                        rdata_data <= RESIZE(int_input_58(15 downto 0), 32);
                    when ADDR_INPUT_59_DATA_0 =>
                        rdata_data <= RESIZE(int_input_59(15 downto 0), 32);
                    when ADDR_INPUT_60_DATA_0 =>
                        rdata_data <= RESIZE(int_input_60(15 downto 0), 32);
                    when ADDR_INPUT_61_DATA_0 =>
                        rdata_data <= RESIZE(int_input_61(15 downto 0), 32);
                    when ADDR_INPUT_62_DATA_0 =>
                        rdata_data <= RESIZE(int_input_62(15 downto 0), 32);
                    when ADDR_INPUT_63_DATA_0 =>
                        rdata_data <= RESIZE(int_input_63(15 downto 0), 32);
                    when ADDR_INPUT_64_DATA_0 =>
                        rdata_data <= RESIZE(int_input_64(15 downto 0), 32);
                    when ADDR_INPUT_65_DATA_0 =>
                        rdata_data <= RESIZE(int_input_65(15 downto 0), 32);
                    when ADDR_INPUT_66_DATA_0 =>
                        rdata_data <= RESIZE(int_input_66(15 downto 0), 32);
                    when ADDR_INPUT_67_DATA_0 =>
                        rdata_data <= RESIZE(int_input_67(15 downto 0), 32);
                    when ADDR_INPUT_68_DATA_0 =>
                        rdata_data <= RESIZE(int_input_68(15 downto 0), 32);
                    when ADDR_INPUT_69_DATA_0 =>
                        rdata_data <= RESIZE(int_input_69(15 downto 0), 32);
                    when ADDR_INPUT_70_DATA_0 =>
                        rdata_data <= RESIZE(int_input_70(15 downto 0), 32);
                    when ADDR_INPUT_71_DATA_0 =>
                        rdata_data <= RESIZE(int_input_71(15 downto 0), 32);
                    when ADDR_INPUT_72_DATA_0 =>
                        rdata_data <= RESIZE(int_input_72(15 downto 0), 32);
                    when ADDR_INPUT_73_DATA_0 =>
                        rdata_data <= RESIZE(int_input_73(15 downto 0), 32);
                    when ADDR_INPUT_74_DATA_0 =>
                        rdata_data <= RESIZE(int_input_74(15 downto 0), 32);
                    when ADDR_INPUT_75_DATA_0 =>
                        rdata_data <= RESIZE(int_input_75(15 downto 0), 32);
                    when ADDR_INPUT_76_DATA_0 =>
                        rdata_data <= RESIZE(int_input_76(15 downto 0), 32);
                    when ADDR_INPUT_77_DATA_0 =>
                        rdata_data <= RESIZE(int_input_77(15 downto 0), 32);
                    when ADDR_INPUT_78_DATA_0 =>
                        rdata_data <= RESIZE(int_input_78(15 downto 0), 32);
                    when ADDR_INPUT_79_DATA_0 =>
                        rdata_data <= RESIZE(int_input_79(15 downto 0), 32);
                    when ADDR_INPUT_80_DATA_0 =>
                        rdata_data <= RESIZE(int_input_80(15 downto 0), 32);
                    when ADDR_INPUT_81_DATA_0 =>
                        rdata_data <= RESIZE(int_input_81(15 downto 0), 32);
                    when ADDR_INPUT_82_DATA_0 =>
                        rdata_data <= RESIZE(int_input_82(15 downto 0), 32);
                    when ADDR_INPUT_83_DATA_0 =>
                        rdata_data <= RESIZE(int_input_83(15 downto 0), 32);
                    when ADDR_INPUT_84_DATA_0 =>
                        rdata_data <= RESIZE(int_input_84(15 downto 0), 32);
                    when ADDR_INPUT_85_DATA_0 =>
                        rdata_data <= RESIZE(int_input_85(15 downto 0), 32);
                    when ADDR_INPUT_86_DATA_0 =>
                        rdata_data <= RESIZE(int_input_86(15 downto 0), 32);
                    when ADDR_INPUT_87_DATA_0 =>
                        rdata_data <= RESIZE(int_input_87(15 downto 0), 32);
                    when ADDR_INPUT_88_DATA_0 =>
                        rdata_data <= RESIZE(int_input_88(15 downto 0), 32);
                    when ADDR_INPUT_89_DATA_0 =>
                        rdata_data <= RESIZE(int_input_89(15 downto 0), 32);
                    when ADDR_INPUT_90_DATA_0 =>
                        rdata_data <= RESIZE(int_input_90(15 downto 0), 32);
                    when ADDR_INPUT_91_DATA_0 =>
                        rdata_data <= RESIZE(int_input_91(15 downto 0), 32);
                    when ADDR_INPUT_92_DATA_0 =>
                        rdata_data <= RESIZE(int_input_92(15 downto 0), 32);
                    when ADDR_INPUT_93_DATA_0 =>
                        rdata_data <= RESIZE(int_input_93(15 downto 0), 32);
                    when ADDR_INPUT_94_DATA_0 =>
                        rdata_data <= RESIZE(int_input_94(15 downto 0), 32);
                    when ADDR_INPUT_95_DATA_0 =>
                        rdata_data <= RESIZE(int_input_95(15 downto 0), 32);
                    when ADDR_INPUT_96_DATA_0 =>
                        rdata_data <= RESIZE(int_input_96(15 downto 0), 32);
                    when ADDR_INPUT_97_DATA_0 =>
                        rdata_data <= RESIZE(int_input_97(15 downto 0), 32);
                    when ADDR_INPUT_98_DATA_0 =>
                        rdata_data <= RESIZE(int_input_98(15 downto 0), 32);
                    when ADDR_INPUT_99_DATA_0 =>
                        rdata_data <= RESIZE(int_input_99(15 downto 0), 32);
                    when ADDR_INPUT_100_DATA_0 =>
                        rdata_data <= RESIZE(int_input_100(15 downto 0), 32);
                    when ADDR_INPUT_101_DATA_0 =>
                        rdata_data <= RESIZE(int_input_101(15 downto 0), 32);
                    when ADDR_INPUT_102_DATA_0 =>
                        rdata_data <= RESIZE(int_input_102(15 downto 0), 32);
                    when ADDR_INPUT_103_DATA_0 =>
                        rdata_data <= RESIZE(int_input_103(15 downto 0), 32);
                    when ADDR_INPUT_104_DATA_0 =>
                        rdata_data <= RESIZE(int_input_104(15 downto 0), 32);
                    when ADDR_INPUT_105_DATA_0 =>
                        rdata_data <= RESIZE(int_input_105(15 downto 0), 32);
                    when ADDR_INPUT_106_DATA_0 =>
                        rdata_data <= RESIZE(int_input_106(15 downto 0), 32);
                    when ADDR_INPUT_107_DATA_0 =>
                        rdata_data <= RESIZE(int_input_107(15 downto 0), 32);
                    when ADDR_INPUT_108_DATA_0 =>
                        rdata_data <= RESIZE(int_input_108(15 downto 0), 32);
                    when ADDR_INPUT_109_DATA_0 =>
                        rdata_data <= RESIZE(int_input_109(15 downto 0), 32);
                    when ADDR_INPUT_110_DATA_0 =>
                        rdata_data <= RESIZE(int_input_110(15 downto 0), 32);
                    when ADDR_INPUT_111_DATA_0 =>
                        rdata_data <= RESIZE(int_input_111(15 downto 0), 32);
                    when ADDR_INPUT_112_DATA_0 =>
                        rdata_data <= RESIZE(int_input_112(15 downto 0), 32);
                    when ADDR_INPUT_113_DATA_0 =>
                        rdata_data <= RESIZE(int_input_113(15 downto 0), 32);
                    when ADDR_INPUT_114_DATA_0 =>
                        rdata_data <= RESIZE(int_input_114(15 downto 0), 32);
                    when ADDR_INPUT_115_DATA_0 =>
                        rdata_data <= RESIZE(int_input_115(15 downto 0), 32);
                    when ADDR_INPUT_116_DATA_0 =>
                        rdata_data <= RESIZE(int_input_116(15 downto 0), 32);
                    when ADDR_INPUT_117_DATA_0 =>
                        rdata_data <= RESIZE(int_input_117(15 downto 0), 32);
                    when ADDR_INPUT_118_DATA_0 =>
                        rdata_data <= RESIZE(int_input_118(15 downto 0), 32);
                    when ADDR_INPUT_119_DATA_0 =>
                        rdata_data <= RESIZE(int_input_119(15 downto 0), 32);
                    when ADDR_INPUT_120_DATA_0 =>
                        rdata_data <= RESIZE(int_input_120(15 downto 0), 32);
                    when ADDR_INPUT_121_DATA_0 =>
                        rdata_data <= RESIZE(int_input_121(15 downto 0), 32);
                    when ADDR_INPUT_122_DATA_0 =>
                        rdata_data <= RESIZE(int_input_122(15 downto 0), 32);
                    when ADDR_INPUT_123_DATA_0 =>
                        rdata_data <= RESIZE(int_input_123(15 downto 0), 32);
                    when ADDR_INPUT_124_DATA_0 =>
                        rdata_data <= RESIZE(int_input_124(15 downto 0), 32);
                    when ADDR_INPUT_125_DATA_0 =>
                        rdata_data <= RESIZE(int_input_125(15 downto 0), 32);
                    when ADDR_INPUT_126_DATA_0 =>
                        rdata_data <= RESIZE(int_input_126(15 downto 0), 32);
                    when ADDR_INPUT_127_DATA_0 =>
                        rdata_data <= RESIZE(int_input_127(15 downto 0), 32);
                    when ADDR_OUTPUT_0_DATA_0 =>
                        rdata_data <= RESIZE(int_output_0(15 downto 0), 32);
                    when ADDR_OUTPUT_0_CTRL =>
                        rdata_data(0) <= int_output_0_ap_vld;
                    when ADDR_OUTPUT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_output_1(15 downto 0), 32);
                    when ADDR_OUTPUT_1_CTRL =>
                        rdata_data(0) <= int_output_1_ap_vld;
                    when ADDR_OUTPUT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_output_2(15 downto 0), 32);
                    when ADDR_OUTPUT_2_CTRL =>
                        rdata_data(0) <= int_output_2_ap_vld;
                    when ADDR_OUTPUT_3_DATA_0 =>
                        rdata_data <= RESIZE(int_output_3(15 downto 0), 32);
                    when ADDR_OUTPUT_3_CTRL =>
                        rdata_data(0) <= int_output_3_ap_vld;
                    when ADDR_OUTPUT_4_DATA_0 =>
                        rdata_data <= RESIZE(int_output_4(15 downto 0), 32);
                    when ADDR_OUTPUT_4_CTRL =>
                        rdata_data(0) <= int_output_4_ap_vld;
                    when ADDR_OUTPUT_5_DATA_0 =>
                        rdata_data <= RESIZE(int_output_5(15 downto 0), 32);
                    when ADDR_OUTPUT_5_CTRL =>
                        rdata_data(0) <= int_output_5_ap_vld;
                    when ADDR_OUTPUT_6_DATA_0 =>
                        rdata_data <= RESIZE(int_output_6(15 downto 0), 32);
                    when ADDR_OUTPUT_6_CTRL =>
                        rdata_data(0) <= int_output_6_ap_vld;
                    when ADDR_OUTPUT_7_DATA_0 =>
                        rdata_data <= RESIZE(int_output_7(15 downto 0), 32);
                    when ADDR_OUTPUT_7_CTRL =>
                        rdata_data(0) <= int_output_7_ap_vld;
                    when ADDR_OUTPUT_8_DATA_0 =>
                        rdata_data <= RESIZE(int_output_8(15 downto 0), 32);
                    when ADDR_OUTPUT_8_CTRL =>
                        rdata_data(0) <= int_output_8_ap_vld;
                    when ADDR_OUTPUT_9_DATA_0 =>
                        rdata_data <= RESIZE(int_output_9(15 downto 0), 32);
                    when ADDR_OUTPUT_9_CTRL =>
                        rdata_data(0) <= int_output_9_ap_vld;
                    when ADDR_OUTPUT_10_DATA_0 =>
                        rdata_data <= RESIZE(int_output_10(15 downto 0), 32);
                    when ADDR_OUTPUT_10_CTRL =>
                        rdata_data(0) <= int_output_10_ap_vld;
                    when ADDR_OUTPUT_11_DATA_0 =>
                        rdata_data <= RESIZE(int_output_11(15 downto 0), 32);
                    when ADDR_OUTPUT_11_CTRL =>
                        rdata_data(0) <= int_output_11_ap_vld;
                    when ADDR_OUTPUT_12_DATA_0 =>
                        rdata_data <= RESIZE(int_output_12(15 downto 0), 32);
                    when ADDR_OUTPUT_12_CTRL =>
                        rdata_data(0) <= int_output_12_ap_vld;
                    when ADDR_OUTPUT_13_DATA_0 =>
                        rdata_data <= RESIZE(int_output_13(15 downto 0), 32);
                    when ADDR_OUTPUT_13_CTRL =>
                        rdata_data(0) <= int_output_13_ap_vld;
                    when ADDR_OUTPUT_14_DATA_0 =>
                        rdata_data <= RESIZE(int_output_14(15 downto 0), 32);
                    when ADDR_OUTPUT_14_CTRL =>
                        rdata_data(0) <= int_output_14_ap_vld;
                    when ADDR_OUTPUT_15_DATA_0 =>
                        rdata_data <= RESIZE(int_output_15(15 downto 0), 32);
                    when ADDR_OUTPUT_15_CTRL =>
                        rdata_data(0) <= int_output_15_ap_vld;
                    when ADDR_OUTPUT_16_DATA_0 =>
                        rdata_data <= RESIZE(int_output_16(15 downto 0), 32);
                    when ADDR_OUTPUT_16_CTRL =>
                        rdata_data(0) <= int_output_16_ap_vld;
                    when ADDR_OUTPUT_17_DATA_0 =>
                        rdata_data <= RESIZE(int_output_17(15 downto 0), 32);
                    when ADDR_OUTPUT_17_CTRL =>
                        rdata_data(0) <= int_output_17_ap_vld;
                    when ADDR_OUTPUT_18_DATA_0 =>
                        rdata_data <= RESIZE(int_output_18(15 downto 0), 32);
                    when ADDR_OUTPUT_18_CTRL =>
                        rdata_data(0) <= int_output_18_ap_vld;
                    when ADDR_OUTPUT_19_DATA_0 =>
                        rdata_data <= RESIZE(int_output_19(15 downto 0), 32);
                    when ADDR_OUTPUT_19_CTRL =>
                        rdata_data(0) <= int_output_19_ap_vld;
                    when ADDR_OUTPUT_20_DATA_0 =>
                        rdata_data <= RESIZE(int_output_20(15 downto 0), 32);
                    when ADDR_OUTPUT_20_CTRL =>
                        rdata_data(0) <= int_output_20_ap_vld;
                    when ADDR_OUTPUT_21_DATA_0 =>
                        rdata_data <= RESIZE(int_output_21(15 downto 0), 32);
                    when ADDR_OUTPUT_21_CTRL =>
                        rdata_data(0) <= int_output_21_ap_vld;
                    when ADDR_OUTPUT_22_DATA_0 =>
                        rdata_data <= RESIZE(int_output_22(15 downto 0), 32);
                    when ADDR_OUTPUT_22_CTRL =>
                        rdata_data(0) <= int_output_22_ap_vld;
                    when ADDR_OUTPUT_23_DATA_0 =>
                        rdata_data <= RESIZE(int_output_23(15 downto 0), 32);
                    when ADDR_OUTPUT_23_CTRL =>
                        rdata_data(0) <= int_output_23_ap_vld;
                    when ADDR_OUTPUT_24_DATA_0 =>
                        rdata_data <= RESIZE(int_output_24(15 downto 0), 32);
                    when ADDR_OUTPUT_24_CTRL =>
                        rdata_data(0) <= int_output_24_ap_vld;
                    when ADDR_OUTPUT_25_DATA_0 =>
                        rdata_data <= RESIZE(int_output_25(15 downto 0), 32);
                    when ADDR_OUTPUT_25_CTRL =>
                        rdata_data(0) <= int_output_25_ap_vld;
                    when ADDR_OUTPUT_26_DATA_0 =>
                        rdata_data <= RESIZE(int_output_26(15 downto 0), 32);
                    when ADDR_OUTPUT_26_CTRL =>
                        rdata_data(0) <= int_output_26_ap_vld;
                    when ADDR_OUTPUT_27_DATA_0 =>
                        rdata_data <= RESIZE(int_output_27(15 downto 0), 32);
                    when ADDR_OUTPUT_27_CTRL =>
                        rdata_data(0) <= int_output_27_ap_vld;
                    when ADDR_OUTPUT_28_DATA_0 =>
                        rdata_data <= RESIZE(int_output_28(15 downto 0), 32);
                    when ADDR_OUTPUT_28_CTRL =>
                        rdata_data(0) <= int_output_28_ap_vld;
                    when ADDR_OUTPUT_29_DATA_0 =>
                        rdata_data <= RESIZE(int_output_29(15 downto 0), 32);
                    when ADDR_OUTPUT_29_CTRL =>
                        rdata_data(0) <= int_output_29_ap_vld;
                    when ADDR_OUTPUT_30_DATA_0 =>
                        rdata_data <= RESIZE(int_output_30(15 downto 0), 32);
                    when ADDR_OUTPUT_30_CTRL =>
                        rdata_data(0) <= int_output_30_ap_vld;
                    when ADDR_OUTPUT_31_DATA_0 =>
                        rdata_data <= RESIZE(int_output_31(15 downto 0), 32);
                    when ADDR_OUTPUT_31_CTRL =>
                        rdata_data(0) <= int_output_31_ap_vld;
                    when ADDR_OUTPUT_32_DATA_0 =>
                        rdata_data <= RESIZE(int_output_32(15 downto 0), 32);
                    when ADDR_OUTPUT_32_CTRL =>
                        rdata_data(0) <= int_output_32_ap_vld;
                    when ADDR_OUTPUT_33_DATA_0 =>
                        rdata_data <= RESIZE(int_output_33(15 downto 0), 32);
                    when ADDR_OUTPUT_33_CTRL =>
                        rdata_data(0) <= int_output_33_ap_vld;
                    when ADDR_OUTPUT_34_DATA_0 =>
                        rdata_data <= RESIZE(int_output_34(15 downto 0), 32);
                    when ADDR_OUTPUT_34_CTRL =>
                        rdata_data(0) <= int_output_34_ap_vld;
                    when ADDR_OUTPUT_35_DATA_0 =>
                        rdata_data <= RESIZE(int_output_35(15 downto 0), 32);
                    when ADDR_OUTPUT_35_CTRL =>
                        rdata_data(0) <= int_output_35_ap_vld;
                    when ADDR_OUTPUT_36_DATA_0 =>
                        rdata_data <= RESIZE(int_output_36(15 downto 0), 32);
                    when ADDR_OUTPUT_36_CTRL =>
                        rdata_data(0) <= int_output_36_ap_vld;
                    when ADDR_OUTPUT_37_DATA_0 =>
                        rdata_data <= RESIZE(int_output_37(15 downto 0), 32);
                    when ADDR_OUTPUT_37_CTRL =>
                        rdata_data(0) <= int_output_37_ap_vld;
                    when ADDR_OUTPUT_38_DATA_0 =>
                        rdata_data <= RESIZE(int_output_38(15 downto 0), 32);
                    when ADDR_OUTPUT_38_CTRL =>
                        rdata_data(0) <= int_output_38_ap_vld;
                    when ADDR_OUTPUT_39_DATA_0 =>
                        rdata_data <= RESIZE(int_output_39(15 downto 0), 32);
                    when ADDR_OUTPUT_39_CTRL =>
                        rdata_data(0) <= int_output_39_ap_vld;
                    when ADDR_OUTPUT_40_DATA_0 =>
                        rdata_data <= RESIZE(int_output_40(15 downto 0), 32);
                    when ADDR_OUTPUT_40_CTRL =>
                        rdata_data(0) <= int_output_40_ap_vld;
                    when ADDR_OUTPUT_41_DATA_0 =>
                        rdata_data <= RESIZE(int_output_41(15 downto 0), 32);
                    when ADDR_OUTPUT_41_CTRL =>
                        rdata_data(0) <= int_output_41_ap_vld;
                    when ADDR_OUTPUT_42_DATA_0 =>
                        rdata_data <= RESIZE(int_output_42(15 downto 0), 32);
                    when ADDR_OUTPUT_42_CTRL =>
                        rdata_data(0) <= int_output_42_ap_vld;
                    when ADDR_OUTPUT_43_DATA_0 =>
                        rdata_data <= RESIZE(int_output_43(15 downto 0), 32);
                    when ADDR_OUTPUT_43_CTRL =>
                        rdata_data(0) <= int_output_43_ap_vld;
                    when ADDR_OUTPUT_44_DATA_0 =>
                        rdata_data <= RESIZE(int_output_44(15 downto 0), 32);
                    when ADDR_OUTPUT_44_CTRL =>
                        rdata_data(0) <= int_output_44_ap_vld;
                    when ADDR_OUTPUT_45_DATA_0 =>
                        rdata_data <= RESIZE(int_output_45(15 downto 0), 32);
                    when ADDR_OUTPUT_45_CTRL =>
                        rdata_data(0) <= int_output_45_ap_vld;
                    when ADDR_OUTPUT_46_DATA_0 =>
                        rdata_data <= RESIZE(int_output_46(15 downto 0), 32);
                    when ADDR_OUTPUT_46_CTRL =>
                        rdata_data(0) <= int_output_46_ap_vld;
                    when ADDR_OUTPUT_47_DATA_0 =>
                        rdata_data <= RESIZE(int_output_47(15 downto 0), 32);
                    when ADDR_OUTPUT_47_CTRL =>
                        rdata_data(0) <= int_output_47_ap_vld;
                    when ADDR_OUTPUT_48_DATA_0 =>
                        rdata_data <= RESIZE(int_output_48(15 downto 0), 32);
                    when ADDR_OUTPUT_48_CTRL =>
                        rdata_data(0) <= int_output_48_ap_vld;
                    when ADDR_OUTPUT_49_DATA_0 =>
                        rdata_data <= RESIZE(int_output_49(15 downto 0), 32);
                    when ADDR_OUTPUT_49_CTRL =>
                        rdata_data(0) <= int_output_49_ap_vld;
                    when ADDR_OUTPUT_50_DATA_0 =>
                        rdata_data <= RESIZE(int_output_50(15 downto 0), 32);
                    when ADDR_OUTPUT_50_CTRL =>
                        rdata_data(0) <= int_output_50_ap_vld;
                    when ADDR_OUTPUT_51_DATA_0 =>
                        rdata_data <= RESIZE(int_output_51(15 downto 0), 32);
                    when ADDR_OUTPUT_51_CTRL =>
                        rdata_data(0) <= int_output_51_ap_vld;
                    when ADDR_OUTPUT_52_DATA_0 =>
                        rdata_data <= RESIZE(int_output_52(15 downto 0), 32);
                    when ADDR_OUTPUT_52_CTRL =>
                        rdata_data(0) <= int_output_52_ap_vld;
                    when ADDR_OUTPUT_53_DATA_0 =>
                        rdata_data <= RESIZE(int_output_53(15 downto 0), 32);
                    when ADDR_OUTPUT_53_CTRL =>
                        rdata_data(0) <= int_output_53_ap_vld;
                    when ADDR_OUTPUT_54_DATA_0 =>
                        rdata_data <= RESIZE(int_output_54(15 downto 0), 32);
                    when ADDR_OUTPUT_54_CTRL =>
                        rdata_data(0) <= int_output_54_ap_vld;
                    when ADDR_OUTPUT_55_DATA_0 =>
                        rdata_data <= RESIZE(int_output_55(15 downto 0), 32);
                    when ADDR_OUTPUT_55_CTRL =>
                        rdata_data(0) <= int_output_55_ap_vld;
                    when ADDR_OUTPUT_56_DATA_0 =>
                        rdata_data <= RESIZE(int_output_56(15 downto 0), 32);
                    when ADDR_OUTPUT_56_CTRL =>
                        rdata_data(0) <= int_output_56_ap_vld;
                    when ADDR_OUTPUT_57_DATA_0 =>
                        rdata_data <= RESIZE(int_output_57(15 downto 0), 32);
                    when ADDR_OUTPUT_57_CTRL =>
                        rdata_data(0) <= int_output_57_ap_vld;
                    when ADDR_OUTPUT_58_DATA_0 =>
                        rdata_data <= RESIZE(int_output_58(15 downto 0), 32);
                    when ADDR_OUTPUT_58_CTRL =>
                        rdata_data(0) <= int_output_58_ap_vld;
                    when ADDR_OUTPUT_59_DATA_0 =>
                        rdata_data <= RESIZE(int_output_59(15 downto 0), 32);
                    when ADDR_OUTPUT_59_CTRL =>
                        rdata_data(0) <= int_output_59_ap_vld;
                    when ADDR_OUTPUT_60_DATA_0 =>
                        rdata_data <= RESIZE(int_output_60(15 downto 0), 32);
                    when ADDR_OUTPUT_60_CTRL =>
                        rdata_data(0) <= int_output_60_ap_vld;
                    when ADDR_OUTPUT_61_DATA_0 =>
                        rdata_data <= RESIZE(int_output_61(15 downto 0), 32);
                    when ADDR_OUTPUT_61_CTRL =>
                        rdata_data(0) <= int_output_61_ap_vld;
                    when ADDR_OUTPUT_62_DATA_0 =>
                        rdata_data <= RESIZE(int_output_62(15 downto 0), 32);
                    when ADDR_OUTPUT_62_CTRL =>
                        rdata_data(0) <= int_output_62_ap_vld;
                    when ADDR_OUTPUT_63_DATA_0 =>
                        rdata_data <= RESIZE(int_output_63(15 downto 0), 32);
                    when ADDR_OUTPUT_63_CTRL =>
                        rdata_data(0) <= int_output_63_ap_vld;
                    when ADDR_OUTPUT_64_DATA_0 =>
                        rdata_data <= RESIZE(int_output_64(15 downto 0), 32);
                    when ADDR_OUTPUT_64_CTRL =>
                        rdata_data(0) <= int_output_64_ap_vld;
                    when ADDR_OUTPUT_65_DATA_0 =>
                        rdata_data <= RESIZE(int_output_65(15 downto 0), 32);
                    when ADDR_OUTPUT_65_CTRL =>
                        rdata_data(0) <= int_output_65_ap_vld;
                    when ADDR_OUTPUT_66_DATA_0 =>
                        rdata_data <= RESIZE(int_output_66(15 downto 0), 32);
                    when ADDR_OUTPUT_66_CTRL =>
                        rdata_data(0) <= int_output_66_ap_vld;
                    when ADDR_OUTPUT_67_DATA_0 =>
                        rdata_data <= RESIZE(int_output_67(15 downto 0), 32);
                    when ADDR_OUTPUT_67_CTRL =>
                        rdata_data(0) <= int_output_67_ap_vld;
                    when ADDR_OUTPUT_68_DATA_0 =>
                        rdata_data <= RESIZE(int_output_68(15 downto 0), 32);
                    when ADDR_OUTPUT_68_CTRL =>
                        rdata_data(0) <= int_output_68_ap_vld;
                    when ADDR_OUTPUT_69_DATA_0 =>
                        rdata_data <= RESIZE(int_output_69(15 downto 0), 32);
                    when ADDR_OUTPUT_69_CTRL =>
                        rdata_data(0) <= int_output_69_ap_vld;
                    when ADDR_OUTPUT_70_DATA_0 =>
                        rdata_data <= RESIZE(int_output_70(15 downto 0), 32);
                    when ADDR_OUTPUT_70_CTRL =>
                        rdata_data(0) <= int_output_70_ap_vld;
                    when ADDR_OUTPUT_71_DATA_0 =>
                        rdata_data <= RESIZE(int_output_71(15 downto 0), 32);
                    when ADDR_OUTPUT_71_CTRL =>
                        rdata_data(0) <= int_output_71_ap_vld;
                    when ADDR_OUTPUT_72_DATA_0 =>
                        rdata_data <= RESIZE(int_output_72(15 downto 0), 32);
                    when ADDR_OUTPUT_72_CTRL =>
                        rdata_data(0) <= int_output_72_ap_vld;
                    when ADDR_OUTPUT_73_DATA_0 =>
                        rdata_data <= RESIZE(int_output_73(15 downto 0), 32);
                    when ADDR_OUTPUT_73_CTRL =>
                        rdata_data(0) <= int_output_73_ap_vld;
                    when ADDR_OUTPUT_74_DATA_0 =>
                        rdata_data <= RESIZE(int_output_74(15 downto 0), 32);
                    when ADDR_OUTPUT_74_CTRL =>
                        rdata_data(0) <= int_output_74_ap_vld;
                    when ADDR_OUTPUT_75_DATA_0 =>
                        rdata_data <= RESIZE(int_output_75(15 downto 0), 32);
                    when ADDR_OUTPUT_75_CTRL =>
                        rdata_data(0) <= int_output_75_ap_vld;
                    when ADDR_OUTPUT_76_DATA_0 =>
                        rdata_data <= RESIZE(int_output_76(15 downto 0), 32);
                    when ADDR_OUTPUT_76_CTRL =>
                        rdata_data(0) <= int_output_76_ap_vld;
                    when ADDR_OUTPUT_77_DATA_0 =>
                        rdata_data <= RESIZE(int_output_77(15 downto 0), 32);
                    when ADDR_OUTPUT_77_CTRL =>
                        rdata_data(0) <= int_output_77_ap_vld;
                    when ADDR_OUTPUT_78_DATA_0 =>
                        rdata_data <= RESIZE(int_output_78(15 downto 0), 32);
                    when ADDR_OUTPUT_78_CTRL =>
                        rdata_data(0) <= int_output_78_ap_vld;
                    when ADDR_OUTPUT_79_DATA_0 =>
                        rdata_data <= RESIZE(int_output_79(15 downto 0), 32);
                    when ADDR_OUTPUT_79_CTRL =>
                        rdata_data(0) <= int_output_79_ap_vld;
                    when ADDR_OUTPUT_80_DATA_0 =>
                        rdata_data <= RESIZE(int_output_80(15 downto 0), 32);
                    when ADDR_OUTPUT_80_CTRL =>
                        rdata_data(0) <= int_output_80_ap_vld;
                    when ADDR_OUTPUT_81_DATA_0 =>
                        rdata_data <= RESIZE(int_output_81(15 downto 0), 32);
                    when ADDR_OUTPUT_81_CTRL =>
                        rdata_data(0) <= int_output_81_ap_vld;
                    when ADDR_OUTPUT_82_DATA_0 =>
                        rdata_data <= RESIZE(int_output_82(15 downto 0), 32);
                    when ADDR_OUTPUT_82_CTRL =>
                        rdata_data(0) <= int_output_82_ap_vld;
                    when ADDR_OUTPUT_83_DATA_0 =>
                        rdata_data <= RESIZE(int_output_83(15 downto 0), 32);
                    when ADDR_OUTPUT_83_CTRL =>
                        rdata_data(0) <= int_output_83_ap_vld;
                    when ADDR_OUTPUT_84_DATA_0 =>
                        rdata_data <= RESIZE(int_output_84(15 downto 0), 32);
                    when ADDR_OUTPUT_84_CTRL =>
                        rdata_data(0) <= int_output_84_ap_vld;
                    when ADDR_OUTPUT_85_DATA_0 =>
                        rdata_data <= RESIZE(int_output_85(15 downto 0), 32);
                    when ADDR_OUTPUT_85_CTRL =>
                        rdata_data(0) <= int_output_85_ap_vld;
                    when ADDR_OUTPUT_86_DATA_0 =>
                        rdata_data <= RESIZE(int_output_86(15 downto 0), 32);
                    when ADDR_OUTPUT_86_CTRL =>
                        rdata_data(0) <= int_output_86_ap_vld;
                    when ADDR_OUTPUT_87_DATA_0 =>
                        rdata_data <= RESIZE(int_output_87(15 downto 0), 32);
                    when ADDR_OUTPUT_87_CTRL =>
                        rdata_data(0) <= int_output_87_ap_vld;
                    when ADDR_OUTPUT_88_DATA_0 =>
                        rdata_data <= RESIZE(int_output_88(15 downto 0), 32);
                    when ADDR_OUTPUT_88_CTRL =>
                        rdata_data(0) <= int_output_88_ap_vld;
                    when ADDR_OUTPUT_89_DATA_0 =>
                        rdata_data <= RESIZE(int_output_89(15 downto 0), 32);
                    when ADDR_OUTPUT_89_CTRL =>
                        rdata_data(0) <= int_output_89_ap_vld;
                    when ADDR_OUTPUT_90_DATA_0 =>
                        rdata_data <= RESIZE(int_output_90(15 downto 0), 32);
                    when ADDR_OUTPUT_90_CTRL =>
                        rdata_data(0) <= int_output_90_ap_vld;
                    when ADDR_OUTPUT_91_DATA_0 =>
                        rdata_data <= RESIZE(int_output_91(15 downto 0), 32);
                    when ADDR_OUTPUT_91_CTRL =>
                        rdata_data(0) <= int_output_91_ap_vld;
                    when ADDR_OUTPUT_92_DATA_0 =>
                        rdata_data <= RESIZE(int_output_92(15 downto 0), 32);
                    when ADDR_OUTPUT_92_CTRL =>
                        rdata_data(0) <= int_output_92_ap_vld;
                    when ADDR_OUTPUT_93_DATA_0 =>
                        rdata_data <= RESIZE(int_output_93(15 downto 0), 32);
                    when ADDR_OUTPUT_93_CTRL =>
                        rdata_data(0) <= int_output_93_ap_vld;
                    when ADDR_OUTPUT_94_DATA_0 =>
                        rdata_data <= RESIZE(int_output_94(15 downto 0), 32);
                    when ADDR_OUTPUT_94_CTRL =>
                        rdata_data(0) <= int_output_94_ap_vld;
                    when ADDR_OUTPUT_95_DATA_0 =>
                        rdata_data <= RESIZE(int_output_95(15 downto 0), 32);
                    when ADDR_OUTPUT_95_CTRL =>
                        rdata_data(0) <= int_output_95_ap_vld;
                    when ADDR_OUTPUT_96_DATA_0 =>
                        rdata_data <= RESIZE(int_output_96(15 downto 0), 32);
                    when ADDR_OUTPUT_96_CTRL =>
                        rdata_data(0) <= int_output_96_ap_vld;
                    when ADDR_OUTPUT_97_DATA_0 =>
                        rdata_data <= RESIZE(int_output_97(15 downto 0), 32);
                    when ADDR_OUTPUT_97_CTRL =>
                        rdata_data(0) <= int_output_97_ap_vld;
                    when ADDR_OUTPUT_98_DATA_0 =>
                        rdata_data <= RESIZE(int_output_98(15 downto 0), 32);
                    when ADDR_OUTPUT_98_CTRL =>
                        rdata_data(0) <= int_output_98_ap_vld;
                    when ADDR_OUTPUT_99_DATA_0 =>
                        rdata_data <= RESIZE(int_output_99(15 downto 0), 32);
                    when ADDR_OUTPUT_99_CTRL =>
                        rdata_data(0) <= int_output_99_ap_vld;
                    when ADDR_OUTPUT_100_DATA_0 =>
                        rdata_data <= RESIZE(int_output_100(15 downto 0), 32);
                    when ADDR_OUTPUT_100_CTRL =>
                        rdata_data(0) <= int_output_100_ap_vld;
                    when ADDR_OUTPUT_101_DATA_0 =>
                        rdata_data <= RESIZE(int_output_101(15 downto 0), 32);
                    when ADDR_OUTPUT_101_CTRL =>
                        rdata_data(0) <= int_output_101_ap_vld;
                    when ADDR_OUTPUT_102_DATA_0 =>
                        rdata_data <= RESIZE(int_output_102(15 downto 0), 32);
                    when ADDR_OUTPUT_102_CTRL =>
                        rdata_data(0) <= int_output_102_ap_vld;
                    when ADDR_OUTPUT_103_DATA_0 =>
                        rdata_data <= RESIZE(int_output_103(15 downto 0), 32);
                    when ADDR_OUTPUT_103_CTRL =>
                        rdata_data(0) <= int_output_103_ap_vld;
                    when ADDR_OUTPUT_104_DATA_0 =>
                        rdata_data <= RESIZE(int_output_104(15 downto 0), 32);
                    when ADDR_OUTPUT_104_CTRL =>
                        rdata_data(0) <= int_output_104_ap_vld;
                    when ADDR_OUTPUT_105_DATA_0 =>
                        rdata_data <= RESIZE(int_output_105(15 downto 0), 32);
                    when ADDR_OUTPUT_105_CTRL =>
                        rdata_data(0) <= int_output_105_ap_vld;
                    when ADDR_OUTPUT_106_DATA_0 =>
                        rdata_data <= RESIZE(int_output_106(15 downto 0), 32);
                    when ADDR_OUTPUT_106_CTRL =>
                        rdata_data(0) <= int_output_106_ap_vld;
                    when ADDR_OUTPUT_107_DATA_0 =>
                        rdata_data <= RESIZE(int_output_107(15 downto 0), 32);
                    when ADDR_OUTPUT_107_CTRL =>
                        rdata_data(0) <= int_output_107_ap_vld;
                    when ADDR_OUTPUT_108_DATA_0 =>
                        rdata_data <= RESIZE(int_output_108(15 downto 0), 32);
                    when ADDR_OUTPUT_108_CTRL =>
                        rdata_data(0) <= int_output_108_ap_vld;
                    when ADDR_OUTPUT_109_DATA_0 =>
                        rdata_data <= RESIZE(int_output_109(15 downto 0), 32);
                    when ADDR_OUTPUT_109_CTRL =>
                        rdata_data(0) <= int_output_109_ap_vld;
                    when ADDR_OUTPUT_110_DATA_0 =>
                        rdata_data <= RESIZE(int_output_110(15 downto 0), 32);
                    when ADDR_OUTPUT_110_CTRL =>
                        rdata_data(0) <= int_output_110_ap_vld;
                    when ADDR_OUTPUT_111_DATA_0 =>
                        rdata_data <= RESIZE(int_output_111(15 downto 0), 32);
                    when ADDR_OUTPUT_111_CTRL =>
                        rdata_data(0) <= int_output_111_ap_vld;
                    when ADDR_OUTPUT_112_DATA_0 =>
                        rdata_data <= RESIZE(int_output_112(15 downto 0), 32);
                    when ADDR_OUTPUT_112_CTRL =>
                        rdata_data(0) <= int_output_112_ap_vld;
                    when ADDR_OUTPUT_113_DATA_0 =>
                        rdata_data <= RESIZE(int_output_113(15 downto 0), 32);
                    when ADDR_OUTPUT_113_CTRL =>
                        rdata_data(0) <= int_output_113_ap_vld;
                    when ADDR_OUTPUT_114_DATA_0 =>
                        rdata_data <= RESIZE(int_output_114(15 downto 0), 32);
                    when ADDR_OUTPUT_114_CTRL =>
                        rdata_data(0) <= int_output_114_ap_vld;
                    when ADDR_OUTPUT_115_DATA_0 =>
                        rdata_data <= RESIZE(int_output_115(15 downto 0), 32);
                    when ADDR_OUTPUT_115_CTRL =>
                        rdata_data(0) <= int_output_115_ap_vld;
                    when ADDR_OUTPUT_116_DATA_0 =>
                        rdata_data <= RESIZE(int_output_116(15 downto 0), 32);
                    when ADDR_OUTPUT_116_CTRL =>
                        rdata_data(0) <= int_output_116_ap_vld;
                    when ADDR_OUTPUT_117_DATA_0 =>
                        rdata_data <= RESIZE(int_output_117(15 downto 0), 32);
                    when ADDR_OUTPUT_117_CTRL =>
                        rdata_data(0) <= int_output_117_ap_vld;
                    when ADDR_OUTPUT_118_DATA_0 =>
                        rdata_data <= RESIZE(int_output_118(15 downto 0), 32);
                    when ADDR_OUTPUT_118_CTRL =>
                        rdata_data(0) <= int_output_118_ap_vld;
                    when ADDR_OUTPUT_119_DATA_0 =>
                        rdata_data <= RESIZE(int_output_119(15 downto 0), 32);
                    when ADDR_OUTPUT_119_CTRL =>
                        rdata_data(0) <= int_output_119_ap_vld;
                    when ADDR_OUTPUT_120_DATA_0 =>
                        rdata_data <= RESIZE(int_output_120(15 downto 0), 32);
                    when ADDR_OUTPUT_120_CTRL =>
                        rdata_data(0) <= int_output_120_ap_vld;
                    when ADDR_OUTPUT_121_DATA_0 =>
                        rdata_data <= RESIZE(int_output_121(15 downto 0), 32);
                    when ADDR_OUTPUT_121_CTRL =>
                        rdata_data(0) <= int_output_121_ap_vld;
                    when ADDR_OUTPUT_122_DATA_0 =>
                        rdata_data <= RESIZE(int_output_122(15 downto 0), 32);
                    when ADDR_OUTPUT_122_CTRL =>
                        rdata_data(0) <= int_output_122_ap_vld;
                    when ADDR_OUTPUT_123_DATA_0 =>
                        rdata_data <= RESIZE(int_output_123(15 downto 0), 32);
                    when ADDR_OUTPUT_123_CTRL =>
                        rdata_data(0) <= int_output_123_ap_vld;
                    when ADDR_OUTPUT_124_DATA_0 =>
                        rdata_data <= RESIZE(int_output_124(15 downto 0), 32);
                    when ADDR_OUTPUT_124_CTRL =>
                        rdata_data(0) <= int_output_124_ap_vld;
                    when ADDR_OUTPUT_125_DATA_0 =>
                        rdata_data <= RESIZE(int_output_125(15 downto 0), 32);
                    when ADDR_OUTPUT_125_CTRL =>
                        rdata_data(0) <= int_output_125_ap_vld;
                    when ADDR_OUTPUT_126_DATA_0 =>
                        rdata_data <= RESIZE(int_output_126(15 downto 0), 32);
                    when ADDR_OUTPUT_126_CTRL =>
                        rdata_data(0) <= int_output_126_ap_vld;
                    when ADDR_OUTPUT_127_DATA_0 =>
                        rdata_data <= RESIZE(int_output_127(15 downto 0), 32);
                    when ADDR_OUTPUT_127_CTRL =>
                        rdata_data(0) <= int_output_127_ap_vld;
                    when ADDR_NUMOFOUTPUTNEURONS_DATA_0 =>
                        rdata_data <= RESIZE(int_numOfOutputNeurons(15 downto 0), 32);
                    when ADDR_ACTIVATION_DATA_0 =>
                        rdata_data <= RESIZE(int_activation(7 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                elsif (int_bias_read = '1') then
                    rdata_data <= int_bias_q1;
                elsif (int_weights_0_read = '1') then
                    rdata_data <= int_weights_0_q1;
                elsif (int_weights_1_read = '1') then
                    rdata_data <= int_weights_1_q1;
                elsif (int_weights_2_read = '1') then
                    rdata_data <= int_weights_2_q1;
                elsif (int_weights_3_read = '1') then
                    rdata_data <= int_weights_3_q1;
                elsif (int_weights_4_read = '1') then
                    rdata_data <= int_weights_4_q1;
                elsif (int_weights_5_read = '1') then
                    rdata_data <= int_weights_5_q1;
                elsif (int_weights_6_read = '1') then
                    rdata_data <= int_weights_6_q1;
                elsif (int_weights_7_read = '1') then
                    rdata_data <= int_weights_7_q1;
                elsif (int_weights_8_read = '1') then
                    rdata_data <= int_weights_8_q1;
                elsif (int_weights_9_read = '1') then
                    rdata_data <= int_weights_9_q1;
                elsif (int_weights_10_read = '1') then
                    rdata_data <= int_weights_10_q1;
                elsif (int_weights_11_read = '1') then
                    rdata_data <= int_weights_11_q1;
                elsif (int_weights_12_read = '1') then
                    rdata_data <= int_weights_12_q1;
                elsif (int_weights_13_read = '1') then
                    rdata_data <= int_weights_13_q1;
                elsif (int_weights_14_read = '1') then
                    rdata_data <= int_weights_14_q1;
                elsif (int_weights_15_read = '1') then
                    rdata_data <= int_weights_15_q1;
                elsif (int_weights_16_read = '1') then
                    rdata_data <= int_weights_16_q1;
                elsif (int_weights_17_read = '1') then
                    rdata_data <= int_weights_17_q1;
                elsif (int_weights_18_read = '1') then
                    rdata_data <= int_weights_18_q1;
                elsif (int_weights_19_read = '1') then
                    rdata_data <= int_weights_19_q1;
                elsif (int_weights_20_read = '1') then
                    rdata_data <= int_weights_20_q1;
                elsif (int_weights_21_read = '1') then
                    rdata_data <= int_weights_21_q1;
                elsif (int_weights_22_read = '1') then
                    rdata_data <= int_weights_22_q1;
                elsif (int_weights_23_read = '1') then
                    rdata_data <= int_weights_23_q1;
                elsif (int_weights_24_read = '1') then
                    rdata_data <= int_weights_24_q1;
                elsif (int_weights_25_read = '1') then
                    rdata_data <= int_weights_25_q1;
                elsif (int_weights_26_read = '1') then
                    rdata_data <= int_weights_26_q1;
                elsif (int_weights_27_read = '1') then
                    rdata_data <= int_weights_27_q1;
                elsif (int_weights_28_read = '1') then
                    rdata_data <= int_weights_28_q1;
                elsif (int_weights_29_read = '1') then
                    rdata_data <= int_weights_29_q1;
                elsif (int_weights_30_read = '1') then
                    rdata_data <= int_weights_30_q1;
                elsif (int_weights_31_read = '1') then
                    rdata_data <= int_weights_31_q1;
                elsif (int_weights_32_read = '1') then
                    rdata_data <= int_weights_32_q1;
                elsif (int_weights_33_read = '1') then
                    rdata_data <= int_weights_33_q1;
                elsif (int_weights_34_read = '1') then
                    rdata_data <= int_weights_34_q1;
                elsif (int_weights_35_read = '1') then
                    rdata_data <= int_weights_35_q1;
                elsif (int_weights_36_read = '1') then
                    rdata_data <= int_weights_36_q1;
                elsif (int_weights_37_read = '1') then
                    rdata_data <= int_weights_37_q1;
                elsif (int_weights_38_read = '1') then
                    rdata_data <= int_weights_38_q1;
                elsif (int_weights_39_read = '1') then
                    rdata_data <= int_weights_39_q1;
                elsif (int_weights_40_read = '1') then
                    rdata_data <= int_weights_40_q1;
                elsif (int_weights_41_read = '1') then
                    rdata_data <= int_weights_41_q1;
                elsif (int_weights_42_read = '1') then
                    rdata_data <= int_weights_42_q1;
                elsif (int_weights_43_read = '1') then
                    rdata_data <= int_weights_43_q1;
                elsif (int_weights_44_read = '1') then
                    rdata_data <= int_weights_44_q1;
                elsif (int_weights_45_read = '1') then
                    rdata_data <= int_weights_45_q1;
                elsif (int_weights_46_read = '1') then
                    rdata_data <= int_weights_46_q1;
                elsif (int_weights_47_read = '1') then
                    rdata_data <= int_weights_47_q1;
                elsif (int_weights_48_read = '1') then
                    rdata_data <= int_weights_48_q1;
                elsif (int_weights_49_read = '1') then
                    rdata_data <= int_weights_49_q1;
                elsif (int_weights_50_read = '1') then
                    rdata_data <= int_weights_50_q1;
                elsif (int_weights_51_read = '1') then
                    rdata_data <= int_weights_51_q1;
                elsif (int_weights_52_read = '1') then
                    rdata_data <= int_weights_52_q1;
                elsif (int_weights_53_read = '1') then
                    rdata_data <= int_weights_53_q1;
                elsif (int_weights_54_read = '1') then
                    rdata_data <= int_weights_54_q1;
                elsif (int_weights_55_read = '1') then
                    rdata_data <= int_weights_55_q1;
                elsif (int_weights_56_read = '1') then
                    rdata_data <= int_weights_56_q1;
                elsif (int_weights_57_read = '1') then
                    rdata_data <= int_weights_57_q1;
                elsif (int_weights_58_read = '1') then
                    rdata_data <= int_weights_58_q1;
                elsif (int_weights_59_read = '1') then
                    rdata_data <= int_weights_59_q1;
                elsif (int_weights_60_read = '1') then
                    rdata_data <= int_weights_60_q1;
                elsif (int_weights_61_read = '1') then
                    rdata_data <= int_weights_61_q1;
                elsif (int_weights_62_read = '1') then
                    rdata_data <= int_weights_62_q1;
                elsif (int_weights_63_read = '1') then
                    rdata_data <= int_weights_63_q1;
                elsif (int_weights_64_read = '1') then
                    rdata_data <= int_weights_64_q1;
                elsif (int_weights_65_read = '1') then
                    rdata_data <= int_weights_65_q1;
                elsif (int_weights_66_read = '1') then
                    rdata_data <= int_weights_66_q1;
                elsif (int_weights_67_read = '1') then
                    rdata_data <= int_weights_67_q1;
                elsif (int_weights_68_read = '1') then
                    rdata_data <= int_weights_68_q1;
                elsif (int_weights_69_read = '1') then
                    rdata_data <= int_weights_69_q1;
                elsif (int_weights_70_read = '1') then
                    rdata_data <= int_weights_70_q1;
                elsif (int_weights_71_read = '1') then
                    rdata_data <= int_weights_71_q1;
                elsif (int_weights_72_read = '1') then
                    rdata_data <= int_weights_72_q1;
                elsif (int_weights_73_read = '1') then
                    rdata_data <= int_weights_73_q1;
                elsif (int_weights_74_read = '1') then
                    rdata_data <= int_weights_74_q1;
                elsif (int_weights_75_read = '1') then
                    rdata_data <= int_weights_75_q1;
                elsif (int_weights_76_read = '1') then
                    rdata_data <= int_weights_76_q1;
                elsif (int_weights_77_read = '1') then
                    rdata_data <= int_weights_77_q1;
                elsif (int_weights_78_read = '1') then
                    rdata_data <= int_weights_78_q1;
                elsif (int_weights_79_read = '1') then
                    rdata_data <= int_weights_79_q1;
                elsif (int_weights_80_read = '1') then
                    rdata_data <= int_weights_80_q1;
                elsif (int_weights_81_read = '1') then
                    rdata_data <= int_weights_81_q1;
                elsif (int_weights_82_read = '1') then
                    rdata_data <= int_weights_82_q1;
                elsif (int_weights_83_read = '1') then
                    rdata_data <= int_weights_83_q1;
                elsif (int_weights_84_read = '1') then
                    rdata_data <= int_weights_84_q1;
                elsif (int_weights_85_read = '1') then
                    rdata_data <= int_weights_85_q1;
                elsif (int_weights_86_read = '1') then
                    rdata_data <= int_weights_86_q1;
                elsif (int_weights_87_read = '1') then
                    rdata_data <= int_weights_87_q1;
                elsif (int_weights_88_read = '1') then
                    rdata_data <= int_weights_88_q1;
                elsif (int_weights_89_read = '1') then
                    rdata_data <= int_weights_89_q1;
                elsif (int_weights_90_read = '1') then
                    rdata_data <= int_weights_90_q1;
                elsif (int_weights_91_read = '1') then
                    rdata_data <= int_weights_91_q1;
                elsif (int_weights_92_read = '1') then
                    rdata_data <= int_weights_92_q1;
                elsif (int_weights_93_read = '1') then
                    rdata_data <= int_weights_93_q1;
                elsif (int_weights_94_read = '1') then
                    rdata_data <= int_weights_94_q1;
                elsif (int_weights_95_read = '1') then
                    rdata_data <= int_weights_95_q1;
                elsif (int_weights_96_read = '1') then
                    rdata_data <= int_weights_96_q1;
                elsif (int_weights_97_read = '1') then
                    rdata_data <= int_weights_97_q1;
                elsif (int_weights_98_read = '1') then
                    rdata_data <= int_weights_98_q1;
                elsif (int_weights_99_read = '1') then
                    rdata_data <= int_weights_99_q1;
                elsif (int_weights_100_read = '1') then
                    rdata_data <= int_weights_100_q1;
                elsif (int_weights_101_read = '1') then
                    rdata_data <= int_weights_101_q1;
                elsif (int_weights_102_read = '1') then
                    rdata_data <= int_weights_102_q1;
                elsif (int_weights_103_read = '1') then
                    rdata_data <= int_weights_103_q1;
                elsif (int_weights_104_read = '1') then
                    rdata_data <= int_weights_104_q1;
                elsif (int_weights_105_read = '1') then
                    rdata_data <= int_weights_105_q1;
                elsif (int_weights_106_read = '1') then
                    rdata_data <= int_weights_106_q1;
                elsif (int_weights_107_read = '1') then
                    rdata_data <= int_weights_107_q1;
                elsif (int_weights_108_read = '1') then
                    rdata_data <= int_weights_108_q1;
                elsif (int_weights_109_read = '1') then
                    rdata_data <= int_weights_109_q1;
                elsif (int_weights_110_read = '1') then
                    rdata_data <= int_weights_110_q1;
                elsif (int_weights_111_read = '1') then
                    rdata_data <= int_weights_111_q1;
                elsif (int_weights_112_read = '1') then
                    rdata_data <= int_weights_112_q1;
                elsif (int_weights_113_read = '1') then
                    rdata_data <= int_weights_113_q1;
                elsif (int_weights_114_read = '1') then
                    rdata_data <= int_weights_114_q1;
                elsif (int_weights_115_read = '1') then
                    rdata_data <= int_weights_115_q1;
                elsif (int_weights_116_read = '1') then
                    rdata_data <= int_weights_116_q1;
                elsif (int_weights_117_read = '1') then
                    rdata_data <= int_weights_117_q1;
                elsif (int_weights_118_read = '1') then
                    rdata_data <= int_weights_118_q1;
                elsif (int_weights_119_read = '1') then
                    rdata_data <= int_weights_119_q1;
                elsif (int_weights_120_read = '1') then
                    rdata_data <= int_weights_120_q1;
                elsif (int_weights_121_read = '1') then
                    rdata_data <= int_weights_121_q1;
                elsif (int_weights_122_read = '1') then
                    rdata_data <= int_weights_122_q1;
                elsif (int_weights_123_read = '1') then
                    rdata_data <= int_weights_123_q1;
                elsif (int_weights_124_read = '1') then
                    rdata_data <= int_weights_124_q1;
                elsif (int_weights_125_read = '1') then
                    rdata_data <= int_weights_125_q1;
                elsif (int_weights_126_read = '1') then
                    rdata_data <= int_weights_126_q1;
                elsif (int_weights_127_read = '1') then
                    rdata_data <= int_weights_127_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1) or int_isr(5));
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    input_0              <= STD_LOGIC_VECTOR(int_input_0);
    input_1              <= STD_LOGIC_VECTOR(int_input_1);
    input_2              <= STD_LOGIC_VECTOR(int_input_2);
    input_3              <= STD_LOGIC_VECTOR(int_input_3);
    input_4              <= STD_LOGIC_VECTOR(int_input_4);
    input_5              <= STD_LOGIC_VECTOR(int_input_5);
    input_6              <= STD_LOGIC_VECTOR(int_input_6);
    input_7              <= STD_LOGIC_VECTOR(int_input_7);
    input_8              <= STD_LOGIC_VECTOR(int_input_8);
    input_9              <= STD_LOGIC_VECTOR(int_input_9);
    input_10             <= STD_LOGIC_VECTOR(int_input_10);
    input_11             <= STD_LOGIC_VECTOR(int_input_11);
    input_12             <= STD_LOGIC_VECTOR(int_input_12);
    input_13             <= STD_LOGIC_VECTOR(int_input_13);
    input_14             <= STD_LOGIC_VECTOR(int_input_14);
    input_15             <= STD_LOGIC_VECTOR(int_input_15);
    input_16             <= STD_LOGIC_VECTOR(int_input_16);
    input_17             <= STD_LOGIC_VECTOR(int_input_17);
    input_18             <= STD_LOGIC_VECTOR(int_input_18);
    input_19             <= STD_LOGIC_VECTOR(int_input_19);
    input_20             <= STD_LOGIC_VECTOR(int_input_20);
    input_21             <= STD_LOGIC_VECTOR(int_input_21);
    input_22             <= STD_LOGIC_VECTOR(int_input_22);
    input_23             <= STD_LOGIC_VECTOR(int_input_23);
    input_24             <= STD_LOGIC_VECTOR(int_input_24);
    input_25             <= STD_LOGIC_VECTOR(int_input_25);
    input_26             <= STD_LOGIC_VECTOR(int_input_26);
    input_27             <= STD_LOGIC_VECTOR(int_input_27);
    input_28             <= STD_LOGIC_VECTOR(int_input_28);
    input_29             <= STD_LOGIC_VECTOR(int_input_29);
    input_30             <= STD_LOGIC_VECTOR(int_input_30);
    input_31             <= STD_LOGIC_VECTOR(int_input_31);
    input_32             <= STD_LOGIC_VECTOR(int_input_32);
    input_33             <= STD_LOGIC_VECTOR(int_input_33);
    input_34             <= STD_LOGIC_VECTOR(int_input_34);
    input_35             <= STD_LOGIC_VECTOR(int_input_35);
    input_36             <= STD_LOGIC_VECTOR(int_input_36);
    input_37             <= STD_LOGIC_VECTOR(int_input_37);
    input_38             <= STD_LOGIC_VECTOR(int_input_38);
    input_39             <= STD_LOGIC_VECTOR(int_input_39);
    input_40             <= STD_LOGIC_VECTOR(int_input_40);
    input_41             <= STD_LOGIC_VECTOR(int_input_41);
    input_42             <= STD_LOGIC_VECTOR(int_input_42);
    input_43             <= STD_LOGIC_VECTOR(int_input_43);
    input_44             <= STD_LOGIC_VECTOR(int_input_44);
    input_45             <= STD_LOGIC_VECTOR(int_input_45);
    input_46             <= STD_LOGIC_VECTOR(int_input_46);
    input_47             <= STD_LOGIC_VECTOR(int_input_47);
    input_48             <= STD_LOGIC_VECTOR(int_input_48);
    input_49             <= STD_LOGIC_VECTOR(int_input_49);
    input_50             <= STD_LOGIC_VECTOR(int_input_50);
    input_51             <= STD_LOGIC_VECTOR(int_input_51);
    input_52             <= STD_LOGIC_VECTOR(int_input_52);
    input_53             <= STD_LOGIC_VECTOR(int_input_53);
    input_54             <= STD_LOGIC_VECTOR(int_input_54);
    input_55             <= STD_LOGIC_VECTOR(int_input_55);
    input_56             <= STD_LOGIC_VECTOR(int_input_56);
    input_57             <= STD_LOGIC_VECTOR(int_input_57);
    input_58             <= STD_LOGIC_VECTOR(int_input_58);
    input_59             <= STD_LOGIC_VECTOR(int_input_59);
    input_60             <= STD_LOGIC_VECTOR(int_input_60);
    input_61             <= STD_LOGIC_VECTOR(int_input_61);
    input_62             <= STD_LOGIC_VECTOR(int_input_62);
    input_63             <= STD_LOGIC_VECTOR(int_input_63);
    input_64             <= STD_LOGIC_VECTOR(int_input_64);
    input_65             <= STD_LOGIC_VECTOR(int_input_65);
    input_66             <= STD_LOGIC_VECTOR(int_input_66);
    input_67             <= STD_LOGIC_VECTOR(int_input_67);
    input_68             <= STD_LOGIC_VECTOR(int_input_68);
    input_69             <= STD_LOGIC_VECTOR(int_input_69);
    input_70             <= STD_LOGIC_VECTOR(int_input_70);
    input_71             <= STD_LOGIC_VECTOR(int_input_71);
    input_72             <= STD_LOGIC_VECTOR(int_input_72);
    input_73             <= STD_LOGIC_VECTOR(int_input_73);
    input_74             <= STD_LOGIC_VECTOR(int_input_74);
    input_75             <= STD_LOGIC_VECTOR(int_input_75);
    input_76             <= STD_LOGIC_VECTOR(int_input_76);
    input_77             <= STD_LOGIC_VECTOR(int_input_77);
    input_78             <= STD_LOGIC_VECTOR(int_input_78);
    input_79             <= STD_LOGIC_VECTOR(int_input_79);
    input_80             <= STD_LOGIC_VECTOR(int_input_80);
    input_81             <= STD_LOGIC_VECTOR(int_input_81);
    input_82             <= STD_LOGIC_VECTOR(int_input_82);
    input_83             <= STD_LOGIC_VECTOR(int_input_83);
    input_84             <= STD_LOGIC_VECTOR(int_input_84);
    input_85             <= STD_LOGIC_VECTOR(int_input_85);
    input_86             <= STD_LOGIC_VECTOR(int_input_86);
    input_87             <= STD_LOGIC_VECTOR(int_input_87);
    input_88             <= STD_LOGIC_VECTOR(int_input_88);
    input_89             <= STD_LOGIC_VECTOR(int_input_89);
    input_90             <= STD_LOGIC_VECTOR(int_input_90);
    input_91             <= STD_LOGIC_VECTOR(int_input_91);
    input_92             <= STD_LOGIC_VECTOR(int_input_92);
    input_93             <= STD_LOGIC_VECTOR(int_input_93);
    input_94             <= STD_LOGIC_VECTOR(int_input_94);
    input_95             <= STD_LOGIC_VECTOR(int_input_95);
    input_96             <= STD_LOGIC_VECTOR(int_input_96);
    input_97             <= STD_LOGIC_VECTOR(int_input_97);
    input_98             <= STD_LOGIC_VECTOR(int_input_98);
    input_99             <= STD_LOGIC_VECTOR(int_input_99);
    input_100            <= STD_LOGIC_VECTOR(int_input_100);
    input_101            <= STD_LOGIC_VECTOR(int_input_101);
    input_102            <= STD_LOGIC_VECTOR(int_input_102);
    input_103            <= STD_LOGIC_VECTOR(int_input_103);
    input_104            <= STD_LOGIC_VECTOR(int_input_104);
    input_105            <= STD_LOGIC_VECTOR(int_input_105);
    input_106            <= STD_LOGIC_VECTOR(int_input_106);
    input_107            <= STD_LOGIC_VECTOR(int_input_107);
    input_108            <= STD_LOGIC_VECTOR(int_input_108);
    input_109            <= STD_LOGIC_VECTOR(int_input_109);
    input_110            <= STD_LOGIC_VECTOR(int_input_110);
    input_111            <= STD_LOGIC_VECTOR(int_input_111);
    input_112            <= STD_LOGIC_VECTOR(int_input_112);
    input_113            <= STD_LOGIC_VECTOR(int_input_113);
    input_114            <= STD_LOGIC_VECTOR(int_input_114);
    input_115            <= STD_LOGIC_VECTOR(int_input_115);
    input_116            <= STD_LOGIC_VECTOR(int_input_116);
    input_117            <= STD_LOGIC_VECTOR(int_input_117);
    input_118            <= STD_LOGIC_VECTOR(int_input_118);
    input_119            <= STD_LOGIC_VECTOR(int_input_119);
    input_120            <= STD_LOGIC_VECTOR(int_input_120);
    input_121            <= STD_LOGIC_VECTOR(int_input_121);
    input_122            <= STD_LOGIC_VECTOR(int_input_122);
    input_123            <= STD_LOGIC_VECTOR(int_input_123);
    input_124            <= STD_LOGIC_VECTOR(int_input_124);
    input_125            <= STD_LOGIC_VECTOR(int_input_125);
    input_126            <= STD_LOGIC_VECTOR(int_input_126);
    input_127            <= STD_LOGIC_VECTOR(int_input_127);
    numOfOutputNeurons   <= STD_LOGIC_VECTOR(int_numOfOutputNeurons);
    activation           <= STD_LOGIC_VECTOR(int_activation);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(5 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(5) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(5) = '1' and ap_local_deadlock(0) = '1') then
                    int_isr(5) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(5) <= int_isr(5) xor WDATA(5); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_0_DATA_0) then
                    int_input_0(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_0(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_1_DATA_0) then
                    int_input_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_2_DATA_0) then
                    int_input_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_3_DATA_0) then
                    int_input_3(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_3(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_4_DATA_0) then
                    int_input_4(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_4(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_5_DATA_0) then
                    int_input_5(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_5(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_6_DATA_0) then
                    int_input_6(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_6(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_7_DATA_0) then
                    int_input_7(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_7(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_8_DATA_0) then
                    int_input_8(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_8(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_9_DATA_0) then
                    int_input_9(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_9(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_10_DATA_0) then
                    int_input_10(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_10(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_11_DATA_0) then
                    int_input_11(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_11(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_12_DATA_0) then
                    int_input_12(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_12(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_13_DATA_0) then
                    int_input_13(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_13(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_14_DATA_0) then
                    int_input_14(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_14(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_15_DATA_0) then
                    int_input_15(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_15(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_16_DATA_0) then
                    int_input_16(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_16(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_17_DATA_0) then
                    int_input_17(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_17(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_18_DATA_0) then
                    int_input_18(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_18(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_19_DATA_0) then
                    int_input_19(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_19(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_20_DATA_0) then
                    int_input_20(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_20(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_21_DATA_0) then
                    int_input_21(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_21(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_22_DATA_0) then
                    int_input_22(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_22(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_23_DATA_0) then
                    int_input_23(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_23(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_24_DATA_0) then
                    int_input_24(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_24(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_25_DATA_0) then
                    int_input_25(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_25(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_26_DATA_0) then
                    int_input_26(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_26(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_27_DATA_0) then
                    int_input_27(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_27(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_28_DATA_0) then
                    int_input_28(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_28(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_29_DATA_0) then
                    int_input_29(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_29(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_30_DATA_0) then
                    int_input_30(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_30(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_31_DATA_0) then
                    int_input_31(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_31(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_32_DATA_0) then
                    int_input_32(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_32(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_33_DATA_0) then
                    int_input_33(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_33(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_34_DATA_0) then
                    int_input_34(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_34(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_35_DATA_0) then
                    int_input_35(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_35(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_36_DATA_0) then
                    int_input_36(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_36(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_37_DATA_0) then
                    int_input_37(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_37(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_38_DATA_0) then
                    int_input_38(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_38(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_39_DATA_0) then
                    int_input_39(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_39(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_40_DATA_0) then
                    int_input_40(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_40(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_41_DATA_0) then
                    int_input_41(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_41(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_42_DATA_0) then
                    int_input_42(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_42(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_43_DATA_0) then
                    int_input_43(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_43(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_44_DATA_0) then
                    int_input_44(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_44(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_45_DATA_0) then
                    int_input_45(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_45(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_46_DATA_0) then
                    int_input_46(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_46(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_47_DATA_0) then
                    int_input_47(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_47(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_48_DATA_0) then
                    int_input_48(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_48(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_49_DATA_0) then
                    int_input_49(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_49(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_50_DATA_0) then
                    int_input_50(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_50(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_51_DATA_0) then
                    int_input_51(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_51(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_52_DATA_0) then
                    int_input_52(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_52(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_53_DATA_0) then
                    int_input_53(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_53(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_54_DATA_0) then
                    int_input_54(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_54(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_55_DATA_0) then
                    int_input_55(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_55(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_56_DATA_0) then
                    int_input_56(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_56(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_57_DATA_0) then
                    int_input_57(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_57(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_58_DATA_0) then
                    int_input_58(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_58(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_59_DATA_0) then
                    int_input_59(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_59(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_60_DATA_0) then
                    int_input_60(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_60(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_61_DATA_0) then
                    int_input_61(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_61(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_62_DATA_0) then
                    int_input_62(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_62(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_63_DATA_0) then
                    int_input_63(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_63(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_64_DATA_0) then
                    int_input_64(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_64(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_65_DATA_0) then
                    int_input_65(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_65(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_66_DATA_0) then
                    int_input_66(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_66(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_67_DATA_0) then
                    int_input_67(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_67(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_68_DATA_0) then
                    int_input_68(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_68(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_69_DATA_0) then
                    int_input_69(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_69(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_70_DATA_0) then
                    int_input_70(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_70(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_71_DATA_0) then
                    int_input_71(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_71(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_72_DATA_0) then
                    int_input_72(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_72(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_73_DATA_0) then
                    int_input_73(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_73(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_74_DATA_0) then
                    int_input_74(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_74(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_75_DATA_0) then
                    int_input_75(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_75(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_76_DATA_0) then
                    int_input_76(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_76(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_77_DATA_0) then
                    int_input_77(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_77(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_78_DATA_0) then
                    int_input_78(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_78(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_79_DATA_0) then
                    int_input_79(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_79(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_80_DATA_0) then
                    int_input_80(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_80(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_81_DATA_0) then
                    int_input_81(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_81(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_82_DATA_0) then
                    int_input_82(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_82(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_83_DATA_0) then
                    int_input_83(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_83(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_84_DATA_0) then
                    int_input_84(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_84(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_85_DATA_0) then
                    int_input_85(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_85(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_86_DATA_0) then
                    int_input_86(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_86(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_87_DATA_0) then
                    int_input_87(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_87(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_88_DATA_0) then
                    int_input_88(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_88(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_89_DATA_0) then
                    int_input_89(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_89(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_90_DATA_0) then
                    int_input_90(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_90(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_91_DATA_0) then
                    int_input_91(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_91(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_92_DATA_0) then
                    int_input_92(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_92(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_93_DATA_0) then
                    int_input_93(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_93(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_94_DATA_0) then
                    int_input_94(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_94(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_95_DATA_0) then
                    int_input_95(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_95(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_96_DATA_0) then
                    int_input_96(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_96(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_97_DATA_0) then
                    int_input_97(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_97(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_98_DATA_0) then
                    int_input_98(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_98(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_99_DATA_0) then
                    int_input_99(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_99(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_100_DATA_0) then
                    int_input_100(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_100(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_101_DATA_0) then
                    int_input_101(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_101(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_102_DATA_0) then
                    int_input_102(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_102(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_103_DATA_0) then
                    int_input_103(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_103(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_104_DATA_0) then
                    int_input_104(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_104(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_105_DATA_0) then
                    int_input_105(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_105(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_106_DATA_0) then
                    int_input_106(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_106(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_107_DATA_0) then
                    int_input_107(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_107(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_108_DATA_0) then
                    int_input_108(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_108(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_109_DATA_0) then
                    int_input_109(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_109(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_110_DATA_0) then
                    int_input_110(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_110(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_111_DATA_0) then
                    int_input_111(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_111(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_112_DATA_0) then
                    int_input_112(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_112(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_113_DATA_0) then
                    int_input_113(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_113(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_114_DATA_0) then
                    int_input_114(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_114(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_115_DATA_0) then
                    int_input_115(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_115(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_116_DATA_0) then
                    int_input_116(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_116(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_117_DATA_0) then
                    int_input_117(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_117(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_118_DATA_0) then
                    int_input_118(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_118(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_119_DATA_0) then
                    int_input_119(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_119(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_120_DATA_0) then
                    int_input_120(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_120(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_121_DATA_0) then
                    int_input_121(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_121(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_122_DATA_0) then
                    int_input_122(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_122(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_123_DATA_0) then
                    int_input_123(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_123(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_124_DATA_0) then
                    int_input_124(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_124(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_125_DATA_0) then
                    int_input_125(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_125(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_126_DATA_0) then
                    int_input_126(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_126(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_127_DATA_0) then
                    int_input_127(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_input_127(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_0 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_0_ap_vld = '1') then
                    int_output_0 <= UNSIGNED(output_0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_0_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_0_ap_vld = '1') then
                    int_output_0_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_0_CTRL) then
                    int_output_0_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_1 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_1_ap_vld = '1') then
                    int_output_1 <= UNSIGNED(output_1);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_1_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_1_ap_vld = '1') then
                    int_output_1_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_1_CTRL) then
                    int_output_1_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_2 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_2_ap_vld = '1') then
                    int_output_2 <= UNSIGNED(output_2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_2_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_2_ap_vld = '1') then
                    int_output_2_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_2_CTRL) then
                    int_output_2_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_3 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_3_ap_vld = '1') then
                    int_output_3 <= UNSIGNED(output_3);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_3_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_3_ap_vld = '1') then
                    int_output_3_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_3_CTRL) then
                    int_output_3_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_4 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_4_ap_vld = '1') then
                    int_output_4 <= UNSIGNED(output_4);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_4_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_4_ap_vld = '1') then
                    int_output_4_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_4_CTRL) then
                    int_output_4_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_5 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_5_ap_vld = '1') then
                    int_output_5 <= UNSIGNED(output_5);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_5_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_5_ap_vld = '1') then
                    int_output_5_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_5_CTRL) then
                    int_output_5_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_6 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_6_ap_vld = '1') then
                    int_output_6 <= UNSIGNED(output_6);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_6_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_6_ap_vld = '1') then
                    int_output_6_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_6_CTRL) then
                    int_output_6_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_7 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_7_ap_vld = '1') then
                    int_output_7 <= UNSIGNED(output_7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_7_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_7_ap_vld = '1') then
                    int_output_7_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_7_CTRL) then
                    int_output_7_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_8 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_8_ap_vld = '1') then
                    int_output_8 <= UNSIGNED(output_8);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_8_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_8_ap_vld = '1') then
                    int_output_8_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_8_CTRL) then
                    int_output_8_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_9 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_9_ap_vld = '1') then
                    int_output_9 <= UNSIGNED(output_9);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_9_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_9_ap_vld = '1') then
                    int_output_9_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_9_CTRL) then
                    int_output_9_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_10 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_10_ap_vld = '1') then
                    int_output_10 <= UNSIGNED(output_10);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_10_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_10_ap_vld = '1') then
                    int_output_10_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_10_CTRL) then
                    int_output_10_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_11 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_11_ap_vld = '1') then
                    int_output_11 <= UNSIGNED(output_11);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_11_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_11_ap_vld = '1') then
                    int_output_11_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_11_CTRL) then
                    int_output_11_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_12 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_12_ap_vld = '1') then
                    int_output_12 <= UNSIGNED(output_12);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_12_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_12_ap_vld = '1') then
                    int_output_12_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_12_CTRL) then
                    int_output_12_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_13 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_13_ap_vld = '1') then
                    int_output_13 <= UNSIGNED(output_13);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_13_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_13_ap_vld = '1') then
                    int_output_13_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_13_CTRL) then
                    int_output_13_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_14 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_14_ap_vld = '1') then
                    int_output_14 <= UNSIGNED(output_14);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_14_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_14_ap_vld = '1') then
                    int_output_14_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_14_CTRL) then
                    int_output_14_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_15 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_15_ap_vld = '1') then
                    int_output_15 <= UNSIGNED(output_15);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_15_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_15_ap_vld = '1') then
                    int_output_15_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_15_CTRL) then
                    int_output_15_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_16 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_16_ap_vld = '1') then
                    int_output_16 <= UNSIGNED(output_16);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_16_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_16_ap_vld = '1') then
                    int_output_16_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_16_CTRL) then
                    int_output_16_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_17 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_17_ap_vld = '1') then
                    int_output_17 <= UNSIGNED(output_17);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_17_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_17_ap_vld = '1') then
                    int_output_17_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_17_CTRL) then
                    int_output_17_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_18 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_18_ap_vld = '1') then
                    int_output_18 <= UNSIGNED(output_18);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_18_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_18_ap_vld = '1') then
                    int_output_18_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_18_CTRL) then
                    int_output_18_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_19 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_19_ap_vld = '1') then
                    int_output_19 <= UNSIGNED(output_19);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_19_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_19_ap_vld = '1') then
                    int_output_19_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_19_CTRL) then
                    int_output_19_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_20 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_20_ap_vld = '1') then
                    int_output_20 <= UNSIGNED(output_20);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_20_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_20_ap_vld = '1') then
                    int_output_20_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_20_CTRL) then
                    int_output_20_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_21 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_21_ap_vld = '1') then
                    int_output_21 <= UNSIGNED(output_21);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_21_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_21_ap_vld = '1') then
                    int_output_21_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_21_CTRL) then
                    int_output_21_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_22 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_22_ap_vld = '1') then
                    int_output_22 <= UNSIGNED(output_22);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_22_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_22_ap_vld = '1') then
                    int_output_22_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_22_CTRL) then
                    int_output_22_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_23 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_23_ap_vld = '1') then
                    int_output_23 <= UNSIGNED(output_23);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_23_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_23_ap_vld = '1') then
                    int_output_23_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_23_CTRL) then
                    int_output_23_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_24 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_24_ap_vld = '1') then
                    int_output_24 <= UNSIGNED(output_24);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_24_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_24_ap_vld = '1') then
                    int_output_24_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_24_CTRL) then
                    int_output_24_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_25 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_25_ap_vld = '1') then
                    int_output_25 <= UNSIGNED(output_25);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_25_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_25_ap_vld = '1') then
                    int_output_25_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_25_CTRL) then
                    int_output_25_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_26 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_26_ap_vld = '1') then
                    int_output_26 <= UNSIGNED(output_26);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_26_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_26_ap_vld = '1') then
                    int_output_26_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_26_CTRL) then
                    int_output_26_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_27 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_27_ap_vld = '1') then
                    int_output_27 <= UNSIGNED(output_27);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_27_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_27_ap_vld = '1') then
                    int_output_27_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_27_CTRL) then
                    int_output_27_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_28 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_28_ap_vld = '1') then
                    int_output_28 <= UNSIGNED(output_28);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_28_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_28_ap_vld = '1') then
                    int_output_28_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_28_CTRL) then
                    int_output_28_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_29 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_29_ap_vld = '1') then
                    int_output_29 <= UNSIGNED(output_29);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_29_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_29_ap_vld = '1') then
                    int_output_29_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_29_CTRL) then
                    int_output_29_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_30 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_30_ap_vld = '1') then
                    int_output_30 <= UNSIGNED(output_30);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_30_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_30_ap_vld = '1') then
                    int_output_30_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_30_CTRL) then
                    int_output_30_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_31 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_31_ap_vld = '1') then
                    int_output_31 <= UNSIGNED(output_31);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_31_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_31_ap_vld = '1') then
                    int_output_31_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_31_CTRL) then
                    int_output_31_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_32 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_32_ap_vld = '1') then
                    int_output_32 <= UNSIGNED(output_32);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_32_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_32_ap_vld = '1') then
                    int_output_32_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_32_CTRL) then
                    int_output_32_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_33 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_33_ap_vld = '1') then
                    int_output_33 <= UNSIGNED(output_33);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_33_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_33_ap_vld = '1') then
                    int_output_33_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_33_CTRL) then
                    int_output_33_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_34 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_34_ap_vld = '1') then
                    int_output_34 <= UNSIGNED(output_34);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_34_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_34_ap_vld = '1') then
                    int_output_34_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_34_CTRL) then
                    int_output_34_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_35 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_35_ap_vld = '1') then
                    int_output_35 <= UNSIGNED(output_35);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_35_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_35_ap_vld = '1') then
                    int_output_35_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_35_CTRL) then
                    int_output_35_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_36 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_36_ap_vld = '1') then
                    int_output_36 <= UNSIGNED(output_36);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_36_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_36_ap_vld = '1') then
                    int_output_36_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_36_CTRL) then
                    int_output_36_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_37 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_37_ap_vld = '1') then
                    int_output_37 <= UNSIGNED(output_37);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_37_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_37_ap_vld = '1') then
                    int_output_37_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_37_CTRL) then
                    int_output_37_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_38 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_38_ap_vld = '1') then
                    int_output_38 <= UNSIGNED(output_38);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_38_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_38_ap_vld = '1') then
                    int_output_38_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_38_CTRL) then
                    int_output_38_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_39 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_39_ap_vld = '1') then
                    int_output_39 <= UNSIGNED(output_39);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_39_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_39_ap_vld = '1') then
                    int_output_39_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_39_CTRL) then
                    int_output_39_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_40 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_40_ap_vld = '1') then
                    int_output_40 <= UNSIGNED(output_40);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_40_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_40_ap_vld = '1') then
                    int_output_40_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_40_CTRL) then
                    int_output_40_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_41 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_41_ap_vld = '1') then
                    int_output_41 <= UNSIGNED(output_41);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_41_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_41_ap_vld = '1') then
                    int_output_41_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_41_CTRL) then
                    int_output_41_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_42 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_42_ap_vld = '1') then
                    int_output_42 <= UNSIGNED(output_42);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_42_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_42_ap_vld = '1') then
                    int_output_42_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_42_CTRL) then
                    int_output_42_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_43 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_43_ap_vld = '1') then
                    int_output_43 <= UNSIGNED(output_43);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_43_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_43_ap_vld = '1') then
                    int_output_43_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_43_CTRL) then
                    int_output_43_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_44 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_44_ap_vld = '1') then
                    int_output_44 <= UNSIGNED(output_44);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_44_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_44_ap_vld = '1') then
                    int_output_44_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_44_CTRL) then
                    int_output_44_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_45 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_45_ap_vld = '1') then
                    int_output_45 <= UNSIGNED(output_45);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_45_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_45_ap_vld = '1') then
                    int_output_45_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_45_CTRL) then
                    int_output_45_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_46 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_46_ap_vld = '1') then
                    int_output_46 <= UNSIGNED(output_46);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_46_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_46_ap_vld = '1') then
                    int_output_46_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_46_CTRL) then
                    int_output_46_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_47 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_47_ap_vld = '1') then
                    int_output_47 <= UNSIGNED(output_47);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_47_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_47_ap_vld = '1') then
                    int_output_47_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_47_CTRL) then
                    int_output_47_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_48 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_48_ap_vld = '1') then
                    int_output_48 <= UNSIGNED(output_48);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_48_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_48_ap_vld = '1') then
                    int_output_48_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_48_CTRL) then
                    int_output_48_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_49 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_49_ap_vld = '1') then
                    int_output_49 <= UNSIGNED(output_49);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_49_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_49_ap_vld = '1') then
                    int_output_49_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_49_CTRL) then
                    int_output_49_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_50 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_50_ap_vld = '1') then
                    int_output_50 <= UNSIGNED(output_50);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_50_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_50_ap_vld = '1') then
                    int_output_50_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_50_CTRL) then
                    int_output_50_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_51 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_51_ap_vld = '1') then
                    int_output_51 <= UNSIGNED(output_51);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_51_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_51_ap_vld = '1') then
                    int_output_51_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_51_CTRL) then
                    int_output_51_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_52 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_52_ap_vld = '1') then
                    int_output_52 <= UNSIGNED(output_52);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_52_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_52_ap_vld = '1') then
                    int_output_52_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_52_CTRL) then
                    int_output_52_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_53 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_53_ap_vld = '1') then
                    int_output_53 <= UNSIGNED(output_53);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_53_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_53_ap_vld = '1') then
                    int_output_53_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_53_CTRL) then
                    int_output_53_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_54 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_54_ap_vld = '1') then
                    int_output_54 <= UNSIGNED(output_54);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_54_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_54_ap_vld = '1') then
                    int_output_54_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_54_CTRL) then
                    int_output_54_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_55 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_55_ap_vld = '1') then
                    int_output_55 <= UNSIGNED(output_55);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_55_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_55_ap_vld = '1') then
                    int_output_55_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_55_CTRL) then
                    int_output_55_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_56 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_56_ap_vld = '1') then
                    int_output_56 <= UNSIGNED(output_56);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_56_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_56_ap_vld = '1') then
                    int_output_56_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_56_CTRL) then
                    int_output_56_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_57 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_57_ap_vld = '1') then
                    int_output_57 <= UNSIGNED(output_57);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_57_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_57_ap_vld = '1') then
                    int_output_57_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_57_CTRL) then
                    int_output_57_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_58 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_58_ap_vld = '1') then
                    int_output_58 <= UNSIGNED(output_58);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_58_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_58_ap_vld = '1') then
                    int_output_58_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_58_CTRL) then
                    int_output_58_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_59 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_59_ap_vld = '1') then
                    int_output_59 <= UNSIGNED(output_59);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_59_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_59_ap_vld = '1') then
                    int_output_59_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_59_CTRL) then
                    int_output_59_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_60 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_60_ap_vld = '1') then
                    int_output_60 <= UNSIGNED(output_60);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_60_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_60_ap_vld = '1') then
                    int_output_60_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_60_CTRL) then
                    int_output_60_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_61 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_61_ap_vld = '1') then
                    int_output_61 <= UNSIGNED(output_61);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_61_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_61_ap_vld = '1') then
                    int_output_61_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_61_CTRL) then
                    int_output_61_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_62 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_62_ap_vld = '1') then
                    int_output_62 <= UNSIGNED(output_62);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_62_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_62_ap_vld = '1') then
                    int_output_62_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_62_CTRL) then
                    int_output_62_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_63 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_63_ap_vld = '1') then
                    int_output_63 <= UNSIGNED(output_63);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_63_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_63_ap_vld = '1') then
                    int_output_63_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_63_CTRL) then
                    int_output_63_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_64 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_64_ap_vld = '1') then
                    int_output_64 <= UNSIGNED(output_64);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_64_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_64_ap_vld = '1') then
                    int_output_64_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_64_CTRL) then
                    int_output_64_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_65 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_65_ap_vld = '1') then
                    int_output_65 <= UNSIGNED(output_65);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_65_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_65_ap_vld = '1') then
                    int_output_65_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_65_CTRL) then
                    int_output_65_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_66 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_66_ap_vld = '1') then
                    int_output_66 <= UNSIGNED(output_66);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_66_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_66_ap_vld = '1') then
                    int_output_66_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_66_CTRL) then
                    int_output_66_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_67 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_67_ap_vld = '1') then
                    int_output_67 <= UNSIGNED(output_67);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_67_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_67_ap_vld = '1') then
                    int_output_67_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_67_CTRL) then
                    int_output_67_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_68 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_68_ap_vld = '1') then
                    int_output_68 <= UNSIGNED(output_68);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_68_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_68_ap_vld = '1') then
                    int_output_68_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_68_CTRL) then
                    int_output_68_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_69 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_69_ap_vld = '1') then
                    int_output_69 <= UNSIGNED(output_69);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_69_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_69_ap_vld = '1') then
                    int_output_69_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_69_CTRL) then
                    int_output_69_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_70 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_70_ap_vld = '1') then
                    int_output_70 <= UNSIGNED(output_70);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_70_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_70_ap_vld = '1') then
                    int_output_70_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_70_CTRL) then
                    int_output_70_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_71 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_71_ap_vld = '1') then
                    int_output_71 <= UNSIGNED(output_71);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_71_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_71_ap_vld = '1') then
                    int_output_71_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_71_CTRL) then
                    int_output_71_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_72 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_72_ap_vld = '1') then
                    int_output_72 <= UNSIGNED(output_72);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_72_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_72_ap_vld = '1') then
                    int_output_72_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_72_CTRL) then
                    int_output_72_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_73 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_73_ap_vld = '1') then
                    int_output_73 <= UNSIGNED(output_73);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_73_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_73_ap_vld = '1') then
                    int_output_73_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_73_CTRL) then
                    int_output_73_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_74 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_74_ap_vld = '1') then
                    int_output_74 <= UNSIGNED(output_74);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_74_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_74_ap_vld = '1') then
                    int_output_74_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_74_CTRL) then
                    int_output_74_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_75 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_75_ap_vld = '1') then
                    int_output_75 <= UNSIGNED(output_75);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_75_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_75_ap_vld = '1') then
                    int_output_75_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_75_CTRL) then
                    int_output_75_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_76 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_76_ap_vld = '1') then
                    int_output_76 <= UNSIGNED(output_76);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_76_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_76_ap_vld = '1') then
                    int_output_76_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_76_CTRL) then
                    int_output_76_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_77 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_77_ap_vld = '1') then
                    int_output_77 <= UNSIGNED(output_77);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_77_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_77_ap_vld = '1') then
                    int_output_77_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_77_CTRL) then
                    int_output_77_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_78 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_78_ap_vld = '1') then
                    int_output_78 <= UNSIGNED(output_78);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_78_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_78_ap_vld = '1') then
                    int_output_78_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_78_CTRL) then
                    int_output_78_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_79 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_79_ap_vld = '1') then
                    int_output_79 <= UNSIGNED(output_79);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_79_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_79_ap_vld = '1') then
                    int_output_79_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_79_CTRL) then
                    int_output_79_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_80 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_80_ap_vld = '1') then
                    int_output_80 <= UNSIGNED(output_80);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_80_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_80_ap_vld = '1') then
                    int_output_80_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_80_CTRL) then
                    int_output_80_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_81 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_81_ap_vld = '1') then
                    int_output_81 <= UNSIGNED(output_81);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_81_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_81_ap_vld = '1') then
                    int_output_81_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_81_CTRL) then
                    int_output_81_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_82 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_82_ap_vld = '1') then
                    int_output_82 <= UNSIGNED(output_82);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_82_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_82_ap_vld = '1') then
                    int_output_82_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_82_CTRL) then
                    int_output_82_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_83 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_83_ap_vld = '1') then
                    int_output_83 <= UNSIGNED(output_83);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_83_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_83_ap_vld = '1') then
                    int_output_83_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_83_CTRL) then
                    int_output_83_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_84 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_84_ap_vld = '1') then
                    int_output_84 <= UNSIGNED(output_84);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_84_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_84_ap_vld = '1') then
                    int_output_84_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_84_CTRL) then
                    int_output_84_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_85 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_85_ap_vld = '1') then
                    int_output_85 <= UNSIGNED(output_85);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_85_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_85_ap_vld = '1') then
                    int_output_85_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_85_CTRL) then
                    int_output_85_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_86 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_86_ap_vld = '1') then
                    int_output_86 <= UNSIGNED(output_86);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_86_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_86_ap_vld = '1') then
                    int_output_86_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_86_CTRL) then
                    int_output_86_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_87 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_87_ap_vld = '1') then
                    int_output_87 <= UNSIGNED(output_87);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_87_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_87_ap_vld = '1') then
                    int_output_87_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_87_CTRL) then
                    int_output_87_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_88 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_88_ap_vld = '1') then
                    int_output_88 <= UNSIGNED(output_88);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_88_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_88_ap_vld = '1') then
                    int_output_88_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_88_CTRL) then
                    int_output_88_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_89 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_89_ap_vld = '1') then
                    int_output_89 <= UNSIGNED(output_89);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_89_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_89_ap_vld = '1') then
                    int_output_89_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_89_CTRL) then
                    int_output_89_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_90 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_90_ap_vld = '1') then
                    int_output_90 <= UNSIGNED(output_90);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_90_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_90_ap_vld = '1') then
                    int_output_90_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_90_CTRL) then
                    int_output_90_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_91 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_91_ap_vld = '1') then
                    int_output_91 <= UNSIGNED(output_91);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_91_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_91_ap_vld = '1') then
                    int_output_91_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_91_CTRL) then
                    int_output_91_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_92 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_92_ap_vld = '1') then
                    int_output_92 <= UNSIGNED(output_92);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_92_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_92_ap_vld = '1') then
                    int_output_92_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_92_CTRL) then
                    int_output_92_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_93 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_93_ap_vld = '1') then
                    int_output_93 <= UNSIGNED(output_93);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_93_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_93_ap_vld = '1') then
                    int_output_93_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_93_CTRL) then
                    int_output_93_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_94 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_94_ap_vld = '1') then
                    int_output_94 <= UNSIGNED(output_94);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_94_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_94_ap_vld = '1') then
                    int_output_94_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_94_CTRL) then
                    int_output_94_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_95 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_95_ap_vld = '1') then
                    int_output_95 <= UNSIGNED(output_95);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_95_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_95_ap_vld = '1') then
                    int_output_95_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_95_CTRL) then
                    int_output_95_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_96 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_96_ap_vld = '1') then
                    int_output_96 <= UNSIGNED(output_96);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_96_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_96_ap_vld = '1') then
                    int_output_96_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_96_CTRL) then
                    int_output_96_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_97 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_97_ap_vld = '1') then
                    int_output_97 <= UNSIGNED(output_97);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_97_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_97_ap_vld = '1') then
                    int_output_97_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_97_CTRL) then
                    int_output_97_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_98 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_98_ap_vld = '1') then
                    int_output_98 <= UNSIGNED(output_98);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_98_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_98_ap_vld = '1') then
                    int_output_98_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_98_CTRL) then
                    int_output_98_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_99 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_99_ap_vld = '1') then
                    int_output_99 <= UNSIGNED(output_99);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_99_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_99_ap_vld = '1') then
                    int_output_99_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_99_CTRL) then
                    int_output_99_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_100 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_100_ap_vld = '1') then
                    int_output_100 <= UNSIGNED(output_100);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_100_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_100_ap_vld = '1') then
                    int_output_100_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_100_CTRL) then
                    int_output_100_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_101 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_101_ap_vld = '1') then
                    int_output_101 <= UNSIGNED(output_101);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_101_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_101_ap_vld = '1') then
                    int_output_101_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_101_CTRL) then
                    int_output_101_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_102 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_102_ap_vld = '1') then
                    int_output_102 <= UNSIGNED(output_102);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_102_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_102_ap_vld = '1') then
                    int_output_102_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_102_CTRL) then
                    int_output_102_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_103 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_103_ap_vld = '1') then
                    int_output_103 <= UNSIGNED(output_103);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_103_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_103_ap_vld = '1') then
                    int_output_103_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_103_CTRL) then
                    int_output_103_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_104 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_104_ap_vld = '1') then
                    int_output_104 <= UNSIGNED(output_104);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_104_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_104_ap_vld = '1') then
                    int_output_104_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_104_CTRL) then
                    int_output_104_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_105 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_105_ap_vld = '1') then
                    int_output_105 <= UNSIGNED(output_105);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_105_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_105_ap_vld = '1') then
                    int_output_105_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_105_CTRL) then
                    int_output_105_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_106 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_106_ap_vld = '1') then
                    int_output_106 <= UNSIGNED(output_106);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_106_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_106_ap_vld = '1') then
                    int_output_106_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_106_CTRL) then
                    int_output_106_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_107 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_107_ap_vld = '1') then
                    int_output_107 <= UNSIGNED(output_107);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_107_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_107_ap_vld = '1') then
                    int_output_107_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_107_CTRL) then
                    int_output_107_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_108 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_108_ap_vld = '1') then
                    int_output_108 <= UNSIGNED(output_108);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_108_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_108_ap_vld = '1') then
                    int_output_108_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_108_CTRL) then
                    int_output_108_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_109 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_109_ap_vld = '1') then
                    int_output_109 <= UNSIGNED(output_109);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_109_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_109_ap_vld = '1') then
                    int_output_109_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_109_CTRL) then
                    int_output_109_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_110 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_110_ap_vld = '1') then
                    int_output_110 <= UNSIGNED(output_110);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_110_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_110_ap_vld = '1') then
                    int_output_110_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_110_CTRL) then
                    int_output_110_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_111 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_111_ap_vld = '1') then
                    int_output_111 <= UNSIGNED(output_111);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_111_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_111_ap_vld = '1') then
                    int_output_111_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_111_CTRL) then
                    int_output_111_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_112 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_112_ap_vld = '1') then
                    int_output_112 <= UNSIGNED(output_112);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_112_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_112_ap_vld = '1') then
                    int_output_112_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_112_CTRL) then
                    int_output_112_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_113 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_113_ap_vld = '1') then
                    int_output_113 <= UNSIGNED(output_113);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_113_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_113_ap_vld = '1') then
                    int_output_113_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_113_CTRL) then
                    int_output_113_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_114 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_114_ap_vld = '1') then
                    int_output_114 <= UNSIGNED(output_114);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_114_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_114_ap_vld = '1') then
                    int_output_114_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_114_CTRL) then
                    int_output_114_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_115 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_115_ap_vld = '1') then
                    int_output_115 <= UNSIGNED(output_115);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_115_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_115_ap_vld = '1') then
                    int_output_115_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_115_CTRL) then
                    int_output_115_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_116 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_116_ap_vld = '1') then
                    int_output_116 <= UNSIGNED(output_116);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_116_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_116_ap_vld = '1') then
                    int_output_116_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_116_CTRL) then
                    int_output_116_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_117 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_117_ap_vld = '1') then
                    int_output_117 <= UNSIGNED(output_117);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_117_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_117_ap_vld = '1') then
                    int_output_117_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_117_CTRL) then
                    int_output_117_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_118 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_118_ap_vld = '1') then
                    int_output_118 <= UNSIGNED(output_118);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_118_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_118_ap_vld = '1') then
                    int_output_118_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_118_CTRL) then
                    int_output_118_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_119 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_119_ap_vld = '1') then
                    int_output_119 <= UNSIGNED(output_119);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_119_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_119_ap_vld = '1') then
                    int_output_119_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_119_CTRL) then
                    int_output_119_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_120 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_120_ap_vld = '1') then
                    int_output_120 <= UNSIGNED(output_120);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_120_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_120_ap_vld = '1') then
                    int_output_120_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_120_CTRL) then
                    int_output_120_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_121 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_121_ap_vld = '1') then
                    int_output_121 <= UNSIGNED(output_121);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_121_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_121_ap_vld = '1') then
                    int_output_121_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_121_CTRL) then
                    int_output_121_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_122 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_122_ap_vld = '1') then
                    int_output_122 <= UNSIGNED(output_122);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_122_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_122_ap_vld = '1') then
                    int_output_122_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_122_CTRL) then
                    int_output_122_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_123 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_123_ap_vld = '1') then
                    int_output_123 <= UNSIGNED(output_123);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_123_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_123_ap_vld = '1') then
                    int_output_123_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_123_CTRL) then
                    int_output_123_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_124 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_124_ap_vld = '1') then
                    int_output_124 <= UNSIGNED(output_124);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_124_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_124_ap_vld = '1') then
                    int_output_124_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_124_CTRL) then
                    int_output_124_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_125 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_125_ap_vld = '1') then
                    int_output_125 <= UNSIGNED(output_125);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_125_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_125_ap_vld = '1') then
                    int_output_125_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_125_CTRL) then
                    int_output_125_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_126 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_126_ap_vld = '1') then
                    int_output_126 <= UNSIGNED(output_126);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_126_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_126_ap_vld = '1') then
                    int_output_126_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_126_CTRL) then
                    int_output_126_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_127 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (output_127_ap_vld = '1') then
                    int_output_127 <= UNSIGNED(output_127);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_output_127_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (output_127_ap_vld = '1') then
                    int_output_127_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_OUTPUT_127_CTRL) then
                    int_output_127_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_NUMOFOUTPUTNEURONS_DATA_0) then
                    int_numOfOutputNeurons(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_numOfOutputNeurons(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ACTIVATION_DATA_0) then
                    int_activation(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_activation(7 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- bias
    int_bias_address0    <= SHIFT_RIGHT(UNSIGNED(bias_address0), 1)(5 downto 0);
    int_bias_ce0         <= bias_ce0;
    bias_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_bias_q0, TO_INTEGER(int_bias_shift0) * 16)(15 downto 0));
    int_bias_address1    <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_bias_ce1         <= '1' when ar_hs = '1' or (int_bias_write = '1' and WVALID  = '1') else '0';
    int_bias_we1         <= '1' when int_bias_write = '1' and w_hs = '1' else '0';
    int_bias_be1         <= UNSIGNED(WSTRB) when int_bias_we1 = '1' else (others=>'0');
    int_bias_d1          <= UNSIGNED(WDATA);
    -- weights_0
    int_weights_0_address0 <= SHIFT_RIGHT(UNSIGNED(weights_0_address0), 1)(5 downto 0);
    int_weights_0_ce0    <= weights_0_ce0;
    weights_0_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_0_q0, TO_INTEGER(int_weights_0_shift0) * 16)(15 downto 0));
    int_weights_0_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_0_ce1    <= '1' when ar_hs = '1' or (int_weights_0_write = '1' and WVALID  = '1') else '0';
    int_weights_0_we1    <= '1' when int_weights_0_write = '1' and w_hs = '1' else '0';
    int_weights_0_be1    <= UNSIGNED(WSTRB) when int_weights_0_we1 = '1' else (others=>'0');
    int_weights_0_d1     <= UNSIGNED(WDATA);
    -- weights_1
    int_weights_1_address0 <= SHIFT_RIGHT(UNSIGNED(weights_1_address0), 1)(5 downto 0);
    int_weights_1_ce0    <= weights_1_ce0;
    weights_1_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_1_q0, TO_INTEGER(int_weights_1_shift0) * 16)(15 downto 0));
    int_weights_1_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_1_ce1    <= '1' when ar_hs = '1' or (int_weights_1_write = '1' and WVALID  = '1') else '0';
    int_weights_1_we1    <= '1' when int_weights_1_write = '1' and w_hs = '1' else '0';
    int_weights_1_be1    <= UNSIGNED(WSTRB) when int_weights_1_we1 = '1' else (others=>'0');
    int_weights_1_d1     <= UNSIGNED(WDATA);
    -- weights_2
    int_weights_2_address0 <= SHIFT_RIGHT(UNSIGNED(weights_2_address0), 1)(5 downto 0);
    int_weights_2_ce0    <= weights_2_ce0;
    weights_2_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_2_q0, TO_INTEGER(int_weights_2_shift0) * 16)(15 downto 0));
    int_weights_2_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_2_ce1    <= '1' when ar_hs = '1' or (int_weights_2_write = '1' and WVALID  = '1') else '0';
    int_weights_2_we1    <= '1' when int_weights_2_write = '1' and w_hs = '1' else '0';
    int_weights_2_be1    <= UNSIGNED(WSTRB) when int_weights_2_we1 = '1' else (others=>'0');
    int_weights_2_d1     <= UNSIGNED(WDATA);
    -- weights_3
    int_weights_3_address0 <= SHIFT_RIGHT(UNSIGNED(weights_3_address0), 1)(5 downto 0);
    int_weights_3_ce0    <= weights_3_ce0;
    weights_3_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_3_q0, TO_INTEGER(int_weights_3_shift0) * 16)(15 downto 0));
    int_weights_3_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_3_ce1    <= '1' when ar_hs = '1' or (int_weights_3_write = '1' and WVALID  = '1') else '0';
    int_weights_3_we1    <= '1' when int_weights_3_write = '1' and w_hs = '1' else '0';
    int_weights_3_be1    <= UNSIGNED(WSTRB) when int_weights_3_we1 = '1' else (others=>'0');
    int_weights_3_d1     <= UNSIGNED(WDATA);
    -- weights_4
    int_weights_4_address0 <= SHIFT_RIGHT(UNSIGNED(weights_4_address0), 1)(5 downto 0);
    int_weights_4_ce0    <= weights_4_ce0;
    weights_4_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_4_q0, TO_INTEGER(int_weights_4_shift0) * 16)(15 downto 0));
    int_weights_4_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_4_ce1    <= '1' when ar_hs = '1' or (int_weights_4_write = '1' and WVALID  = '1') else '0';
    int_weights_4_we1    <= '1' when int_weights_4_write = '1' and w_hs = '1' else '0';
    int_weights_4_be1    <= UNSIGNED(WSTRB) when int_weights_4_we1 = '1' else (others=>'0');
    int_weights_4_d1     <= UNSIGNED(WDATA);
    -- weights_5
    int_weights_5_address0 <= SHIFT_RIGHT(UNSIGNED(weights_5_address0), 1)(5 downto 0);
    int_weights_5_ce0    <= weights_5_ce0;
    weights_5_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_5_q0, TO_INTEGER(int_weights_5_shift0) * 16)(15 downto 0));
    int_weights_5_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_5_ce1    <= '1' when ar_hs = '1' or (int_weights_5_write = '1' and WVALID  = '1') else '0';
    int_weights_5_we1    <= '1' when int_weights_5_write = '1' and w_hs = '1' else '0';
    int_weights_5_be1    <= UNSIGNED(WSTRB) when int_weights_5_we1 = '1' else (others=>'0');
    int_weights_5_d1     <= UNSIGNED(WDATA);
    -- weights_6
    int_weights_6_address0 <= SHIFT_RIGHT(UNSIGNED(weights_6_address0), 1)(5 downto 0);
    int_weights_6_ce0    <= weights_6_ce0;
    weights_6_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_6_q0, TO_INTEGER(int_weights_6_shift0) * 16)(15 downto 0));
    int_weights_6_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_6_ce1    <= '1' when ar_hs = '1' or (int_weights_6_write = '1' and WVALID  = '1') else '0';
    int_weights_6_we1    <= '1' when int_weights_6_write = '1' and w_hs = '1' else '0';
    int_weights_6_be1    <= UNSIGNED(WSTRB) when int_weights_6_we1 = '1' else (others=>'0');
    int_weights_6_d1     <= UNSIGNED(WDATA);
    -- weights_7
    int_weights_7_address0 <= SHIFT_RIGHT(UNSIGNED(weights_7_address0), 1)(5 downto 0);
    int_weights_7_ce0    <= weights_7_ce0;
    weights_7_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_7_q0, TO_INTEGER(int_weights_7_shift0) * 16)(15 downto 0));
    int_weights_7_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_7_ce1    <= '1' when ar_hs = '1' or (int_weights_7_write = '1' and WVALID  = '1') else '0';
    int_weights_7_we1    <= '1' when int_weights_7_write = '1' and w_hs = '1' else '0';
    int_weights_7_be1    <= UNSIGNED(WSTRB) when int_weights_7_we1 = '1' else (others=>'0');
    int_weights_7_d1     <= UNSIGNED(WDATA);
    -- weights_8
    int_weights_8_address0 <= SHIFT_RIGHT(UNSIGNED(weights_8_address0), 1)(5 downto 0);
    int_weights_8_ce0    <= weights_8_ce0;
    weights_8_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_8_q0, TO_INTEGER(int_weights_8_shift0) * 16)(15 downto 0));
    int_weights_8_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_8_ce1    <= '1' when ar_hs = '1' or (int_weights_8_write = '1' and WVALID  = '1') else '0';
    int_weights_8_we1    <= '1' when int_weights_8_write = '1' and w_hs = '1' else '0';
    int_weights_8_be1    <= UNSIGNED(WSTRB) when int_weights_8_we1 = '1' else (others=>'0');
    int_weights_8_d1     <= UNSIGNED(WDATA);
    -- weights_9
    int_weights_9_address0 <= SHIFT_RIGHT(UNSIGNED(weights_9_address0), 1)(5 downto 0);
    int_weights_9_ce0    <= weights_9_ce0;
    weights_9_q0         <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_9_q0, TO_INTEGER(int_weights_9_shift0) * 16)(15 downto 0));
    int_weights_9_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_9_ce1    <= '1' when ar_hs = '1' or (int_weights_9_write = '1' and WVALID  = '1') else '0';
    int_weights_9_we1    <= '1' when int_weights_9_write = '1' and w_hs = '1' else '0';
    int_weights_9_be1    <= UNSIGNED(WSTRB) when int_weights_9_we1 = '1' else (others=>'0');
    int_weights_9_d1     <= UNSIGNED(WDATA);
    -- weights_10
    int_weights_10_address0 <= SHIFT_RIGHT(UNSIGNED(weights_10_address0), 1)(5 downto 0);
    int_weights_10_ce0   <= weights_10_ce0;
    weights_10_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_10_q0, TO_INTEGER(int_weights_10_shift0) * 16)(15 downto 0));
    int_weights_10_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_10_ce1   <= '1' when ar_hs = '1' or (int_weights_10_write = '1' and WVALID  = '1') else '0';
    int_weights_10_we1   <= '1' when int_weights_10_write = '1' and w_hs = '1' else '0';
    int_weights_10_be1   <= UNSIGNED(WSTRB) when int_weights_10_we1 = '1' else (others=>'0');
    int_weights_10_d1    <= UNSIGNED(WDATA);
    -- weights_11
    int_weights_11_address0 <= SHIFT_RIGHT(UNSIGNED(weights_11_address0), 1)(5 downto 0);
    int_weights_11_ce0   <= weights_11_ce0;
    weights_11_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_11_q0, TO_INTEGER(int_weights_11_shift0) * 16)(15 downto 0));
    int_weights_11_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_11_ce1   <= '1' when ar_hs = '1' or (int_weights_11_write = '1' and WVALID  = '1') else '0';
    int_weights_11_we1   <= '1' when int_weights_11_write = '1' and w_hs = '1' else '0';
    int_weights_11_be1   <= UNSIGNED(WSTRB) when int_weights_11_we1 = '1' else (others=>'0');
    int_weights_11_d1    <= UNSIGNED(WDATA);
    -- weights_12
    int_weights_12_address0 <= SHIFT_RIGHT(UNSIGNED(weights_12_address0), 1)(5 downto 0);
    int_weights_12_ce0   <= weights_12_ce0;
    weights_12_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_12_q0, TO_INTEGER(int_weights_12_shift0) * 16)(15 downto 0));
    int_weights_12_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_12_ce1   <= '1' when ar_hs = '1' or (int_weights_12_write = '1' and WVALID  = '1') else '0';
    int_weights_12_we1   <= '1' when int_weights_12_write = '1' and w_hs = '1' else '0';
    int_weights_12_be1   <= UNSIGNED(WSTRB) when int_weights_12_we1 = '1' else (others=>'0');
    int_weights_12_d1    <= UNSIGNED(WDATA);
    -- weights_13
    int_weights_13_address0 <= SHIFT_RIGHT(UNSIGNED(weights_13_address0), 1)(5 downto 0);
    int_weights_13_ce0   <= weights_13_ce0;
    weights_13_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_13_q0, TO_INTEGER(int_weights_13_shift0) * 16)(15 downto 0));
    int_weights_13_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_13_ce1   <= '1' when ar_hs = '1' or (int_weights_13_write = '1' and WVALID  = '1') else '0';
    int_weights_13_we1   <= '1' when int_weights_13_write = '1' and w_hs = '1' else '0';
    int_weights_13_be1   <= UNSIGNED(WSTRB) when int_weights_13_we1 = '1' else (others=>'0');
    int_weights_13_d1    <= UNSIGNED(WDATA);
    -- weights_14
    int_weights_14_address0 <= SHIFT_RIGHT(UNSIGNED(weights_14_address0), 1)(5 downto 0);
    int_weights_14_ce0   <= weights_14_ce0;
    weights_14_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_14_q0, TO_INTEGER(int_weights_14_shift0) * 16)(15 downto 0));
    int_weights_14_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_14_ce1   <= '1' when ar_hs = '1' or (int_weights_14_write = '1' and WVALID  = '1') else '0';
    int_weights_14_we1   <= '1' when int_weights_14_write = '1' and w_hs = '1' else '0';
    int_weights_14_be1   <= UNSIGNED(WSTRB) when int_weights_14_we1 = '1' else (others=>'0');
    int_weights_14_d1    <= UNSIGNED(WDATA);
    -- weights_15
    int_weights_15_address0 <= SHIFT_RIGHT(UNSIGNED(weights_15_address0), 1)(5 downto 0);
    int_weights_15_ce0   <= weights_15_ce0;
    weights_15_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_15_q0, TO_INTEGER(int_weights_15_shift0) * 16)(15 downto 0));
    int_weights_15_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_15_ce1   <= '1' when ar_hs = '1' or (int_weights_15_write = '1' and WVALID  = '1') else '0';
    int_weights_15_we1   <= '1' when int_weights_15_write = '1' and w_hs = '1' else '0';
    int_weights_15_be1   <= UNSIGNED(WSTRB) when int_weights_15_we1 = '1' else (others=>'0');
    int_weights_15_d1    <= UNSIGNED(WDATA);
    -- weights_16
    int_weights_16_address0 <= SHIFT_RIGHT(UNSIGNED(weights_16_address0), 1)(5 downto 0);
    int_weights_16_ce0   <= weights_16_ce0;
    weights_16_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_16_q0, TO_INTEGER(int_weights_16_shift0) * 16)(15 downto 0));
    int_weights_16_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_16_ce1   <= '1' when ar_hs = '1' or (int_weights_16_write = '1' and WVALID  = '1') else '0';
    int_weights_16_we1   <= '1' when int_weights_16_write = '1' and w_hs = '1' else '0';
    int_weights_16_be1   <= UNSIGNED(WSTRB) when int_weights_16_we1 = '1' else (others=>'0');
    int_weights_16_d1    <= UNSIGNED(WDATA);
    -- weights_17
    int_weights_17_address0 <= SHIFT_RIGHT(UNSIGNED(weights_17_address0), 1)(5 downto 0);
    int_weights_17_ce0   <= weights_17_ce0;
    weights_17_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_17_q0, TO_INTEGER(int_weights_17_shift0) * 16)(15 downto 0));
    int_weights_17_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_17_ce1   <= '1' when ar_hs = '1' or (int_weights_17_write = '1' and WVALID  = '1') else '0';
    int_weights_17_we1   <= '1' when int_weights_17_write = '1' and w_hs = '1' else '0';
    int_weights_17_be1   <= UNSIGNED(WSTRB) when int_weights_17_we1 = '1' else (others=>'0');
    int_weights_17_d1    <= UNSIGNED(WDATA);
    -- weights_18
    int_weights_18_address0 <= SHIFT_RIGHT(UNSIGNED(weights_18_address0), 1)(5 downto 0);
    int_weights_18_ce0   <= weights_18_ce0;
    weights_18_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_18_q0, TO_INTEGER(int_weights_18_shift0) * 16)(15 downto 0));
    int_weights_18_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_18_ce1   <= '1' when ar_hs = '1' or (int_weights_18_write = '1' and WVALID  = '1') else '0';
    int_weights_18_we1   <= '1' when int_weights_18_write = '1' and w_hs = '1' else '0';
    int_weights_18_be1   <= UNSIGNED(WSTRB) when int_weights_18_we1 = '1' else (others=>'0');
    int_weights_18_d1    <= UNSIGNED(WDATA);
    -- weights_19
    int_weights_19_address0 <= SHIFT_RIGHT(UNSIGNED(weights_19_address0), 1)(5 downto 0);
    int_weights_19_ce0   <= weights_19_ce0;
    weights_19_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_19_q0, TO_INTEGER(int_weights_19_shift0) * 16)(15 downto 0));
    int_weights_19_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_19_ce1   <= '1' when ar_hs = '1' or (int_weights_19_write = '1' and WVALID  = '1') else '0';
    int_weights_19_we1   <= '1' when int_weights_19_write = '1' and w_hs = '1' else '0';
    int_weights_19_be1   <= UNSIGNED(WSTRB) when int_weights_19_we1 = '1' else (others=>'0');
    int_weights_19_d1    <= UNSIGNED(WDATA);
    -- weights_20
    int_weights_20_address0 <= SHIFT_RIGHT(UNSIGNED(weights_20_address0), 1)(5 downto 0);
    int_weights_20_ce0   <= weights_20_ce0;
    weights_20_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_20_q0, TO_INTEGER(int_weights_20_shift0) * 16)(15 downto 0));
    int_weights_20_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_20_ce1   <= '1' when ar_hs = '1' or (int_weights_20_write = '1' and WVALID  = '1') else '0';
    int_weights_20_we1   <= '1' when int_weights_20_write = '1' and w_hs = '1' else '0';
    int_weights_20_be1   <= UNSIGNED(WSTRB) when int_weights_20_we1 = '1' else (others=>'0');
    int_weights_20_d1    <= UNSIGNED(WDATA);
    -- weights_21
    int_weights_21_address0 <= SHIFT_RIGHT(UNSIGNED(weights_21_address0), 1)(5 downto 0);
    int_weights_21_ce0   <= weights_21_ce0;
    weights_21_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_21_q0, TO_INTEGER(int_weights_21_shift0) * 16)(15 downto 0));
    int_weights_21_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_21_ce1   <= '1' when ar_hs = '1' or (int_weights_21_write = '1' and WVALID  = '1') else '0';
    int_weights_21_we1   <= '1' when int_weights_21_write = '1' and w_hs = '1' else '0';
    int_weights_21_be1   <= UNSIGNED(WSTRB) when int_weights_21_we1 = '1' else (others=>'0');
    int_weights_21_d1    <= UNSIGNED(WDATA);
    -- weights_22
    int_weights_22_address0 <= SHIFT_RIGHT(UNSIGNED(weights_22_address0), 1)(5 downto 0);
    int_weights_22_ce0   <= weights_22_ce0;
    weights_22_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_22_q0, TO_INTEGER(int_weights_22_shift0) * 16)(15 downto 0));
    int_weights_22_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_22_ce1   <= '1' when ar_hs = '1' or (int_weights_22_write = '1' and WVALID  = '1') else '0';
    int_weights_22_we1   <= '1' when int_weights_22_write = '1' and w_hs = '1' else '0';
    int_weights_22_be1   <= UNSIGNED(WSTRB) when int_weights_22_we1 = '1' else (others=>'0');
    int_weights_22_d1    <= UNSIGNED(WDATA);
    -- weights_23
    int_weights_23_address0 <= SHIFT_RIGHT(UNSIGNED(weights_23_address0), 1)(5 downto 0);
    int_weights_23_ce0   <= weights_23_ce0;
    weights_23_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_23_q0, TO_INTEGER(int_weights_23_shift0) * 16)(15 downto 0));
    int_weights_23_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_23_ce1   <= '1' when ar_hs = '1' or (int_weights_23_write = '1' and WVALID  = '1') else '0';
    int_weights_23_we1   <= '1' when int_weights_23_write = '1' and w_hs = '1' else '0';
    int_weights_23_be1   <= UNSIGNED(WSTRB) when int_weights_23_we1 = '1' else (others=>'0');
    int_weights_23_d1    <= UNSIGNED(WDATA);
    -- weights_24
    int_weights_24_address0 <= SHIFT_RIGHT(UNSIGNED(weights_24_address0), 1)(5 downto 0);
    int_weights_24_ce0   <= weights_24_ce0;
    weights_24_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_24_q0, TO_INTEGER(int_weights_24_shift0) * 16)(15 downto 0));
    int_weights_24_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_24_ce1   <= '1' when ar_hs = '1' or (int_weights_24_write = '1' and WVALID  = '1') else '0';
    int_weights_24_we1   <= '1' when int_weights_24_write = '1' and w_hs = '1' else '0';
    int_weights_24_be1   <= UNSIGNED(WSTRB) when int_weights_24_we1 = '1' else (others=>'0');
    int_weights_24_d1    <= UNSIGNED(WDATA);
    -- weights_25
    int_weights_25_address0 <= SHIFT_RIGHT(UNSIGNED(weights_25_address0), 1)(5 downto 0);
    int_weights_25_ce0   <= weights_25_ce0;
    weights_25_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_25_q0, TO_INTEGER(int_weights_25_shift0) * 16)(15 downto 0));
    int_weights_25_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_25_ce1   <= '1' when ar_hs = '1' or (int_weights_25_write = '1' and WVALID  = '1') else '0';
    int_weights_25_we1   <= '1' when int_weights_25_write = '1' and w_hs = '1' else '0';
    int_weights_25_be1   <= UNSIGNED(WSTRB) when int_weights_25_we1 = '1' else (others=>'0');
    int_weights_25_d1    <= UNSIGNED(WDATA);
    -- weights_26
    int_weights_26_address0 <= SHIFT_RIGHT(UNSIGNED(weights_26_address0), 1)(5 downto 0);
    int_weights_26_ce0   <= weights_26_ce0;
    weights_26_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_26_q0, TO_INTEGER(int_weights_26_shift0) * 16)(15 downto 0));
    int_weights_26_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_26_ce1   <= '1' when ar_hs = '1' or (int_weights_26_write = '1' and WVALID  = '1') else '0';
    int_weights_26_we1   <= '1' when int_weights_26_write = '1' and w_hs = '1' else '0';
    int_weights_26_be1   <= UNSIGNED(WSTRB) when int_weights_26_we1 = '1' else (others=>'0');
    int_weights_26_d1    <= UNSIGNED(WDATA);
    -- weights_27
    int_weights_27_address0 <= SHIFT_RIGHT(UNSIGNED(weights_27_address0), 1)(5 downto 0);
    int_weights_27_ce0   <= weights_27_ce0;
    weights_27_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_27_q0, TO_INTEGER(int_weights_27_shift0) * 16)(15 downto 0));
    int_weights_27_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_27_ce1   <= '1' when ar_hs = '1' or (int_weights_27_write = '1' and WVALID  = '1') else '0';
    int_weights_27_we1   <= '1' when int_weights_27_write = '1' and w_hs = '1' else '0';
    int_weights_27_be1   <= UNSIGNED(WSTRB) when int_weights_27_we1 = '1' else (others=>'0');
    int_weights_27_d1    <= UNSIGNED(WDATA);
    -- weights_28
    int_weights_28_address0 <= SHIFT_RIGHT(UNSIGNED(weights_28_address0), 1)(5 downto 0);
    int_weights_28_ce0   <= weights_28_ce0;
    weights_28_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_28_q0, TO_INTEGER(int_weights_28_shift0) * 16)(15 downto 0));
    int_weights_28_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_28_ce1   <= '1' when ar_hs = '1' or (int_weights_28_write = '1' and WVALID  = '1') else '0';
    int_weights_28_we1   <= '1' when int_weights_28_write = '1' and w_hs = '1' else '0';
    int_weights_28_be1   <= UNSIGNED(WSTRB) when int_weights_28_we1 = '1' else (others=>'0');
    int_weights_28_d1    <= UNSIGNED(WDATA);
    -- weights_29
    int_weights_29_address0 <= SHIFT_RIGHT(UNSIGNED(weights_29_address0), 1)(5 downto 0);
    int_weights_29_ce0   <= weights_29_ce0;
    weights_29_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_29_q0, TO_INTEGER(int_weights_29_shift0) * 16)(15 downto 0));
    int_weights_29_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_29_ce1   <= '1' when ar_hs = '1' or (int_weights_29_write = '1' and WVALID  = '1') else '0';
    int_weights_29_we1   <= '1' when int_weights_29_write = '1' and w_hs = '1' else '0';
    int_weights_29_be1   <= UNSIGNED(WSTRB) when int_weights_29_we1 = '1' else (others=>'0');
    int_weights_29_d1    <= UNSIGNED(WDATA);
    -- weights_30
    int_weights_30_address0 <= SHIFT_RIGHT(UNSIGNED(weights_30_address0), 1)(5 downto 0);
    int_weights_30_ce0   <= weights_30_ce0;
    weights_30_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_30_q0, TO_INTEGER(int_weights_30_shift0) * 16)(15 downto 0));
    int_weights_30_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_30_ce1   <= '1' when ar_hs = '1' or (int_weights_30_write = '1' and WVALID  = '1') else '0';
    int_weights_30_we1   <= '1' when int_weights_30_write = '1' and w_hs = '1' else '0';
    int_weights_30_be1   <= UNSIGNED(WSTRB) when int_weights_30_we1 = '1' else (others=>'0');
    int_weights_30_d1    <= UNSIGNED(WDATA);
    -- weights_31
    int_weights_31_address0 <= SHIFT_RIGHT(UNSIGNED(weights_31_address0), 1)(5 downto 0);
    int_weights_31_ce0   <= weights_31_ce0;
    weights_31_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_31_q0, TO_INTEGER(int_weights_31_shift0) * 16)(15 downto 0));
    int_weights_31_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_31_ce1   <= '1' when ar_hs = '1' or (int_weights_31_write = '1' and WVALID  = '1') else '0';
    int_weights_31_we1   <= '1' when int_weights_31_write = '1' and w_hs = '1' else '0';
    int_weights_31_be1   <= UNSIGNED(WSTRB) when int_weights_31_we1 = '1' else (others=>'0');
    int_weights_31_d1    <= UNSIGNED(WDATA);
    -- weights_32
    int_weights_32_address0 <= SHIFT_RIGHT(UNSIGNED(weights_32_address0), 1)(5 downto 0);
    int_weights_32_ce0   <= weights_32_ce0;
    weights_32_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_32_q0, TO_INTEGER(int_weights_32_shift0) * 16)(15 downto 0));
    int_weights_32_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_32_ce1   <= '1' when ar_hs = '1' or (int_weights_32_write = '1' and WVALID  = '1') else '0';
    int_weights_32_we1   <= '1' when int_weights_32_write = '1' and w_hs = '1' else '0';
    int_weights_32_be1   <= UNSIGNED(WSTRB) when int_weights_32_we1 = '1' else (others=>'0');
    int_weights_32_d1    <= UNSIGNED(WDATA);
    -- weights_33
    int_weights_33_address0 <= SHIFT_RIGHT(UNSIGNED(weights_33_address0), 1)(5 downto 0);
    int_weights_33_ce0   <= weights_33_ce0;
    weights_33_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_33_q0, TO_INTEGER(int_weights_33_shift0) * 16)(15 downto 0));
    int_weights_33_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_33_ce1   <= '1' when ar_hs = '1' or (int_weights_33_write = '1' and WVALID  = '1') else '0';
    int_weights_33_we1   <= '1' when int_weights_33_write = '1' and w_hs = '1' else '0';
    int_weights_33_be1   <= UNSIGNED(WSTRB) when int_weights_33_we1 = '1' else (others=>'0');
    int_weights_33_d1    <= UNSIGNED(WDATA);
    -- weights_34
    int_weights_34_address0 <= SHIFT_RIGHT(UNSIGNED(weights_34_address0), 1)(5 downto 0);
    int_weights_34_ce0   <= weights_34_ce0;
    weights_34_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_34_q0, TO_INTEGER(int_weights_34_shift0) * 16)(15 downto 0));
    int_weights_34_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_34_ce1   <= '1' when ar_hs = '1' or (int_weights_34_write = '1' and WVALID  = '1') else '0';
    int_weights_34_we1   <= '1' when int_weights_34_write = '1' and w_hs = '1' else '0';
    int_weights_34_be1   <= UNSIGNED(WSTRB) when int_weights_34_we1 = '1' else (others=>'0');
    int_weights_34_d1    <= UNSIGNED(WDATA);
    -- weights_35
    int_weights_35_address0 <= SHIFT_RIGHT(UNSIGNED(weights_35_address0), 1)(5 downto 0);
    int_weights_35_ce0   <= weights_35_ce0;
    weights_35_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_35_q0, TO_INTEGER(int_weights_35_shift0) * 16)(15 downto 0));
    int_weights_35_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_35_ce1   <= '1' when ar_hs = '1' or (int_weights_35_write = '1' and WVALID  = '1') else '0';
    int_weights_35_we1   <= '1' when int_weights_35_write = '1' and w_hs = '1' else '0';
    int_weights_35_be1   <= UNSIGNED(WSTRB) when int_weights_35_we1 = '1' else (others=>'0');
    int_weights_35_d1    <= UNSIGNED(WDATA);
    -- weights_36
    int_weights_36_address0 <= SHIFT_RIGHT(UNSIGNED(weights_36_address0), 1)(5 downto 0);
    int_weights_36_ce0   <= weights_36_ce0;
    weights_36_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_36_q0, TO_INTEGER(int_weights_36_shift0) * 16)(15 downto 0));
    int_weights_36_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_36_ce1   <= '1' when ar_hs = '1' or (int_weights_36_write = '1' and WVALID  = '1') else '0';
    int_weights_36_we1   <= '1' when int_weights_36_write = '1' and w_hs = '1' else '0';
    int_weights_36_be1   <= UNSIGNED(WSTRB) when int_weights_36_we1 = '1' else (others=>'0');
    int_weights_36_d1    <= UNSIGNED(WDATA);
    -- weights_37
    int_weights_37_address0 <= SHIFT_RIGHT(UNSIGNED(weights_37_address0), 1)(5 downto 0);
    int_weights_37_ce0   <= weights_37_ce0;
    weights_37_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_37_q0, TO_INTEGER(int_weights_37_shift0) * 16)(15 downto 0));
    int_weights_37_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_37_ce1   <= '1' when ar_hs = '1' or (int_weights_37_write = '1' and WVALID  = '1') else '0';
    int_weights_37_we1   <= '1' when int_weights_37_write = '1' and w_hs = '1' else '0';
    int_weights_37_be1   <= UNSIGNED(WSTRB) when int_weights_37_we1 = '1' else (others=>'0');
    int_weights_37_d1    <= UNSIGNED(WDATA);
    -- weights_38
    int_weights_38_address0 <= SHIFT_RIGHT(UNSIGNED(weights_38_address0), 1)(5 downto 0);
    int_weights_38_ce0   <= weights_38_ce0;
    weights_38_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_38_q0, TO_INTEGER(int_weights_38_shift0) * 16)(15 downto 0));
    int_weights_38_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_38_ce1   <= '1' when ar_hs = '1' or (int_weights_38_write = '1' and WVALID  = '1') else '0';
    int_weights_38_we1   <= '1' when int_weights_38_write = '1' and w_hs = '1' else '0';
    int_weights_38_be1   <= UNSIGNED(WSTRB) when int_weights_38_we1 = '1' else (others=>'0');
    int_weights_38_d1    <= UNSIGNED(WDATA);
    -- weights_39
    int_weights_39_address0 <= SHIFT_RIGHT(UNSIGNED(weights_39_address0), 1)(5 downto 0);
    int_weights_39_ce0   <= weights_39_ce0;
    weights_39_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_39_q0, TO_INTEGER(int_weights_39_shift0) * 16)(15 downto 0));
    int_weights_39_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_39_ce1   <= '1' when ar_hs = '1' or (int_weights_39_write = '1' and WVALID  = '1') else '0';
    int_weights_39_we1   <= '1' when int_weights_39_write = '1' and w_hs = '1' else '0';
    int_weights_39_be1   <= UNSIGNED(WSTRB) when int_weights_39_we1 = '1' else (others=>'0');
    int_weights_39_d1    <= UNSIGNED(WDATA);
    -- weights_40
    int_weights_40_address0 <= SHIFT_RIGHT(UNSIGNED(weights_40_address0), 1)(5 downto 0);
    int_weights_40_ce0   <= weights_40_ce0;
    weights_40_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_40_q0, TO_INTEGER(int_weights_40_shift0) * 16)(15 downto 0));
    int_weights_40_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_40_ce1   <= '1' when ar_hs = '1' or (int_weights_40_write = '1' and WVALID  = '1') else '0';
    int_weights_40_we1   <= '1' when int_weights_40_write = '1' and w_hs = '1' else '0';
    int_weights_40_be1   <= UNSIGNED(WSTRB) when int_weights_40_we1 = '1' else (others=>'0');
    int_weights_40_d1    <= UNSIGNED(WDATA);
    -- weights_41
    int_weights_41_address0 <= SHIFT_RIGHT(UNSIGNED(weights_41_address0), 1)(5 downto 0);
    int_weights_41_ce0   <= weights_41_ce0;
    weights_41_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_41_q0, TO_INTEGER(int_weights_41_shift0) * 16)(15 downto 0));
    int_weights_41_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_41_ce1   <= '1' when ar_hs = '1' or (int_weights_41_write = '1' and WVALID  = '1') else '0';
    int_weights_41_we1   <= '1' when int_weights_41_write = '1' and w_hs = '1' else '0';
    int_weights_41_be1   <= UNSIGNED(WSTRB) when int_weights_41_we1 = '1' else (others=>'0');
    int_weights_41_d1    <= UNSIGNED(WDATA);
    -- weights_42
    int_weights_42_address0 <= SHIFT_RIGHT(UNSIGNED(weights_42_address0), 1)(5 downto 0);
    int_weights_42_ce0   <= weights_42_ce0;
    weights_42_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_42_q0, TO_INTEGER(int_weights_42_shift0) * 16)(15 downto 0));
    int_weights_42_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_42_ce1   <= '1' when ar_hs = '1' or (int_weights_42_write = '1' and WVALID  = '1') else '0';
    int_weights_42_we1   <= '1' when int_weights_42_write = '1' and w_hs = '1' else '0';
    int_weights_42_be1   <= UNSIGNED(WSTRB) when int_weights_42_we1 = '1' else (others=>'0');
    int_weights_42_d1    <= UNSIGNED(WDATA);
    -- weights_43
    int_weights_43_address0 <= SHIFT_RIGHT(UNSIGNED(weights_43_address0), 1)(5 downto 0);
    int_weights_43_ce0   <= weights_43_ce0;
    weights_43_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_43_q0, TO_INTEGER(int_weights_43_shift0) * 16)(15 downto 0));
    int_weights_43_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_43_ce1   <= '1' when ar_hs = '1' or (int_weights_43_write = '1' and WVALID  = '1') else '0';
    int_weights_43_we1   <= '1' when int_weights_43_write = '1' and w_hs = '1' else '0';
    int_weights_43_be1   <= UNSIGNED(WSTRB) when int_weights_43_we1 = '1' else (others=>'0');
    int_weights_43_d1    <= UNSIGNED(WDATA);
    -- weights_44
    int_weights_44_address0 <= SHIFT_RIGHT(UNSIGNED(weights_44_address0), 1)(5 downto 0);
    int_weights_44_ce0   <= weights_44_ce0;
    weights_44_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_44_q0, TO_INTEGER(int_weights_44_shift0) * 16)(15 downto 0));
    int_weights_44_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_44_ce1   <= '1' when ar_hs = '1' or (int_weights_44_write = '1' and WVALID  = '1') else '0';
    int_weights_44_we1   <= '1' when int_weights_44_write = '1' and w_hs = '1' else '0';
    int_weights_44_be1   <= UNSIGNED(WSTRB) when int_weights_44_we1 = '1' else (others=>'0');
    int_weights_44_d1    <= UNSIGNED(WDATA);
    -- weights_45
    int_weights_45_address0 <= SHIFT_RIGHT(UNSIGNED(weights_45_address0), 1)(5 downto 0);
    int_weights_45_ce0   <= weights_45_ce0;
    weights_45_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_45_q0, TO_INTEGER(int_weights_45_shift0) * 16)(15 downto 0));
    int_weights_45_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_45_ce1   <= '1' when ar_hs = '1' or (int_weights_45_write = '1' and WVALID  = '1') else '0';
    int_weights_45_we1   <= '1' when int_weights_45_write = '1' and w_hs = '1' else '0';
    int_weights_45_be1   <= UNSIGNED(WSTRB) when int_weights_45_we1 = '1' else (others=>'0');
    int_weights_45_d1    <= UNSIGNED(WDATA);
    -- weights_46
    int_weights_46_address0 <= SHIFT_RIGHT(UNSIGNED(weights_46_address0), 1)(5 downto 0);
    int_weights_46_ce0   <= weights_46_ce0;
    weights_46_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_46_q0, TO_INTEGER(int_weights_46_shift0) * 16)(15 downto 0));
    int_weights_46_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_46_ce1   <= '1' when ar_hs = '1' or (int_weights_46_write = '1' and WVALID  = '1') else '0';
    int_weights_46_we1   <= '1' when int_weights_46_write = '1' and w_hs = '1' else '0';
    int_weights_46_be1   <= UNSIGNED(WSTRB) when int_weights_46_we1 = '1' else (others=>'0');
    int_weights_46_d1    <= UNSIGNED(WDATA);
    -- weights_47
    int_weights_47_address0 <= SHIFT_RIGHT(UNSIGNED(weights_47_address0), 1)(5 downto 0);
    int_weights_47_ce0   <= weights_47_ce0;
    weights_47_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_47_q0, TO_INTEGER(int_weights_47_shift0) * 16)(15 downto 0));
    int_weights_47_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_47_ce1   <= '1' when ar_hs = '1' or (int_weights_47_write = '1' and WVALID  = '1') else '0';
    int_weights_47_we1   <= '1' when int_weights_47_write = '1' and w_hs = '1' else '0';
    int_weights_47_be1   <= UNSIGNED(WSTRB) when int_weights_47_we1 = '1' else (others=>'0');
    int_weights_47_d1    <= UNSIGNED(WDATA);
    -- weights_48
    int_weights_48_address0 <= SHIFT_RIGHT(UNSIGNED(weights_48_address0), 1)(5 downto 0);
    int_weights_48_ce0   <= weights_48_ce0;
    weights_48_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_48_q0, TO_INTEGER(int_weights_48_shift0) * 16)(15 downto 0));
    int_weights_48_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_48_ce1   <= '1' when ar_hs = '1' or (int_weights_48_write = '1' and WVALID  = '1') else '0';
    int_weights_48_we1   <= '1' when int_weights_48_write = '1' and w_hs = '1' else '0';
    int_weights_48_be1   <= UNSIGNED(WSTRB) when int_weights_48_we1 = '1' else (others=>'0');
    int_weights_48_d1    <= UNSIGNED(WDATA);
    -- weights_49
    int_weights_49_address0 <= SHIFT_RIGHT(UNSIGNED(weights_49_address0), 1)(5 downto 0);
    int_weights_49_ce0   <= weights_49_ce0;
    weights_49_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_49_q0, TO_INTEGER(int_weights_49_shift0) * 16)(15 downto 0));
    int_weights_49_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_49_ce1   <= '1' when ar_hs = '1' or (int_weights_49_write = '1' and WVALID  = '1') else '0';
    int_weights_49_we1   <= '1' when int_weights_49_write = '1' and w_hs = '1' else '0';
    int_weights_49_be1   <= UNSIGNED(WSTRB) when int_weights_49_we1 = '1' else (others=>'0');
    int_weights_49_d1    <= UNSIGNED(WDATA);
    -- weights_50
    int_weights_50_address0 <= SHIFT_RIGHT(UNSIGNED(weights_50_address0), 1)(5 downto 0);
    int_weights_50_ce0   <= weights_50_ce0;
    weights_50_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_50_q0, TO_INTEGER(int_weights_50_shift0) * 16)(15 downto 0));
    int_weights_50_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_50_ce1   <= '1' when ar_hs = '1' or (int_weights_50_write = '1' and WVALID  = '1') else '0';
    int_weights_50_we1   <= '1' when int_weights_50_write = '1' and w_hs = '1' else '0';
    int_weights_50_be1   <= UNSIGNED(WSTRB) when int_weights_50_we1 = '1' else (others=>'0');
    int_weights_50_d1    <= UNSIGNED(WDATA);
    -- weights_51
    int_weights_51_address0 <= SHIFT_RIGHT(UNSIGNED(weights_51_address0), 1)(5 downto 0);
    int_weights_51_ce0   <= weights_51_ce0;
    weights_51_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_51_q0, TO_INTEGER(int_weights_51_shift0) * 16)(15 downto 0));
    int_weights_51_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_51_ce1   <= '1' when ar_hs = '1' or (int_weights_51_write = '1' and WVALID  = '1') else '0';
    int_weights_51_we1   <= '1' when int_weights_51_write = '1' and w_hs = '1' else '0';
    int_weights_51_be1   <= UNSIGNED(WSTRB) when int_weights_51_we1 = '1' else (others=>'0');
    int_weights_51_d1    <= UNSIGNED(WDATA);
    -- weights_52
    int_weights_52_address0 <= SHIFT_RIGHT(UNSIGNED(weights_52_address0), 1)(5 downto 0);
    int_weights_52_ce0   <= weights_52_ce0;
    weights_52_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_52_q0, TO_INTEGER(int_weights_52_shift0) * 16)(15 downto 0));
    int_weights_52_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_52_ce1   <= '1' when ar_hs = '1' or (int_weights_52_write = '1' and WVALID  = '1') else '0';
    int_weights_52_we1   <= '1' when int_weights_52_write = '1' and w_hs = '1' else '0';
    int_weights_52_be1   <= UNSIGNED(WSTRB) when int_weights_52_we1 = '1' else (others=>'0');
    int_weights_52_d1    <= UNSIGNED(WDATA);
    -- weights_53
    int_weights_53_address0 <= SHIFT_RIGHT(UNSIGNED(weights_53_address0), 1)(5 downto 0);
    int_weights_53_ce0   <= weights_53_ce0;
    weights_53_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_53_q0, TO_INTEGER(int_weights_53_shift0) * 16)(15 downto 0));
    int_weights_53_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_53_ce1   <= '1' when ar_hs = '1' or (int_weights_53_write = '1' and WVALID  = '1') else '0';
    int_weights_53_we1   <= '1' when int_weights_53_write = '1' and w_hs = '1' else '0';
    int_weights_53_be1   <= UNSIGNED(WSTRB) when int_weights_53_we1 = '1' else (others=>'0');
    int_weights_53_d1    <= UNSIGNED(WDATA);
    -- weights_54
    int_weights_54_address0 <= SHIFT_RIGHT(UNSIGNED(weights_54_address0), 1)(5 downto 0);
    int_weights_54_ce0   <= weights_54_ce0;
    weights_54_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_54_q0, TO_INTEGER(int_weights_54_shift0) * 16)(15 downto 0));
    int_weights_54_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_54_ce1   <= '1' when ar_hs = '1' or (int_weights_54_write = '1' and WVALID  = '1') else '0';
    int_weights_54_we1   <= '1' when int_weights_54_write = '1' and w_hs = '1' else '0';
    int_weights_54_be1   <= UNSIGNED(WSTRB) when int_weights_54_we1 = '1' else (others=>'0');
    int_weights_54_d1    <= UNSIGNED(WDATA);
    -- weights_55
    int_weights_55_address0 <= SHIFT_RIGHT(UNSIGNED(weights_55_address0), 1)(5 downto 0);
    int_weights_55_ce0   <= weights_55_ce0;
    weights_55_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_55_q0, TO_INTEGER(int_weights_55_shift0) * 16)(15 downto 0));
    int_weights_55_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_55_ce1   <= '1' when ar_hs = '1' or (int_weights_55_write = '1' and WVALID  = '1') else '0';
    int_weights_55_we1   <= '1' when int_weights_55_write = '1' and w_hs = '1' else '0';
    int_weights_55_be1   <= UNSIGNED(WSTRB) when int_weights_55_we1 = '1' else (others=>'0');
    int_weights_55_d1    <= UNSIGNED(WDATA);
    -- weights_56
    int_weights_56_address0 <= SHIFT_RIGHT(UNSIGNED(weights_56_address0), 1)(5 downto 0);
    int_weights_56_ce0   <= weights_56_ce0;
    weights_56_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_56_q0, TO_INTEGER(int_weights_56_shift0) * 16)(15 downto 0));
    int_weights_56_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_56_ce1   <= '1' when ar_hs = '1' or (int_weights_56_write = '1' and WVALID  = '1') else '0';
    int_weights_56_we1   <= '1' when int_weights_56_write = '1' and w_hs = '1' else '0';
    int_weights_56_be1   <= UNSIGNED(WSTRB) when int_weights_56_we1 = '1' else (others=>'0');
    int_weights_56_d1    <= UNSIGNED(WDATA);
    -- weights_57
    int_weights_57_address0 <= SHIFT_RIGHT(UNSIGNED(weights_57_address0), 1)(5 downto 0);
    int_weights_57_ce0   <= weights_57_ce0;
    weights_57_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_57_q0, TO_INTEGER(int_weights_57_shift0) * 16)(15 downto 0));
    int_weights_57_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_57_ce1   <= '1' when ar_hs = '1' or (int_weights_57_write = '1' and WVALID  = '1') else '0';
    int_weights_57_we1   <= '1' when int_weights_57_write = '1' and w_hs = '1' else '0';
    int_weights_57_be1   <= UNSIGNED(WSTRB) when int_weights_57_we1 = '1' else (others=>'0');
    int_weights_57_d1    <= UNSIGNED(WDATA);
    -- weights_58
    int_weights_58_address0 <= SHIFT_RIGHT(UNSIGNED(weights_58_address0), 1)(5 downto 0);
    int_weights_58_ce0   <= weights_58_ce0;
    weights_58_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_58_q0, TO_INTEGER(int_weights_58_shift0) * 16)(15 downto 0));
    int_weights_58_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_58_ce1   <= '1' when ar_hs = '1' or (int_weights_58_write = '1' and WVALID  = '1') else '0';
    int_weights_58_we1   <= '1' when int_weights_58_write = '1' and w_hs = '1' else '0';
    int_weights_58_be1   <= UNSIGNED(WSTRB) when int_weights_58_we1 = '1' else (others=>'0');
    int_weights_58_d1    <= UNSIGNED(WDATA);
    -- weights_59
    int_weights_59_address0 <= SHIFT_RIGHT(UNSIGNED(weights_59_address0), 1)(5 downto 0);
    int_weights_59_ce0   <= weights_59_ce0;
    weights_59_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_59_q0, TO_INTEGER(int_weights_59_shift0) * 16)(15 downto 0));
    int_weights_59_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_59_ce1   <= '1' when ar_hs = '1' or (int_weights_59_write = '1' and WVALID  = '1') else '0';
    int_weights_59_we1   <= '1' when int_weights_59_write = '1' and w_hs = '1' else '0';
    int_weights_59_be1   <= UNSIGNED(WSTRB) when int_weights_59_we1 = '1' else (others=>'0');
    int_weights_59_d1    <= UNSIGNED(WDATA);
    -- weights_60
    int_weights_60_address0 <= SHIFT_RIGHT(UNSIGNED(weights_60_address0), 1)(5 downto 0);
    int_weights_60_ce0   <= weights_60_ce0;
    weights_60_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_60_q0, TO_INTEGER(int_weights_60_shift0) * 16)(15 downto 0));
    int_weights_60_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_60_ce1   <= '1' when ar_hs = '1' or (int_weights_60_write = '1' and WVALID  = '1') else '0';
    int_weights_60_we1   <= '1' when int_weights_60_write = '1' and w_hs = '1' else '0';
    int_weights_60_be1   <= UNSIGNED(WSTRB) when int_weights_60_we1 = '1' else (others=>'0');
    int_weights_60_d1    <= UNSIGNED(WDATA);
    -- weights_61
    int_weights_61_address0 <= SHIFT_RIGHT(UNSIGNED(weights_61_address0), 1)(5 downto 0);
    int_weights_61_ce0   <= weights_61_ce0;
    weights_61_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_61_q0, TO_INTEGER(int_weights_61_shift0) * 16)(15 downto 0));
    int_weights_61_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_61_ce1   <= '1' when ar_hs = '1' or (int_weights_61_write = '1' and WVALID  = '1') else '0';
    int_weights_61_we1   <= '1' when int_weights_61_write = '1' and w_hs = '1' else '0';
    int_weights_61_be1   <= UNSIGNED(WSTRB) when int_weights_61_we1 = '1' else (others=>'0');
    int_weights_61_d1    <= UNSIGNED(WDATA);
    -- weights_62
    int_weights_62_address0 <= SHIFT_RIGHT(UNSIGNED(weights_62_address0), 1)(5 downto 0);
    int_weights_62_ce0   <= weights_62_ce0;
    weights_62_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_62_q0, TO_INTEGER(int_weights_62_shift0) * 16)(15 downto 0));
    int_weights_62_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_62_ce1   <= '1' when ar_hs = '1' or (int_weights_62_write = '1' and WVALID  = '1') else '0';
    int_weights_62_we1   <= '1' when int_weights_62_write = '1' and w_hs = '1' else '0';
    int_weights_62_be1   <= UNSIGNED(WSTRB) when int_weights_62_we1 = '1' else (others=>'0');
    int_weights_62_d1    <= UNSIGNED(WDATA);
    -- weights_63
    int_weights_63_address0 <= SHIFT_RIGHT(UNSIGNED(weights_63_address0), 1)(5 downto 0);
    int_weights_63_ce0   <= weights_63_ce0;
    weights_63_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_63_q0, TO_INTEGER(int_weights_63_shift0) * 16)(15 downto 0));
    int_weights_63_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_63_ce1   <= '1' when ar_hs = '1' or (int_weights_63_write = '1' and WVALID  = '1') else '0';
    int_weights_63_we1   <= '1' when int_weights_63_write = '1' and w_hs = '1' else '0';
    int_weights_63_be1   <= UNSIGNED(WSTRB) when int_weights_63_we1 = '1' else (others=>'0');
    int_weights_63_d1    <= UNSIGNED(WDATA);
    -- weights_64
    int_weights_64_address0 <= SHIFT_RIGHT(UNSIGNED(weights_64_address0), 1)(5 downto 0);
    int_weights_64_ce0   <= weights_64_ce0;
    weights_64_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_64_q0, TO_INTEGER(int_weights_64_shift0) * 16)(15 downto 0));
    int_weights_64_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_64_ce1   <= '1' when ar_hs = '1' or (int_weights_64_write = '1' and WVALID  = '1') else '0';
    int_weights_64_we1   <= '1' when int_weights_64_write = '1' and w_hs = '1' else '0';
    int_weights_64_be1   <= UNSIGNED(WSTRB) when int_weights_64_we1 = '1' else (others=>'0');
    int_weights_64_d1    <= UNSIGNED(WDATA);
    -- weights_65
    int_weights_65_address0 <= SHIFT_RIGHT(UNSIGNED(weights_65_address0), 1)(5 downto 0);
    int_weights_65_ce0   <= weights_65_ce0;
    weights_65_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_65_q0, TO_INTEGER(int_weights_65_shift0) * 16)(15 downto 0));
    int_weights_65_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_65_ce1   <= '1' when ar_hs = '1' or (int_weights_65_write = '1' and WVALID  = '1') else '0';
    int_weights_65_we1   <= '1' when int_weights_65_write = '1' and w_hs = '1' else '0';
    int_weights_65_be1   <= UNSIGNED(WSTRB) when int_weights_65_we1 = '1' else (others=>'0');
    int_weights_65_d1    <= UNSIGNED(WDATA);
    -- weights_66
    int_weights_66_address0 <= SHIFT_RIGHT(UNSIGNED(weights_66_address0), 1)(5 downto 0);
    int_weights_66_ce0   <= weights_66_ce0;
    weights_66_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_66_q0, TO_INTEGER(int_weights_66_shift0) * 16)(15 downto 0));
    int_weights_66_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_66_ce1   <= '1' when ar_hs = '1' or (int_weights_66_write = '1' and WVALID  = '1') else '0';
    int_weights_66_we1   <= '1' when int_weights_66_write = '1' and w_hs = '1' else '0';
    int_weights_66_be1   <= UNSIGNED(WSTRB) when int_weights_66_we1 = '1' else (others=>'0');
    int_weights_66_d1    <= UNSIGNED(WDATA);
    -- weights_67
    int_weights_67_address0 <= SHIFT_RIGHT(UNSIGNED(weights_67_address0), 1)(5 downto 0);
    int_weights_67_ce0   <= weights_67_ce0;
    weights_67_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_67_q0, TO_INTEGER(int_weights_67_shift0) * 16)(15 downto 0));
    int_weights_67_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_67_ce1   <= '1' when ar_hs = '1' or (int_weights_67_write = '1' and WVALID  = '1') else '0';
    int_weights_67_we1   <= '1' when int_weights_67_write = '1' and w_hs = '1' else '0';
    int_weights_67_be1   <= UNSIGNED(WSTRB) when int_weights_67_we1 = '1' else (others=>'0');
    int_weights_67_d1    <= UNSIGNED(WDATA);
    -- weights_68
    int_weights_68_address0 <= SHIFT_RIGHT(UNSIGNED(weights_68_address0), 1)(5 downto 0);
    int_weights_68_ce0   <= weights_68_ce0;
    weights_68_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_68_q0, TO_INTEGER(int_weights_68_shift0) * 16)(15 downto 0));
    int_weights_68_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_68_ce1   <= '1' when ar_hs = '1' or (int_weights_68_write = '1' and WVALID  = '1') else '0';
    int_weights_68_we1   <= '1' when int_weights_68_write = '1' and w_hs = '1' else '0';
    int_weights_68_be1   <= UNSIGNED(WSTRB) when int_weights_68_we1 = '1' else (others=>'0');
    int_weights_68_d1    <= UNSIGNED(WDATA);
    -- weights_69
    int_weights_69_address0 <= SHIFT_RIGHT(UNSIGNED(weights_69_address0), 1)(5 downto 0);
    int_weights_69_ce0   <= weights_69_ce0;
    weights_69_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_69_q0, TO_INTEGER(int_weights_69_shift0) * 16)(15 downto 0));
    int_weights_69_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_69_ce1   <= '1' when ar_hs = '1' or (int_weights_69_write = '1' and WVALID  = '1') else '0';
    int_weights_69_we1   <= '1' when int_weights_69_write = '1' and w_hs = '1' else '0';
    int_weights_69_be1   <= UNSIGNED(WSTRB) when int_weights_69_we1 = '1' else (others=>'0');
    int_weights_69_d1    <= UNSIGNED(WDATA);
    -- weights_70
    int_weights_70_address0 <= SHIFT_RIGHT(UNSIGNED(weights_70_address0), 1)(5 downto 0);
    int_weights_70_ce0   <= weights_70_ce0;
    weights_70_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_70_q0, TO_INTEGER(int_weights_70_shift0) * 16)(15 downto 0));
    int_weights_70_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_70_ce1   <= '1' when ar_hs = '1' or (int_weights_70_write = '1' and WVALID  = '1') else '0';
    int_weights_70_we1   <= '1' when int_weights_70_write = '1' and w_hs = '1' else '0';
    int_weights_70_be1   <= UNSIGNED(WSTRB) when int_weights_70_we1 = '1' else (others=>'0');
    int_weights_70_d1    <= UNSIGNED(WDATA);
    -- weights_71
    int_weights_71_address0 <= SHIFT_RIGHT(UNSIGNED(weights_71_address0), 1)(5 downto 0);
    int_weights_71_ce0   <= weights_71_ce0;
    weights_71_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_71_q0, TO_INTEGER(int_weights_71_shift0) * 16)(15 downto 0));
    int_weights_71_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_71_ce1   <= '1' when ar_hs = '1' or (int_weights_71_write = '1' and WVALID  = '1') else '0';
    int_weights_71_we1   <= '1' when int_weights_71_write = '1' and w_hs = '1' else '0';
    int_weights_71_be1   <= UNSIGNED(WSTRB) when int_weights_71_we1 = '1' else (others=>'0');
    int_weights_71_d1    <= UNSIGNED(WDATA);
    -- weights_72
    int_weights_72_address0 <= SHIFT_RIGHT(UNSIGNED(weights_72_address0), 1)(5 downto 0);
    int_weights_72_ce0   <= weights_72_ce0;
    weights_72_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_72_q0, TO_INTEGER(int_weights_72_shift0) * 16)(15 downto 0));
    int_weights_72_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_72_ce1   <= '1' when ar_hs = '1' or (int_weights_72_write = '1' and WVALID  = '1') else '0';
    int_weights_72_we1   <= '1' when int_weights_72_write = '1' and w_hs = '1' else '0';
    int_weights_72_be1   <= UNSIGNED(WSTRB) when int_weights_72_we1 = '1' else (others=>'0');
    int_weights_72_d1    <= UNSIGNED(WDATA);
    -- weights_73
    int_weights_73_address0 <= SHIFT_RIGHT(UNSIGNED(weights_73_address0), 1)(5 downto 0);
    int_weights_73_ce0   <= weights_73_ce0;
    weights_73_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_73_q0, TO_INTEGER(int_weights_73_shift0) * 16)(15 downto 0));
    int_weights_73_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_73_ce1   <= '1' when ar_hs = '1' or (int_weights_73_write = '1' and WVALID  = '1') else '0';
    int_weights_73_we1   <= '1' when int_weights_73_write = '1' and w_hs = '1' else '0';
    int_weights_73_be1   <= UNSIGNED(WSTRB) when int_weights_73_we1 = '1' else (others=>'0');
    int_weights_73_d1    <= UNSIGNED(WDATA);
    -- weights_74
    int_weights_74_address0 <= SHIFT_RIGHT(UNSIGNED(weights_74_address0), 1)(5 downto 0);
    int_weights_74_ce0   <= weights_74_ce0;
    weights_74_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_74_q0, TO_INTEGER(int_weights_74_shift0) * 16)(15 downto 0));
    int_weights_74_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_74_ce1   <= '1' when ar_hs = '1' or (int_weights_74_write = '1' and WVALID  = '1') else '0';
    int_weights_74_we1   <= '1' when int_weights_74_write = '1' and w_hs = '1' else '0';
    int_weights_74_be1   <= UNSIGNED(WSTRB) when int_weights_74_we1 = '1' else (others=>'0');
    int_weights_74_d1    <= UNSIGNED(WDATA);
    -- weights_75
    int_weights_75_address0 <= SHIFT_RIGHT(UNSIGNED(weights_75_address0), 1)(5 downto 0);
    int_weights_75_ce0   <= weights_75_ce0;
    weights_75_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_75_q0, TO_INTEGER(int_weights_75_shift0) * 16)(15 downto 0));
    int_weights_75_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_75_ce1   <= '1' when ar_hs = '1' or (int_weights_75_write = '1' and WVALID  = '1') else '0';
    int_weights_75_we1   <= '1' when int_weights_75_write = '1' and w_hs = '1' else '0';
    int_weights_75_be1   <= UNSIGNED(WSTRB) when int_weights_75_we1 = '1' else (others=>'0');
    int_weights_75_d1    <= UNSIGNED(WDATA);
    -- weights_76
    int_weights_76_address0 <= SHIFT_RIGHT(UNSIGNED(weights_76_address0), 1)(5 downto 0);
    int_weights_76_ce0   <= weights_76_ce0;
    weights_76_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_76_q0, TO_INTEGER(int_weights_76_shift0) * 16)(15 downto 0));
    int_weights_76_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_76_ce1   <= '1' when ar_hs = '1' or (int_weights_76_write = '1' and WVALID  = '1') else '0';
    int_weights_76_we1   <= '1' when int_weights_76_write = '1' and w_hs = '1' else '0';
    int_weights_76_be1   <= UNSIGNED(WSTRB) when int_weights_76_we1 = '1' else (others=>'0');
    int_weights_76_d1    <= UNSIGNED(WDATA);
    -- weights_77
    int_weights_77_address0 <= SHIFT_RIGHT(UNSIGNED(weights_77_address0), 1)(5 downto 0);
    int_weights_77_ce0   <= weights_77_ce0;
    weights_77_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_77_q0, TO_INTEGER(int_weights_77_shift0) * 16)(15 downto 0));
    int_weights_77_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_77_ce1   <= '1' when ar_hs = '1' or (int_weights_77_write = '1' and WVALID  = '1') else '0';
    int_weights_77_we1   <= '1' when int_weights_77_write = '1' and w_hs = '1' else '0';
    int_weights_77_be1   <= UNSIGNED(WSTRB) when int_weights_77_we1 = '1' else (others=>'0');
    int_weights_77_d1    <= UNSIGNED(WDATA);
    -- weights_78
    int_weights_78_address0 <= SHIFT_RIGHT(UNSIGNED(weights_78_address0), 1)(5 downto 0);
    int_weights_78_ce0   <= weights_78_ce0;
    weights_78_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_78_q0, TO_INTEGER(int_weights_78_shift0) * 16)(15 downto 0));
    int_weights_78_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_78_ce1   <= '1' when ar_hs = '1' or (int_weights_78_write = '1' and WVALID  = '1') else '0';
    int_weights_78_we1   <= '1' when int_weights_78_write = '1' and w_hs = '1' else '0';
    int_weights_78_be1   <= UNSIGNED(WSTRB) when int_weights_78_we1 = '1' else (others=>'0');
    int_weights_78_d1    <= UNSIGNED(WDATA);
    -- weights_79
    int_weights_79_address0 <= SHIFT_RIGHT(UNSIGNED(weights_79_address0), 1)(5 downto 0);
    int_weights_79_ce0   <= weights_79_ce0;
    weights_79_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_79_q0, TO_INTEGER(int_weights_79_shift0) * 16)(15 downto 0));
    int_weights_79_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_79_ce1   <= '1' when ar_hs = '1' or (int_weights_79_write = '1' and WVALID  = '1') else '0';
    int_weights_79_we1   <= '1' when int_weights_79_write = '1' and w_hs = '1' else '0';
    int_weights_79_be1   <= UNSIGNED(WSTRB) when int_weights_79_we1 = '1' else (others=>'0');
    int_weights_79_d1    <= UNSIGNED(WDATA);
    -- weights_80
    int_weights_80_address0 <= SHIFT_RIGHT(UNSIGNED(weights_80_address0), 1)(5 downto 0);
    int_weights_80_ce0   <= weights_80_ce0;
    weights_80_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_80_q0, TO_INTEGER(int_weights_80_shift0) * 16)(15 downto 0));
    int_weights_80_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_80_ce1   <= '1' when ar_hs = '1' or (int_weights_80_write = '1' and WVALID  = '1') else '0';
    int_weights_80_we1   <= '1' when int_weights_80_write = '1' and w_hs = '1' else '0';
    int_weights_80_be1   <= UNSIGNED(WSTRB) when int_weights_80_we1 = '1' else (others=>'0');
    int_weights_80_d1    <= UNSIGNED(WDATA);
    -- weights_81
    int_weights_81_address0 <= SHIFT_RIGHT(UNSIGNED(weights_81_address0), 1)(5 downto 0);
    int_weights_81_ce0   <= weights_81_ce0;
    weights_81_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_81_q0, TO_INTEGER(int_weights_81_shift0) * 16)(15 downto 0));
    int_weights_81_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_81_ce1   <= '1' when ar_hs = '1' or (int_weights_81_write = '1' and WVALID  = '1') else '0';
    int_weights_81_we1   <= '1' when int_weights_81_write = '1' and w_hs = '1' else '0';
    int_weights_81_be1   <= UNSIGNED(WSTRB) when int_weights_81_we1 = '1' else (others=>'0');
    int_weights_81_d1    <= UNSIGNED(WDATA);
    -- weights_82
    int_weights_82_address0 <= SHIFT_RIGHT(UNSIGNED(weights_82_address0), 1)(5 downto 0);
    int_weights_82_ce0   <= weights_82_ce0;
    weights_82_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_82_q0, TO_INTEGER(int_weights_82_shift0) * 16)(15 downto 0));
    int_weights_82_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_82_ce1   <= '1' when ar_hs = '1' or (int_weights_82_write = '1' and WVALID  = '1') else '0';
    int_weights_82_we1   <= '1' when int_weights_82_write = '1' and w_hs = '1' else '0';
    int_weights_82_be1   <= UNSIGNED(WSTRB) when int_weights_82_we1 = '1' else (others=>'0');
    int_weights_82_d1    <= UNSIGNED(WDATA);
    -- weights_83
    int_weights_83_address0 <= SHIFT_RIGHT(UNSIGNED(weights_83_address0), 1)(5 downto 0);
    int_weights_83_ce0   <= weights_83_ce0;
    weights_83_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_83_q0, TO_INTEGER(int_weights_83_shift0) * 16)(15 downto 0));
    int_weights_83_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_83_ce1   <= '1' when ar_hs = '1' or (int_weights_83_write = '1' and WVALID  = '1') else '0';
    int_weights_83_we1   <= '1' when int_weights_83_write = '1' and w_hs = '1' else '0';
    int_weights_83_be1   <= UNSIGNED(WSTRB) when int_weights_83_we1 = '1' else (others=>'0');
    int_weights_83_d1    <= UNSIGNED(WDATA);
    -- weights_84
    int_weights_84_address0 <= SHIFT_RIGHT(UNSIGNED(weights_84_address0), 1)(5 downto 0);
    int_weights_84_ce0   <= weights_84_ce0;
    weights_84_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_84_q0, TO_INTEGER(int_weights_84_shift0) * 16)(15 downto 0));
    int_weights_84_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_84_ce1   <= '1' when ar_hs = '1' or (int_weights_84_write = '1' and WVALID  = '1') else '0';
    int_weights_84_we1   <= '1' when int_weights_84_write = '1' and w_hs = '1' else '0';
    int_weights_84_be1   <= UNSIGNED(WSTRB) when int_weights_84_we1 = '1' else (others=>'0');
    int_weights_84_d1    <= UNSIGNED(WDATA);
    -- weights_85
    int_weights_85_address0 <= SHIFT_RIGHT(UNSIGNED(weights_85_address0), 1)(5 downto 0);
    int_weights_85_ce0   <= weights_85_ce0;
    weights_85_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_85_q0, TO_INTEGER(int_weights_85_shift0) * 16)(15 downto 0));
    int_weights_85_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_85_ce1   <= '1' when ar_hs = '1' or (int_weights_85_write = '1' and WVALID  = '1') else '0';
    int_weights_85_we1   <= '1' when int_weights_85_write = '1' and w_hs = '1' else '0';
    int_weights_85_be1   <= UNSIGNED(WSTRB) when int_weights_85_we1 = '1' else (others=>'0');
    int_weights_85_d1    <= UNSIGNED(WDATA);
    -- weights_86
    int_weights_86_address0 <= SHIFT_RIGHT(UNSIGNED(weights_86_address0), 1)(5 downto 0);
    int_weights_86_ce0   <= weights_86_ce0;
    weights_86_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_86_q0, TO_INTEGER(int_weights_86_shift0) * 16)(15 downto 0));
    int_weights_86_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_86_ce1   <= '1' when ar_hs = '1' or (int_weights_86_write = '1' and WVALID  = '1') else '0';
    int_weights_86_we1   <= '1' when int_weights_86_write = '1' and w_hs = '1' else '0';
    int_weights_86_be1   <= UNSIGNED(WSTRB) when int_weights_86_we1 = '1' else (others=>'0');
    int_weights_86_d1    <= UNSIGNED(WDATA);
    -- weights_87
    int_weights_87_address0 <= SHIFT_RIGHT(UNSIGNED(weights_87_address0), 1)(5 downto 0);
    int_weights_87_ce0   <= weights_87_ce0;
    weights_87_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_87_q0, TO_INTEGER(int_weights_87_shift0) * 16)(15 downto 0));
    int_weights_87_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_87_ce1   <= '1' when ar_hs = '1' or (int_weights_87_write = '1' and WVALID  = '1') else '0';
    int_weights_87_we1   <= '1' when int_weights_87_write = '1' and w_hs = '1' else '0';
    int_weights_87_be1   <= UNSIGNED(WSTRB) when int_weights_87_we1 = '1' else (others=>'0');
    int_weights_87_d1    <= UNSIGNED(WDATA);
    -- weights_88
    int_weights_88_address0 <= SHIFT_RIGHT(UNSIGNED(weights_88_address0), 1)(5 downto 0);
    int_weights_88_ce0   <= weights_88_ce0;
    weights_88_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_88_q0, TO_INTEGER(int_weights_88_shift0) * 16)(15 downto 0));
    int_weights_88_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_88_ce1   <= '1' when ar_hs = '1' or (int_weights_88_write = '1' and WVALID  = '1') else '0';
    int_weights_88_we1   <= '1' when int_weights_88_write = '1' and w_hs = '1' else '0';
    int_weights_88_be1   <= UNSIGNED(WSTRB) when int_weights_88_we1 = '1' else (others=>'0');
    int_weights_88_d1    <= UNSIGNED(WDATA);
    -- weights_89
    int_weights_89_address0 <= SHIFT_RIGHT(UNSIGNED(weights_89_address0), 1)(5 downto 0);
    int_weights_89_ce0   <= weights_89_ce0;
    weights_89_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_89_q0, TO_INTEGER(int_weights_89_shift0) * 16)(15 downto 0));
    int_weights_89_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_89_ce1   <= '1' when ar_hs = '1' or (int_weights_89_write = '1' and WVALID  = '1') else '0';
    int_weights_89_we1   <= '1' when int_weights_89_write = '1' and w_hs = '1' else '0';
    int_weights_89_be1   <= UNSIGNED(WSTRB) when int_weights_89_we1 = '1' else (others=>'0');
    int_weights_89_d1    <= UNSIGNED(WDATA);
    -- weights_90
    int_weights_90_address0 <= SHIFT_RIGHT(UNSIGNED(weights_90_address0), 1)(5 downto 0);
    int_weights_90_ce0   <= weights_90_ce0;
    weights_90_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_90_q0, TO_INTEGER(int_weights_90_shift0) * 16)(15 downto 0));
    int_weights_90_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_90_ce1   <= '1' when ar_hs = '1' or (int_weights_90_write = '1' and WVALID  = '1') else '0';
    int_weights_90_we1   <= '1' when int_weights_90_write = '1' and w_hs = '1' else '0';
    int_weights_90_be1   <= UNSIGNED(WSTRB) when int_weights_90_we1 = '1' else (others=>'0');
    int_weights_90_d1    <= UNSIGNED(WDATA);
    -- weights_91
    int_weights_91_address0 <= SHIFT_RIGHT(UNSIGNED(weights_91_address0), 1)(5 downto 0);
    int_weights_91_ce0   <= weights_91_ce0;
    weights_91_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_91_q0, TO_INTEGER(int_weights_91_shift0) * 16)(15 downto 0));
    int_weights_91_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_91_ce1   <= '1' when ar_hs = '1' or (int_weights_91_write = '1' and WVALID  = '1') else '0';
    int_weights_91_we1   <= '1' when int_weights_91_write = '1' and w_hs = '1' else '0';
    int_weights_91_be1   <= UNSIGNED(WSTRB) when int_weights_91_we1 = '1' else (others=>'0');
    int_weights_91_d1    <= UNSIGNED(WDATA);
    -- weights_92
    int_weights_92_address0 <= SHIFT_RIGHT(UNSIGNED(weights_92_address0), 1)(5 downto 0);
    int_weights_92_ce0   <= weights_92_ce0;
    weights_92_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_92_q0, TO_INTEGER(int_weights_92_shift0) * 16)(15 downto 0));
    int_weights_92_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_92_ce1   <= '1' when ar_hs = '1' or (int_weights_92_write = '1' and WVALID  = '1') else '0';
    int_weights_92_we1   <= '1' when int_weights_92_write = '1' and w_hs = '1' else '0';
    int_weights_92_be1   <= UNSIGNED(WSTRB) when int_weights_92_we1 = '1' else (others=>'0');
    int_weights_92_d1    <= UNSIGNED(WDATA);
    -- weights_93
    int_weights_93_address0 <= SHIFT_RIGHT(UNSIGNED(weights_93_address0), 1)(5 downto 0);
    int_weights_93_ce0   <= weights_93_ce0;
    weights_93_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_93_q0, TO_INTEGER(int_weights_93_shift0) * 16)(15 downto 0));
    int_weights_93_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_93_ce1   <= '1' when ar_hs = '1' or (int_weights_93_write = '1' and WVALID  = '1') else '0';
    int_weights_93_we1   <= '1' when int_weights_93_write = '1' and w_hs = '1' else '0';
    int_weights_93_be1   <= UNSIGNED(WSTRB) when int_weights_93_we1 = '1' else (others=>'0');
    int_weights_93_d1    <= UNSIGNED(WDATA);
    -- weights_94
    int_weights_94_address0 <= SHIFT_RIGHT(UNSIGNED(weights_94_address0), 1)(5 downto 0);
    int_weights_94_ce0   <= weights_94_ce0;
    weights_94_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_94_q0, TO_INTEGER(int_weights_94_shift0) * 16)(15 downto 0));
    int_weights_94_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_94_ce1   <= '1' when ar_hs = '1' or (int_weights_94_write = '1' and WVALID  = '1') else '0';
    int_weights_94_we1   <= '1' when int_weights_94_write = '1' and w_hs = '1' else '0';
    int_weights_94_be1   <= UNSIGNED(WSTRB) when int_weights_94_we1 = '1' else (others=>'0');
    int_weights_94_d1    <= UNSIGNED(WDATA);
    -- weights_95
    int_weights_95_address0 <= SHIFT_RIGHT(UNSIGNED(weights_95_address0), 1)(5 downto 0);
    int_weights_95_ce0   <= weights_95_ce0;
    weights_95_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_95_q0, TO_INTEGER(int_weights_95_shift0) * 16)(15 downto 0));
    int_weights_95_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_95_ce1   <= '1' when ar_hs = '1' or (int_weights_95_write = '1' and WVALID  = '1') else '0';
    int_weights_95_we1   <= '1' when int_weights_95_write = '1' and w_hs = '1' else '0';
    int_weights_95_be1   <= UNSIGNED(WSTRB) when int_weights_95_we1 = '1' else (others=>'0');
    int_weights_95_d1    <= UNSIGNED(WDATA);
    -- weights_96
    int_weights_96_address0 <= SHIFT_RIGHT(UNSIGNED(weights_96_address0), 1)(5 downto 0);
    int_weights_96_ce0   <= weights_96_ce0;
    weights_96_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_96_q0, TO_INTEGER(int_weights_96_shift0) * 16)(15 downto 0));
    int_weights_96_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_96_ce1   <= '1' when ar_hs = '1' or (int_weights_96_write = '1' and WVALID  = '1') else '0';
    int_weights_96_we1   <= '1' when int_weights_96_write = '1' and w_hs = '1' else '0';
    int_weights_96_be1   <= UNSIGNED(WSTRB) when int_weights_96_we1 = '1' else (others=>'0');
    int_weights_96_d1    <= UNSIGNED(WDATA);
    -- weights_97
    int_weights_97_address0 <= SHIFT_RIGHT(UNSIGNED(weights_97_address0), 1)(5 downto 0);
    int_weights_97_ce0   <= weights_97_ce0;
    weights_97_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_97_q0, TO_INTEGER(int_weights_97_shift0) * 16)(15 downto 0));
    int_weights_97_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_97_ce1   <= '1' when ar_hs = '1' or (int_weights_97_write = '1' and WVALID  = '1') else '0';
    int_weights_97_we1   <= '1' when int_weights_97_write = '1' and w_hs = '1' else '0';
    int_weights_97_be1   <= UNSIGNED(WSTRB) when int_weights_97_we1 = '1' else (others=>'0');
    int_weights_97_d1    <= UNSIGNED(WDATA);
    -- weights_98
    int_weights_98_address0 <= SHIFT_RIGHT(UNSIGNED(weights_98_address0), 1)(5 downto 0);
    int_weights_98_ce0   <= weights_98_ce0;
    weights_98_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_98_q0, TO_INTEGER(int_weights_98_shift0) * 16)(15 downto 0));
    int_weights_98_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_98_ce1   <= '1' when ar_hs = '1' or (int_weights_98_write = '1' and WVALID  = '1') else '0';
    int_weights_98_we1   <= '1' when int_weights_98_write = '1' and w_hs = '1' else '0';
    int_weights_98_be1   <= UNSIGNED(WSTRB) when int_weights_98_we1 = '1' else (others=>'0');
    int_weights_98_d1    <= UNSIGNED(WDATA);
    -- weights_99
    int_weights_99_address0 <= SHIFT_RIGHT(UNSIGNED(weights_99_address0), 1)(5 downto 0);
    int_weights_99_ce0   <= weights_99_ce0;
    weights_99_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_99_q0, TO_INTEGER(int_weights_99_shift0) * 16)(15 downto 0));
    int_weights_99_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_99_ce1   <= '1' when ar_hs = '1' or (int_weights_99_write = '1' and WVALID  = '1') else '0';
    int_weights_99_we1   <= '1' when int_weights_99_write = '1' and w_hs = '1' else '0';
    int_weights_99_be1   <= UNSIGNED(WSTRB) when int_weights_99_we1 = '1' else (others=>'0');
    int_weights_99_d1    <= UNSIGNED(WDATA);
    -- weights_100
    int_weights_100_address0 <= SHIFT_RIGHT(UNSIGNED(weights_100_address0), 1)(5 downto 0);
    int_weights_100_ce0  <= weights_100_ce0;
    weights_100_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_100_q0, TO_INTEGER(int_weights_100_shift0) * 16)(15 downto 0));
    int_weights_100_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_100_ce1  <= '1' when ar_hs = '1' or (int_weights_100_write = '1' and WVALID  = '1') else '0';
    int_weights_100_we1  <= '1' when int_weights_100_write = '1' and w_hs = '1' else '0';
    int_weights_100_be1  <= UNSIGNED(WSTRB) when int_weights_100_we1 = '1' else (others=>'0');
    int_weights_100_d1   <= UNSIGNED(WDATA);
    -- weights_101
    int_weights_101_address0 <= SHIFT_RIGHT(UNSIGNED(weights_101_address0), 1)(5 downto 0);
    int_weights_101_ce0  <= weights_101_ce0;
    weights_101_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_101_q0, TO_INTEGER(int_weights_101_shift0) * 16)(15 downto 0));
    int_weights_101_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_101_ce1  <= '1' when ar_hs = '1' or (int_weights_101_write = '1' and WVALID  = '1') else '0';
    int_weights_101_we1  <= '1' when int_weights_101_write = '1' and w_hs = '1' else '0';
    int_weights_101_be1  <= UNSIGNED(WSTRB) when int_weights_101_we1 = '1' else (others=>'0');
    int_weights_101_d1   <= UNSIGNED(WDATA);
    -- weights_102
    int_weights_102_address0 <= SHIFT_RIGHT(UNSIGNED(weights_102_address0), 1)(5 downto 0);
    int_weights_102_ce0  <= weights_102_ce0;
    weights_102_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_102_q0, TO_INTEGER(int_weights_102_shift0) * 16)(15 downto 0));
    int_weights_102_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_102_ce1  <= '1' when ar_hs = '1' or (int_weights_102_write = '1' and WVALID  = '1') else '0';
    int_weights_102_we1  <= '1' when int_weights_102_write = '1' and w_hs = '1' else '0';
    int_weights_102_be1  <= UNSIGNED(WSTRB) when int_weights_102_we1 = '1' else (others=>'0');
    int_weights_102_d1   <= UNSIGNED(WDATA);
    -- weights_103
    int_weights_103_address0 <= SHIFT_RIGHT(UNSIGNED(weights_103_address0), 1)(5 downto 0);
    int_weights_103_ce0  <= weights_103_ce0;
    weights_103_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_103_q0, TO_INTEGER(int_weights_103_shift0) * 16)(15 downto 0));
    int_weights_103_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_103_ce1  <= '1' when ar_hs = '1' or (int_weights_103_write = '1' and WVALID  = '1') else '0';
    int_weights_103_we1  <= '1' when int_weights_103_write = '1' and w_hs = '1' else '0';
    int_weights_103_be1  <= UNSIGNED(WSTRB) when int_weights_103_we1 = '1' else (others=>'0');
    int_weights_103_d1   <= UNSIGNED(WDATA);
    -- weights_104
    int_weights_104_address0 <= SHIFT_RIGHT(UNSIGNED(weights_104_address0), 1)(5 downto 0);
    int_weights_104_ce0  <= weights_104_ce0;
    weights_104_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_104_q0, TO_INTEGER(int_weights_104_shift0) * 16)(15 downto 0));
    int_weights_104_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_104_ce1  <= '1' when ar_hs = '1' or (int_weights_104_write = '1' and WVALID  = '1') else '0';
    int_weights_104_we1  <= '1' when int_weights_104_write = '1' and w_hs = '1' else '0';
    int_weights_104_be1  <= UNSIGNED(WSTRB) when int_weights_104_we1 = '1' else (others=>'0');
    int_weights_104_d1   <= UNSIGNED(WDATA);
    -- weights_105
    int_weights_105_address0 <= SHIFT_RIGHT(UNSIGNED(weights_105_address0), 1)(5 downto 0);
    int_weights_105_ce0  <= weights_105_ce0;
    weights_105_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_105_q0, TO_INTEGER(int_weights_105_shift0) * 16)(15 downto 0));
    int_weights_105_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_105_ce1  <= '1' when ar_hs = '1' or (int_weights_105_write = '1' and WVALID  = '1') else '0';
    int_weights_105_we1  <= '1' when int_weights_105_write = '1' and w_hs = '1' else '0';
    int_weights_105_be1  <= UNSIGNED(WSTRB) when int_weights_105_we1 = '1' else (others=>'0');
    int_weights_105_d1   <= UNSIGNED(WDATA);
    -- weights_106
    int_weights_106_address0 <= SHIFT_RIGHT(UNSIGNED(weights_106_address0), 1)(5 downto 0);
    int_weights_106_ce0  <= weights_106_ce0;
    weights_106_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_106_q0, TO_INTEGER(int_weights_106_shift0) * 16)(15 downto 0));
    int_weights_106_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_106_ce1  <= '1' when ar_hs = '1' or (int_weights_106_write = '1' and WVALID  = '1') else '0';
    int_weights_106_we1  <= '1' when int_weights_106_write = '1' and w_hs = '1' else '0';
    int_weights_106_be1  <= UNSIGNED(WSTRB) when int_weights_106_we1 = '1' else (others=>'0');
    int_weights_106_d1   <= UNSIGNED(WDATA);
    -- weights_107
    int_weights_107_address0 <= SHIFT_RIGHT(UNSIGNED(weights_107_address0), 1)(5 downto 0);
    int_weights_107_ce0  <= weights_107_ce0;
    weights_107_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_107_q0, TO_INTEGER(int_weights_107_shift0) * 16)(15 downto 0));
    int_weights_107_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_107_ce1  <= '1' when ar_hs = '1' or (int_weights_107_write = '1' and WVALID  = '1') else '0';
    int_weights_107_we1  <= '1' when int_weights_107_write = '1' and w_hs = '1' else '0';
    int_weights_107_be1  <= UNSIGNED(WSTRB) when int_weights_107_we1 = '1' else (others=>'0');
    int_weights_107_d1   <= UNSIGNED(WDATA);
    -- weights_108
    int_weights_108_address0 <= SHIFT_RIGHT(UNSIGNED(weights_108_address0), 1)(5 downto 0);
    int_weights_108_ce0  <= weights_108_ce0;
    weights_108_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_108_q0, TO_INTEGER(int_weights_108_shift0) * 16)(15 downto 0));
    int_weights_108_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_108_ce1  <= '1' when ar_hs = '1' or (int_weights_108_write = '1' and WVALID  = '1') else '0';
    int_weights_108_we1  <= '1' when int_weights_108_write = '1' and w_hs = '1' else '0';
    int_weights_108_be1  <= UNSIGNED(WSTRB) when int_weights_108_we1 = '1' else (others=>'0');
    int_weights_108_d1   <= UNSIGNED(WDATA);
    -- weights_109
    int_weights_109_address0 <= SHIFT_RIGHT(UNSIGNED(weights_109_address0), 1)(5 downto 0);
    int_weights_109_ce0  <= weights_109_ce0;
    weights_109_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_109_q0, TO_INTEGER(int_weights_109_shift0) * 16)(15 downto 0));
    int_weights_109_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_109_ce1  <= '1' when ar_hs = '1' or (int_weights_109_write = '1' and WVALID  = '1') else '0';
    int_weights_109_we1  <= '1' when int_weights_109_write = '1' and w_hs = '1' else '0';
    int_weights_109_be1  <= UNSIGNED(WSTRB) when int_weights_109_we1 = '1' else (others=>'0');
    int_weights_109_d1   <= UNSIGNED(WDATA);
    -- weights_110
    int_weights_110_address0 <= SHIFT_RIGHT(UNSIGNED(weights_110_address0), 1)(5 downto 0);
    int_weights_110_ce0  <= weights_110_ce0;
    weights_110_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_110_q0, TO_INTEGER(int_weights_110_shift0) * 16)(15 downto 0));
    int_weights_110_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_110_ce1  <= '1' when ar_hs = '1' or (int_weights_110_write = '1' and WVALID  = '1') else '0';
    int_weights_110_we1  <= '1' when int_weights_110_write = '1' and w_hs = '1' else '0';
    int_weights_110_be1  <= UNSIGNED(WSTRB) when int_weights_110_we1 = '1' else (others=>'0');
    int_weights_110_d1   <= UNSIGNED(WDATA);
    -- weights_111
    int_weights_111_address0 <= SHIFT_RIGHT(UNSIGNED(weights_111_address0), 1)(5 downto 0);
    int_weights_111_ce0  <= weights_111_ce0;
    weights_111_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_111_q0, TO_INTEGER(int_weights_111_shift0) * 16)(15 downto 0));
    int_weights_111_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_111_ce1  <= '1' when ar_hs = '1' or (int_weights_111_write = '1' and WVALID  = '1') else '0';
    int_weights_111_we1  <= '1' when int_weights_111_write = '1' and w_hs = '1' else '0';
    int_weights_111_be1  <= UNSIGNED(WSTRB) when int_weights_111_we1 = '1' else (others=>'0');
    int_weights_111_d1   <= UNSIGNED(WDATA);
    -- weights_112
    int_weights_112_address0 <= SHIFT_RIGHT(UNSIGNED(weights_112_address0), 1)(5 downto 0);
    int_weights_112_ce0  <= weights_112_ce0;
    weights_112_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_112_q0, TO_INTEGER(int_weights_112_shift0) * 16)(15 downto 0));
    int_weights_112_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_112_ce1  <= '1' when ar_hs = '1' or (int_weights_112_write = '1' and WVALID  = '1') else '0';
    int_weights_112_we1  <= '1' when int_weights_112_write = '1' and w_hs = '1' else '0';
    int_weights_112_be1  <= UNSIGNED(WSTRB) when int_weights_112_we1 = '1' else (others=>'0');
    int_weights_112_d1   <= UNSIGNED(WDATA);
    -- weights_113
    int_weights_113_address0 <= SHIFT_RIGHT(UNSIGNED(weights_113_address0), 1)(5 downto 0);
    int_weights_113_ce0  <= weights_113_ce0;
    weights_113_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_113_q0, TO_INTEGER(int_weights_113_shift0) * 16)(15 downto 0));
    int_weights_113_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_113_ce1  <= '1' when ar_hs = '1' or (int_weights_113_write = '1' and WVALID  = '1') else '0';
    int_weights_113_we1  <= '1' when int_weights_113_write = '1' and w_hs = '1' else '0';
    int_weights_113_be1  <= UNSIGNED(WSTRB) when int_weights_113_we1 = '1' else (others=>'0');
    int_weights_113_d1   <= UNSIGNED(WDATA);
    -- weights_114
    int_weights_114_address0 <= SHIFT_RIGHT(UNSIGNED(weights_114_address0), 1)(5 downto 0);
    int_weights_114_ce0  <= weights_114_ce0;
    weights_114_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_114_q0, TO_INTEGER(int_weights_114_shift0) * 16)(15 downto 0));
    int_weights_114_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_114_ce1  <= '1' when ar_hs = '1' or (int_weights_114_write = '1' and WVALID  = '1') else '0';
    int_weights_114_we1  <= '1' when int_weights_114_write = '1' and w_hs = '1' else '0';
    int_weights_114_be1  <= UNSIGNED(WSTRB) when int_weights_114_we1 = '1' else (others=>'0');
    int_weights_114_d1   <= UNSIGNED(WDATA);
    -- weights_115
    int_weights_115_address0 <= SHIFT_RIGHT(UNSIGNED(weights_115_address0), 1)(5 downto 0);
    int_weights_115_ce0  <= weights_115_ce0;
    weights_115_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_115_q0, TO_INTEGER(int_weights_115_shift0) * 16)(15 downto 0));
    int_weights_115_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_115_ce1  <= '1' when ar_hs = '1' or (int_weights_115_write = '1' and WVALID  = '1') else '0';
    int_weights_115_we1  <= '1' when int_weights_115_write = '1' and w_hs = '1' else '0';
    int_weights_115_be1  <= UNSIGNED(WSTRB) when int_weights_115_we1 = '1' else (others=>'0');
    int_weights_115_d1   <= UNSIGNED(WDATA);
    -- weights_116
    int_weights_116_address0 <= SHIFT_RIGHT(UNSIGNED(weights_116_address0), 1)(5 downto 0);
    int_weights_116_ce0  <= weights_116_ce0;
    weights_116_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_116_q0, TO_INTEGER(int_weights_116_shift0) * 16)(15 downto 0));
    int_weights_116_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_116_ce1  <= '1' when ar_hs = '1' or (int_weights_116_write = '1' and WVALID  = '1') else '0';
    int_weights_116_we1  <= '1' when int_weights_116_write = '1' and w_hs = '1' else '0';
    int_weights_116_be1  <= UNSIGNED(WSTRB) when int_weights_116_we1 = '1' else (others=>'0');
    int_weights_116_d1   <= UNSIGNED(WDATA);
    -- weights_117
    int_weights_117_address0 <= SHIFT_RIGHT(UNSIGNED(weights_117_address0), 1)(5 downto 0);
    int_weights_117_ce0  <= weights_117_ce0;
    weights_117_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_117_q0, TO_INTEGER(int_weights_117_shift0) * 16)(15 downto 0));
    int_weights_117_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_117_ce1  <= '1' when ar_hs = '1' or (int_weights_117_write = '1' and WVALID  = '1') else '0';
    int_weights_117_we1  <= '1' when int_weights_117_write = '1' and w_hs = '1' else '0';
    int_weights_117_be1  <= UNSIGNED(WSTRB) when int_weights_117_we1 = '1' else (others=>'0');
    int_weights_117_d1   <= UNSIGNED(WDATA);
    -- weights_118
    int_weights_118_address0 <= SHIFT_RIGHT(UNSIGNED(weights_118_address0), 1)(5 downto 0);
    int_weights_118_ce0  <= weights_118_ce0;
    weights_118_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_118_q0, TO_INTEGER(int_weights_118_shift0) * 16)(15 downto 0));
    int_weights_118_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_118_ce1  <= '1' when ar_hs = '1' or (int_weights_118_write = '1' and WVALID  = '1') else '0';
    int_weights_118_we1  <= '1' when int_weights_118_write = '1' and w_hs = '1' else '0';
    int_weights_118_be1  <= UNSIGNED(WSTRB) when int_weights_118_we1 = '1' else (others=>'0');
    int_weights_118_d1   <= UNSIGNED(WDATA);
    -- weights_119
    int_weights_119_address0 <= SHIFT_RIGHT(UNSIGNED(weights_119_address0), 1)(5 downto 0);
    int_weights_119_ce0  <= weights_119_ce0;
    weights_119_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_119_q0, TO_INTEGER(int_weights_119_shift0) * 16)(15 downto 0));
    int_weights_119_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_119_ce1  <= '1' when ar_hs = '1' or (int_weights_119_write = '1' and WVALID  = '1') else '0';
    int_weights_119_we1  <= '1' when int_weights_119_write = '1' and w_hs = '1' else '0';
    int_weights_119_be1  <= UNSIGNED(WSTRB) when int_weights_119_we1 = '1' else (others=>'0');
    int_weights_119_d1   <= UNSIGNED(WDATA);
    -- weights_120
    int_weights_120_address0 <= SHIFT_RIGHT(UNSIGNED(weights_120_address0), 1)(5 downto 0);
    int_weights_120_ce0  <= weights_120_ce0;
    weights_120_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_120_q0, TO_INTEGER(int_weights_120_shift0) * 16)(15 downto 0));
    int_weights_120_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_120_ce1  <= '1' when ar_hs = '1' or (int_weights_120_write = '1' and WVALID  = '1') else '0';
    int_weights_120_we1  <= '1' when int_weights_120_write = '1' and w_hs = '1' else '0';
    int_weights_120_be1  <= UNSIGNED(WSTRB) when int_weights_120_we1 = '1' else (others=>'0');
    int_weights_120_d1   <= UNSIGNED(WDATA);
    -- weights_121
    int_weights_121_address0 <= SHIFT_RIGHT(UNSIGNED(weights_121_address0), 1)(5 downto 0);
    int_weights_121_ce0  <= weights_121_ce0;
    weights_121_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_121_q0, TO_INTEGER(int_weights_121_shift0) * 16)(15 downto 0));
    int_weights_121_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_121_ce1  <= '1' when ar_hs = '1' or (int_weights_121_write = '1' and WVALID  = '1') else '0';
    int_weights_121_we1  <= '1' when int_weights_121_write = '1' and w_hs = '1' else '0';
    int_weights_121_be1  <= UNSIGNED(WSTRB) when int_weights_121_we1 = '1' else (others=>'0');
    int_weights_121_d1   <= UNSIGNED(WDATA);
    -- weights_122
    int_weights_122_address0 <= SHIFT_RIGHT(UNSIGNED(weights_122_address0), 1)(5 downto 0);
    int_weights_122_ce0  <= weights_122_ce0;
    weights_122_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_122_q0, TO_INTEGER(int_weights_122_shift0) * 16)(15 downto 0));
    int_weights_122_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_122_ce1  <= '1' when ar_hs = '1' or (int_weights_122_write = '1' and WVALID  = '1') else '0';
    int_weights_122_we1  <= '1' when int_weights_122_write = '1' and w_hs = '1' else '0';
    int_weights_122_be1  <= UNSIGNED(WSTRB) when int_weights_122_we1 = '1' else (others=>'0');
    int_weights_122_d1   <= UNSIGNED(WDATA);
    -- weights_123
    int_weights_123_address0 <= SHIFT_RIGHT(UNSIGNED(weights_123_address0), 1)(5 downto 0);
    int_weights_123_ce0  <= weights_123_ce0;
    weights_123_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_123_q0, TO_INTEGER(int_weights_123_shift0) * 16)(15 downto 0));
    int_weights_123_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_123_ce1  <= '1' when ar_hs = '1' or (int_weights_123_write = '1' and WVALID  = '1') else '0';
    int_weights_123_we1  <= '1' when int_weights_123_write = '1' and w_hs = '1' else '0';
    int_weights_123_be1  <= UNSIGNED(WSTRB) when int_weights_123_we1 = '1' else (others=>'0');
    int_weights_123_d1   <= UNSIGNED(WDATA);
    -- weights_124
    int_weights_124_address0 <= SHIFT_RIGHT(UNSIGNED(weights_124_address0), 1)(5 downto 0);
    int_weights_124_ce0  <= weights_124_ce0;
    weights_124_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_124_q0, TO_INTEGER(int_weights_124_shift0) * 16)(15 downto 0));
    int_weights_124_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_124_ce1  <= '1' when ar_hs = '1' or (int_weights_124_write = '1' and WVALID  = '1') else '0';
    int_weights_124_we1  <= '1' when int_weights_124_write = '1' and w_hs = '1' else '0';
    int_weights_124_be1  <= UNSIGNED(WSTRB) when int_weights_124_we1 = '1' else (others=>'0');
    int_weights_124_d1   <= UNSIGNED(WDATA);
    -- weights_125
    int_weights_125_address0 <= SHIFT_RIGHT(UNSIGNED(weights_125_address0), 1)(5 downto 0);
    int_weights_125_ce0  <= weights_125_ce0;
    weights_125_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_125_q0, TO_INTEGER(int_weights_125_shift0) * 16)(15 downto 0));
    int_weights_125_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_125_ce1  <= '1' when ar_hs = '1' or (int_weights_125_write = '1' and WVALID  = '1') else '0';
    int_weights_125_we1  <= '1' when int_weights_125_write = '1' and w_hs = '1' else '0';
    int_weights_125_be1  <= UNSIGNED(WSTRB) when int_weights_125_we1 = '1' else (others=>'0');
    int_weights_125_d1   <= UNSIGNED(WDATA);
    -- weights_126
    int_weights_126_address0 <= SHIFT_RIGHT(UNSIGNED(weights_126_address0), 1)(5 downto 0);
    int_weights_126_ce0  <= weights_126_ce0;
    weights_126_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_126_q0, TO_INTEGER(int_weights_126_shift0) * 16)(15 downto 0));
    int_weights_126_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_126_ce1  <= '1' when ar_hs = '1' or (int_weights_126_write = '1' and WVALID  = '1') else '0';
    int_weights_126_we1  <= '1' when int_weights_126_write = '1' and w_hs = '1' else '0';
    int_weights_126_be1  <= UNSIGNED(WSTRB) when int_weights_126_we1 = '1' else (others=>'0');
    int_weights_126_d1   <= UNSIGNED(WDATA);
    -- weights_127
    int_weights_127_address0 <= SHIFT_RIGHT(UNSIGNED(weights_127_address0), 1)(5 downto 0);
    int_weights_127_ce0  <= weights_127_ce0;
    weights_127_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_weights_127_q0, TO_INTEGER(int_weights_127_shift0) * 16)(15 downto 0));
    int_weights_127_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_weights_127_ce1  <= '1' when ar_hs = '1' or (int_weights_127_write = '1' and WVALID  = '1') else '0';
    int_weights_127_we1  <= '1' when int_weights_127_write = '1' and w_hs = '1' else '0';
    int_weights_127_be1  <= UNSIGNED(WSTRB) when int_weights_127_we1 = '1' else (others=>'0');
    int_weights_127_d1   <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_bias_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_BIAS_BASE and raddr <= ADDR_BIAS_HIGH) then
                    int_bias_read <= '1';
                else
                    int_bias_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_bias_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_BIAS_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_BIAS_HIGH) then
                    int_bias_write <= '1';
                elsif (w_hs = '1') then
                    int_bias_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_bias_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (bias_ce0 = '1') then
                    int_bias_shift0 <= UNSIGNED(bias_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_0_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_0_BASE and raddr <= ADDR_WEIGHTS_0_HIGH) then
                    int_weights_0_read <= '1';
                else
                    int_weights_0_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_0_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_0_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_0_HIGH) then
                    int_weights_0_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_0_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_0_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_0_ce0 = '1') then
                    int_weights_0_shift0 <= UNSIGNED(weights_0_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_1_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_1_BASE and raddr <= ADDR_WEIGHTS_1_HIGH) then
                    int_weights_1_read <= '1';
                else
                    int_weights_1_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_1_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_1_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_1_HIGH) then
                    int_weights_1_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_1_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_1_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_1_ce0 = '1') then
                    int_weights_1_shift0 <= UNSIGNED(weights_1_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_2_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_2_BASE and raddr <= ADDR_WEIGHTS_2_HIGH) then
                    int_weights_2_read <= '1';
                else
                    int_weights_2_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_2_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_2_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_2_HIGH) then
                    int_weights_2_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_2_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_2_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_2_ce0 = '1') then
                    int_weights_2_shift0 <= UNSIGNED(weights_2_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_3_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_3_BASE and raddr <= ADDR_WEIGHTS_3_HIGH) then
                    int_weights_3_read <= '1';
                else
                    int_weights_3_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_3_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_3_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_3_HIGH) then
                    int_weights_3_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_3_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_3_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_3_ce0 = '1') then
                    int_weights_3_shift0 <= UNSIGNED(weights_3_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_4_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_4_BASE and raddr <= ADDR_WEIGHTS_4_HIGH) then
                    int_weights_4_read <= '1';
                else
                    int_weights_4_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_4_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_4_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_4_HIGH) then
                    int_weights_4_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_4_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_4_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_4_ce0 = '1') then
                    int_weights_4_shift0 <= UNSIGNED(weights_4_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_5_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_5_BASE and raddr <= ADDR_WEIGHTS_5_HIGH) then
                    int_weights_5_read <= '1';
                else
                    int_weights_5_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_5_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_5_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_5_HIGH) then
                    int_weights_5_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_5_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_5_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_5_ce0 = '1') then
                    int_weights_5_shift0 <= UNSIGNED(weights_5_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_6_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_6_BASE and raddr <= ADDR_WEIGHTS_6_HIGH) then
                    int_weights_6_read <= '1';
                else
                    int_weights_6_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_6_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_6_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_6_HIGH) then
                    int_weights_6_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_6_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_6_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_6_ce0 = '1') then
                    int_weights_6_shift0 <= UNSIGNED(weights_6_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_7_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_7_BASE and raddr <= ADDR_WEIGHTS_7_HIGH) then
                    int_weights_7_read <= '1';
                else
                    int_weights_7_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_7_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_7_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_7_HIGH) then
                    int_weights_7_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_7_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_7_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_7_ce0 = '1') then
                    int_weights_7_shift0 <= UNSIGNED(weights_7_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_8_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_8_BASE and raddr <= ADDR_WEIGHTS_8_HIGH) then
                    int_weights_8_read <= '1';
                else
                    int_weights_8_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_8_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_8_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_8_HIGH) then
                    int_weights_8_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_8_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_8_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_8_ce0 = '1') then
                    int_weights_8_shift0 <= UNSIGNED(weights_8_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_9_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_9_BASE and raddr <= ADDR_WEIGHTS_9_HIGH) then
                    int_weights_9_read <= '1';
                else
                    int_weights_9_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_9_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_9_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_9_HIGH) then
                    int_weights_9_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_9_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_9_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_9_ce0 = '1') then
                    int_weights_9_shift0 <= UNSIGNED(weights_9_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_10_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_10_BASE and raddr <= ADDR_WEIGHTS_10_HIGH) then
                    int_weights_10_read <= '1';
                else
                    int_weights_10_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_10_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_10_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_10_HIGH) then
                    int_weights_10_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_10_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_10_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_10_ce0 = '1') then
                    int_weights_10_shift0 <= UNSIGNED(weights_10_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_11_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_11_BASE and raddr <= ADDR_WEIGHTS_11_HIGH) then
                    int_weights_11_read <= '1';
                else
                    int_weights_11_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_11_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_11_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_11_HIGH) then
                    int_weights_11_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_11_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_11_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_11_ce0 = '1') then
                    int_weights_11_shift0 <= UNSIGNED(weights_11_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_12_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_12_BASE and raddr <= ADDR_WEIGHTS_12_HIGH) then
                    int_weights_12_read <= '1';
                else
                    int_weights_12_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_12_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_12_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_12_HIGH) then
                    int_weights_12_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_12_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_12_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_12_ce0 = '1') then
                    int_weights_12_shift0 <= UNSIGNED(weights_12_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_13_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_13_BASE and raddr <= ADDR_WEIGHTS_13_HIGH) then
                    int_weights_13_read <= '1';
                else
                    int_weights_13_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_13_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_13_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_13_HIGH) then
                    int_weights_13_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_13_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_13_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_13_ce0 = '1') then
                    int_weights_13_shift0 <= UNSIGNED(weights_13_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_14_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_14_BASE and raddr <= ADDR_WEIGHTS_14_HIGH) then
                    int_weights_14_read <= '1';
                else
                    int_weights_14_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_14_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_14_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_14_HIGH) then
                    int_weights_14_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_14_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_14_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_14_ce0 = '1') then
                    int_weights_14_shift0 <= UNSIGNED(weights_14_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_15_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_15_BASE and raddr <= ADDR_WEIGHTS_15_HIGH) then
                    int_weights_15_read <= '1';
                else
                    int_weights_15_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_15_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_15_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_15_HIGH) then
                    int_weights_15_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_15_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_15_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_15_ce0 = '1') then
                    int_weights_15_shift0 <= UNSIGNED(weights_15_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_16_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_16_BASE and raddr <= ADDR_WEIGHTS_16_HIGH) then
                    int_weights_16_read <= '1';
                else
                    int_weights_16_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_16_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_16_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_16_HIGH) then
                    int_weights_16_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_16_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_16_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_16_ce0 = '1') then
                    int_weights_16_shift0 <= UNSIGNED(weights_16_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_17_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_17_BASE and raddr <= ADDR_WEIGHTS_17_HIGH) then
                    int_weights_17_read <= '1';
                else
                    int_weights_17_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_17_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_17_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_17_HIGH) then
                    int_weights_17_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_17_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_17_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_17_ce0 = '1') then
                    int_weights_17_shift0 <= UNSIGNED(weights_17_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_18_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_18_BASE and raddr <= ADDR_WEIGHTS_18_HIGH) then
                    int_weights_18_read <= '1';
                else
                    int_weights_18_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_18_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_18_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_18_HIGH) then
                    int_weights_18_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_18_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_18_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_18_ce0 = '1') then
                    int_weights_18_shift0 <= UNSIGNED(weights_18_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_19_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_19_BASE and raddr <= ADDR_WEIGHTS_19_HIGH) then
                    int_weights_19_read <= '1';
                else
                    int_weights_19_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_19_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_19_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_19_HIGH) then
                    int_weights_19_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_19_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_19_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_19_ce0 = '1') then
                    int_weights_19_shift0 <= UNSIGNED(weights_19_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_20_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_20_BASE and raddr <= ADDR_WEIGHTS_20_HIGH) then
                    int_weights_20_read <= '1';
                else
                    int_weights_20_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_20_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_20_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_20_HIGH) then
                    int_weights_20_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_20_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_20_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_20_ce0 = '1') then
                    int_weights_20_shift0 <= UNSIGNED(weights_20_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_21_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_21_BASE and raddr <= ADDR_WEIGHTS_21_HIGH) then
                    int_weights_21_read <= '1';
                else
                    int_weights_21_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_21_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_21_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_21_HIGH) then
                    int_weights_21_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_21_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_21_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_21_ce0 = '1') then
                    int_weights_21_shift0 <= UNSIGNED(weights_21_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_22_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_22_BASE and raddr <= ADDR_WEIGHTS_22_HIGH) then
                    int_weights_22_read <= '1';
                else
                    int_weights_22_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_22_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_22_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_22_HIGH) then
                    int_weights_22_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_22_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_22_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_22_ce0 = '1') then
                    int_weights_22_shift0 <= UNSIGNED(weights_22_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_23_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_23_BASE and raddr <= ADDR_WEIGHTS_23_HIGH) then
                    int_weights_23_read <= '1';
                else
                    int_weights_23_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_23_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_23_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_23_HIGH) then
                    int_weights_23_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_23_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_23_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_23_ce0 = '1') then
                    int_weights_23_shift0 <= UNSIGNED(weights_23_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_24_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_24_BASE and raddr <= ADDR_WEIGHTS_24_HIGH) then
                    int_weights_24_read <= '1';
                else
                    int_weights_24_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_24_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_24_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_24_HIGH) then
                    int_weights_24_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_24_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_24_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_24_ce0 = '1') then
                    int_weights_24_shift0 <= UNSIGNED(weights_24_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_25_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_25_BASE and raddr <= ADDR_WEIGHTS_25_HIGH) then
                    int_weights_25_read <= '1';
                else
                    int_weights_25_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_25_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_25_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_25_HIGH) then
                    int_weights_25_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_25_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_25_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_25_ce0 = '1') then
                    int_weights_25_shift0 <= UNSIGNED(weights_25_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_26_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_26_BASE and raddr <= ADDR_WEIGHTS_26_HIGH) then
                    int_weights_26_read <= '1';
                else
                    int_weights_26_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_26_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_26_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_26_HIGH) then
                    int_weights_26_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_26_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_26_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_26_ce0 = '1') then
                    int_weights_26_shift0 <= UNSIGNED(weights_26_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_27_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_27_BASE and raddr <= ADDR_WEIGHTS_27_HIGH) then
                    int_weights_27_read <= '1';
                else
                    int_weights_27_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_27_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_27_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_27_HIGH) then
                    int_weights_27_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_27_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_27_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_27_ce0 = '1') then
                    int_weights_27_shift0 <= UNSIGNED(weights_27_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_28_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_28_BASE and raddr <= ADDR_WEIGHTS_28_HIGH) then
                    int_weights_28_read <= '1';
                else
                    int_weights_28_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_28_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_28_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_28_HIGH) then
                    int_weights_28_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_28_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_28_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_28_ce0 = '1') then
                    int_weights_28_shift0 <= UNSIGNED(weights_28_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_29_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_29_BASE and raddr <= ADDR_WEIGHTS_29_HIGH) then
                    int_weights_29_read <= '1';
                else
                    int_weights_29_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_29_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_29_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_29_HIGH) then
                    int_weights_29_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_29_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_29_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_29_ce0 = '1') then
                    int_weights_29_shift0 <= UNSIGNED(weights_29_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_30_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_30_BASE and raddr <= ADDR_WEIGHTS_30_HIGH) then
                    int_weights_30_read <= '1';
                else
                    int_weights_30_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_30_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_30_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_30_HIGH) then
                    int_weights_30_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_30_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_30_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_30_ce0 = '1') then
                    int_weights_30_shift0 <= UNSIGNED(weights_30_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_31_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_31_BASE and raddr <= ADDR_WEIGHTS_31_HIGH) then
                    int_weights_31_read <= '1';
                else
                    int_weights_31_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_31_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_31_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_31_HIGH) then
                    int_weights_31_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_31_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_31_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_31_ce0 = '1') then
                    int_weights_31_shift0 <= UNSIGNED(weights_31_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_32_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_32_BASE and raddr <= ADDR_WEIGHTS_32_HIGH) then
                    int_weights_32_read <= '1';
                else
                    int_weights_32_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_32_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_32_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_32_HIGH) then
                    int_weights_32_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_32_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_32_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_32_ce0 = '1') then
                    int_weights_32_shift0 <= UNSIGNED(weights_32_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_33_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_33_BASE and raddr <= ADDR_WEIGHTS_33_HIGH) then
                    int_weights_33_read <= '1';
                else
                    int_weights_33_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_33_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_33_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_33_HIGH) then
                    int_weights_33_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_33_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_33_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_33_ce0 = '1') then
                    int_weights_33_shift0 <= UNSIGNED(weights_33_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_34_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_34_BASE and raddr <= ADDR_WEIGHTS_34_HIGH) then
                    int_weights_34_read <= '1';
                else
                    int_weights_34_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_34_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_34_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_34_HIGH) then
                    int_weights_34_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_34_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_34_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_34_ce0 = '1') then
                    int_weights_34_shift0 <= UNSIGNED(weights_34_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_35_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_35_BASE and raddr <= ADDR_WEIGHTS_35_HIGH) then
                    int_weights_35_read <= '1';
                else
                    int_weights_35_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_35_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_35_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_35_HIGH) then
                    int_weights_35_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_35_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_35_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_35_ce0 = '1') then
                    int_weights_35_shift0 <= UNSIGNED(weights_35_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_36_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_36_BASE and raddr <= ADDR_WEIGHTS_36_HIGH) then
                    int_weights_36_read <= '1';
                else
                    int_weights_36_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_36_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_36_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_36_HIGH) then
                    int_weights_36_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_36_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_36_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_36_ce0 = '1') then
                    int_weights_36_shift0 <= UNSIGNED(weights_36_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_37_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_37_BASE and raddr <= ADDR_WEIGHTS_37_HIGH) then
                    int_weights_37_read <= '1';
                else
                    int_weights_37_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_37_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_37_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_37_HIGH) then
                    int_weights_37_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_37_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_37_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_37_ce0 = '1') then
                    int_weights_37_shift0 <= UNSIGNED(weights_37_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_38_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_38_BASE and raddr <= ADDR_WEIGHTS_38_HIGH) then
                    int_weights_38_read <= '1';
                else
                    int_weights_38_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_38_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_38_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_38_HIGH) then
                    int_weights_38_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_38_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_38_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_38_ce0 = '1') then
                    int_weights_38_shift0 <= UNSIGNED(weights_38_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_39_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_39_BASE and raddr <= ADDR_WEIGHTS_39_HIGH) then
                    int_weights_39_read <= '1';
                else
                    int_weights_39_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_39_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_39_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_39_HIGH) then
                    int_weights_39_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_39_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_39_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_39_ce0 = '1') then
                    int_weights_39_shift0 <= UNSIGNED(weights_39_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_40_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_40_BASE and raddr <= ADDR_WEIGHTS_40_HIGH) then
                    int_weights_40_read <= '1';
                else
                    int_weights_40_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_40_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_40_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_40_HIGH) then
                    int_weights_40_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_40_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_40_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_40_ce0 = '1') then
                    int_weights_40_shift0 <= UNSIGNED(weights_40_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_41_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_41_BASE and raddr <= ADDR_WEIGHTS_41_HIGH) then
                    int_weights_41_read <= '1';
                else
                    int_weights_41_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_41_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_41_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_41_HIGH) then
                    int_weights_41_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_41_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_41_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_41_ce0 = '1') then
                    int_weights_41_shift0 <= UNSIGNED(weights_41_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_42_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_42_BASE and raddr <= ADDR_WEIGHTS_42_HIGH) then
                    int_weights_42_read <= '1';
                else
                    int_weights_42_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_42_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_42_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_42_HIGH) then
                    int_weights_42_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_42_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_42_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_42_ce0 = '1') then
                    int_weights_42_shift0 <= UNSIGNED(weights_42_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_43_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_43_BASE and raddr <= ADDR_WEIGHTS_43_HIGH) then
                    int_weights_43_read <= '1';
                else
                    int_weights_43_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_43_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_43_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_43_HIGH) then
                    int_weights_43_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_43_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_43_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_43_ce0 = '1') then
                    int_weights_43_shift0 <= UNSIGNED(weights_43_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_44_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_44_BASE and raddr <= ADDR_WEIGHTS_44_HIGH) then
                    int_weights_44_read <= '1';
                else
                    int_weights_44_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_44_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_44_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_44_HIGH) then
                    int_weights_44_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_44_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_44_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_44_ce0 = '1') then
                    int_weights_44_shift0 <= UNSIGNED(weights_44_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_45_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_45_BASE and raddr <= ADDR_WEIGHTS_45_HIGH) then
                    int_weights_45_read <= '1';
                else
                    int_weights_45_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_45_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_45_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_45_HIGH) then
                    int_weights_45_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_45_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_45_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_45_ce0 = '1') then
                    int_weights_45_shift0 <= UNSIGNED(weights_45_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_46_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_46_BASE and raddr <= ADDR_WEIGHTS_46_HIGH) then
                    int_weights_46_read <= '1';
                else
                    int_weights_46_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_46_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_46_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_46_HIGH) then
                    int_weights_46_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_46_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_46_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_46_ce0 = '1') then
                    int_weights_46_shift0 <= UNSIGNED(weights_46_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_47_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_47_BASE and raddr <= ADDR_WEIGHTS_47_HIGH) then
                    int_weights_47_read <= '1';
                else
                    int_weights_47_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_47_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_47_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_47_HIGH) then
                    int_weights_47_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_47_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_47_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_47_ce0 = '1') then
                    int_weights_47_shift0 <= UNSIGNED(weights_47_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_48_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_48_BASE and raddr <= ADDR_WEIGHTS_48_HIGH) then
                    int_weights_48_read <= '1';
                else
                    int_weights_48_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_48_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_48_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_48_HIGH) then
                    int_weights_48_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_48_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_48_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_48_ce0 = '1') then
                    int_weights_48_shift0 <= UNSIGNED(weights_48_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_49_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_49_BASE and raddr <= ADDR_WEIGHTS_49_HIGH) then
                    int_weights_49_read <= '1';
                else
                    int_weights_49_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_49_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_49_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_49_HIGH) then
                    int_weights_49_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_49_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_49_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_49_ce0 = '1') then
                    int_weights_49_shift0 <= UNSIGNED(weights_49_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_50_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_50_BASE and raddr <= ADDR_WEIGHTS_50_HIGH) then
                    int_weights_50_read <= '1';
                else
                    int_weights_50_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_50_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_50_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_50_HIGH) then
                    int_weights_50_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_50_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_50_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_50_ce0 = '1') then
                    int_weights_50_shift0 <= UNSIGNED(weights_50_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_51_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_51_BASE and raddr <= ADDR_WEIGHTS_51_HIGH) then
                    int_weights_51_read <= '1';
                else
                    int_weights_51_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_51_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_51_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_51_HIGH) then
                    int_weights_51_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_51_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_51_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_51_ce0 = '1') then
                    int_weights_51_shift0 <= UNSIGNED(weights_51_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_52_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_52_BASE and raddr <= ADDR_WEIGHTS_52_HIGH) then
                    int_weights_52_read <= '1';
                else
                    int_weights_52_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_52_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_52_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_52_HIGH) then
                    int_weights_52_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_52_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_52_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_52_ce0 = '1') then
                    int_weights_52_shift0 <= UNSIGNED(weights_52_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_53_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_53_BASE and raddr <= ADDR_WEIGHTS_53_HIGH) then
                    int_weights_53_read <= '1';
                else
                    int_weights_53_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_53_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_53_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_53_HIGH) then
                    int_weights_53_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_53_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_53_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_53_ce0 = '1') then
                    int_weights_53_shift0 <= UNSIGNED(weights_53_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_54_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_54_BASE and raddr <= ADDR_WEIGHTS_54_HIGH) then
                    int_weights_54_read <= '1';
                else
                    int_weights_54_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_54_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_54_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_54_HIGH) then
                    int_weights_54_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_54_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_54_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_54_ce0 = '1') then
                    int_weights_54_shift0 <= UNSIGNED(weights_54_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_55_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_55_BASE and raddr <= ADDR_WEIGHTS_55_HIGH) then
                    int_weights_55_read <= '1';
                else
                    int_weights_55_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_55_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_55_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_55_HIGH) then
                    int_weights_55_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_55_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_55_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_55_ce0 = '1') then
                    int_weights_55_shift0 <= UNSIGNED(weights_55_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_56_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_56_BASE and raddr <= ADDR_WEIGHTS_56_HIGH) then
                    int_weights_56_read <= '1';
                else
                    int_weights_56_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_56_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_56_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_56_HIGH) then
                    int_weights_56_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_56_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_56_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_56_ce0 = '1') then
                    int_weights_56_shift0 <= UNSIGNED(weights_56_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_57_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_57_BASE and raddr <= ADDR_WEIGHTS_57_HIGH) then
                    int_weights_57_read <= '1';
                else
                    int_weights_57_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_57_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_57_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_57_HIGH) then
                    int_weights_57_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_57_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_57_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_57_ce0 = '1') then
                    int_weights_57_shift0 <= UNSIGNED(weights_57_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_58_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_58_BASE and raddr <= ADDR_WEIGHTS_58_HIGH) then
                    int_weights_58_read <= '1';
                else
                    int_weights_58_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_58_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_58_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_58_HIGH) then
                    int_weights_58_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_58_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_58_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_58_ce0 = '1') then
                    int_weights_58_shift0 <= UNSIGNED(weights_58_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_59_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_59_BASE and raddr <= ADDR_WEIGHTS_59_HIGH) then
                    int_weights_59_read <= '1';
                else
                    int_weights_59_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_59_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_59_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_59_HIGH) then
                    int_weights_59_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_59_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_59_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_59_ce0 = '1') then
                    int_weights_59_shift0 <= UNSIGNED(weights_59_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_60_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_60_BASE and raddr <= ADDR_WEIGHTS_60_HIGH) then
                    int_weights_60_read <= '1';
                else
                    int_weights_60_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_60_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_60_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_60_HIGH) then
                    int_weights_60_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_60_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_60_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_60_ce0 = '1') then
                    int_weights_60_shift0 <= UNSIGNED(weights_60_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_61_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_61_BASE and raddr <= ADDR_WEIGHTS_61_HIGH) then
                    int_weights_61_read <= '1';
                else
                    int_weights_61_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_61_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_61_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_61_HIGH) then
                    int_weights_61_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_61_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_61_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_61_ce0 = '1') then
                    int_weights_61_shift0 <= UNSIGNED(weights_61_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_62_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_62_BASE and raddr <= ADDR_WEIGHTS_62_HIGH) then
                    int_weights_62_read <= '1';
                else
                    int_weights_62_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_62_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_62_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_62_HIGH) then
                    int_weights_62_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_62_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_62_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_62_ce0 = '1') then
                    int_weights_62_shift0 <= UNSIGNED(weights_62_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_63_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_63_BASE and raddr <= ADDR_WEIGHTS_63_HIGH) then
                    int_weights_63_read <= '1';
                else
                    int_weights_63_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_63_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_63_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_63_HIGH) then
                    int_weights_63_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_63_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_63_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_63_ce0 = '1') then
                    int_weights_63_shift0 <= UNSIGNED(weights_63_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_64_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_64_BASE and raddr <= ADDR_WEIGHTS_64_HIGH) then
                    int_weights_64_read <= '1';
                else
                    int_weights_64_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_64_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_64_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_64_HIGH) then
                    int_weights_64_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_64_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_64_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_64_ce0 = '1') then
                    int_weights_64_shift0 <= UNSIGNED(weights_64_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_65_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_65_BASE and raddr <= ADDR_WEIGHTS_65_HIGH) then
                    int_weights_65_read <= '1';
                else
                    int_weights_65_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_65_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_65_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_65_HIGH) then
                    int_weights_65_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_65_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_65_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_65_ce0 = '1') then
                    int_weights_65_shift0 <= UNSIGNED(weights_65_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_66_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_66_BASE and raddr <= ADDR_WEIGHTS_66_HIGH) then
                    int_weights_66_read <= '1';
                else
                    int_weights_66_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_66_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_66_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_66_HIGH) then
                    int_weights_66_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_66_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_66_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_66_ce0 = '1') then
                    int_weights_66_shift0 <= UNSIGNED(weights_66_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_67_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_67_BASE and raddr <= ADDR_WEIGHTS_67_HIGH) then
                    int_weights_67_read <= '1';
                else
                    int_weights_67_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_67_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_67_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_67_HIGH) then
                    int_weights_67_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_67_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_67_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_67_ce0 = '1') then
                    int_weights_67_shift0 <= UNSIGNED(weights_67_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_68_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_68_BASE and raddr <= ADDR_WEIGHTS_68_HIGH) then
                    int_weights_68_read <= '1';
                else
                    int_weights_68_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_68_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_68_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_68_HIGH) then
                    int_weights_68_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_68_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_68_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_68_ce0 = '1') then
                    int_weights_68_shift0 <= UNSIGNED(weights_68_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_69_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_69_BASE and raddr <= ADDR_WEIGHTS_69_HIGH) then
                    int_weights_69_read <= '1';
                else
                    int_weights_69_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_69_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_69_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_69_HIGH) then
                    int_weights_69_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_69_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_69_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_69_ce0 = '1') then
                    int_weights_69_shift0 <= UNSIGNED(weights_69_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_70_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_70_BASE and raddr <= ADDR_WEIGHTS_70_HIGH) then
                    int_weights_70_read <= '1';
                else
                    int_weights_70_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_70_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_70_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_70_HIGH) then
                    int_weights_70_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_70_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_70_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_70_ce0 = '1') then
                    int_weights_70_shift0 <= UNSIGNED(weights_70_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_71_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_71_BASE and raddr <= ADDR_WEIGHTS_71_HIGH) then
                    int_weights_71_read <= '1';
                else
                    int_weights_71_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_71_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_71_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_71_HIGH) then
                    int_weights_71_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_71_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_71_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_71_ce0 = '1') then
                    int_weights_71_shift0 <= UNSIGNED(weights_71_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_72_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_72_BASE and raddr <= ADDR_WEIGHTS_72_HIGH) then
                    int_weights_72_read <= '1';
                else
                    int_weights_72_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_72_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_72_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_72_HIGH) then
                    int_weights_72_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_72_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_72_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_72_ce0 = '1') then
                    int_weights_72_shift0 <= UNSIGNED(weights_72_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_73_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_73_BASE and raddr <= ADDR_WEIGHTS_73_HIGH) then
                    int_weights_73_read <= '1';
                else
                    int_weights_73_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_73_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_73_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_73_HIGH) then
                    int_weights_73_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_73_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_73_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_73_ce0 = '1') then
                    int_weights_73_shift0 <= UNSIGNED(weights_73_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_74_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_74_BASE and raddr <= ADDR_WEIGHTS_74_HIGH) then
                    int_weights_74_read <= '1';
                else
                    int_weights_74_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_74_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_74_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_74_HIGH) then
                    int_weights_74_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_74_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_74_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_74_ce0 = '1') then
                    int_weights_74_shift0 <= UNSIGNED(weights_74_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_75_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_75_BASE and raddr <= ADDR_WEIGHTS_75_HIGH) then
                    int_weights_75_read <= '1';
                else
                    int_weights_75_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_75_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_75_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_75_HIGH) then
                    int_weights_75_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_75_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_75_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_75_ce0 = '1') then
                    int_weights_75_shift0 <= UNSIGNED(weights_75_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_76_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_76_BASE and raddr <= ADDR_WEIGHTS_76_HIGH) then
                    int_weights_76_read <= '1';
                else
                    int_weights_76_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_76_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_76_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_76_HIGH) then
                    int_weights_76_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_76_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_76_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_76_ce0 = '1') then
                    int_weights_76_shift0 <= UNSIGNED(weights_76_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_77_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_77_BASE and raddr <= ADDR_WEIGHTS_77_HIGH) then
                    int_weights_77_read <= '1';
                else
                    int_weights_77_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_77_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_77_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_77_HIGH) then
                    int_weights_77_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_77_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_77_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_77_ce0 = '1') then
                    int_weights_77_shift0 <= UNSIGNED(weights_77_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_78_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_78_BASE and raddr <= ADDR_WEIGHTS_78_HIGH) then
                    int_weights_78_read <= '1';
                else
                    int_weights_78_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_78_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_78_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_78_HIGH) then
                    int_weights_78_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_78_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_78_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_78_ce0 = '1') then
                    int_weights_78_shift0 <= UNSIGNED(weights_78_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_79_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_79_BASE and raddr <= ADDR_WEIGHTS_79_HIGH) then
                    int_weights_79_read <= '1';
                else
                    int_weights_79_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_79_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_79_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_79_HIGH) then
                    int_weights_79_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_79_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_79_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_79_ce0 = '1') then
                    int_weights_79_shift0 <= UNSIGNED(weights_79_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_80_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_80_BASE and raddr <= ADDR_WEIGHTS_80_HIGH) then
                    int_weights_80_read <= '1';
                else
                    int_weights_80_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_80_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_80_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_80_HIGH) then
                    int_weights_80_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_80_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_80_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_80_ce0 = '1') then
                    int_weights_80_shift0 <= UNSIGNED(weights_80_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_81_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_81_BASE and raddr <= ADDR_WEIGHTS_81_HIGH) then
                    int_weights_81_read <= '1';
                else
                    int_weights_81_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_81_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_81_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_81_HIGH) then
                    int_weights_81_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_81_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_81_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_81_ce0 = '1') then
                    int_weights_81_shift0 <= UNSIGNED(weights_81_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_82_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_82_BASE and raddr <= ADDR_WEIGHTS_82_HIGH) then
                    int_weights_82_read <= '1';
                else
                    int_weights_82_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_82_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_82_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_82_HIGH) then
                    int_weights_82_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_82_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_82_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_82_ce0 = '1') then
                    int_weights_82_shift0 <= UNSIGNED(weights_82_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_83_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_83_BASE and raddr <= ADDR_WEIGHTS_83_HIGH) then
                    int_weights_83_read <= '1';
                else
                    int_weights_83_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_83_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_83_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_83_HIGH) then
                    int_weights_83_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_83_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_83_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_83_ce0 = '1') then
                    int_weights_83_shift0 <= UNSIGNED(weights_83_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_84_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_84_BASE and raddr <= ADDR_WEIGHTS_84_HIGH) then
                    int_weights_84_read <= '1';
                else
                    int_weights_84_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_84_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_84_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_84_HIGH) then
                    int_weights_84_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_84_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_84_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_84_ce0 = '1') then
                    int_weights_84_shift0 <= UNSIGNED(weights_84_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_85_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_85_BASE and raddr <= ADDR_WEIGHTS_85_HIGH) then
                    int_weights_85_read <= '1';
                else
                    int_weights_85_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_85_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_85_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_85_HIGH) then
                    int_weights_85_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_85_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_85_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_85_ce0 = '1') then
                    int_weights_85_shift0 <= UNSIGNED(weights_85_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_86_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_86_BASE and raddr <= ADDR_WEIGHTS_86_HIGH) then
                    int_weights_86_read <= '1';
                else
                    int_weights_86_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_86_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_86_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_86_HIGH) then
                    int_weights_86_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_86_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_86_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_86_ce0 = '1') then
                    int_weights_86_shift0 <= UNSIGNED(weights_86_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_87_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_87_BASE and raddr <= ADDR_WEIGHTS_87_HIGH) then
                    int_weights_87_read <= '1';
                else
                    int_weights_87_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_87_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_87_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_87_HIGH) then
                    int_weights_87_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_87_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_87_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_87_ce0 = '1') then
                    int_weights_87_shift0 <= UNSIGNED(weights_87_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_88_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_88_BASE and raddr <= ADDR_WEIGHTS_88_HIGH) then
                    int_weights_88_read <= '1';
                else
                    int_weights_88_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_88_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_88_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_88_HIGH) then
                    int_weights_88_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_88_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_88_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_88_ce0 = '1') then
                    int_weights_88_shift0 <= UNSIGNED(weights_88_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_89_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_89_BASE and raddr <= ADDR_WEIGHTS_89_HIGH) then
                    int_weights_89_read <= '1';
                else
                    int_weights_89_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_89_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_89_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_89_HIGH) then
                    int_weights_89_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_89_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_89_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_89_ce0 = '1') then
                    int_weights_89_shift0 <= UNSIGNED(weights_89_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_90_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_90_BASE and raddr <= ADDR_WEIGHTS_90_HIGH) then
                    int_weights_90_read <= '1';
                else
                    int_weights_90_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_90_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_90_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_90_HIGH) then
                    int_weights_90_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_90_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_90_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_90_ce0 = '1') then
                    int_weights_90_shift0 <= UNSIGNED(weights_90_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_91_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_91_BASE and raddr <= ADDR_WEIGHTS_91_HIGH) then
                    int_weights_91_read <= '1';
                else
                    int_weights_91_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_91_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_91_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_91_HIGH) then
                    int_weights_91_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_91_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_91_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_91_ce0 = '1') then
                    int_weights_91_shift0 <= UNSIGNED(weights_91_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_92_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_92_BASE and raddr <= ADDR_WEIGHTS_92_HIGH) then
                    int_weights_92_read <= '1';
                else
                    int_weights_92_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_92_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_92_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_92_HIGH) then
                    int_weights_92_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_92_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_92_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_92_ce0 = '1') then
                    int_weights_92_shift0 <= UNSIGNED(weights_92_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_93_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_93_BASE and raddr <= ADDR_WEIGHTS_93_HIGH) then
                    int_weights_93_read <= '1';
                else
                    int_weights_93_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_93_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_93_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_93_HIGH) then
                    int_weights_93_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_93_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_93_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_93_ce0 = '1') then
                    int_weights_93_shift0 <= UNSIGNED(weights_93_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_94_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_94_BASE and raddr <= ADDR_WEIGHTS_94_HIGH) then
                    int_weights_94_read <= '1';
                else
                    int_weights_94_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_94_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_94_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_94_HIGH) then
                    int_weights_94_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_94_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_94_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_94_ce0 = '1') then
                    int_weights_94_shift0 <= UNSIGNED(weights_94_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_95_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_95_BASE and raddr <= ADDR_WEIGHTS_95_HIGH) then
                    int_weights_95_read <= '1';
                else
                    int_weights_95_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_95_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_95_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_95_HIGH) then
                    int_weights_95_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_95_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_95_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_95_ce0 = '1') then
                    int_weights_95_shift0 <= UNSIGNED(weights_95_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_96_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_96_BASE and raddr <= ADDR_WEIGHTS_96_HIGH) then
                    int_weights_96_read <= '1';
                else
                    int_weights_96_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_96_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_96_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_96_HIGH) then
                    int_weights_96_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_96_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_96_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_96_ce0 = '1') then
                    int_weights_96_shift0 <= UNSIGNED(weights_96_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_97_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_97_BASE and raddr <= ADDR_WEIGHTS_97_HIGH) then
                    int_weights_97_read <= '1';
                else
                    int_weights_97_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_97_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_97_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_97_HIGH) then
                    int_weights_97_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_97_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_97_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_97_ce0 = '1') then
                    int_weights_97_shift0 <= UNSIGNED(weights_97_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_98_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_98_BASE and raddr <= ADDR_WEIGHTS_98_HIGH) then
                    int_weights_98_read <= '1';
                else
                    int_weights_98_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_98_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_98_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_98_HIGH) then
                    int_weights_98_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_98_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_98_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_98_ce0 = '1') then
                    int_weights_98_shift0 <= UNSIGNED(weights_98_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_99_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_99_BASE and raddr <= ADDR_WEIGHTS_99_HIGH) then
                    int_weights_99_read <= '1';
                else
                    int_weights_99_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_99_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_99_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_99_HIGH) then
                    int_weights_99_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_99_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_99_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_99_ce0 = '1') then
                    int_weights_99_shift0 <= UNSIGNED(weights_99_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_100_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_100_BASE and raddr <= ADDR_WEIGHTS_100_HIGH) then
                    int_weights_100_read <= '1';
                else
                    int_weights_100_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_100_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_100_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_100_HIGH) then
                    int_weights_100_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_100_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_100_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_100_ce0 = '1') then
                    int_weights_100_shift0 <= UNSIGNED(weights_100_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_101_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_101_BASE and raddr <= ADDR_WEIGHTS_101_HIGH) then
                    int_weights_101_read <= '1';
                else
                    int_weights_101_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_101_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_101_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_101_HIGH) then
                    int_weights_101_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_101_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_101_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_101_ce0 = '1') then
                    int_weights_101_shift0 <= UNSIGNED(weights_101_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_102_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_102_BASE and raddr <= ADDR_WEIGHTS_102_HIGH) then
                    int_weights_102_read <= '1';
                else
                    int_weights_102_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_102_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_102_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_102_HIGH) then
                    int_weights_102_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_102_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_102_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_102_ce0 = '1') then
                    int_weights_102_shift0 <= UNSIGNED(weights_102_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_103_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_103_BASE and raddr <= ADDR_WEIGHTS_103_HIGH) then
                    int_weights_103_read <= '1';
                else
                    int_weights_103_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_103_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_103_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_103_HIGH) then
                    int_weights_103_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_103_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_103_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_103_ce0 = '1') then
                    int_weights_103_shift0 <= UNSIGNED(weights_103_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_104_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_104_BASE and raddr <= ADDR_WEIGHTS_104_HIGH) then
                    int_weights_104_read <= '1';
                else
                    int_weights_104_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_104_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_104_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_104_HIGH) then
                    int_weights_104_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_104_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_104_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_104_ce0 = '1') then
                    int_weights_104_shift0 <= UNSIGNED(weights_104_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_105_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_105_BASE and raddr <= ADDR_WEIGHTS_105_HIGH) then
                    int_weights_105_read <= '1';
                else
                    int_weights_105_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_105_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_105_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_105_HIGH) then
                    int_weights_105_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_105_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_105_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_105_ce0 = '1') then
                    int_weights_105_shift0 <= UNSIGNED(weights_105_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_106_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_106_BASE and raddr <= ADDR_WEIGHTS_106_HIGH) then
                    int_weights_106_read <= '1';
                else
                    int_weights_106_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_106_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_106_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_106_HIGH) then
                    int_weights_106_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_106_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_106_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_106_ce0 = '1') then
                    int_weights_106_shift0 <= UNSIGNED(weights_106_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_107_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_107_BASE and raddr <= ADDR_WEIGHTS_107_HIGH) then
                    int_weights_107_read <= '1';
                else
                    int_weights_107_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_107_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_107_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_107_HIGH) then
                    int_weights_107_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_107_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_107_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_107_ce0 = '1') then
                    int_weights_107_shift0 <= UNSIGNED(weights_107_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_108_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_108_BASE and raddr <= ADDR_WEIGHTS_108_HIGH) then
                    int_weights_108_read <= '1';
                else
                    int_weights_108_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_108_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_108_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_108_HIGH) then
                    int_weights_108_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_108_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_108_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_108_ce0 = '1') then
                    int_weights_108_shift0 <= UNSIGNED(weights_108_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_109_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_109_BASE and raddr <= ADDR_WEIGHTS_109_HIGH) then
                    int_weights_109_read <= '1';
                else
                    int_weights_109_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_109_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_109_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_109_HIGH) then
                    int_weights_109_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_109_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_109_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_109_ce0 = '1') then
                    int_weights_109_shift0 <= UNSIGNED(weights_109_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_110_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_110_BASE and raddr <= ADDR_WEIGHTS_110_HIGH) then
                    int_weights_110_read <= '1';
                else
                    int_weights_110_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_110_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_110_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_110_HIGH) then
                    int_weights_110_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_110_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_110_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_110_ce0 = '1') then
                    int_weights_110_shift0 <= UNSIGNED(weights_110_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_111_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_111_BASE and raddr <= ADDR_WEIGHTS_111_HIGH) then
                    int_weights_111_read <= '1';
                else
                    int_weights_111_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_111_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_111_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_111_HIGH) then
                    int_weights_111_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_111_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_111_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_111_ce0 = '1') then
                    int_weights_111_shift0 <= UNSIGNED(weights_111_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_112_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_112_BASE and raddr <= ADDR_WEIGHTS_112_HIGH) then
                    int_weights_112_read <= '1';
                else
                    int_weights_112_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_112_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_112_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_112_HIGH) then
                    int_weights_112_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_112_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_112_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_112_ce0 = '1') then
                    int_weights_112_shift0 <= UNSIGNED(weights_112_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_113_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_113_BASE and raddr <= ADDR_WEIGHTS_113_HIGH) then
                    int_weights_113_read <= '1';
                else
                    int_weights_113_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_113_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_113_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_113_HIGH) then
                    int_weights_113_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_113_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_113_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_113_ce0 = '1') then
                    int_weights_113_shift0 <= UNSIGNED(weights_113_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_114_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_114_BASE and raddr <= ADDR_WEIGHTS_114_HIGH) then
                    int_weights_114_read <= '1';
                else
                    int_weights_114_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_114_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_114_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_114_HIGH) then
                    int_weights_114_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_114_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_114_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_114_ce0 = '1') then
                    int_weights_114_shift0 <= UNSIGNED(weights_114_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_115_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_115_BASE and raddr <= ADDR_WEIGHTS_115_HIGH) then
                    int_weights_115_read <= '1';
                else
                    int_weights_115_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_115_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_115_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_115_HIGH) then
                    int_weights_115_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_115_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_115_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_115_ce0 = '1') then
                    int_weights_115_shift0 <= UNSIGNED(weights_115_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_116_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_116_BASE and raddr <= ADDR_WEIGHTS_116_HIGH) then
                    int_weights_116_read <= '1';
                else
                    int_weights_116_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_116_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_116_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_116_HIGH) then
                    int_weights_116_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_116_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_116_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_116_ce0 = '1') then
                    int_weights_116_shift0 <= UNSIGNED(weights_116_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_117_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_117_BASE and raddr <= ADDR_WEIGHTS_117_HIGH) then
                    int_weights_117_read <= '1';
                else
                    int_weights_117_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_117_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_117_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_117_HIGH) then
                    int_weights_117_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_117_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_117_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_117_ce0 = '1') then
                    int_weights_117_shift0 <= UNSIGNED(weights_117_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_118_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_118_BASE and raddr <= ADDR_WEIGHTS_118_HIGH) then
                    int_weights_118_read <= '1';
                else
                    int_weights_118_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_118_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_118_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_118_HIGH) then
                    int_weights_118_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_118_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_118_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_118_ce0 = '1') then
                    int_weights_118_shift0 <= UNSIGNED(weights_118_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_119_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_119_BASE and raddr <= ADDR_WEIGHTS_119_HIGH) then
                    int_weights_119_read <= '1';
                else
                    int_weights_119_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_119_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_119_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_119_HIGH) then
                    int_weights_119_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_119_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_119_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_119_ce0 = '1') then
                    int_weights_119_shift0 <= UNSIGNED(weights_119_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_120_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_120_BASE and raddr <= ADDR_WEIGHTS_120_HIGH) then
                    int_weights_120_read <= '1';
                else
                    int_weights_120_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_120_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_120_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_120_HIGH) then
                    int_weights_120_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_120_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_120_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_120_ce0 = '1') then
                    int_weights_120_shift0 <= UNSIGNED(weights_120_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_121_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_121_BASE and raddr <= ADDR_WEIGHTS_121_HIGH) then
                    int_weights_121_read <= '1';
                else
                    int_weights_121_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_121_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_121_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_121_HIGH) then
                    int_weights_121_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_121_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_121_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_121_ce0 = '1') then
                    int_weights_121_shift0 <= UNSIGNED(weights_121_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_122_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_122_BASE and raddr <= ADDR_WEIGHTS_122_HIGH) then
                    int_weights_122_read <= '1';
                else
                    int_weights_122_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_122_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_122_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_122_HIGH) then
                    int_weights_122_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_122_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_122_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_122_ce0 = '1') then
                    int_weights_122_shift0 <= UNSIGNED(weights_122_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_123_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_123_BASE and raddr <= ADDR_WEIGHTS_123_HIGH) then
                    int_weights_123_read <= '1';
                else
                    int_weights_123_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_123_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_123_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_123_HIGH) then
                    int_weights_123_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_123_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_123_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_123_ce0 = '1') then
                    int_weights_123_shift0 <= UNSIGNED(weights_123_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_124_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_124_BASE and raddr <= ADDR_WEIGHTS_124_HIGH) then
                    int_weights_124_read <= '1';
                else
                    int_weights_124_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_124_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_124_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_124_HIGH) then
                    int_weights_124_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_124_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_124_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_124_ce0 = '1') then
                    int_weights_124_shift0 <= UNSIGNED(weights_124_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_125_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_125_BASE and raddr <= ADDR_WEIGHTS_125_HIGH) then
                    int_weights_125_read <= '1';
                else
                    int_weights_125_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_125_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_125_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_125_HIGH) then
                    int_weights_125_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_125_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_125_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_125_ce0 = '1') then
                    int_weights_125_shift0 <= UNSIGNED(weights_125_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_126_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_126_BASE and raddr <= ADDR_WEIGHTS_126_HIGH) then
                    int_weights_126_read <= '1';
                else
                    int_weights_126_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_126_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_126_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_126_HIGH) then
                    int_weights_126_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_126_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_126_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_126_ce0 = '1') then
                    int_weights_126_shift0 <= UNSIGNED(weights_126_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_127_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_WEIGHTS_127_BASE and raddr <= ADDR_WEIGHTS_127_HIGH) then
                    int_weights_127_read <= '1';
                else
                    int_weights_127_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_127_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_WEIGHTS_127_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_WEIGHTS_127_HIGH) then
                    int_weights_127_write <= '1';
                elsif (w_hs = '1') then
                    int_weights_127_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_weights_127_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (weights_127_ce0 = '1') then
                    int_weights_127_shift0 <= UNSIGNED(weights_127_address0(0 downto 0));
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity nnlayer_control_s_axi_ram is
    generic (
        MEM_STYLE : STRING :="auto";
        MEM_TYPE  : STRING :="S2P";
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity nnlayer_control_s_axi_ram;

architecture behave of nnlayer_control_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
    attribute ram_style: string;
    attribute ram_style of mem: variable is MEM_STYLE;
    constant BYTE_WIDTH :INTEGER := 8;

    function port_type_gen( MEM_TYPE: STRING; MEM_STYLE: STRING; PORT_NAME: STRING) return STRING is
    begin
        if (MEM_TYPE = "S2P") and (PORT_NAME = "PORT0") then
            return "WO";
        elsif((MEM_TYPE = "S2P") and (PORT_NAME = "PORT1")) or ((MEM_TYPE = "2P") and (PORT_NAME = "PORT0")) then
            return "RO";
        elsif (MEM_STYLE = "hls_ultra") then
            return "RWNC";
        else
            return "RWRF";
        end if;
    end port_type_gen;
    constant PORT0 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT0");
    constant PORT1 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT1");

    function or_reduce( V: UNSIGNED) return std_logic is
    variable result: std_logic;
    begin
        for i in V'range loop
            if i = V'left then
                result := V(i);
            else
                result := result OR V(i);
            end if;
            exit when result = '1';
        end loop;
        return result;
    end or_reduce;

begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
        if (address0 > DEPTH-1) then
            address0_tmp <= (others => '0');
        else
            address0_tmp <= address0;
        end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
        if (address1 > DEPTH-1) then
            address1_tmp <= (others => '0');
        else
            address1_tmp <= address1;
        end if;
    --synthesis translate_on
    end process;

    --read port 0
    read_p0_rf : if (PORT0 = "RO" or PORT0 = "RWRF") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    q0 <= mem(to_integer(address0_tmp));
                end if;
            end if;
        end process;
    end generate read_p0_rf;

    read_p0_nc : if (PORT0 = "RWNC") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    if (we0 = (we0'range => '0')) then
                        q0 <= mem(to_integer(address0_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p0_nc;

    --read port 1
    read_p1_rf : if (PORT1 = "RO" or PORT1 = "RWRF") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    q1 <= mem(to_integer(address1_tmp));
                end if;
            end if;
        end process;
    end generate read_p1_rf;

    read_p1_nc : if (PORT1 = "RWNC") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    if (we1 = (we1'range => '0')) then
                        q1 <= mem(to_integer(address1_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p1_nc;

    --write port 0
    write_p0 : if (PORT0 /= "RO") generate
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we0(i) = '1') then
                        mem(to_integer(address0_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d0((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p0;

    --write port 1
    write_p1 : if (PORT1 /= "RO") generate
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we1(i) = '1') then
                        mem(to_integer(address1_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d1((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p1;

end architecture behave;


