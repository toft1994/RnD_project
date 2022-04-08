-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity apatb_nnlayer_top is
  generic (
       AUTOTB_CLOCK_PERIOD_DIV2 :   TIME := 5.00 ns;
       AUTOTB_TVIN_input_0 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_0.dat";
       AUTOTB_TVIN_input_1 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_1.dat";
       AUTOTB_TVIN_input_2 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_2.dat";
       AUTOTB_TVIN_input_3 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_3.dat";
       AUTOTB_TVIN_input_4 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_4.dat";
       AUTOTB_TVIN_input_5 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_5.dat";
       AUTOTB_TVIN_input_6 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_6.dat";
       AUTOTB_TVIN_input_7 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_7.dat";
       AUTOTB_TVIN_input_8 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_8.dat";
       AUTOTB_TVIN_input_9 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_9.dat";
       AUTOTB_TVIN_input_10 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_10.dat";
       AUTOTB_TVIN_input_11 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_11.dat";
       AUTOTB_TVIN_input_12 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_12.dat";
       AUTOTB_TVIN_input_13 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_13.dat";
       AUTOTB_TVIN_input_14 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_14.dat";
       AUTOTB_TVIN_input_15 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_15.dat";
       AUTOTB_TVIN_input_16 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_16.dat";
       AUTOTB_TVIN_input_17 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_17.dat";
       AUTOTB_TVIN_input_18 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_18.dat";
       AUTOTB_TVIN_input_19 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_19.dat";
       AUTOTB_TVIN_input_20 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_20.dat";
       AUTOTB_TVIN_input_21 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_21.dat";
       AUTOTB_TVIN_input_22 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_22.dat";
       AUTOTB_TVIN_input_23 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_23.dat";
       AUTOTB_TVIN_input_24 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_24.dat";
       AUTOTB_TVIN_input_25 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_25.dat";
       AUTOTB_TVIN_input_26 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_26.dat";
       AUTOTB_TVIN_input_27 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_27.dat";
       AUTOTB_TVIN_input_28 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_28.dat";
       AUTOTB_TVIN_input_29 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_29.dat";
       AUTOTB_TVIN_input_30 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_30.dat";
       AUTOTB_TVIN_input_31 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_31.dat";
       AUTOTB_TVIN_input_32 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_32.dat";
       AUTOTB_TVIN_input_33 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_33.dat";
       AUTOTB_TVIN_input_34 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_34.dat";
       AUTOTB_TVIN_input_35 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_35.dat";
       AUTOTB_TVIN_input_36 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_36.dat";
       AUTOTB_TVIN_input_37 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_37.dat";
       AUTOTB_TVIN_input_38 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_38.dat";
       AUTOTB_TVIN_input_39 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_39.dat";
       AUTOTB_TVIN_input_40 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_40.dat";
       AUTOTB_TVIN_input_41 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_41.dat";
       AUTOTB_TVIN_input_42 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_42.dat";
       AUTOTB_TVIN_input_43 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_43.dat";
       AUTOTB_TVIN_input_44 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_44.dat";
       AUTOTB_TVIN_input_45 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_45.dat";
       AUTOTB_TVIN_input_46 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_46.dat";
       AUTOTB_TVIN_input_47 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_47.dat";
       AUTOTB_TVIN_input_48 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_48.dat";
       AUTOTB_TVIN_input_49 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_49.dat";
       AUTOTB_TVIN_input_50 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_50.dat";
       AUTOTB_TVIN_input_51 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_51.dat";
       AUTOTB_TVIN_input_52 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_52.dat";
       AUTOTB_TVIN_input_53 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_53.dat";
       AUTOTB_TVIN_input_54 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_54.dat";
       AUTOTB_TVIN_input_55 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_55.dat";
       AUTOTB_TVIN_input_56 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_56.dat";
       AUTOTB_TVIN_input_57 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_57.dat";
       AUTOTB_TVIN_input_58 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_58.dat";
       AUTOTB_TVIN_input_59 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_59.dat";
       AUTOTB_TVIN_input_60 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_60.dat";
       AUTOTB_TVIN_input_61 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_61.dat";
       AUTOTB_TVIN_input_62 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_62.dat";
       AUTOTB_TVIN_input_63 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_63.dat";
       AUTOTB_TVIN_input_64 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_64.dat";
       AUTOTB_TVIN_input_65 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_65.dat";
       AUTOTB_TVIN_input_66 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_66.dat";
       AUTOTB_TVIN_input_67 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_67.dat";
       AUTOTB_TVIN_input_68 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_68.dat";
       AUTOTB_TVIN_input_69 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_69.dat";
       AUTOTB_TVIN_input_70 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_70.dat";
       AUTOTB_TVIN_input_71 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_71.dat";
       AUTOTB_TVIN_input_72 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_72.dat";
       AUTOTB_TVIN_input_73 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_73.dat";
       AUTOTB_TVIN_input_74 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_74.dat";
       AUTOTB_TVIN_input_75 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_75.dat";
       AUTOTB_TVIN_input_76 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_76.dat";
       AUTOTB_TVIN_input_77 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_77.dat";
       AUTOTB_TVIN_input_78 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_78.dat";
       AUTOTB_TVIN_input_79 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_79.dat";
       AUTOTB_TVIN_input_80 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_80.dat";
       AUTOTB_TVIN_input_81 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_81.dat";
       AUTOTB_TVIN_input_82 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_82.dat";
       AUTOTB_TVIN_input_83 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_83.dat";
       AUTOTB_TVIN_input_84 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_84.dat";
       AUTOTB_TVIN_input_85 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_85.dat";
       AUTOTB_TVIN_input_86 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_86.dat";
       AUTOTB_TVIN_input_87 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_87.dat";
       AUTOTB_TVIN_input_88 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_88.dat";
       AUTOTB_TVIN_input_89 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_89.dat";
       AUTOTB_TVIN_input_90 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_90.dat";
       AUTOTB_TVIN_input_91 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_91.dat";
       AUTOTB_TVIN_input_92 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_92.dat";
       AUTOTB_TVIN_input_93 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_93.dat";
       AUTOTB_TVIN_input_94 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_94.dat";
       AUTOTB_TVIN_input_95 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_95.dat";
       AUTOTB_TVIN_input_96 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_96.dat";
       AUTOTB_TVIN_input_97 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_97.dat";
       AUTOTB_TVIN_input_98 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_98.dat";
       AUTOTB_TVIN_input_99 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_99.dat";
       AUTOTB_TVIN_input_100 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_100.dat";
       AUTOTB_TVIN_input_101 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_101.dat";
       AUTOTB_TVIN_input_102 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_102.dat";
       AUTOTB_TVIN_input_103 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_103.dat";
       AUTOTB_TVIN_input_104 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_104.dat";
       AUTOTB_TVIN_input_105 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_105.dat";
       AUTOTB_TVIN_input_106 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_106.dat";
       AUTOTB_TVIN_input_107 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_107.dat";
       AUTOTB_TVIN_input_108 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_108.dat";
       AUTOTB_TVIN_input_109 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_109.dat";
       AUTOTB_TVIN_input_110 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_110.dat";
       AUTOTB_TVIN_input_111 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_111.dat";
       AUTOTB_TVIN_input_112 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_112.dat";
       AUTOTB_TVIN_input_113 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_113.dat";
       AUTOTB_TVIN_input_114 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_114.dat";
       AUTOTB_TVIN_input_115 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_115.dat";
       AUTOTB_TVIN_input_116 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_116.dat";
       AUTOTB_TVIN_input_117 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_117.dat";
       AUTOTB_TVIN_input_118 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_118.dat";
       AUTOTB_TVIN_input_119 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_119.dat";
       AUTOTB_TVIN_input_120 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_120.dat";
       AUTOTB_TVIN_input_121 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_121.dat";
       AUTOTB_TVIN_input_122 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_122.dat";
       AUTOTB_TVIN_input_123 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_123.dat";
       AUTOTB_TVIN_input_124 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_124.dat";
       AUTOTB_TVIN_input_125 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_125.dat";
       AUTOTB_TVIN_input_126 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_126.dat";
       AUTOTB_TVIN_input_127 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_input_127.dat";
       AUTOTB_TVIN_bias : STRING := "../tv/cdatafile/c.nnlayer.autotvin_bias.dat";
       AUTOTB_TVIN_weights_0 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_0.dat";
       AUTOTB_TVIN_weights_1 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_1.dat";
       AUTOTB_TVIN_weights_2 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_2.dat";
       AUTOTB_TVIN_weights_3 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_3.dat";
       AUTOTB_TVIN_weights_4 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_4.dat";
       AUTOTB_TVIN_weights_5 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_5.dat";
       AUTOTB_TVIN_weights_6 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_6.dat";
       AUTOTB_TVIN_weights_7 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_7.dat";
       AUTOTB_TVIN_weights_8 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_8.dat";
       AUTOTB_TVIN_weights_9 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_9.dat";
       AUTOTB_TVIN_weights_10 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_10.dat";
       AUTOTB_TVIN_weights_11 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_11.dat";
       AUTOTB_TVIN_weights_12 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_12.dat";
       AUTOTB_TVIN_weights_13 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_13.dat";
       AUTOTB_TVIN_weights_14 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_14.dat";
       AUTOTB_TVIN_weights_15 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_15.dat";
       AUTOTB_TVIN_weights_16 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_16.dat";
       AUTOTB_TVIN_weights_17 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_17.dat";
       AUTOTB_TVIN_weights_18 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_18.dat";
       AUTOTB_TVIN_weights_19 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_19.dat";
       AUTOTB_TVIN_weights_20 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_20.dat";
       AUTOTB_TVIN_weights_21 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_21.dat";
       AUTOTB_TVIN_weights_22 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_22.dat";
       AUTOTB_TVIN_weights_23 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_23.dat";
       AUTOTB_TVIN_weights_24 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_24.dat";
       AUTOTB_TVIN_weights_25 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_25.dat";
       AUTOTB_TVIN_weights_26 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_26.dat";
       AUTOTB_TVIN_weights_27 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_27.dat";
       AUTOTB_TVIN_weights_28 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_28.dat";
       AUTOTB_TVIN_weights_29 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_29.dat";
       AUTOTB_TVIN_weights_30 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_30.dat";
       AUTOTB_TVIN_weights_31 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_31.dat";
       AUTOTB_TVIN_weights_32 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_32.dat";
       AUTOTB_TVIN_weights_33 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_33.dat";
       AUTOTB_TVIN_weights_34 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_34.dat";
       AUTOTB_TVIN_weights_35 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_35.dat";
       AUTOTB_TVIN_weights_36 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_36.dat";
       AUTOTB_TVIN_weights_37 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_37.dat";
       AUTOTB_TVIN_weights_38 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_38.dat";
       AUTOTB_TVIN_weights_39 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_39.dat";
       AUTOTB_TVIN_weights_40 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_40.dat";
       AUTOTB_TVIN_weights_41 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_41.dat";
       AUTOTB_TVIN_weights_42 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_42.dat";
       AUTOTB_TVIN_weights_43 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_43.dat";
       AUTOTB_TVIN_weights_44 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_44.dat";
       AUTOTB_TVIN_weights_45 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_45.dat";
       AUTOTB_TVIN_weights_46 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_46.dat";
       AUTOTB_TVIN_weights_47 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_47.dat";
       AUTOTB_TVIN_weights_48 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_48.dat";
       AUTOTB_TVIN_weights_49 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_49.dat";
       AUTOTB_TVIN_weights_50 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_50.dat";
       AUTOTB_TVIN_weights_51 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_51.dat";
       AUTOTB_TVIN_weights_52 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_52.dat";
       AUTOTB_TVIN_weights_53 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_53.dat";
       AUTOTB_TVIN_weights_54 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_54.dat";
       AUTOTB_TVIN_weights_55 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_55.dat";
       AUTOTB_TVIN_weights_56 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_56.dat";
       AUTOTB_TVIN_weights_57 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_57.dat";
       AUTOTB_TVIN_weights_58 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_58.dat";
       AUTOTB_TVIN_weights_59 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_59.dat";
       AUTOTB_TVIN_weights_60 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_60.dat";
       AUTOTB_TVIN_weights_61 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_61.dat";
       AUTOTB_TVIN_weights_62 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_62.dat";
       AUTOTB_TVIN_weights_63 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_63.dat";
       AUTOTB_TVIN_weights_64 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_64.dat";
       AUTOTB_TVIN_weights_65 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_65.dat";
       AUTOTB_TVIN_weights_66 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_66.dat";
       AUTOTB_TVIN_weights_67 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_67.dat";
       AUTOTB_TVIN_weights_68 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_68.dat";
       AUTOTB_TVIN_weights_69 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_69.dat";
       AUTOTB_TVIN_weights_70 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_70.dat";
       AUTOTB_TVIN_weights_71 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_71.dat";
       AUTOTB_TVIN_weights_72 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_72.dat";
       AUTOTB_TVIN_weights_73 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_73.dat";
       AUTOTB_TVIN_weights_74 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_74.dat";
       AUTOTB_TVIN_weights_75 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_75.dat";
       AUTOTB_TVIN_weights_76 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_76.dat";
       AUTOTB_TVIN_weights_77 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_77.dat";
       AUTOTB_TVIN_weights_78 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_78.dat";
       AUTOTB_TVIN_weights_79 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_79.dat";
       AUTOTB_TVIN_weights_80 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_80.dat";
       AUTOTB_TVIN_weights_81 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_81.dat";
       AUTOTB_TVIN_weights_82 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_82.dat";
       AUTOTB_TVIN_weights_83 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_83.dat";
       AUTOTB_TVIN_weights_84 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_84.dat";
       AUTOTB_TVIN_weights_85 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_85.dat";
       AUTOTB_TVIN_weights_86 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_86.dat";
       AUTOTB_TVIN_weights_87 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_87.dat";
       AUTOTB_TVIN_weights_88 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_88.dat";
       AUTOTB_TVIN_weights_89 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_89.dat";
       AUTOTB_TVIN_weights_90 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_90.dat";
       AUTOTB_TVIN_weights_91 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_91.dat";
       AUTOTB_TVIN_weights_92 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_92.dat";
       AUTOTB_TVIN_weights_93 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_93.dat";
       AUTOTB_TVIN_weights_94 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_94.dat";
       AUTOTB_TVIN_weights_95 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_95.dat";
       AUTOTB_TVIN_weights_96 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_96.dat";
       AUTOTB_TVIN_weights_97 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_97.dat";
       AUTOTB_TVIN_weights_98 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_98.dat";
       AUTOTB_TVIN_weights_99 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_99.dat";
       AUTOTB_TVIN_weights_100 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_100.dat";
       AUTOTB_TVIN_weights_101 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_101.dat";
       AUTOTB_TVIN_weights_102 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_102.dat";
       AUTOTB_TVIN_weights_103 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_103.dat";
       AUTOTB_TVIN_weights_104 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_104.dat";
       AUTOTB_TVIN_weights_105 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_105.dat";
       AUTOTB_TVIN_weights_106 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_106.dat";
       AUTOTB_TVIN_weights_107 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_107.dat";
       AUTOTB_TVIN_weights_108 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_108.dat";
       AUTOTB_TVIN_weights_109 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_109.dat";
       AUTOTB_TVIN_weights_110 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_110.dat";
       AUTOTB_TVIN_weights_111 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_111.dat";
       AUTOTB_TVIN_weights_112 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_112.dat";
       AUTOTB_TVIN_weights_113 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_113.dat";
       AUTOTB_TVIN_weights_114 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_114.dat";
       AUTOTB_TVIN_weights_115 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_115.dat";
       AUTOTB_TVIN_weights_116 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_116.dat";
       AUTOTB_TVIN_weights_117 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_117.dat";
       AUTOTB_TVIN_weights_118 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_118.dat";
       AUTOTB_TVIN_weights_119 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_119.dat";
       AUTOTB_TVIN_weights_120 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_120.dat";
       AUTOTB_TVIN_weights_121 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_121.dat";
       AUTOTB_TVIN_weights_122 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_122.dat";
       AUTOTB_TVIN_weights_123 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_123.dat";
       AUTOTB_TVIN_weights_124 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_124.dat";
       AUTOTB_TVIN_weights_125 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_125.dat";
       AUTOTB_TVIN_weights_126 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_126.dat";
       AUTOTB_TVIN_weights_127 : STRING := "../tv/cdatafile/c.nnlayer.autotvin_weights_127.dat";
       AUTOTB_TVIN_numOfOutputNeurons : STRING := "../tv/cdatafile/c.nnlayer.autotvin_numOfOutputNeurons.dat";
       AUTOTB_TVIN_activation : STRING := "../tv/cdatafile/c.nnlayer.autotvin_activation.dat";
       AUTOTB_TVIN_input_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_0.dat";
       AUTOTB_TVIN_input_1_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_1.dat";
       AUTOTB_TVIN_input_2_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_2.dat";
       AUTOTB_TVIN_input_3_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_3.dat";
       AUTOTB_TVIN_input_4_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_4.dat";
       AUTOTB_TVIN_input_5_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_5.dat";
       AUTOTB_TVIN_input_6_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_6.dat";
       AUTOTB_TVIN_input_7_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_7.dat";
       AUTOTB_TVIN_input_8_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_8.dat";
       AUTOTB_TVIN_input_9_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_9.dat";
       AUTOTB_TVIN_input_10_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_10.dat";
       AUTOTB_TVIN_input_11_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_11.dat";
       AUTOTB_TVIN_input_12_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_12.dat";
       AUTOTB_TVIN_input_13_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_13.dat";
       AUTOTB_TVIN_input_14_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_14.dat";
       AUTOTB_TVIN_input_15_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_15.dat";
       AUTOTB_TVIN_input_16_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_16.dat";
       AUTOTB_TVIN_input_17_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_17.dat";
       AUTOTB_TVIN_input_18_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_18.dat";
       AUTOTB_TVIN_input_19_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_19.dat";
       AUTOTB_TVIN_input_20_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_20.dat";
       AUTOTB_TVIN_input_21_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_21.dat";
       AUTOTB_TVIN_input_22_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_22.dat";
       AUTOTB_TVIN_input_23_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_23.dat";
       AUTOTB_TVIN_input_24_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_24.dat";
       AUTOTB_TVIN_input_25_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_25.dat";
       AUTOTB_TVIN_input_26_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_26.dat";
       AUTOTB_TVIN_input_27_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_27.dat";
       AUTOTB_TVIN_input_28_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_28.dat";
       AUTOTB_TVIN_input_29_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_29.dat";
       AUTOTB_TVIN_input_30_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_30.dat";
       AUTOTB_TVIN_input_31_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_31.dat";
       AUTOTB_TVIN_input_32_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_32.dat";
       AUTOTB_TVIN_input_33_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_33.dat";
       AUTOTB_TVIN_input_34_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_34.dat";
       AUTOTB_TVIN_input_35_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_35.dat";
       AUTOTB_TVIN_input_36_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_36.dat";
       AUTOTB_TVIN_input_37_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_37.dat";
       AUTOTB_TVIN_input_38_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_38.dat";
       AUTOTB_TVIN_input_39_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_39.dat";
       AUTOTB_TVIN_input_40_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_40.dat";
       AUTOTB_TVIN_input_41_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_41.dat";
       AUTOTB_TVIN_input_42_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_42.dat";
       AUTOTB_TVIN_input_43_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_43.dat";
       AUTOTB_TVIN_input_44_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_44.dat";
       AUTOTB_TVIN_input_45_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_45.dat";
       AUTOTB_TVIN_input_46_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_46.dat";
       AUTOTB_TVIN_input_47_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_47.dat";
       AUTOTB_TVIN_input_48_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_48.dat";
       AUTOTB_TVIN_input_49_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_49.dat";
       AUTOTB_TVIN_input_50_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_50.dat";
       AUTOTB_TVIN_input_51_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_51.dat";
       AUTOTB_TVIN_input_52_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_52.dat";
       AUTOTB_TVIN_input_53_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_53.dat";
       AUTOTB_TVIN_input_54_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_54.dat";
       AUTOTB_TVIN_input_55_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_55.dat";
       AUTOTB_TVIN_input_56_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_56.dat";
       AUTOTB_TVIN_input_57_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_57.dat";
       AUTOTB_TVIN_input_58_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_58.dat";
       AUTOTB_TVIN_input_59_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_59.dat";
       AUTOTB_TVIN_input_60_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_60.dat";
       AUTOTB_TVIN_input_61_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_61.dat";
       AUTOTB_TVIN_input_62_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_62.dat";
       AUTOTB_TVIN_input_63_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_63.dat";
       AUTOTB_TVIN_input_64_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_64.dat";
       AUTOTB_TVIN_input_65_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_65.dat";
       AUTOTB_TVIN_input_66_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_66.dat";
       AUTOTB_TVIN_input_67_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_67.dat";
       AUTOTB_TVIN_input_68_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_68.dat";
       AUTOTB_TVIN_input_69_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_69.dat";
       AUTOTB_TVIN_input_70_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_70.dat";
       AUTOTB_TVIN_input_71_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_71.dat";
       AUTOTB_TVIN_input_72_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_72.dat";
       AUTOTB_TVIN_input_73_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_73.dat";
       AUTOTB_TVIN_input_74_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_74.dat";
       AUTOTB_TVIN_input_75_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_75.dat";
       AUTOTB_TVIN_input_76_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_76.dat";
       AUTOTB_TVIN_input_77_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_77.dat";
       AUTOTB_TVIN_input_78_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_78.dat";
       AUTOTB_TVIN_input_79_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_79.dat";
       AUTOTB_TVIN_input_80_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_80.dat";
       AUTOTB_TVIN_input_81_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_81.dat";
       AUTOTB_TVIN_input_82_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_82.dat";
       AUTOTB_TVIN_input_83_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_83.dat";
       AUTOTB_TVIN_input_84_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_84.dat";
       AUTOTB_TVIN_input_85_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_85.dat";
       AUTOTB_TVIN_input_86_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_86.dat";
       AUTOTB_TVIN_input_87_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_87.dat";
       AUTOTB_TVIN_input_88_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_88.dat";
       AUTOTB_TVIN_input_89_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_89.dat";
       AUTOTB_TVIN_input_90_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_90.dat";
       AUTOTB_TVIN_input_91_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_91.dat";
       AUTOTB_TVIN_input_92_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_92.dat";
       AUTOTB_TVIN_input_93_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_93.dat";
       AUTOTB_TVIN_input_94_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_94.dat";
       AUTOTB_TVIN_input_95_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_95.dat";
       AUTOTB_TVIN_input_96_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_96.dat";
       AUTOTB_TVIN_input_97_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_97.dat";
       AUTOTB_TVIN_input_98_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_98.dat";
       AUTOTB_TVIN_input_99_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_99.dat";
       AUTOTB_TVIN_input_100_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_100.dat";
       AUTOTB_TVIN_input_101_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_101.dat";
       AUTOTB_TVIN_input_102_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_102.dat";
       AUTOTB_TVIN_input_103_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_103.dat";
       AUTOTB_TVIN_input_104_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_104.dat";
       AUTOTB_TVIN_input_105_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_105.dat";
       AUTOTB_TVIN_input_106_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_106.dat";
       AUTOTB_TVIN_input_107_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_107.dat";
       AUTOTB_TVIN_input_108_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_108.dat";
       AUTOTB_TVIN_input_109_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_109.dat";
       AUTOTB_TVIN_input_110_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_110.dat";
       AUTOTB_TVIN_input_111_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_111.dat";
       AUTOTB_TVIN_input_112_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_112.dat";
       AUTOTB_TVIN_input_113_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_113.dat";
       AUTOTB_TVIN_input_114_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_114.dat";
       AUTOTB_TVIN_input_115_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_115.dat";
       AUTOTB_TVIN_input_116_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_116.dat";
       AUTOTB_TVIN_input_117_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_117.dat";
       AUTOTB_TVIN_input_118_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_118.dat";
       AUTOTB_TVIN_input_119_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_119.dat";
       AUTOTB_TVIN_input_120_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_120.dat";
       AUTOTB_TVIN_input_121_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_121.dat";
       AUTOTB_TVIN_input_122_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_122.dat";
       AUTOTB_TVIN_input_123_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_123.dat";
       AUTOTB_TVIN_input_124_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_124.dat";
       AUTOTB_TVIN_input_125_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_125.dat";
       AUTOTB_TVIN_input_126_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_126.dat";
       AUTOTB_TVIN_input_127_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_input_127.dat";
       AUTOTB_TVIN_bias_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_bias.dat";
       AUTOTB_TVIN_weights_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_0.dat";
       AUTOTB_TVIN_weights_1_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_1.dat";
       AUTOTB_TVIN_weights_2_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_2.dat";
       AUTOTB_TVIN_weights_3_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_3.dat";
       AUTOTB_TVIN_weights_4_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_4.dat";
       AUTOTB_TVIN_weights_5_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_5.dat";
       AUTOTB_TVIN_weights_6_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_6.dat";
       AUTOTB_TVIN_weights_7_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_7.dat";
       AUTOTB_TVIN_weights_8_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_8.dat";
       AUTOTB_TVIN_weights_9_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_9.dat";
       AUTOTB_TVIN_weights_10_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_10.dat";
       AUTOTB_TVIN_weights_11_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_11.dat";
       AUTOTB_TVIN_weights_12_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_12.dat";
       AUTOTB_TVIN_weights_13_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_13.dat";
       AUTOTB_TVIN_weights_14_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_14.dat";
       AUTOTB_TVIN_weights_15_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_15.dat";
       AUTOTB_TVIN_weights_16_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_16.dat";
       AUTOTB_TVIN_weights_17_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_17.dat";
       AUTOTB_TVIN_weights_18_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_18.dat";
       AUTOTB_TVIN_weights_19_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_19.dat";
       AUTOTB_TVIN_weights_20_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_20.dat";
       AUTOTB_TVIN_weights_21_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_21.dat";
       AUTOTB_TVIN_weights_22_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_22.dat";
       AUTOTB_TVIN_weights_23_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_23.dat";
       AUTOTB_TVIN_weights_24_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_24.dat";
       AUTOTB_TVIN_weights_25_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_25.dat";
       AUTOTB_TVIN_weights_26_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_26.dat";
       AUTOTB_TVIN_weights_27_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_27.dat";
       AUTOTB_TVIN_weights_28_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_28.dat";
       AUTOTB_TVIN_weights_29_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_29.dat";
       AUTOTB_TVIN_weights_30_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_30.dat";
       AUTOTB_TVIN_weights_31_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_31.dat";
       AUTOTB_TVIN_weights_32_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_32.dat";
       AUTOTB_TVIN_weights_33_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_33.dat";
       AUTOTB_TVIN_weights_34_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_34.dat";
       AUTOTB_TVIN_weights_35_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_35.dat";
       AUTOTB_TVIN_weights_36_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_36.dat";
       AUTOTB_TVIN_weights_37_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_37.dat";
       AUTOTB_TVIN_weights_38_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_38.dat";
       AUTOTB_TVIN_weights_39_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_39.dat";
       AUTOTB_TVIN_weights_40_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_40.dat";
       AUTOTB_TVIN_weights_41_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_41.dat";
       AUTOTB_TVIN_weights_42_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_42.dat";
       AUTOTB_TVIN_weights_43_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_43.dat";
       AUTOTB_TVIN_weights_44_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_44.dat";
       AUTOTB_TVIN_weights_45_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_45.dat";
       AUTOTB_TVIN_weights_46_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_46.dat";
       AUTOTB_TVIN_weights_47_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_47.dat";
       AUTOTB_TVIN_weights_48_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_48.dat";
       AUTOTB_TVIN_weights_49_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_49.dat";
       AUTOTB_TVIN_weights_50_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_50.dat";
       AUTOTB_TVIN_weights_51_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_51.dat";
       AUTOTB_TVIN_weights_52_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_52.dat";
       AUTOTB_TVIN_weights_53_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_53.dat";
       AUTOTB_TVIN_weights_54_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_54.dat";
       AUTOTB_TVIN_weights_55_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_55.dat";
       AUTOTB_TVIN_weights_56_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_56.dat";
       AUTOTB_TVIN_weights_57_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_57.dat";
       AUTOTB_TVIN_weights_58_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_58.dat";
       AUTOTB_TVIN_weights_59_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_59.dat";
       AUTOTB_TVIN_weights_60_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_60.dat";
       AUTOTB_TVIN_weights_61_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_61.dat";
       AUTOTB_TVIN_weights_62_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_62.dat";
       AUTOTB_TVIN_weights_63_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_63.dat";
       AUTOTB_TVIN_weights_64_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_64.dat";
       AUTOTB_TVIN_weights_65_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_65.dat";
       AUTOTB_TVIN_weights_66_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_66.dat";
       AUTOTB_TVIN_weights_67_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_67.dat";
       AUTOTB_TVIN_weights_68_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_68.dat";
       AUTOTB_TVIN_weights_69_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_69.dat";
       AUTOTB_TVIN_weights_70_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_70.dat";
       AUTOTB_TVIN_weights_71_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_71.dat";
       AUTOTB_TVIN_weights_72_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_72.dat";
       AUTOTB_TVIN_weights_73_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_73.dat";
       AUTOTB_TVIN_weights_74_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_74.dat";
       AUTOTB_TVIN_weights_75_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_75.dat";
       AUTOTB_TVIN_weights_76_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_76.dat";
       AUTOTB_TVIN_weights_77_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_77.dat";
       AUTOTB_TVIN_weights_78_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_78.dat";
       AUTOTB_TVIN_weights_79_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_79.dat";
       AUTOTB_TVIN_weights_80_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_80.dat";
       AUTOTB_TVIN_weights_81_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_81.dat";
       AUTOTB_TVIN_weights_82_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_82.dat";
       AUTOTB_TVIN_weights_83_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_83.dat";
       AUTOTB_TVIN_weights_84_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_84.dat";
       AUTOTB_TVIN_weights_85_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_85.dat";
       AUTOTB_TVIN_weights_86_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_86.dat";
       AUTOTB_TVIN_weights_87_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_87.dat";
       AUTOTB_TVIN_weights_88_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_88.dat";
       AUTOTB_TVIN_weights_89_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_89.dat";
       AUTOTB_TVIN_weights_90_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_90.dat";
       AUTOTB_TVIN_weights_91_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_91.dat";
       AUTOTB_TVIN_weights_92_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_92.dat";
       AUTOTB_TVIN_weights_93_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_93.dat";
       AUTOTB_TVIN_weights_94_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_94.dat";
       AUTOTB_TVIN_weights_95_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_95.dat";
       AUTOTB_TVIN_weights_96_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_96.dat";
       AUTOTB_TVIN_weights_97_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_97.dat";
       AUTOTB_TVIN_weights_98_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_98.dat";
       AUTOTB_TVIN_weights_99_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_99.dat";
       AUTOTB_TVIN_weights_100_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_100.dat";
       AUTOTB_TVIN_weights_101_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_101.dat";
       AUTOTB_TVIN_weights_102_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_102.dat";
       AUTOTB_TVIN_weights_103_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_103.dat";
       AUTOTB_TVIN_weights_104_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_104.dat";
       AUTOTB_TVIN_weights_105_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_105.dat";
       AUTOTB_TVIN_weights_106_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_106.dat";
       AUTOTB_TVIN_weights_107_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_107.dat";
       AUTOTB_TVIN_weights_108_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_108.dat";
       AUTOTB_TVIN_weights_109_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_109.dat";
       AUTOTB_TVIN_weights_110_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_110.dat";
       AUTOTB_TVIN_weights_111_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_111.dat";
       AUTOTB_TVIN_weights_112_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_112.dat";
       AUTOTB_TVIN_weights_113_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_113.dat";
       AUTOTB_TVIN_weights_114_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_114.dat";
       AUTOTB_TVIN_weights_115_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_115.dat";
       AUTOTB_TVIN_weights_116_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_116.dat";
       AUTOTB_TVIN_weights_117_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_117.dat";
       AUTOTB_TVIN_weights_118_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_118.dat";
       AUTOTB_TVIN_weights_119_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_119.dat";
       AUTOTB_TVIN_weights_120_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_120.dat";
       AUTOTB_TVIN_weights_121_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_121.dat";
       AUTOTB_TVIN_weights_122_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_122.dat";
       AUTOTB_TVIN_weights_123_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_123.dat";
       AUTOTB_TVIN_weights_124_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_124.dat";
       AUTOTB_TVIN_weights_125_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_125.dat";
       AUTOTB_TVIN_weights_126_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_126.dat";
       AUTOTB_TVIN_weights_127_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_weights_127.dat";
       AUTOTB_TVIN_numOfOutputNeurons_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_numOfOutputNeurons.dat";
       AUTOTB_TVIN_activation_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvin_activation.dat";
       AUTOTB_TVOUT_output_0 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_0.dat";
       AUTOTB_TVOUT_output_1 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_1.dat";
       AUTOTB_TVOUT_output_2 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_2.dat";
       AUTOTB_TVOUT_output_3 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_3.dat";
       AUTOTB_TVOUT_output_4 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_4.dat";
       AUTOTB_TVOUT_output_5 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_5.dat";
       AUTOTB_TVOUT_output_6 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_6.dat";
       AUTOTB_TVOUT_output_7 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_7.dat";
       AUTOTB_TVOUT_output_8 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_8.dat";
       AUTOTB_TVOUT_output_9 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_9.dat";
       AUTOTB_TVOUT_output_10 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_10.dat";
       AUTOTB_TVOUT_output_11 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_11.dat";
       AUTOTB_TVOUT_output_12 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_12.dat";
       AUTOTB_TVOUT_output_13 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_13.dat";
       AUTOTB_TVOUT_output_14 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_14.dat";
       AUTOTB_TVOUT_output_15 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_15.dat";
       AUTOTB_TVOUT_output_16 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_16.dat";
       AUTOTB_TVOUT_output_17 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_17.dat";
       AUTOTB_TVOUT_output_18 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_18.dat";
       AUTOTB_TVOUT_output_19 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_19.dat";
       AUTOTB_TVOUT_output_20 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_20.dat";
       AUTOTB_TVOUT_output_21 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_21.dat";
       AUTOTB_TVOUT_output_22 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_22.dat";
       AUTOTB_TVOUT_output_23 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_23.dat";
       AUTOTB_TVOUT_output_24 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_24.dat";
       AUTOTB_TVOUT_output_25 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_25.dat";
       AUTOTB_TVOUT_output_26 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_26.dat";
       AUTOTB_TVOUT_output_27 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_27.dat";
       AUTOTB_TVOUT_output_28 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_28.dat";
       AUTOTB_TVOUT_output_29 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_29.dat";
       AUTOTB_TVOUT_output_30 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_30.dat";
       AUTOTB_TVOUT_output_31 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_31.dat";
       AUTOTB_TVOUT_output_32 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_32.dat";
       AUTOTB_TVOUT_output_33 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_33.dat";
       AUTOTB_TVOUT_output_34 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_34.dat";
       AUTOTB_TVOUT_output_35 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_35.dat";
       AUTOTB_TVOUT_output_36 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_36.dat";
       AUTOTB_TVOUT_output_37 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_37.dat";
       AUTOTB_TVOUT_output_38 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_38.dat";
       AUTOTB_TVOUT_output_39 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_39.dat";
       AUTOTB_TVOUT_output_40 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_40.dat";
       AUTOTB_TVOUT_output_41 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_41.dat";
       AUTOTB_TVOUT_output_42 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_42.dat";
       AUTOTB_TVOUT_output_43 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_43.dat";
       AUTOTB_TVOUT_output_44 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_44.dat";
       AUTOTB_TVOUT_output_45 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_45.dat";
       AUTOTB_TVOUT_output_46 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_46.dat";
       AUTOTB_TVOUT_output_47 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_47.dat";
       AUTOTB_TVOUT_output_48 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_48.dat";
       AUTOTB_TVOUT_output_49 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_49.dat";
       AUTOTB_TVOUT_output_50 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_50.dat";
       AUTOTB_TVOUT_output_51 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_51.dat";
       AUTOTB_TVOUT_output_52 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_52.dat";
       AUTOTB_TVOUT_output_53 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_53.dat";
       AUTOTB_TVOUT_output_54 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_54.dat";
       AUTOTB_TVOUT_output_55 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_55.dat";
       AUTOTB_TVOUT_output_56 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_56.dat";
       AUTOTB_TVOUT_output_57 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_57.dat";
       AUTOTB_TVOUT_output_58 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_58.dat";
       AUTOTB_TVOUT_output_59 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_59.dat";
       AUTOTB_TVOUT_output_60 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_60.dat";
       AUTOTB_TVOUT_output_61 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_61.dat";
       AUTOTB_TVOUT_output_62 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_62.dat";
       AUTOTB_TVOUT_output_63 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_63.dat";
       AUTOTB_TVOUT_output_64 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_64.dat";
       AUTOTB_TVOUT_output_65 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_65.dat";
       AUTOTB_TVOUT_output_66 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_66.dat";
       AUTOTB_TVOUT_output_67 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_67.dat";
       AUTOTB_TVOUT_output_68 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_68.dat";
       AUTOTB_TVOUT_output_69 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_69.dat";
       AUTOTB_TVOUT_output_70 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_70.dat";
       AUTOTB_TVOUT_output_71 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_71.dat";
       AUTOTB_TVOUT_output_72 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_72.dat";
       AUTOTB_TVOUT_output_73 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_73.dat";
       AUTOTB_TVOUT_output_74 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_74.dat";
       AUTOTB_TVOUT_output_75 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_75.dat";
       AUTOTB_TVOUT_output_76 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_76.dat";
       AUTOTB_TVOUT_output_77 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_77.dat";
       AUTOTB_TVOUT_output_78 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_78.dat";
       AUTOTB_TVOUT_output_79 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_79.dat";
       AUTOTB_TVOUT_output_80 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_80.dat";
       AUTOTB_TVOUT_output_81 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_81.dat";
       AUTOTB_TVOUT_output_82 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_82.dat";
       AUTOTB_TVOUT_output_83 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_83.dat";
       AUTOTB_TVOUT_output_84 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_84.dat";
       AUTOTB_TVOUT_output_85 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_85.dat";
       AUTOTB_TVOUT_output_86 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_86.dat";
       AUTOTB_TVOUT_output_87 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_87.dat";
       AUTOTB_TVOUT_output_88 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_88.dat";
       AUTOTB_TVOUT_output_89 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_89.dat";
       AUTOTB_TVOUT_output_90 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_90.dat";
       AUTOTB_TVOUT_output_91 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_91.dat";
       AUTOTB_TVOUT_output_92 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_92.dat";
       AUTOTB_TVOUT_output_93 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_93.dat";
       AUTOTB_TVOUT_output_94 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_94.dat";
       AUTOTB_TVOUT_output_95 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_95.dat";
       AUTOTB_TVOUT_output_96 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_96.dat";
       AUTOTB_TVOUT_output_97 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_97.dat";
       AUTOTB_TVOUT_output_98 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_98.dat";
       AUTOTB_TVOUT_output_99 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_99.dat";
       AUTOTB_TVOUT_output_100 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_100.dat";
       AUTOTB_TVOUT_output_101 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_101.dat";
       AUTOTB_TVOUT_output_102 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_102.dat";
       AUTOTB_TVOUT_output_103 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_103.dat";
       AUTOTB_TVOUT_output_104 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_104.dat";
       AUTOTB_TVOUT_output_105 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_105.dat";
       AUTOTB_TVOUT_output_106 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_106.dat";
       AUTOTB_TVOUT_output_107 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_107.dat";
       AUTOTB_TVOUT_output_108 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_108.dat";
       AUTOTB_TVOUT_output_109 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_109.dat";
       AUTOTB_TVOUT_output_110 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_110.dat";
       AUTOTB_TVOUT_output_111 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_111.dat";
       AUTOTB_TVOUT_output_112 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_112.dat";
       AUTOTB_TVOUT_output_113 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_113.dat";
       AUTOTB_TVOUT_output_114 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_114.dat";
       AUTOTB_TVOUT_output_115 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_115.dat";
       AUTOTB_TVOUT_output_116 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_116.dat";
       AUTOTB_TVOUT_output_117 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_117.dat";
       AUTOTB_TVOUT_output_118 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_118.dat";
       AUTOTB_TVOUT_output_119 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_119.dat";
       AUTOTB_TVOUT_output_120 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_120.dat";
       AUTOTB_TVOUT_output_121 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_121.dat";
       AUTOTB_TVOUT_output_122 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_122.dat";
       AUTOTB_TVOUT_output_123 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_123.dat";
       AUTOTB_TVOUT_output_124 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_124.dat";
       AUTOTB_TVOUT_output_125 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_125.dat";
       AUTOTB_TVOUT_output_126 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_126.dat";
       AUTOTB_TVOUT_output_127 : STRING := "../tv/cdatafile/c.nnlayer.autotvout_output_127.dat";
       AUTOTB_TVOUT_output_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_0.dat";
       AUTOTB_TVOUT_output_1_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_1.dat";
       AUTOTB_TVOUT_output_2_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_2.dat";
       AUTOTB_TVOUT_output_3_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_3.dat";
       AUTOTB_TVOUT_output_4_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_4.dat";
       AUTOTB_TVOUT_output_5_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_5.dat";
       AUTOTB_TVOUT_output_6_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_6.dat";
       AUTOTB_TVOUT_output_7_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_7.dat";
       AUTOTB_TVOUT_output_8_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_8.dat";
       AUTOTB_TVOUT_output_9_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_9.dat";
       AUTOTB_TVOUT_output_10_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_10.dat";
       AUTOTB_TVOUT_output_11_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_11.dat";
       AUTOTB_TVOUT_output_12_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_12.dat";
       AUTOTB_TVOUT_output_13_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_13.dat";
       AUTOTB_TVOUT_output_14_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_14.dat";
       AUTOTB_TVOUT_output_15_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_15.dat";
       AUTOTB_TVOUT_output_16_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_16.dat";
       AUTOTB_TVOUT_output_17_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_17.dat";
       AUTOTB_TVOUT_output_18_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_18.dat";
       AUTOTB_TVOUT_output_19_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_19.dat";
       AUTOTB_TVOUT_output_20_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_20.dat";
       AUTOTB_TVOUT_output_21_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_21.dat";
       AUTOTB_TVOUT_output_22_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_22.dat";
       AUTOTB_TVOUT_output_23_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_23.dat";
       AUTOTB_TVOUT_output_24_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_24.dat";
       AUTOTB_TVOUT_output_25_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_25.dat";
       AUTOTB_TVOUT_output_26_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_26.dat";
       AUTOTB_TVOUT_output_27_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_27.dat";
       AUTOTB_TVOUT_output_28_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_28.dat";
       AUTOTB_TVOUT_output_29_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_29.dat";
       AUTOTB_TVOUT_output_30_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_30.dat";
       AUTOTB_TVOUT_output_31_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_31.dat";
       AUTOTB_TVOUT_output_32_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_32.dat";
       AUTOTB_TVOUT_output_33_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_33.dat";
       AUTOTB_TVOUT_output_34_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_34.dat";
       AUTOTB_TVOUT_output_35_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_35.dat";
       AUTOTB_TVOUT_output_36_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_36.dat";
       AUTOTB_TVOUT_output_37_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_37.dat";
       AUTOTB_TVOUT_output_38_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_38.dat";
       AUTOTB_TVOUT_output_39_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_39.dat";
       AUTOTB_TVOUT_output_40_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_40.dat";
       AUTOTB_TVOUT_output_41_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_41.dat";
       AUTOTB_TVOUT_output_42_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_42.dat";
       AUTOTB_TVOUT_output_43_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_43.dat";
       AUTOTB_TVOUT_output_44_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_44.dat";
       AUTOTB_TVOUT_output_45_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_45.dat";
       AUTOTB_TVOUT_output_46_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_46.dat";
       AUTOTB_TVOUT_output_47_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_47.dat";
       AUTOTB_TVOUT_output_48_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_48.dat";
       AUTOTB_TVOUT_output_49_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_49.dat";
       AUTOTB_TVOUT_output_50_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_50.dat";
       AUTOTB_TVOUT_output_51_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_51.dat";
       AUTOTB_TVOUT_output_52_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_52.dat";
       AUTOTB_TVOUT_output_53_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_53.dat";
       AUTOTB_TVOUT_output_54_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_54.dat";
       AUTOTB_TVOUT_output_55_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_55.dat";
       AUTOTB_TVOUT_output_56_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_56.dat";
       AUTOTB_TVOUT_output_57_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_57.dat";
       AUTOTB_TVOUT_output_58_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_58.dat";
       AUTOTB_TVOUT_output_59_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_59.dat";
       AUTOTB_TVOUT_output_60_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_60.dat";
       AUTOTB_TVOUT_output_61_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_61.dat";
       AUTOTB_TVOUT_output_62_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_62.dat";
       AUTOTB_TVOUT_output_63_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_63.dat";
       AUTOTB_TVOUT_output_64_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_64.dat";
       AUTOTB_TVOUT_output_65_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_65.dat";
       AUTOTB_TVOUT_output_66_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_66.dat";
       AUTOTB_TVOUT_output_67_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_67.dat";
       AUTOTB_TVOUT_output_68_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_68.dat";
       AUTOTB_TVOUT_output_69_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_69.dat";
       AUTOTB_TVOUT_output_70_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_70.dat";
       AUTOTB_TVOUT_output_71_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_71.dat";
       AUTOTB_TVOUT_output_72_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_72.dat";
       AUTOTB_TVOUT_output_73_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_73.dat";
       AUTOTB_TVOUT_output_74_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_74.dat";
       AUTOTB_TVOUT_output_75_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_75.dat";
       AUTOTB_TVOUT_output_76_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_76.dat";
       AUTOTB_TVOUT_output_77_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_77.dat";
       AUTOTB_TVOUT_output_78_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_78.dat";
       AUTOTB_TVOUT_output_79_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_79.dat";
       AUTOTB_TVOUT_output_80_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_80.dat";
       AUTOTB_TVOUT_output_81_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_81.dat";
       AUTOTB_TVOUT_output_82_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_82.dat";
       AUTOTB_TVOUT_output_83_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_83.dat";
       AUTOTB_TVOUT_output_84_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_84.dat";
       AUTOTB_TVOUT_output_85_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_85.dat";
       AUTOTB_TVOUT_output_86_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_86.dat";
       AUTOTB_TVOUT_output_87_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_87.dat";
       AUTOTB_TVOUT_output_88_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_88.dat";
       AUTOTB_TVOUT_output_89_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_89.dat";
       AUTOTB_TVOUT_output_90_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_90.dat";
       AUTOTB_TVOUT_output_91_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_91.dat";
       AUTOTB_TVOUT_output_92_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_92.dat";
       AUTOTB_TVOUT_output_93_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_93.dat";
       AUTOTB_TVOUT_output_94_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_94.dat";
       AUTOTB_TVOUT_output_95_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_95.dat";
       AUTOTB_TVOUT_output_96_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_96.dat";
       AUTOTB_TVOUT_output_97_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_97.dat";
       AUTOTB_TVOUT_output_98_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_98.dat";
       AUTOTB_TVOUT_output_99_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_99.dat";
       AUTOTB_TVOUT_output_100_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_100.dat";
       AUTOTB_TVOUT_output_101_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_101.dat";
       AUTOTB_TVOUT_output_102_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_102.dat";
       AUTOTB_TVOUT_output_103_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_103.dat";
       AUTOTB_TVOUT_output_104_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_104.dat";
       AUTOTB_TVOUT_output_105_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_105.dat";
       AUTOTB_TVOUT_output_106_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_106.dat";
       AUTOTB_TVOUT_output_107_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_107.dat";
       AUTOTB_TVOUT_output_108_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_108.dat";
       AUTOTB_TVOUT_output_109_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_109.dat";
       AUTOTB_TVOUT_output_110_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_110.dat";
       AUTOTB_TVOUT_output_111_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_111.dat";
       AUTOTB_TVOUT_output_112_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_112.dat";
       AUTOTB_TVOUT_output_113_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_113.dat";
       AUTOTB_TVOUT_output_114_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_114.dat";
       AUTOTB_TVOUT_output_115_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_115.dat";
       AUTOTB_TVOUT_output_116_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_116.dat";
       AUTOTB_TVOUT_output_117_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_117.dat";
       AUTOTB_TVOUT_output_118_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_118.dat";
       AUTOTB_TVOUT_output_119_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_119.dat";
       AUTOTB_TVOUT_output_120_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_120.dat";
       AUTOTB_TVOUT_output_121_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_121.dat";
       AUTOTB_TVOUT_output_122_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_122.dat";
       AUTOTB_TVOUT_output_123_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_123.dat";
       AUTOTB_TVOUT_output_124_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_124.dat";
       AUTOTB_TVOUT_output_125_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_125.dat";
       AUTOTB_TVOUT_output_126_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_126.dat";
       AUTOTB_TVOUT_output_127_out_wrapc : STRING := "../tv/rtldatafile/rtl.nnlayer.autotvout_output_127.dat";
      AUTOTB_LAT_RESULT_FILE    : STRING  := "nnlayer.result.lat.rb";
      AUTOTB_PER_RESULT_TRANS_FILE    : STRING  := "nnlayer.performance.result.transaction.xml";
      LENGTH_input_0     : INTEGER := 1;
      LENGTH_input_1     : INTEGER := 1;
      LENGTH_input_2     : INTEGER := 1;
      LENGTH_input_3     : INTEGER := 1;
      LENGTH_input_4     : INTEGER := 1;
      LENGTH_input_5     : INTEGER := 1;
      LENGTH_input_6     : INTEGER := 1;
      LENGTH_input_7     : INTEGER := 1;
      LENGTH_input_8     : INTEGER := 1;
      LENGTH_input_9     : INTEGER := 1;
      LENGTH_input_10     : INTEGER := 1;
      LENGTH_input_11     : INTEGER := 1;
      LENGTH_input_12     : INTEGER := 1;
      LENGTH_input_13     : INTEGER := 1;
      LENGTH_input_14     : INTEGER := 1;
      LENGTH_input_15     : INTEGER := 1;
      LENGTH_input_16     : INTEGER := 1;
      LENGTH_input_17     : INTEGER := 1;
      LENGTH_input_18     : INTEGER := 1;
      LENGTH_input_19     : INTEGER := 1;
      LENGTH_input_20     : INTEGER := 1;
      LENGTH_input_21     : INTEGER := 1;
      LENGTH_input_22     : INTEGER := 1;
      LENGTH_input_23     : INTEGER := 1;
      LENGTH_input_24     : INTEGER := 1;
      LENGTH_input_25     : INTEGER := 1;
      LENGTH_input_26     : INTEGER := 1;
      LENGTH_input_27     : INTEGER := 1;
      LENGTH_input_28     : INTEGER := 1;
      LENGTH_input_29     : INTEGER := 1;
      LENGTH_input_30     : INTEGER := 1;
      LENGTH_input_31     : INTEGER := 1;
      LENGTH_input_32     : INTEGER := 1;
      LENGTH_input_33     : INTEGER := 1;
      LENGTH_input_34     : INTEGER := 1;
      LENGTH_input_35     : INTEGER := 1;
      LENGTH_input_36     : INTEGER := 1;
      LENGTH_input_37     : INTEGER := 1;
      LENGTH_input_38     : INTEGER := 1;
      LENGTH_input_39     : INTEGER := 1;
      LENGTH_input_40     : INTEGER := 1;
      LENGTH_input_41     : INTEGER := 1;
      LENGTH_input_42     : INTEGER := 1;
      LENGTH_input_43     : INTEGER := 1;
      LENGTH_input_44     : INTEGER := 1;
      LENGTH_input_45     : INTEGER := 1;
      LENGTH_input_46     : INTEGER := 1;
      LENGTH_input_47     : INTEGER := 1;
      LENGTH_input_48     : INTEGER := 1;
      LENGTH_input_49     : INTEGER := 1;
      LENGTH_input_50     : INTEGER := 1;
      LENGTH_input_51     : INTEGER := 1;
      LENGTH_input_52     : INTEGER := 1;
      LENGTH_input_53     : INTEGER := 1;
      LENGTH_input_54     : INTEGER := 1;
      LENGTH_input_55     : INTEGER := 1;
      LENGTH_input_56     : INTEGER := 1;
      LENGTH_input_57     : INTEGER := 1;
      LENGTH_input_58     : INTEGER := 1;
      LENGTH_input_59     : INTEGER := 1;
      LENGTH_input_60     : INTEGER := 1;
      LENGTH_input_61     : INTEGER := 1;
      LENGTH_input_62     : INTEGER := 1;
      LENGTH_input_63     : INTEGER := 1;
      LENGTH_input_64     : INTEGER := 1;
      LENGTH_input_65     : INTEGER := 1;
      LENGTH_input_66     : INTEGER := 1;
      LENGTH_input_67     : INTEGER := 1;
      LENGTH_input_68     : INTEGER := 1;
      LENGTH_input_69     : INTEGER := 1;
      LENGTH_input_70     : INTEGER := 1;
      LENGTH_input_71     : INTEGER := 1;
      LENGTH_input_72     : INTEGER := 1;
      LENGTH_input_73     : INTEGER := 1;
      LENGTH_input_74     : INTEGER := 1;
      LENGTH_input_75     : INTEGER := 1;
      LENGTH_input_76     : INTEGER := 1;
      LENGTH_input_77     : INTEGER := 1;
      LENGTH_input_78     : INTEGER := 1;
      LENGTH_input_79     : INTEGER := 1;
      LENGTH_input_80     : INTEGER := 1;
      LENGTH_input_81     : INTEGER := 1;
      LENGTH_input_82     : INTEGER := 1;
      LENGTH_input_83     : INTEGER := 1;
      LENGTH_input_84     : INTEGER := 1;
      LENGTH_input_85     : INTEGER := 1;
      LENGTH_input_86     : INTEGER := 1;
      LENGTH_input_87     : INTEGER := 1;
      LENGTH_input_88     : INTEGER := 1;
      LENGTH_input_89     : INTEGER := 1;
      LENGTH_input_90     : INTEGER := 1;
      LENGTH_input_91     : INTEGER := 1;
      LENGTH_input_92     : INTEGER := 1;
      LENGTH_input_93     : INTEGER := 1;
      LENGTH_input_94     : INTEGER := 1;
      LENGTH_input_95     : INTEGER := 1;
      LENGTH_input_96     : INTEGER := 1;
      LENGTH_input_97     : INTEGER := 1;
      LENGTH_input_98     : INTEGER := 1;
      LENGTH_input_99     : INTEGER := 1;
      LENGTH_input_100     : INTEGER := 1;
      LENGTH_input_101     : INTEGER := 1;
      LENGTH_input_102     : INTEGER := 1;
      LENGTH_input_103     : INTEGER := 1;
      LENGTH_input_104     : INTEGER := 1;
      LENGTH_input_105     : INTEGER := 1;
      LENGTH_input_106     : INTEGER := 1;
      LENGTH_input_107     : INTEGER := 1;
      LENGTH_input_108     : INTEGER := 1;
      LENGTH_input_109     : INTEGER := 1;
      LENGTH_input_110     : INTEGER := 1;
      LENGTH_input_111     : INTEGER := 1;
      LENGTH_input_112     : INTEGER := 1;
      LENGTH_input_113     : INTEGER := 1;
      LENGTH_input_114     : INTEGER := 1;
      LENGTH_input_115     : INTEGER := 1;
      LENGTH_input_116     : INTEGER := 1;
      LENGTH_input_117     : INTEGER := 1;
      LENGTH_input_118     : INTEGER := 1;
      LENGTH_input_119     : INTEGER := 1;
      LENGTH_input_120     : INTEGER := 1;
      LENGTH_input_121     : INTEGER := 1;
      LENGTH_input_122     : INTEGER := 1;
      LENGTH_input_123     : INTEGER := 1;
      LENGTH_input_124     : INTEGER := 1;
      LENGTH_input_125     : INTEGER := 1;
      LENGTH_input_126     : INTEGER := 1;
      LENGTH_input_127     : INTEGER := 1;
      LENGTH_output_0     : INTEGER := 1;
      LENGTH_output_1     : INTEGER := 1;
      LENGTH_output_2     : INTEGER := 1;
      LENGTH_output_3     : INTEGER := 1;
      LENGTH_output_4     : INTEGER := 1;
      LENGTH_output_5     : INTEGER := 1;
      LENGTH_output_6     : INTEGER := 1;
      LENGTH_output_7     : INTEGER := 1;
      LENGTH_output_8     : INTEGER := 1;
      LENGTH_output_9     : INTEGER := 1;
      LENGTH_output_10     : INTEGER := 1;
      LENGTH_output_11     : INTEGER := 1;
      LENGTH_output_12     : INTEGER := 1;
      LENGTH_output_13     : INTEGER := 1;
      LENGTH_output_14     : INTEGER := 1;
      LENGTH_output_15     : INTEGER := 1;
      LENGTH_output_16     : INTEGER := 1;
      LENGTH_output_17     : INTEGER := 1;
      LENGTH_output_18     : INTEGER := 1;
      LENGTH_output_19     : INTEGER := 1;
      LENGTH_output_20     : INTEGER := 1;
      LENGTH_output_21     : INTEGER := 1;
      LENGTH_output_22     : INTEGER := 1;
      LENGTH_output_23     : INTEGER := 1;
      LENGTH_output_24     : INTEGER := 1;
      LENGTH_output_25     : INTEGER := 1;
      LENGTH_output_26     : INTEGER := 1;
      LENGTH_output_27     : INTEGER := 1;
      LENGTH_output_28     : INTEGER := 1;
      LENGTH_output_29     : INTEGER := 1;
      LENGTH_output_30     : INTEGER := 1;
      LENGTH_output_31     : INTEGER := 1;
      LENGTH_output_32     : INTEGER := 1;
      LENGTH_output_33     : INTEGER := 1;
      LENGTH_output_34     : INTEGER := 1;
      LENGTH_output_35     : INTEGER := 1;
      LENGTH_output_36     : INTEGER := 1;
      LENGTH_output_37     : INTEGER := 1;
      LENGTH_output_38     : INTEGER := 1;
      LENGTH_output_39     : INTEGER := 1;
      LENGTH_output_40     : INTEGER := 1;
      LENGTH_output_41     : INTEGER := 1;
      LENGTH_output_42     : INTEGER := 1;
      LENGTH_output_43     : INTEGER := 1;
      LENGTH_output_44     : INTEGER := 1;
      LENGTH_output_45     : INTEGER := 1;
      LENGTH_output_46     : INTEGER := 1;
      LENGTH_output_47     : INTEGER := 1;
      LENGTH_output_48     : INTEGER := 1;
      LENGTH_output_49     : INTEGER := 1;
      LENGTH_output_50     : INTEGER := 1;
      LENGTH_output_51     : INTEGER := 1;
      LENGTH_output_52     : INTEGER := 1;
      LENGTH_output_53     : INTEGER := 1;
      LENGTH_output_54     : INTEGER := 1;
      LENGTH_output_55     : INTEGER := 1;
      LENGTH_output_56     : INTEGER := 1;
      LENGTH_output_57     : INTEGER := 1;
      LENGTH_output_58     : INTEGER := 1;
      LENGTH_output_59     : INTEGER := 1;
      LENGTH_output_60     : INTEGER := 1;
      LENGTH_output_61     : INTEGER := 1;
      LENGTH_output_62     : INTEGER := 1;
      LENGTH_output_63     : INTEGER := 1;
      LENGTH_output_64     : INTEGER := 1;
      LENGTH_output_65     : INTEGER := 1;
      LENGTH_output_66     : INTEGER := 1;
      LENGTH_output_67     : INTEGER := 1;
      LENGTH_output_68     : INTEGER := 1;
      LENGTH_output_69     : INTEGER := 1;
      LENGTH_output_70     : INTEGER := 1;
      LENGTH_output_71     : INTEGER := 1;
      LENGTH_output_72     : INTEGER := 1;
      LENGTH_output_73     : INTEGER := 1;
      LENGTH_output_74     : INTEGER := 1;
      LENGTH_output_75     : INTEGER := 1;
      LENGTH_output_76     : INTEGER := 1;
      LENGTH_output_77     : INTEGER := 1;
      LENGTH_output_78     : INTEGER := 1;
      LENGTH_output_79     : INTEGER := 1;
      LENGTH_output_80     : INTEGER := 1;
      LENGTH_output_81     : INTEGER := 1;
      LENGTH_output_82     : INTEGER := 1;
      LENGTH_output_83     : INTEGER := 1;
      LENGTH_output_84     : INTEGER := 1;
      LENGTH_output_85     : INTEGER := 1;
      LENGTH_output_86     : INTEGER := 1;
      LENGTH_output_87     : INTEGER := 1;
      LENGTH_output_88     : INTEGER := 1;
      LENGTH_output_89     : INTEGER := 1;
      LENGTH_output_90     : INTEGER := 1;
      LENGTH_output_91     : INTEGER := 1;
      LENGTH_output_92     : INTEGER := 1;
      LENGTH_output_93     : INTEGER := 1;
      LENGTH_output_94     : INTEGER := 1;
      LENGTH_output_95     : INTEGER := 1;
      LENGTH_output_96     : INTEGER := 1;
      LENGTH_output_97     : INTEGER := 1;
      LENGTH_output_98     : INTEGER := 1;
      LENGTH_output_99     : INTEGER := 1;
      LENGTH_output_100     : INTEGER := 1;
      LENGTH_output_101     : INTEGER := 1;
      LENGTH_output_102     : INTEGER := 1;
      LENGTH_output_103     : INTEGER := 1;
      LENGTH_output_104     : INTEGER := 1;
      LENGTH_output_105     : INTEGER := 1;
      LENGTH_output_106     : INTEGER := 1;
      LENGTH_output_107     : INTEGER := 1;
      LENGTH_output_108     : INTEGER := 1;
      LENGTH_output_109     : INTEGER := 1;
      LENGTH_output_110     : INTEGER := 1;
      LENGTH_output_111     : INTEGER := 1;
      LENGTH_output_112     : INTEGER := 1;
      LENGTH_output_113     : INTEGER := 1;
      LENGTH_output_114     : INTEGER := 1;
      LENGTH_output_115     : INTEGER := 1;
      LENGTH_output_116     : INTEGER := 1;
      LENGTH_output_117     : INTEGER := 1;
      LENGTH_output_118     : INTEGER := 1;
      LENGTH_output_119     : INTEGER := 1;
      LENGTH_output_120     : INTEGER := 1;
      LENGTH_output_121     : INTEGER := 1;
      LENGTH_output_122     : INTEGER := 1;
      LENGTH_output_123     : INTEGER := 1;
      LENGTH_output_124     : INTEGER := 1;
      LENGTH_output_125     : INTEGER := 1;
      LENGTH_output_126     : INTEGER := 1;
      LENGTH_output_127     : INTEGER := 1;
      LENGTH_bias     : INTEGER := 128;
      LENGTH_weights_0     : INTEGER := 128;
      LENGTH_weights_1     : INTEGER := 128;
      LENGTH_weights_2     : INTEGER := 128;
      LENGTH_weights_3     : INTEGER := 128;
      LENGTH_weights_4     : INTEGER := 128;
      LENGTH_weights_5     : INTEGER := 128;
      LENGTH_weights_6     : INTEGER := 128;
      LENGTH_weights_7     : INTEGER := 128;
      LENGTH_weights_8     : INTEGER := 128;
      LENGTH_weights_9     : INTEGER := 128;
      LENGTH_weights_10     : INTEGER := 128;
      LENGTH_weights_11     : INTEGER := 128;
      LENGTH_weights_12     : INTEGER := 128;
      LENGTH_weights_13     : INTEGER := 128;
      LENGTH_weights_14     : INTEGER := 128;
      LENGTH_weights_15     : INTEGER := 128;
      LENGTH_weights_16     : INTEGER := 128;
      LENGTH_weights_17     : INTEGER := 128;
      LENGTH_weights_18     : INTEGER := 128;
      LENGTH_weights_19     : INTEGER := 128;
      LENGTH_weights_20     : INTEGER := 128;
      LENGTH_weights_21     : INTEGER := 128;
      LENGTH_weights_22     : INTEGER := 128;
      LENGTH_weights_23     : INTEGER := 128;
      LENGTH_weights_24     : INTEGER := 128;
      LENGTH_weights_25     : INTEGER := 128;
      LENGTH_weights_26     : INTEGER := 128;
      LENGTH_weights_27     : INTEGER := 128;
      LENGTH_weights_28     : INTEGER := 128;
      LENGTH_weights_29     : INTEGER := 128;
      LENGTH_weights_30     : INTEGER := 128;
      LENGTH_weights_31     : INTEGER := 128;
      LENGTH_weights_32     : INTEGER := 128;
      LENGTH_weights_33     : INTEGER := 128;
      LENGTH_weights_34     : INTEGER := 128;
      LENGTH_weights_35     : INTEGER := 128;
      LENGTH_weights_36     : INTEGER := 128;
      LENGTH_weights_37     : INTEGER := 128;
      LENGTH_weights_38     : INTEGER := 128;
      LENGTH_weights_39     : INTEGER := 128;
      LENGTH_weights_40     : INTEGER := 128;
      LENGTH_weights_41     : INTEGER := 128;
      LENGTH_weights_42     : INTEGER := 128;
      LENGTH_weights_43     : INTEGER := 128;
      LENGTH_weights_44     : INTEGER := 128;
      LENGTH_weights_45     : INTEGER := 128;
      LENGTH_weights_46     : INTEGER := 128;
      LENGTH_weights_47     : INTEGER := 128;
      LENGTH_weights_48     : INTEGER := 128;
      LENGTH_weights_49     : INTEGER := 128;
      LENGTH_weights_50     : INTEGER := 128;
      LENGTH_weights_51     : INTEGER := 128;
      LENGTH_weights_52     : INTEGER := 128;
      LENGTH_weights_53     : INTEGER := 128;
      LENGTH_weights_54     : INTEGER := 128;
      LENGTH_weights_55     : INTEGER := 128;
      LENGTH_weights_56     : INTEGER := 128;
      LENGTH_weights_57     : INTEGER := 128;
      LENGTH_weights_58     : INTEGER := 128;
      LENGTH_weights_59     : INTEGER := 128;
      LENGTH_weights_60     : INTEGER := 128;
      LENGTH_weights_61     : INTEGER := 128;
      LENGTH_weights_62     : INTEGER := 128;
      LENGTH_weights_63     : INTEGER := 128;
      LENGTH_weights_64     : INTEGER := 128;
      LENGTH_weights_65     : INTEGER := 128;
      LENGTH_weights_66     : INTEGER := 128;
      LENGTH_weights_67     : INTEGER := 128;
      LENGTH_weights_68     : INTEGER := 128;
      LENGTH_weights_69     : INTEGER := 128;
      LENGTH_weights_70     : INTEGER := 128;
      LENGTH_weights_71     : INTEGER := 128;
      LENGTH_weights_72     : INTEGER := 128;
      LENGTH_weights_73     : INTEGER := 128;
      LENGTH_weights_74     : INTEGER := 128;
      LENGTH_weights_75     : INTEGER := 128;
      LENGTH_weights_76     : INTEGER := 128;
      LENGTH_weights_77     : INTEGER := 128;
      LENGTH_weights_78     : INTEGER := 128;
      LENGTH_weights_79     : INTEGER := 128;
      LENGTH_weights_80     : INTEGER := 128;
      LENGTH_weights_81     : INTEGER := 128;
      LENGTH_weights_82     : INTEGER := 128;
      LENGTH_weights_83     : INTEGER := 128;
      LENGTH_weights_84     : INTEGER := 128;
      LENGTH_weights_85     : INTEGER := 128;
      LENGTH_weights_86     : INTEGER := 128;
      LENGTH_weights_87     : INTEGER := 128;
      LENGTH_weights_88     : INTEGER := 128;
      LENGTH_weights_89     : INTEGER := 128;
      LENGTH_weights_90     : INTEGER := 128;
      LENGTH_weights_91     : INTEGER := 128;
      LENGTH_weights_92     : INTEGER := 128;
      LENGTH_weights_93     : INTEGER := 128;
      LENGTH_weights_94     : INTEGER := 128;
      LENGTH_weights_95     : INTEGER := 128;
      LENGTH_weights_96     : INTEGER := 128;
      LENGTH_weights_97     : INTEGER := 128;
      LENGTH_weights_98     : INTEGER := 128;
      LENGTH_weights_99     : INTEGER := 128;
      LENGTH_weights_100     : INTEGER := 128;
      LENGTH_weights_101     : INTEGER := 128;
      LENGTH_weights_102     : INTEGER := 128;
      LENGTH_weights_103     : INTEGER := 128;
      LENGTH_weights_104     : INTEGER := 128;
      LENGTH_weights_105     : INTEGER := 128;
      LENGTH_weights_106     : INTEGER := 128;
      LENGTH_weights_107     : INTEGER := 128;
      LENGTH_weights_108     : INTEGER := 128;
      LENGTH_weights_109     : INTEGER := 128;
      LENGTH_weights_110     : INTEGER := 128;
      LENGTH_weights_111     : INTEGER := 128;
      LENGTH_weights_112     : INTEGER := 128;
      LENGTH_weights_113     : INTEGER := 128;
      LENGTH_weights_114     : INTEGER := 128;
      LENGTH_weights_115     : INTEGER := 128;
      LENGTH_weights_116     : INTEGER := 128;
      LENGTH_weights_117     : INTEGER := 128;
      LENGTH_weights_118     : INTEGER := 128;
      LENGTH_weights_119     : INTEGER := 128;
      LENGTH_weights_120     : INTEGER := 128;
      LENGTH_weights_121     : INTEGER := 128;
      LENGTH_weights_122     : INTEGER := 128;
      LENGTH_weights_123     : INTEGER := 128;
      LENGTH_weights_124     : INTEGER := 128;
      LENGTH_weights_125     : INTEGER := 128;
      LENGTH_weights_126     : INTEGER := 128;
      LENGTH_weights_127     : INTEGER := 128;
      LENGTH_numOfOutputNeurons     : INTEGER := 1;
      LENGTH_activation     : INTEGER := 1;
	    AUTOTB_TRANSACTION_NUM    : INTEGER := 2
);

end apatb_nnlayer_top;

architecture behav of apatb_nnlayer_top is 
  signal AESL_clock	:   STD_LOGIC := '0';
  signal rst      :   STD_LOGIC;
  signal dut_rst  :   STD_LOGIC;
  signal start    :   STD_LOGIC := '0';
  signal ce       :   STD_LOGIC;
  signal continue :   STD_LOGIC := '0';
  signal AESL_reset :   STD_LOGIC := '0';
  signal AESL_start :   STD_LOGIC := '0';
  signal AESL_ce :   STD_LOGIC := '0';
  signal AESL_continue :   STD_LOGIC := '0';
  signal AESL_ready :   STD_LOGIC := '0';
  signal AESL_idle :   STD_LOGIC := '0';
  signal AESL_done :   STD_LOGIC := '0';
  signal AESL_done_delay :   STD_LOGIC := '0';
  signal AESL_done_delay2 :   STD_LOGIC := '0';
  signal AESL_ready_delay :   STD_LOGIC := '0';
  signal ready :   STD_LOGIC := '0';
  signal ready_wire :   STD_LOGIC := '0';

  signal control_AWADDR:  STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal control_AWVALID:  STD_LOGIC;
  signal control_AWREADY:  STD_LOGIC;
  signal control_WVALID:  STD_LOGIC;
  signal control_WREADY:  STD_LOGIC;
  signal control_WDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal control_WSTRB:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal control_ARADDR:  STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal control_ARVALID:  STD_LOGIC;
  signal control_ARREADY:  STD_LOGIC;
  signal control_RVALID:  STD_LOGIC;
  signal control_RREADY:  STD_LOGIC;
  signal control_RDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal control_RRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal control_BVALID:  STD_LOGIC;
  signal control_BREADY:  STD_LOGIC;
  signal control_BRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal control_INTERRUPT:  STD_LOGIC;
  signal ap_local_block :  STD_LOGIC;
  signal ap_clk :  STD_LOGIC;
  signal ap_rst_n :  STD_LOGIC;

  signal ready_cnt : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal done_cnt	: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal ready_initial  :	STD_LOGIC;
  signal ready_initial_n	:   STD_LOGIC;
  signal ready_last_n   :	STD_LOGIC;
  signal ready_delay_last_n	:   STD_LOGIC;
  signal done_delay_last_n	:   STD_LOGIC;
  signal interface_done :	STD_LOGIC := '0';
  -- Subtype for random state number, to prevent confusing it with true integers
  -- Top of range should be (2**31)-1 but this literal calculation causes overflow on 32-bit machines
  subtype T_RANDINT is integer range 1 to integer'high;

  type latency_record is array(0 to AUTOTB_TRANSACTION_NUM + 1) of INTEGER;
  shared variable AESL_mLatCnterIn : latency_record;
  shared variable AESL_mLatCnterOut : latency_record;
  shared variable AESL_mLatCnterIn_addr : INTEGER;
  shared variable AESL_mLatCnterOut_addr : INTEGER;
  shared variable AESL_mThrCnterIn : latency_record;
  shared variable AESL_mThrCnterIn_addr : INTEGER;
  signal AESL_clk_counter : INTEGER;
  signal AESL_start_p1 : STD_LOGIC := '0';
  signal AESL_ready_p1 : STD_LOGIC := '0';
  signal lat_total : INTEGER;
  signal reported_stuck : STD_LOGIC   := '0';
  shared variable reported_stuck_cnt : INTEGER := 0;
component nnlayer is
port (
    ap_local_block :  OUT STD_LOGIC;
    ap_clk :  IN STD_LOGIC;
    ap_rst_n :  IN STD_LOGIC;
    s_axi_control_AWVALID :  IN STD_LOGIC;
    s_axi_control_AWREADY :  OUT STD_LOGIC;
    s_axi_control_AWADDR :  IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    s_axi_control_WVALID :  IN STD_LOGIC;
    s_axi_control_WREADY :  OUT STD_LOGIC;
    s_axi_control_WDATA :  IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    s_axi_control_WSTRB :  IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    s_axi_control_ARVALID :  IN STD_LOGIC;
    s_axi_control_ARREADY :  OUT STD_LOGIC;
    s_axi_control_ARADDR :  IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    s_axi_control_RVALID :  OUT STD_LOGIC;
    s_axi_control_RREADY :  IN STD_LOGIC;
    s_axi_control_RDATA :  OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    s_axi_control_RRESP :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    s_axi_control_BVALID :  OUT STD_LOGIC;
    s_axi_control_BREADY :  IN STD_LOGIC;
    s_axi_control_BRESP :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    interrupt :  OUT STD_LOGIC);
end component;

-- The signal of port input_0
shared variable AESL_REG_input_0 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_1
shared variable AESL_REG_input_1 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_2
shared variable AESL_REG_input_2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_3
shared variable AESL_REG_input_3 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_4
shared variable AESL_REG_input_4 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_5
shared variable AESL_REG_input_5 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_6
shared variable AESL_REG_input_6 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_7
shared variable AESL_REG_input_7 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_8
shared variable AESL_REG_input_8 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_9
shared variable AESL_REG_input_9 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_10
shared variable AESL_REG_input_10 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_11
shared variable AESL_REG_input_11 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_12
shared variable AESL_REG_input_12 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_13
shared variable AESL_REG_input_13 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_14
shared variable AESL_REG_input_14 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_15
shared variable AESL_REG_input_15 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_16
shared variable AESL_REG_input_16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_17
shared variable AESL_REG_input_17 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_18
shared variable AESL_REG_input_18 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_19
shared variable AESL_REG_input_19 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_20
shared variable AESL_REG_input_20 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_21
shared variable AESL_REG_input_21 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_22
shared variable AESL_REG_input_22 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_23
shared variable AESL_REG_input_23 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_24
shared variable AESL_REG_input_24 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_25
shared variable AESL_REG_input_25 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_26
shared variable AESL_REG_input_26 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_27
shared variable AESL_REG_input_27 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_28
shared variable AESL_REG_input_28 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_29
shared variable AESL_REG_input_29 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_30
shared variable AESL_REG_input_30 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_31
shared variable AESL_REG_input_31 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_32
shared variable AESL_REG_input_32 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_33
shared variable AESL_REG_input_33 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_34
shared variable AESL_REG_input_34 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_35
shared variable AESL_REG_input_35 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_36
shared variable AESL_REG_input_36 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_37
shared variable AESL_REG_input_37 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_38
shared variable AESL_REG_input_38 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_39
shared variable AESL_REG_input_39 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_40
shared variable AESL_REG_input_40 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_41
shared variable AESL_REG_input_41 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_42
shared variable AESL_REG_input_42 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_43
shared variable AESL_REG_input_43 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_44
shared variable AESL_REG_input_44 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_45
shared variable AESL_REG_input_45 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_46
shared variable AESL_REG_input_46 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_47
shared variable AESL_REG_input_47 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_48
shared variable AESL_REG_input_48 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_49
shared variable AESL_REG_input_49 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_50
shared variable AESL_REG_input_50 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_51
shared variable AESL_REG_input_51 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_52
shared variable AESL_REG_input_52 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_53
shared variable AESL_REG_input_53 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_54
shared variable AESL_REG_input_54 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_55
shared variable AESL_REG_input_55 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_56
shared variable AESL_REG_input_56 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_57
shared variable AESL_REG_input_57 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_58
shared variable AESL_REG_input_58 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_59
shared variable AESL_REG_input_59 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_60
shared variable AESL_REG_input_60 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_61
shared variable AESL_REG_input_61 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_62
shared variable AESL_REG_input_62 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_63
shared variable AESL_REG_input_63 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_64
shared variable AESL_REG_input_64 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_65
shared variable AESL_REG_input_65 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_66
shared variable AESL_REG_input_66 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_67
shared variable AESL_REG_input_67 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_68
shared variable AESL_REG_input_68 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_69
shared variable AESL_REG_input_69 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_70
shared variable AESL_REG_input_70 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_71
shared variable AESL_REG_input_71 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_72
shared variable AESL_REG_input_72 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_73
shared variable AESL_REG_input_73 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_74
shared variable AESL_REG_input_74 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_75
shared variable AESL_REG_input_75 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_76
shared variable AESL_REG_input_76 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_77
shared variable AESL_REG_input_77 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_78
shared variable AESL_REG_input_78 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_79
shared variable AESL_REG_input_79 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_80
shared variable AESL_REG_input_80 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_81
shared variable AESL_REG_input_81 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_82
shared variable AESL_REG_input_82 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_83
shared variable AESL_REG_input_83 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_84
shared variable AESL_REG_input_84 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_85
shared variable AESL_REG_input_85 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_86
shared variable AESL_REG_input_86 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_87
shared variable AESL_REG_input_87 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_88
shared variable AESL_REG_input_88 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_89
shared variable AESL_REG_input_89 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_90
shared variable AESL_REG_input_90 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_91
shared variable AESL_REG_input_91 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_92
shared variable AESL_REG_input_92 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_93
shared variable AESL_REG_input_93 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_94
shared variable AESL_REG_input_94 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_95
shared variable AESL_REG_input_95 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_96
shared variable AESL_REG_input_96 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_97
shared variable AESL_REG_input_97 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_98
shared variable AESL_REG_input_98 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_99
shared variable AESL_REG_input_99 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_100
shared variable AESL_REG_input_100 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_101
shared variable AESL_REG_input_101 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_102
shared variable AESL_REG_input_102 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_103
shared variable AESL_REG_input_103 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_104
shared variable AESL_REG_input_104 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_105
shared variable AESL_REG_input_105 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_106
shared variable AESL_REG_input_106 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_107
shared variable AESL_REG_input_107 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_108
shared variable AESL_REG_input_108 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_109
shared variable AESL_REG_input_109 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_110
shared variable AESL_REG_input_110 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_111
shared variable AESL_REG_input_111 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_112
shared variable AESL_REG_input_112 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_113
shared variable AESL_REG_input_113 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_114
shared variable AESL_REG_input_114 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_115
shared variable AESL_REG_input_115 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_116
shared variable AESL_REG_input_116 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_117
shared variable AESL_REG_input_117 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_118
shared variable AESL_REG_input_118 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_119
shared variable AESL_REG_input_119 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_120
shared variable AESL_REG_input_120 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_121
shared variable AESL_REG_input_121 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_122
shared variable AESL_REG_input_122 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_123
shared variable AESL_REG_input_123 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_124
shared variable AESL_REG_input_124 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_125
shared variable AESL_REG_input_125 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_126
shared variable AESL_REG_input_126 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port input_127
shared variable AESL_REG_input_127 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_0
shared variable AESL_REG_output_0 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_1
shared variable AESL_REG_output_1 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_2
shared variable AESL_REG_output_2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_3
shared variable AESL_REG_output_3 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_4
shared variable AESL_REG_output_4 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_5
shared variable AESL_REG_output_5 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_6
shared variable AESL_REG_output_6 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_7
shared variable AESL_REG_output_7 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_8
shared variable AESL_REG_output_8 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_9
shared variable AESL_REG_output_9 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_10
shared variable AESL_REG_output_10 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_11
shared variable AESL_REG_output_11 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_12
shared variable AESL_REG_output_12 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_13
shared variable AESL_REG_output_13 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_14
shared variable AESL_REG_output_14 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_15
shared variable AESL_REG_output_15 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_16
shared variable AESL_REG_output_16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_17
shared variable AESL_REG_output_17 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_18
shared variable AESL_REG_output_18 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_19
shared variable AESL_REG_output_19 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_20
shared variable AESL_REG_output_20 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_21
shared variable AESL_REG_output_21 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_22
shared variable AESL_REG_output_22 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_23
shared variable AESL_REG_output_23 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_24
shared variable AESL_REG_output_24 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_25
shared variable AESL_REG_output_25 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_26
shared variable AESL_REG_output_26 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_27
shared variable AESL_REG_output_27 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_28
shared variable AESL_REG_output_28 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_29
shared variable AESL_REG_output_29 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_30
shared variable AESL_REG_output_30 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_31
shared variable AESL_REG_output_31 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_32
shared variable AESL_REG_output_32 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_33
shared variable AESL_REG_output_33 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_34
shared variable AESL_REG_output_34 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_35
shared variable AESL_REG_output_35 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_36
shared variable AESL_REG_output_36 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_37
shared variable AESL_REG_output_37 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_38
shared variable AESL_REG_output_38 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_39
shared variable AESL_REG_output_39 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_40
shared variable AESL_REG_output_40 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_41
shared variable AESL_REG_output_41 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_42
shared variable AESL_REG_output_42 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_43
shared variable AESL_REG_output_43 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_44
shared variable AESL_REG_output_44 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_45
shared variable AESL_REG_output_45 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_46
shared variable AESL_REG_output_46 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_47
shared variable AESL_REG_output_47 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_48
shared variable AESL_REG_output_48 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_49
shared variable AESL_REG_output_49 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_50
shared variable AESL_REG_output_50 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_51
shared variable AESL_REG_output_51 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_52
shared variable AESL_REG_output_52 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_53
shared variable AESL_REG_output_53 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_54
shared variable AESL_REG_output_54 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_55
shared variable AESL_REG_output_55 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_56
shared variable AESL_REG_output_56 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_57
shared variable AESL_REG_output_57 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_58
shared variable AESL_REG_output_58 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_59
shared variable AESL_REG_output_59 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_60
shared variable AESL_REG_output_60 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_61
shared variable AESL_REG_output_61 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_62
shared variable AESL_REG_output_62 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_63
shared variable AESL_REG_output_63 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_64
shared variable AESL_REG_output_64 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_65
shared variable AESL_REG_output_65 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_66
shared variable AESL_REG_output_66 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_67
shared variable AESL_REG_output_67 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_68
shared variable AESL_REG_output_68 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_69
shared variable AESL_REG_output_69 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_70
shared variable AESL_REG_output_70 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_71
shared variable AESL_REG_output_71 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_72
shared variable AESL_REG_output_72 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_73
shared variable AESL_REG_output_73 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_74
shared variable AESL_REG_output_74 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_75
shared variable AESL_REG_output_75 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_76
shared variable AESL_REG_output_76 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_77
shared variable AESL_REG_output_77 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_78
shared variable AESL_REG_output_78 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_79
shared variable AESL_REG_output_79 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_80
shared variable AESL_REG_output_80 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_81
shared variable AESL_REG_output_81 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_82
shared variable AESL_REG_output_82 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_83
shared variable AESL_REG_output_83 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_84
shared variable AESL_REG_output_84 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_85
shared variable AESL_REG_output_85 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_86
shared variable AESL_REG_output_86 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_87
shared variable AESL_REG_output_87 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_88
shared variable AESL_REG_output_88 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_89
shared variable AESL_REG_output_89 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_90
shared variable AESL_REG_output_90 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_91
shared variable AESL_REG_output_91 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_92
shared variable AESL_REG_output_92 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_93
shared variable AESL_REG_output_93 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_94
shared variable AESL_REG_output_94 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_95
shared variable AESL_REG_output_95 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_96
shared variable AESL_REG_output_96 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_97
shared variable AESL_REG_output_97 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_98
shared variable AESL_REG_output_98 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_99
shared variable AESL_REG_output_99 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_100
shared variable AESL_REG_output_100 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_101
shared variable AESL_REG_output_101 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_102
shared variable AESL_REG_output_102 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_103
shared variable AESL_REG_output_103 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_104
shared variable AESL_REG_output_104 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_105
shared variable AESL_REG_output_105 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_106
shared variable AESL_REG_output_106 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_107
shared variable AESL_REG_output_107 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_108
shared variable AESL_REG_output_108 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_109
shared variable AESL_REG_output_109 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_110
shared variable AESL_REG_output_110 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_111
shared variable AESL_REG_output_111 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_112
shared variable AESL_REG_output_112 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_113
shared variable AESL_REG_output_113 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_114
shared variable AESL_REG_output_114 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_115
shared variable AESL_REG_output_115 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_116
shared variable AESL_REG_output_116 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_117
shared variable AESL_REG_output_117 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_118
shared variable AESL_REG_output_118 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_119
shared variable AESL_REG_output_119 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_120
shared variable AESL_REG_output_120 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_121
shared variable AESL_REG_output_121 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_122
shared variable AESL_REG_output_122 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_123
shared variable AESL_REG_output_123 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_124
shared variable AESL_REG_output_124 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_125
shared variable AESL_REG_output_125 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_126
shared variable AESL_REG_output_126 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port output_127
shared variable AESL_REG_output_127 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port bias
shared variable AESL_REG_bias : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_0
shared variable AESL_REG_weights_0 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_1
shared variable AESL_REG_weights_1 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_2
shared variable AESL_REG_weights_2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_3
shared variable AESL_REG_weights_3 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_4
shared variable AESL_REG_weights_4 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_5
shared variable AESL_REG_weights_5 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_6
shared variable AESL_REG_weights_6 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_7
shared variable AESL_REG_weights_7 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_8
shared variable AESL_REG_weights_8 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_9
shared variable AESL_REG_weights_9 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_10
shared variable AESL_REG_weights_10 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_11
shared variable AESL_REG_weights_11 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_12
shared variable AESL_REG_weights_12 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_13
shared variable AESL_REG_weights_13 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_14
shared variable AESL_REG_weights_14 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_15
shared variable AESL_REG_weights_15 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_16
shared variable AESL_REG_weights_16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_17
shared variable AESL_REG_weights_17 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_18
shared variable AESL_REG_weights_18 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_19
shared variable AESL_REG_weights_19 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_20
shared variable AESL_REG_weights_20 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_21
shared variable AESL_REG_weights_21 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_22
shared variable AESL_REG_weights_22 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_23
shared variable AESL_REG_weights_23 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_24
shared variable AESL_REG_weights_24 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_25
shared variable AESL_REG_weights_25 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_26
shared variable AESL_REG_weights_26 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_27
shared variable AESL_REG_weights_27 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_28
shared variable AESL_REG_weights_28 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_29
shared variable AESL_REG_weights_29 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_30
shared variable AESL_REG_weights_30 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_31
shared variable AESL_REG_weights_31 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_32
shared variable AESL_REG_weights_32 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_33
shared variable AESL_REG_weights_33 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_34
shared variable AESL_REG_weights_34 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_35
shared variable AESL_REG_weights_35 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_36
shared variable AESL_REG_weights_36 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_37
shared variable AESL_REG_weights_37 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_38
shared variable AESL_REG_weights_38 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_39
shared variable AESL_REG_weights_39 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_40
shared variable AESL_REG_weights_40 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_41
shared variable AESL_REG_weights_41 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_42
shared variable AESL_REG_weights_42 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_43
shared variable AESL_REG_weights_43 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_44
shared variable AESL_REG_weights_44 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_45
shared variable AESL_REG_weights_45 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_46
shared variable AESL_REG_weights_46 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_47
shared variable AESL_REG_weights_47 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_48
shared variable AESL_REG_weights_48 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_49
shared variable AESL_REG_weights_49 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_50
shared variable AESL_REG_weights_50 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_51
shared variable AESL_REG_weights_51 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_52
shared variable AESL_REG_weights_52 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_53
shared variable AESL_REG_weights_53 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_54
shared variable AESL_REG_weights_54 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_55
shared variable AESL_REG_weights_55 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_56
shared variable AESL_REG_weights_56 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_57
shared variable AESL_REG_weights_57 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_58
shared variable AESL_REG_weights_58 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_59
shared variable AESL_REG_weights_59 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_60
shared variable AESL_REG_weights_60 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_61
shared variable AESL_REG_weights_61 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_62
shared variable AESL_REG_weights_62 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_63
shared variable AESL_REG_weights_63 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_64
shared variable AESL_REG_weights_64 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_65
shared variable AESL_REG_weights_65 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_66
shared variable AESL_REG_weights_66 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_67
shared variable AESL_REG_weights_67 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_68
shared variable AESL_REG_weights_68 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_69
shared variable AESL_REG_weights_69 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_70
shared variable AESL_REG_weights_70 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_71
shared variable AESL_REG_weights_71 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_72
shared variable AESL_REG_weights_72 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_73
shared variable AESL_REG_weights_73 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_74
shared variable AESL_REG_weights_74 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_75
shared variable AESL_REG_weights_75 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_76
shared variable AESL_REG_weights_76 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_77
shared variable AESL_REG_weights_77 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_78
shared variable AESL_REG_weights_78 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_79
shared variable AESL_REG_weights_79 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_80
shared variable AESL_REG_weights_80 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_81
shared variable AESL_REG_weights_81 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_82
shared variable AESL_REG_weights_82 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_83
shared variable AESL_REG_weights_83 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_84
shared variable AESL_REG_weights_84 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_85
shared variable AESL_REG_weights_85 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_86
shared variable AESL_REG_weights_86 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_87
shared variable AESL_REG_weights_87 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_88
shared variable AESL_REG_weights_88 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_89
shared variable AESL_REG_weights_89 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_90
shared variable AESL_REG_weights_90 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_91
shared variable AESL_REG_weights_91 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_92
shared variable AESL_REG_weights_92 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_93
shared variable AESL_REG_weights_93 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_94
shared variable AESL_REG_weights_94 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_95
shared variable AESL_REG_weights_95 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_96
shared variable AESL_REG_weights_96 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_97
shared variable AESL_REG_weights_97 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_98
shared variable AESL_REG_weights_98 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_99
shared variable AESL_REG_weights_99 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_100
shared variable AESL_REG_weights_100 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_101
shared variable AESL_REG_weights_101 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_102
shared variable AESL_REG_weights_102 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_103
shared variable AESL_REG_weights_103 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_104
shared variable AESL_REG_weights_104 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_105
shared variable AESL_REG_weights_105 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_106
shared variable AESL_REG_weights_106 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_107
shared variable AESL_REG_weights_107 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_108
shared variable AESL_REG_weights_108 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_109
shared variable AESL_REG_weights_109 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_110
shared variable AESL_REG_weights_110 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_111
shared variable AESL_REG_weights_111 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_112
shared variable AESL_REG_weights_112 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_113
shared variable AESL_REG_weights_113 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_114
shared variable AESL_REG_weights_114 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_115
shared variable AESL_REG_weights_115 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_116
shared variable AESL_REG_weights_116 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_117
shared variable AESL_REG_weights_117 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_118
shared variable AESL_REG_weights_118 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_119
shared variable AESL_REG_weights_119 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_120
shared variable AESL_REG_weights_120 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_121
shared variable AESL_REG_weights_121 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_122
shared variable AESL_REG_weights_122 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_123
shared variable AESL_REG_weights_123 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_124
shared variable AESL_REG_weights_124 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_125
shared variable AESL_REG_weights_125 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_126
shared variable AESL_REG_weights_126 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port weights_127
shared variable AESL_REG_weights_127 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port numOfOutputNeurons
shared variable AESL_REG_numOfOutputNeurons : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
-- The signal of port activation
shared variable AESL_REG_activation : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
-- The signal of port ap_local_deadlock
shared variable AESL_REG_ap_local_deadlock : STD_LOGIC_VECTOR(0 downto 0) := (others => '0');
    signal AESL_slave_output_done : STD_LOGIC;
    signal AESL_slave_start : STD_LOGIC;
    signal AESL_slave_start_lock : STD_LOGIC := '0';
    signal AESL_slave_write_start_in : STD_LOGIC;
    signal AESL_slave_write_start_finish : STD_LOGIC;
    signal AESL_slave_ready : STD_LOGIC;
    signal AESL_slave_done : STD_LOGIC;
    signal slave_start_status : STD_LOGIC := '0';
    signal start_rise : STD_LOGIC := '0';
    signal ready_rise : STD_LOGIC := '0';
    signal slave_done_status : STD_LOGIC := '0';
    signal ap_done_lock : STD_LOGIC := '0';
    signal control_read_data_finish : STD_LOGIC;
    signal control_write_data_finish : STD_LOGIC;
component AESL_AXI_SLAVE_control is
  port(
    clk   :   IN STD_LOGIC;
    reset :   IN STD_LOGIC;
    TRAN_s_axi_control_AWADDR : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_control_AWVALID : OUT STD_LOGIC;
    TRAN_s_axi_control_AWREADY : IN STD_LOGIC;
    TRAN_s_axi_control_WVALID : OUT STD_LOGIC;
    TRAN_s_axi_control_WREADY : IN STD_LOGIC;
    TRAN_s_axi_control_WDATA : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_control_WSTRB : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_control_ARADDR : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_control_ARVALID : OUT STD_LOGIC;
    TRAN_s_axi_control_ARREADY : IN STD_LOGIC;
    TRAN_s_axi_control_RVALID : IN STD_LOGIC;
    TRAN_s_axi_control_RREADY : OUT STD_LOGIC;
    TRAN_s_axi_control_RDATA : IN STD_LOGIC_VECTOR;
    TRAN_s_axi_control_RRESP : IN STD_LOGIC_VECTOR;
    TRAN_s_axi_control_BVALID : IN STD_LOGIC;
    TRAN_s_axi_control_BREADY : OUT STD_LOGIC;
    TRAN_s_axi_control_BRESP : IN STD_LOGIC_VECTOR;
    TRAN_control_interrupt   : IN STD_LOGIC;
    TRAN_control_read_data_finish : OUT STD_LOGIC;
    TRAN_control_write_data_finish : OUT STD_LOGIC;
    TRAN_control_ready_out : OUT STD_LOGIC;
    TRAN_control_ready_in  : IN STD_LOGIC;
    TRAN_control_done_out  : OUT STD_LOGIC;
    TRAN_control_idle_out  : OUT STD_LOGIC;
    TRAN_control_write_start_in     : IN  STD_LOGIC;
    TRAN_control_write_start_finish : OUT STD_LOGIC;
    TRAN_control_transaction_done_in    : IN STD_LOGIC;
    TRAN_control_start_in    : IN STD_LOGIC
);
end component;

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

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable	ret	:   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable	idx	:   integer := 3;
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
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
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
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
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
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
     	                when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
     	                when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

    function esl_str_dec2int (RHS : STRING) return INTEGER is
        variable	ret	:   integer;
        variable	idx	:   integer := 1;
    begin
        ret := 0;
        while true loop
            case RHS(idx)  is
                when '0'    =>  ret := ret * 10 + 0;
                when '1'    =>  ret := ret * 10 + 1;
                when '2'    =>  ret := ret * 10 + 2;
                when '3'    =>  ret := ret * 10 + 3;
                when '4'    =>  ret := ret * 10 + 4;
                when '5'    =>  ret := ret * 10 + 5;
                when '6'    =>  ret := ret * 10 + 6;
                when '7'    =>  ret := ret * 10 + 7;
                when '8'    =>  ret := ret * 10 + 8;
                when '9'    =>  ret := ret * 10 + 9;
                when ' '    =>  return ret;
                when others    =>  report "Wrong dec char " & RHS(idx);	return ret;
            end case;
            idx := idx + 1;
        end loop;
        return ret;
    end esl_str_dec2int;
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

  -- purpose: initialise the random state variable based on an integer seed
  function init_rand(seed : integer) return T_RANDINT is
    variable result : T_RANDINT;
  begin
    -- If the seed is smaller than the minimum value of the random state variable, use the minimum value
    if seed < T_RANDINT'low then
      result := T_RANDINT'low;
      -- If the seed is larger than the maximum value of the random state variable, use the maximum value
    elsif seed > T_RANDINT'high then
      result := T_RANDINT'high;
      -- If the seed is within the range of the random state variable, just use the seed
    else
      result := seed;
    end if;
    -- Return the result
    return result;
  end init_rand;


  -- purpose: generate a random integer between min and max limits
  procedure rand_int(variable rand   : inout T_RANDINT;
                     constant minval : in    integer;
                     constant maxval : in    integer;
                     variable result : out   integer
                     ) is

    variable k, q      : integer;
    variable real_rand : real;
    variable res       : integer;

  begin
    -- Create a new random integer in the range 1 to 2**31-1 and put it back into rand VARIABLE
    -- Based on an example from Numerical Recipes in C, 2nd Edition, page 279
    k   := rand/127773;
    q   := 16807*(rand-k*127773)-2836*k;
    if q < 0 then
      q := q + 2147483647;
    end if;
    rand := init_rand(q);

    -- Convert this integer to a real number in the range 0 to 1
    real_rand := (real(rand - T_RANDINT'low)) / real(T_RANDINT'high - T_RANDINT'low);
    -- Convert this real number to an integer in the range minval to maxval
    -- The +1 and -0.5 are to get equal probability of minval and maxval as other values
    res    := integer((real_rand * real(maxval+1-minval)) - 0.5) + minval;
    -- VHDL real to integer conversion doesn't define what happens for x.5 so deal with this
    if res < minval then
      res  := minval;
    elsif res > maxval then
      res  := maxval;
    end if;
    -- assign output
    result := res;

  end rand_int;

begin
AESL_inst_nnlayer    :   nnlayer port map (
   s_axi_control_AWADDR  =>  control_AWADDR,
   s_axi_control_AWVALID  =>  control_AWVALID,
   s_axi_control_AWREADY  =>  control_AWREADY,
   s_axi_control_WVALID  =>  control_WVALID,
   s_axi_control_WREADY  =>  control_WREADY,
   s_axi_control_WDATA  =>  control_WDATA,
   s_axi_control_WSTRB  =>  control_WSTRB,
   s_axi_control_ARADDR  =>  control_ARADDR,
   s_axi_control_ARVALID  =>  control_ARVALID,
   s_axi_control_ARREADY  =>  control_ARREADY,
   s_axi_control_RVALID  =>  control_RVALID,
   s_axi_control_RREADY  =>  control_RREADY,
   s_axi_control_RDATA  =>  control_RDATA,
   s_axi_control_RRESP  =>  control_RRESP,
   s_axi_control_BVALID  =>  control_BVALID,
   s_axi_control_BREADY  =>  control_BREADY,
   s_axi_control_BRESP  =>  control_BRESP,
   interrupt  =>  control_INTERRUPT,
   ap_local_block  =>  ap_local_block,
   ap_clk  =>  ap_clk,
   ap_rst_n  =>  ap_rst_n
);

-- Assignment for control signal
  ap_clk <= AESL_clock;
  ap_rst_n <= dut_rst;
  AESL_reset <= rst;
  AESL_start <= start;
  AESL_ce <= ce;
  AESL_continue <= continue;
  AESL_slave_write_start_in <= slave_start_status  and control_write_data_finish;
  AESL_slave_start <= AESL_slave_write_start_finish;
  AESL_done <= slave_done_status  and control_read_data_finish;

slave_start_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        slave_start_status <= '1';
    else
        if (AESL_start = '1' ) then
            start_rise <= '1';
        end if;
        if (start_rise = '1' and AESL_done = '1' ) then
            slave_start_status <= '1';
        end if;
        if (AESL_slave_write_start_in = '1' and AESL_done = '0') then 
            slave_start_status <= '0';
            start_rise <= '0';
        end if;
    end if;
  end if;
end process;

slave_ready_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_slave_ready <= '0';
        ready_rise <= '0';
    else
        if (AESL_ready = '1' ) then
            ready_rise <= '1';
        end if;
        if (ready_rise = '1' and AESL_done_delay = '1' ) then
            AESL_slave_ready <= '1';
        end if;
        if (AESL_slave_ready = '1') then 
            AESL_slave_ready <= '0';
            ready_rise <= '0';
        end if;
    end if;
  end if;
end process;

slave_done_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if (AESL_done = '1') then
        slave_done_status <= '0';
    elsif (AESL_slave_output_done = '1' ) then
        slave_done_status <= '1';
    end if;
  end if;
end process;
AESL_axi_slave_inst_control : AESL_AXI_SLAVE_control port map (
    clk   =>  AESL_clock,
    reset =>  AESL_reset,
    TRAN_s_axi_control_AWADDR => control_AWADDR,
    TRAN_s_axi_control_AWVALID => control_AWVALID,
    TRAN_s_axi_control_AWREADY => control_AWREADY,
    TRAN_s_axi_control_WVALID => control_WVALID,
    TRAN_s_axi_control_WREADY => control_WREADY,
    TRAN_s_axi_control_WDATA => control_WDATA,
    TRAN_s_axi_control_WSTRB => control_WSTRB,
    TRAN_s_axi_control_ARADDR => control_ARADDR,
    TRAN_s_axi_control_ARVALID => control_ARVALID,
    TRAN_s_axi_control_ARREADY => control_ARREADY,
    TRAN_s_axi_control_RVALID => control_RVALID,
    TRAN_s_axi_control_RREADY => control_RREADY,
    TRAN_s_axi_control_RDATA => control_RDATA,
    TRAN_s_axi_control_RRESP => control_RRESP,
    TRAN_s_axi_control_BVALID => control_BVALID,
    TRAN_s_axi_control_BREADY => control_BREADY,
    TRAN_s_axi_control_BRESP => control_BRESP,
    TRAN_control_interrupt => control_INTERRUPT,
    TRAN_control_read_data_finish => control_read_data_finish,
    TRAN_control_write_data_finish => control_write_data_finish,
    TRAN_control_ready_out => AESL_ready,
    TRAN_control_ready_in => AESL_slave_ready,
    TRAN_control_done_out => AESL_slave_output_done,
    TRAN_control_idle_out => AESL_idle,
    TRAN_control_write_start_in     => AESL_slave_write_start_in,
    TRAN_control_write_start_finish => AESL_slave_write_start_finish,
    TRAN_control_transaction_done_in => AESL_done_delay,
    TRAN_control_start_in  => AESL_slave_start
);

generate_ready_cnt_proc : process(ready_initial, AESL_clock)
begin
    if(AESL_clock'event and AESL_clock = '0') then
        if(ready_initial = '1') then
            ready_cnt <= conv_std_logic_vector(1, 32);
        end if;
    elsif(AESL_clock'event and AESL_clock = '1') then
        if(ready_cnt /= AUTOTB_TRANSACTION_NUM) then
            if(AESL_ready = '1') then
                ready_cnt <= ready_cnt + 1;
            end if;
        end if;
    end if;
end process;

generate_done_cnt_proc : process(AESL_reset, AESL_clock)
begin
    if(AESL_reset = '0') then
        done_cnt <= (others => '0');
    elsif(AESL_clock'event and AESL_clock = '1') then
        if(done_cnt /= AUTOTB_TRANSACTION_NUM) then
            if(AESL_done = '1') then
                done_cnt <= done_cnt + 1;
            end if;
        end if;
    end if;
end process;

generate_sim_done_proc    :   process
begin
    while(done_cnt /= AUTOTB_TRANSACTION_NUM) loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
    assert false report "simulation done!" severity note;
    assert false report "NORMAL EXIT (note: failure is to force the simulator to stop)" severity failure;
    wait;
end process;

gen_clock_proc :   process
begin
    AESL_clock <= '0';
    while(true) loop
        wait for AUTOTB_CLOCK_PERIOD_DIV2;
        AESL_clock <= not AESL_clock;
    end loop;
    wait;
end process;

gen_reset_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
    rst <= '0';
    wait for 100 ns;
    for i in 1 to (3+3) loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    rst <= '1';
    wait;
end process;

gen_dut_reset_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
    dut_rst <= '0';
    wait for 100 ns;
    for i in 1 to 3 loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    dut_rst <= '1';
    wait;
end process;

gen_start_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
  start <= '0';
  ce <= '1';
    wait until AESL_reset = '1';
  wait until (AESL_clock'event and AESL_clock = '1');
  start <= '1';
  while(ready_cnt /= AUTOTB_TRANSACTION_NUM) loop
      wait until (AESL_clock'event and AESL_clock = '1');
      if(AESL_ready = '1') then
          start <= '0';
          start <= '1';
      end if;
  end loop;
  while (start = '1') loop
      if(AESL_ready = '1') then
          start <= '0';
      end if;
      wait until (AESL_clock'event and AESL_clock = '1');
  end loop;
  wait;
end process;


gen_continue_proc : process(AESL_done)
begin
    continue <= AESL_done;
end process;

gen_AESL_ready_delay_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_ready_delay <= '0';
      else
          AESL_ready_delay <= AESL_ready;
      end if;
  end if;
end process;

gen_ready_initial_proc : process
begin
    ready_initial <= '0';
    wait until AESL_start = '1';
    ready_initial <= '1';
    wait until AESL_clock'event and AESL_clock = '1';
    ready_initial <= '0';
    wait;
end process;

ready_last_n_proc : process
begin
  ready_last_n <= '1';
  while(ready_cnt /= AUTOTB_TRANSACTION_NUM) loop
    wait until AESL_clock'event and AESL_clock = '1';
  end loop;
  ready_last_n <= '0';
  wait;
end process;

gen_ready_delay_n_last_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          ready_delay_last_n <= '0';
      else
          ready_delay_last_n <= ready_last_n;
      end if;
  end if;
end process;

ready <= (ready_initial or AESL_ready_delay);
ready_wire <= ready_initial or AESL_ready_delay;
done_delay_last_n <= '0' when done_cnt = AUTOTB_TRANSACTION_NUM else '1';

gen_done_delay_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_done_delay <= '0';
          AESL_done_delay2 <= '0';
      else
          AESL_done_delay <= AESL_done and done_delay_last_n;
          AESL_done_delay2 <= AESL_done_delay;
      end if;
  end if;
end process;

gen_interface_done : process(done_cnt, AESL_ready_delay, AESL_done_delay)
begin
    if(done_cnt < AUTOTB_TRANSACTION_NUM) then
        interface_done <= AESL_ready_delay;
    else
        interface_done <= AESL_done_delay;
    end if;
end process;
-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_0_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_0_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_0_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_0_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_0_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_1_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_1_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_1_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_1_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_1_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_2_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_2_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_2_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_2_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_2_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_3_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_3_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_3_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_3_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_3_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_4_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_4_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_4_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_4_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_4_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_5_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_5_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_5_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_5_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_5_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_6_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_6_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_6_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_6_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_6_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_7_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_7_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_7_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_7_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_7_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_8_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_8_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_8_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_8_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_8_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_9_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_9_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_9_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_9_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_9_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_10_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_10_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_10_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_10_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_10_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_11_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_11_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_11_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_11_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_11_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_12_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_12_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_12_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_12_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_12_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_13_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_13_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_13_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_13_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_13_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_14_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_14_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_14_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_14_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_14_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_15_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_15_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_15_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_15_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_15_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_16_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_16_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_16_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_16_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_16_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_17_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_17_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_17_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_17_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_17_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_18_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_18_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_18_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_18_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_18_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_19_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_19_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_19_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_19_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_19_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_20_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_20_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_20_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_20_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_20_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_21_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_21_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_21_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_21_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_21_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_22_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_22_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_22_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_22_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_22_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_23_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_23_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_23_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_23_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_23_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_24_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_24_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_24_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_24_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_24_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_25_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_25_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_25_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_25_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_25_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_26_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_26_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_26_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_26_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_26_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_27_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_27_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_27_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_27_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_27_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_28_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_28_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_28_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_28_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_28_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_29_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_29_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_29_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_29_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_29_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_30_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_30_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_30_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_30_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_30_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_31_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_31_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_31_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_31_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_31_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_32_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_32_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_32_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_32_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_32_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_33_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_33_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_33_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_33_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_33_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_34_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_34_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_34_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_34_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_34_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_35_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_35_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_35_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_35_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_35_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_36_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_36_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_36_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_36_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_36_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_37_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_37_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_37_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_37_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_37_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_38_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_38_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_38_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_38_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_38_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_39_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_39_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_39_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_39_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_39_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_40_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_40_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_40_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_40_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_40_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_41_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_41_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_41_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_41_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_41_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_42_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_42_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_42_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_42_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_42_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_43_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_43_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_43_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_43_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_43_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_44_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_44_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_44_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_44_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_44_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_45_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_45_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_45_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_45_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_45_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_46_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_46_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_46_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_46_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_46_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_47_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_47_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_47_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_47_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_47_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_48_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_48_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_48_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_48_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_48_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_49_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_49_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_49_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_49_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_49_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_50_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_50_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_50_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_50_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_50_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_51_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_51_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_51_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_51_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_51_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_52_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_52_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_52_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_52_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_52_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_53_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_53_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_53_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_53_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_53_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_54_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_54_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_54_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_54_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_54_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_55_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_55_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_55_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_55_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_55_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_56_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_56_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_56_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_56_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_56_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_57_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_57_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_57_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_57_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_57_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_58_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_58_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_58_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_58_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_58_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_59_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_59_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_59_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_59_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_59_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_60_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_60_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_60_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_60_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_60_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_61_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_61_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_61_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_61_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_61_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_62_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_62_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_62_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_62_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_62_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_63_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_63_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_63_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_63_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_63_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_64_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_64_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_64_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_64_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_64_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_65_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_65_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_65_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_65_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_65_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_66_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_66_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_66_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_66_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_66_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_67_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_67_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_67_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_67_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_67_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_68_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_68_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_68_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_68_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_68_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_69_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_69_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_69_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_69_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_69_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_70_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_70_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_70_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_70_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_70_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_71_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_71_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_71_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_71_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_71_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_72_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_72_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_72_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_72_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_72_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_73_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_73_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_73_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_73_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_73_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_74_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_74_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_74_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_74_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_74_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_75_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_75_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_75_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_75_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_75_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_76_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_76_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_76_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_76_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_76_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_77_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_77_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_77_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_77_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_77_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_78_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_78_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_78_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_78_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_78_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_79_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_79_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_79_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_79_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_79_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_80_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_80_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_80_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_80_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_80_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_81_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_81_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_81_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_81_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_81_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_82_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_82_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_82_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_82_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_82_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_83_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_83_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_83_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_83_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_83_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_84_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_84_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_84_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_84_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_84_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_85_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_85_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_85_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_85_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_85_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_86_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_86_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_86_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_86_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_86_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_87_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_87_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_87_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_87_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_87_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_88_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_88_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_88_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_88_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_88_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_89_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_89_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_89_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_89_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_89_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_90_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_90_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_90_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_90_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_90_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_91_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_91_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_91_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_91_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_91_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_92_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_92_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_92_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_92_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_92_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_93_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_93_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_93_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_93_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_93_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_94_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_94_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_94_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_94_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_94_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_95_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_95_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_95_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_95_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_95_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_96_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_96_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_96_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_96_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_96_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_97_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_97_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_97_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_97_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_97_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_98_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_98_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_98_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_98_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_98_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_99_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_99_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_99_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_99_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_99_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_100_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_100_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_100_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_100_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_100_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_101_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_101_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_101_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_101_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_101_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_102_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_102_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_102_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_102_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_102_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_103_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_103_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_103_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_103_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_103_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_104_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_104_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_104_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_104_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_104_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_105_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_105_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_105_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_105_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_105_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_106_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_106_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_106_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_106_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_106_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_107_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_107_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_107_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_107_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_107_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_108_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_108_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_108_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_108_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_108_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_109_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_109_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_109_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_109_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_109_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_110_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_110_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_110_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_110_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_110_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_111_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_111_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_111_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_111_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_111_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_112_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_112_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_112_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_112_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_112_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_113_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_113_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_113_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_113_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_113_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_114_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_114_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_114_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_114_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_114_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_115_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_115_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_115_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_115_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_115_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_116_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_116_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_116_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_116_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_116_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_117_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_117_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_117_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_117_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_117_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_118_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_118_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_118_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_118_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_118_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_119_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_119_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_119_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_119_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_119_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_120_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_120_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_120_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_120_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_120_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_121_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_121_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_121_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_121_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_121_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_122_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_122_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_122_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_122_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_122_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_123_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_123_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_123_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_123_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_123_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_124_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_124_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_124_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_124_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_124_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_125_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_125_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_125_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_125_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_125_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_126_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_126_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_126_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_126_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_126_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_output_127_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_output_127_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_127_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_output_127_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_output_127_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

gen_clock_counter_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_clk_counter <= 0;
        AESL_start_p1 <= '0';
        AESL_ready_p1 <= '0';
    else
        AESL_clk_counter <= AESL_clk_counter + 1;
        AESL_start_p1 <= AESL_start;
        AESL_ready_p1 <= AESL_ready;
    end if;
  end if;
end process;

gen_mLatcnterout_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_mLatCnterOut_addr := 0;
          AESL_mLatCnterOut(AESL_mLatCnterOut_addr) := AESL_clk_counter + 1 ;
          reported_stuck_cnt := 0;
      else
          if (AESL_done = '1' and AESL_mLatCnterOut_addr < AUTOTB_TRANSACTION_NUM + 1) then
              AESL_mLatCnterOut(AESL_mLatCnterOut_addr) := AESL_clk_counter;
              AESL_mLatCnterOut_addr := AESL_mLatCnterOut_addr + 1;
              reported_stuck <= '0';
          end if;
      end if;
  end if;
end process;

gen_mLatcnterin_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_mLatCnterIn_addr := 0;
      else
        if (AESL_mLatCnterIn_addr < AUTOTB_TRANSACTION_NUM) then
          if (AESL_start = '1' and AESL_start_p1 = '0') then
            AESL_mLatCnterIn(AESL_mLatCnterIn_addr) := AESL_clk_counter;
            AESL_mLatCnterIn_addr := AESL_mLatCnterIn_addr + 1;
          elsif (AESL_start = '1' and AESL_ready_p1 = '1') then
            AESL_mLatCnterIn(AESL_mLatCnterIn_addr) := AESL_clk_counter;
            AESL_mLatCnterIn_addr := AESL_mLatCnterIn_addr + 1;
          end if;
        end if;
      end if;
  end if;
end process;

gen_mThrCnterrIn_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_mThrCnterIn_addr := 0;
    else
      if (AESL_mThrCnterIn_addr < AUTOTB_TRANSACTION_NUM) then
        if (AESL_start_p1 = '1' and AESL_ready_p1 = '1') then
          AESL_mThrCnterIn(AESL_mThrCnterIn_addr) := AESL_clk_counter;
          AESL_mThrCnterIn_addr := AESL_mThrCnterIn_addr + 1;
        end if;
      end if;
    end if;
  end if;
end process;

gen_performance_check_proc : process
    variable transaction_counter : INTEGER;
    variable i : INTEGER;
    file     fp :   TEXT;
    variable    fstatus         :   FILE_OPEN_STATUS;
    variable    token_line      :   LINE;
    variable    token           :   STRING(1 to 1024);

    variable latthistime : INTEGER;
    variable lattotal : INTEGER;
    variable latmax : INTEGER;
    variable latmin : INTEGER;


    variable thrthistime : INTEGER;
    variable thrtotal : INTEGER;
    variable thrmax : INTEGER;
    variable thrmin : INTEGER;

    variable lataver : INTEGER;
    variable thraver : INTEGER;
    variable total_execute_time : INTEGER;
    type latency_record is array(0 to AUTOTB_TRANSACTION_NUM + 1) of INTEGER;
    variable lat_array : latency_record;
    variable thr_array : latency_record;

begin
    i := 0;
    lattotal  := 0;
    latmax    := 0;
    latmin    := 16#7fffffff#;
    lataver   := 0;

    thrtotal  := 0;
    thrmax    := 0;
    thrmin    := 16#7fffffff#;
    thraver   := 0;

    wait until (AESL_clock'event and AESL_clock = '1');
    wait until (AESL_reset = '1'); 
    while (done_cnt /= AUTOTB_TRANSACTION_NUM) loop
        wait until (AESL_clock'event and AESL_clock = '1');
    end loop;
  wait for 0.001 ns;

    for i in 0 to AUTOTB_TRANSACTION_NUM - 1 loop
        latthistime := AESL_mLatCnterOut(i) - AESL_mLatCnterIn(i);
        lat_array(i) := latthistime;
        if (latthistime > latmax) then
            latmax := latthistime; 
        end if;
        if (latthistime < latmin) then
            latmin := latthistime;
        end if;
		lattotal := lattotal + latthistime;
	end loop;
	lataver := lattotal / AUTOTB_TRANSACTION_NUM;
  if (AUTOTB_TRANSACTION_NUM = 1) then
	  thrthistime := 0;
    thrmin := 0;
    thrmax := 0;
    thrtotal := 0;
    thraver := 0;
	else
    for i in 0 to AUTOTB_TRANSACTION_NUM - 2 loop
      thrthistime := AESL_mLatCnterIn(i + 1) - AESL_mLatCnterIn(i);
      thr_array(i) := thrthistime;
		if (thrthistime > thrmax) then
		    thrmax := thrthistime;
      end if;
		if (thrthistime < thrmin) then
	        thrmin := thrthistime;
      end if;
		thrtotal := thrtotal + thrthistime;
	  end loop;
	  thraver := thrtotal / (AUTOTB_TRANSACTION_NUM - 1);
	end if;
  total_execute_time := lat_total;


    file_open(fstatus, fp, AUTOTB_LAT_RESULT_FILE, WRITE_MODE);
    if (fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_LAT_RESULT_FILE & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    else
        write(token_line, "$MAX_LATENCY = " & '"' & integer'image(latmax) & '"');
        writeline(fp, token_line);
        write(token_line, "$MIN_LATENCY = " & '"' & integer'image(latmin) & '"');
        writeline(fp, token_line);
        write(token_line, "$AVER_LATENCY = " & '"' & integer'image(lataver) & '"');
        writeline(fp, token_line);
        write(token_line, "$MAX_THROUGHPUT = " & '"' & integer'image(thrmax) & '"');
        writeline(fp, token_line);
        write(token_line, "$MIN_THROUGHPUT = " & '"' & integer'image(thrmin) & '"');
        writeline(fp, token_line);
        write(token_line, "$AVER_THROUGHPUT = " & '"' & integer'image(thraver) & '"');
        writeline(fp, token_line);
        write(token_line, "$TOTAL_EXECUTE_TIME = " & '"' & integer'image(total_execute_time) & '"');
        writeline(fp, token_line);
    end if;

    file_close(fp);

    file_open(fstatus, fp, AUTOTB_PER_RESULT_TRANS_FILE, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_PER_RESULT_TRANS_FILE & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;

    write(token_line,string'("                            latency            interval"));
    writeline(fp, token_line);
    if (AUTOTB_TRANSACTION_NUM = 1) then
        i := 0;
        thr_array(i) := 0;
        write(token_line,"transaction        " & integer'image(i) & "            " & integer'image(lat_array(i) ) & "            " & integer'image(thr_array(i) ) );
        writeline(fp, token_line);
    else
        for i in 0 to AUTOTB_TRANSACTION_NUM - 1 loop
            write(token_line,"transaction        " & integer'image(i) & "            " & integer'image(lat_array(i) ) & "            " & integer'image(thr_array(i) ) );
            writeline(fp, token_line);
        end loop;
    end if;
    file_close(fp);
    wait;
end process;

calc_lat_total : process(AESL_clock)
begin
    if (AESL_clock'event and AESL_clock = '1') then
        if (done_cnt = AUTOTB_TRANSACTION_NUM - 1 and AESL_done = '1') then
            lat_total <= AESL_clk_counter - AESL_mLatCnterIn(0);
        end if;
    end if;
end process;
end behav;
