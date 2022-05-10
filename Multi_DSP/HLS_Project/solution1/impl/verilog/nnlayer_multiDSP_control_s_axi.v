// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module nnlayer_multiDSP_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 16,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [15:0]                   input_0,
    output wire [15:0]                   input_1,
    output wire [15:0]                   input_2,
    output wire [15:0]                   input_3,
    output wire [15:0]                   input_4,
    output wire [15:0]                   input_5,
    output wire [15:0]                   input_6,
    output wire [15:0]                   input_7,
    output wire [15:0]                   input_8,
    output wire [15:0]                   input_9,
    output wire [15:0]                   input_10,
    output wire [15:0]                   input_11,
    output wire [15:0]                   input_12,
    output wire [15:0]                   input_13,
    output wire [15:0]                   input_14,
    output wire [15:0]                   input_15,
    output wire [15:0]                   input_16,
    output wire [15:0]                   input_17,
    output wire [15:0]                   input_18,
    output wire [15:0]                   input_19,
    output wire [15:0]                   input_20,
    output wire [15:0]                   input_21,
    output wire [15:0]                   input_22,
    output wire [15:0]                   input_23,
    output wire [15:0]                   input_24,
    output wire [15:0]                   input_25,
    output wire [15:0]                   input_26,
    output wire [15:0]                   input_27,
    output wire [15:0]                   input_28,
    output wire [15:0]                   input_29,
    output wire [15:0]                   input_30,
    output wire [15:0]                   input_31,
    output wire [15:0]                   input_32,
    output wire [15:0]                   input_33,
    output wire [15:0]                   input_34,
    output wire [15:0]                   input_35,
    output wire [15:0]                   input_36,
    output wire [15:0]                   input_37,
    output wire [15:0]                   input_38,
    output wire [15:0]                   input_39,
    output wire [15:0]                   input_40,
    output wire [15:0]                   input_41,
    output wire [15:0]                   input_42,
    output wire [15:0]                   input_43,
    output wire [15:0]                   input_44,
    output wire [15:0]                   input_45,
    output wire [15:0]                   input_46,
    output wire [15:0]                   input_47,
    output wire [15:0]                   input_48,
    output wire [15:0]                   input_49,
    output wire [15:0]                   input_50,
    output wire [15:0]                   input_51,
    output wire [15:0]                   input_52,
    output wire [15:0]                   input_53,
    output wire [15:0]                   input_54,
    output wire [15:0]                   input_55,
    output wire [15:0]                   input_56,
    output wire [15:0]                   input_57,
    output wire [15:0]                   input_58,
    output wire [15:0]                   input_59,
    output wire [15:0]                   input_60,
    output wire [15:0]                   input_61,
    output wire [15:0]                   input_62,
    output wire [15:0]                   input_63,
    output wire [15:0]                   input_64,
    output wire [15:0]                   input_65,
    output wire [15:0]                   input_66,
    output wire [15:0]                   input_67,
    output wire [15:0]                   input_68,
    output wire [15:0]                   input_69,
    output wire [15:0]                   input_70,
    output wire [15:0]                   input_71,
    output wire [15:0]                   input_72,
    output wire [15:0]                   input_73,
    output wire [15:0]                   input_74,
    output wire [15:0]                   input_75,
    output wire [15:0]                   input_76,
    output wire [15:0]                   input_77,
    output wire [15:0]                   input_78,
    output wire [15:0]                   input_79,
    output wire [15:0]                   input_80,
    output wire [15:0]                   input_81,
    output wire [15:0]                   input_82,
    output wire [15:0]                   input_83,
    output wire [15:0]                   input_84,
    output wire [15:0]                   input_85,
    output wire [15:0]                   input_86,
    output wire [15:0]                   input_87,
    output wire [15:0]                   input_88,
    output wire [15:0]                   input_89,
    output wire [15:0]                   input_90,
    output wire [15:0]                   input_91,
    output wire [15:0]                   input_92,
    output wire [15:0]                   input_93,
    output wire [15:0]                   input_94,
    output wire [15:0]                   input_95,
    output wire [15:0]                   input_96,
    output wire [15:0]                   input_97,
    output wire [15:0]                   input_98,
    output wire [15:0]                   input_99,
    output wire [15:0]                   input_100,
    output wire [15:0]                   input_101,
    output wire [15:0]                   input_102,
    output wire [15:0]                   input_103,
    output wire [15:0]                   input_104,
    output wire [15:0]                   input_105,
    output wire [15:0]                   input_106,
    output wire [15:0]                   input_107,
    output wire [15:0]                   input_108,
    output wire [15:0]                   input_109,
    output wire [15:0]                   input_110,
    output wire [15:0]                   input_111,
    output wire [15:0]                   input_112,
    output wire [15:0]                   input_113,
    output wire [15:0]                   input_114,
    output wire [15:0]                   input_115,
    output wire [15:0]                   input_116,
    output wire [15:0]                   input_117,
    output wire [15:0]                   input_118,
    output wire [15:0]                   input_119,
    output wire [15:0]                   input_120,
    output wire [15:0]                   input_121,
    output wire [15:0]                   input_122,
    output wire [15:0]                   input_123,
    output wire [15:0]                   input_124,
    output wire [15:0]                   input_125,
    output wire [15:0]                   input_126,
    output wire [15:0]                   input_127,
    input  wire [15:0]                   output_0,
    input  wire                          output_0_ap_vld,
    input  wire [15:0]                   output_1,
    input  wire                          output_1_ap_vld,
    input  wire [15:0]                   output_2,
    input  wire                          output_2_ap_vld,
    input  wire [15:0]                   output_3,
    input  wire                          output_3_ap_vld,
    input  wire [15:0]                   output_4,
    input  wire                          output_4_ap_vld,
    input  wire [15:0]                   output_5,
    input  wire                          output_5_ap_vld,
    input  wire [15:0]                   output_6,
    input  wire                          output_6_ap_vld,
    input  wire [15:0]                   output_7,
    input  wire                          output_7_ap_vld,
    input  wire [15:0]                   output_8,
    input  wire                          output_8_ap_vld,
    input  wire [15:0]                   output_9,
    input  wire                          output_9_ap_vld,
    input  wire [15:0]                   output_10,
    input  wire                          output_10_ap_vld,
    input  wire [15:0]                   output_11,
    input  wire                          output_11_ap_vld,
    input  wire [15:0]                   output_12,
    input  wire                          output_12_ap_vld,
    input  wire [15:0]                   output_13,
    input  wire                          output_13_ap_vld,
    input  wire [15:0]                   output_14,
    input  wire                          output_14_ap_vld,
    input  wire [15:0]                   output_15,
    input  wire                          output_15_ap_vld,
    input  wire [15:0]                   output_16,
    input  wire                          output_16_ap_vld,
    input  wire [15:0]                   output_17,
    input  wire                          output_17_ap_vld,
    input  wire [15:0]                   output_18,
    input  wire                          output_18_ap_vld,
    input  wire [15:0]                   output_19,
    input  wire                          output_19_ap_vld,
    input  wire [15:0]                   output_20,
    input  wire                          output_20_ap_vld,
    input  wire [15:0]                   output_21,
    input  wire                          output_21_ap_vld,
    input  wire [15:0]                   output_22,
    input  wire                          output_22_ap_vld,
    input  wire [15:0]                   output_23,
    input  wire                          output_23_ap_vld,
    input  wire [15:0]                   output_24,
    input  wire                          output_24_ap_vld,
    input  wire [15:0]                   output_25,
    input  wire                          output_25_ap_vld,
    input  wire [15:0]                   output_26,
    input  wire                          output_26_ap_vld,
    input  wire [15:0]                   output_27,
    input  wire                          output_27_ap_vld,
    input  wire [15:0]                   output_28,
    input  wire                          output_28_ap_vld,
    input  wire [15:0]                   output_29,
    input  wire                          output_29_ap_vld,
    input  wire [15:0]                   output_30,
    input  wire                          output_30_ap_vld,
    input  wire [15:0]                   output_31,
    input  wire                          output_31_ap_vld,
    input  wire [15:0]                   output_32,
    input  wire                          output_32_ap_vld,
    input  wire [15:0]                   output_33,
    input  wire                          output_33_ap_vld,
    input  wire [15:0]                   output_34,
    input  wire                          output_34_ap_vld,
    input  wire [15:0]                   output_35,
    input  wire                          output_35_ap_vld,
    input  wire [15:0]                   output_36,
    input  wire                          output_36_ap_vld,
    input  wire [15:0]                   output_37,
    input  wire                          output_37_ap_vld,
    input  wire [15:0]                   output_38,
    input  wire                          output_38_ap_vld,
    input  wire [15:0]                   output_39,
    input  wire                          output_39_ap_vld,
    input  wire [15:0]                   output_40,
    input  wire                          output_40_ap_vld,
    input  wire [15:0]                   output_41,
    input  wire                          output_41_ap_vld,
    input  wire [15:0]                   output_42,
    input  wire                          output_42_ap_vld,
    input  wire [15:0]                   output_43,
    input  wire                          output_43_ap_vld,
    input  wire [15:0]                   output_44,
    input  wire                          output_44_ap_vld,
    input  wire [15:0]                   output_45,
    input  wire                          output_45_ap_vld,
    input  wire [15:0]                   output_46,
    input  wire                          output_46_ap_vld,
    input  wire [15:0]                   output_47,
    input  wire                          output_47_ap_vld,
    input  wire [15:0]                   output_48,
    input  wire                          output_48_ap_vld,
    input  wire [15:0]                   output_49,
    input  wire                          output_49_ap_vld,
    input  wire [15:0]                   output_50,
    input  wire                          output_50_ap_vld,
    input  wire [15:0]                   output_51,
    input  wire                          output_51_ap_vld,
    input  wire [15:0]                   output_52,
    input  wire                          output_52_ap_vld,
    input  wire [15:0]                   output_53,
    input  wire                          output_53_ap_vld,
    input  wire [15:0]                   output_54,
    input  wire                          output_54_ap_vld,
    input  wire [15:0]                   output_55,
    input  wire                          output_55_ap_vld,
    input  wire [15:0]                   output_56,
    input  wire                          output_56_ap_vld,
    input  wire [15:0]                   output_57,
    input  wire                          output_57_ap_vld,
    input  wire [15:0]                   output_58,
    input  wire                          output_58_ap_vld,
    input  wire [15:0]                   output_59,
    input  wire                          output_59_ap_vld,
    input  wire [15:0]                   output_60,
    input  wire                          output_60_ap_vld,
    input  wire [15:0]                   output_61,
    input  wire                          output_61_ap_vld,
    input  wire [15:0]                   output_62,
    input  wire                          output_62_ap_vld,
    input  wire [15:0]                   output_63,
    input  wire                          output_63_ap_vld,
    input  wire [15:0]                   output_64,
    input  wire                          output_64_ap_vld,
    input  wire [15:0]                   output_65,
    input  wire                          output_65_ap_vld,
    input  wire [15:0]                   output_66,
    input  wire                          output_66_ap_vld,
    input  wire [15:0]                   output_67,
    input  wire                          output_67_ap_vld,
    input  wire [15:0]                   output_68,
    input  wire                          output_68_ap_vld,
    input  wire [15:0]                   output_69,
    input  wire                          output_69_ap_vld,
    input  wire [15:0]                   output_70,
    input  wire                          output_70_ap_vld,
    input  wire [15:0]                   output_71,
    input  wire                          output_71_ap_vld,
    input  wire [15:0]                   output_72,
    input  wire                          output_72_ap_vld,
    input  wire [15:0]                   output_73,
    input  wire                          output_73_ap_vld,
    input  wire [15:0]                   output_74,
    input  wire                          output_74_ap_vld,
    input  wire [15:0]                   output_75,
    input  wire                          output_75_ap_vld,
    input  wire [15:0]                   output_76,
    input  wire                          output_76_ap_vld,
    input  wire [15:0]                   output_77,
    input  wire                          output_77_ap_vld,
    input  wire [15:0]                   output_78,
    input  wire                          output_78_ap_vld,
    input  wire [15:0]                   output_79,
    input  wire                          output_79_ap_vld,
    input  wire [15:0]                   output_80,
    input  wire                          output_80_ap_vld,
    input  wire [15:0]                   output_81,
    input  wire                          output_81_ap_vld,
    input  wire [15:0]                   output_82,
    input  wire                          output_82_ap_vld,
    input  wire [15:0]                   output_83,
    input  wire                          output_83_ap_vld,
    input  wire [15:0]                   output_84,
    input  wire                          output_84_ap_vld,
    input  wire [15:0]                   output_85,
    input  wire                          output_85_ap_vld,
    input  wire [15:0]                   output_86,
    input  wire                          output_86_ap_vld,
    input  wire [15:0]                   output_87,
    input  wire                          output_87_ap_vld,
    input  wire [15:0]                   output_88,
    input  wire                          output_88_ap_vld,
    input  wire [15:0]                   output_89,
    input  wire                          output_89_ap_vld,
    input  wire [15:0]                   output_90,
    input  wire                          output_90_ap_vld,
    input  wire [15:0]                   output_91,
    input  wire                          output_91_ap_vld,
    input  wire [15:0]                   output_92,
    input  wire                          output_92_ap_vld,
    input  wire [15:0]                   output_93,
    input  wire                          output_93_ap_vld,
    input  wire [15:0]                   output_94,
    input  wire                          output_94_ap_vld,
    input  wire [15:0]                   output_95,
    input  wire                          output_95_ap_vld,
    input  wire [15:0]                   output_96,
    input  wire                          output_96_ap_vld,
    input  wire [15:0]                   output_97,
    input  wire                          output_97_ap_vld,
    input  wire [15:0]                   output_98,
    input  wire                          output_98_ap_vld,
    input  wire [15:0]                   output_99,
    input  wire                          output_99_ap_vld,
    input  wire [15:0]                   output_100,
    input  wire                          output_100_ap_vld,
    input  wire [15:0]                   output_101,
    input  wire                          output_101_ap_vld,
    input  wire [15:0]                   output_102,
    input  wire                          output_102_ap_vld,
    input  wire [15:0]                   output_103,
    input  wire                          output_103_ap_vld,
    input  wire [15:0]                   output_104,
    input  wire                          output_104_ap_vld,
    input  wire [15:0]                   output_105,
    input  wire                          output_105_ap_vld,
    input  wire [15:0]                   output_106,
    input  wire                          output_106_ap_vld,
    input  wire [15:0]                   output_107,
    input  wire                          output_107_ap_vld,
    input  wire [15:0]                   output_108,
    input  wire                          output_108_ap_vld,
    input  wire [15:0]                   output_109,
    input  wire                          output_109_ap_vld,
    input  wire [15:0]                   output_110,
    input  wire                          output_110_ap_vld,
    input  wire [15:0]                   output_111,
    input  wire                          output_111_ap_vld,
    input  wire [15:0]                   output_112,
    input  wire                          output_112_ap_vld,
    input  wire [15:0]                   output_113,
    input  wire                          output_113_ap_vld,
    input  wire [15:0]                   output_114,
    input  wire                          output_114_ap_vld,
    input  wire [15:0]                   output_115,
    input  wire                          output_115_ap_vld,
    input  wire [15:0]                   output_116,
    input  wire                          output_116_ap_vld,
    input  wire [15:0]                   output_117,
    input  wire                          output_117_ap_vld,
    input  wire [15:0]                   output_118,
    input  wire                          output_118_ap_vld,
    input  wire [15:0]                   output_119,
    input  wire                          output_119_ap_vld,
    input  wire [15:0]                   output_120,
    input  wire                          output_120_ap_vld,
    input  wire [15:0]                   output_121,
    input  wire                          output_121_ap_vld,
    input  wire [15:0]                   output_122,
    input  wire                          output_122_ap_vld,
    input  wire [15:0]                   output_123,
    input  wire                          output_123_ap_vld,
    input  wire [15:0]                   output_124,
    input  wire                          output_124_ap_vld,
    input  wire [15:0]                   output_125,
    input  wire                          output_125_ap_vld,
    input  wire [15:0]                   output_126,
    input  wire                          output_126_ap_vld,
    input  wire [15:0]                   output_127,
    input  wire                          output_127_ap_vld,
    output wire [15:0]                   numOfOutputNeurons,
    output wire [7:0]                    activation,
    input  wire [6:0]                    bias_address0,
    input  wire                          bias_ce0,
    output wire [15:0]                   bias_q0,
    input  wire [6:0]                    weights_0_address0,
    input  wire                          weights_0_ce0,
    output wire [15:0]                   weights_0_q0,
    input  wire [6:0]                    weights_1_address0,
    input  wire                          weights_1_ce0,
    output wire [15:0]                   weights_1_q0,
    input  wire [6:0]                    weights_2_address0,
    input  wire                          weights_2_ce0,
    output wire [15:0]                   weights_2_q0,
    input  wire [6:0]                    weights_3_address0,
    input  wire                          weights_3_ce0,
    output wire [15:0]                   weights_3_q0,
    input  wire [6:0]                    weights_4_address0,
    input  wire                          weights_4_ce0,
    output wire [15:0]                   weights_4_q0,
    input  wire [6:0]                    weights_5_address0,
    input  wire                          weights_5_ce0,
    output wire [15:0]                   weights_5_q0,
    input  wire [6:0]                    weights_6_address0,
    input  wire                          weights_6_ce0,
    output wire [15:0]                   weights_6_q0,
    input  wire [6:0]                    weights_7_address0,
    input  wire                          weights_7_ce0,
    output wire [15:0]                   weights_7_q0,
    input  wire [6:0]                    weights_8_address0,
    input  wire                          weights_8_ce0,
    output wire [15:0]                   weights_8_q0,
    input  wire [6:0]                    weights_9_address0,
    input  wire                          weights_9_ce0,
    output wire [15:0]                   weights_9_q0,
    input  wire [6:0]                    weights_10_address0,
    input  wire                          weights_10_ce0,
    output wire [15:0]                   weights_10_q0,
    input  wire [6:0]                    weights_11_address0,
    input  wire                          weights_11_ce0,
    output wire [15:0]                   weights_11_q0,
    input  wire [6:0]                    weights_12_address0,
    input  wire                          weights_12_ce0,
    output wire [15:0]                   weights_12_q0,
    input  wire [6:0]                    weights_13_address0,
    input  wire                          weights_13_ce0,
    output wire [15:0]                   weights_13_q0,
    input  wire [6:0]                    weights_14_address0,
    input  wire                          weights_14_ce0,
    output wire [15:0]                   weights_14_q0,
    input  wire [6:0]                    weights_15_address0,
    input  wire                          weights_15_ce0,
    output wire [15:0]                   weights_15_q0,
    input  wire [6:0]                    weights_16_address0,
    input  wire                          weights_16_ce0,
    output wire [15:0]                   weights_16_q0,
    input  wire [6:0]                    weights_17_address0,
    input  wire                          weights_17_ce0,
    output wire [15:0]                   weights_17_q0,
    input  wire [6:0]                    weights_18_address0,
    input  wire                          weights_18_ce0,
    output wire [15:0]                   weights_18_q0,
    input  wire [6:0]                    weights_19_address0,
    input  wire                          weights_19_ce0,
    output wire [15:0]                   weights_19_q0,
    input  wire [6:0]                    weights_20_address0,
    input  wire                          weights_20_ce0,
    output wire [15:0]                   weights_20_q0,
    input  wire [6:0]                    weights_21_address0,
    input  wire                          weights_21_ce0,
    output wire [15:0]                   weights_21_q0,
    input  wire [6:0]                    weights_22_address0,
    input  wire                          weights_22_ce0,
    output wire [15:0]                   weights_22_q0,
    input  wire [6:0]                    weights_23_address0,
    input  wire                          weights_23_ce0,
    output wire [15:0]                   weights_23_q0,
    input  wire [6:0]                    weights_24_address0,
    input  wire                          weights_24_ce0,
    output wire [15:0]                   weights_24_q0,
    input  wire [6:0]                    weights_25_address0,
    input  wire                          weights_25_ce0,
    output wire [15:0]                   weights_25_q0,
    input  wire [6:0]                    weights_26_address0,
    input  wire                          weights_26_ce0,
    output wire [15:0]                   weights_26_q0,
    input  wire [6:0]                    weights_27_address0,
    input  wire                          weights_27_ce0,
    output wire [15:0]                   weights_27_q0,
    input  wire [6:0]                    weights_28_address0,
    input  wire                          weights_28_ce0,
    output wire [15:0]                   weights_28_q0,
    input  wire [6:0]                    weights_29_address0,
    input  wire                          weights_29_ce0,
    output wire [15:0]                   weights_29_q0,
    input  wire [6:0]                    weights_30_address0,
    input  wire                          weights_30_ce0,
    output wire [15:0]                   weights_30_q0,
    input  wire [6:0]                    weights_31_address0,
    input  wire                          weights_31_ce0,
    output wire [15:0]                   weights_31_q0,
    input  wire [6:0]                    weights_32_address0,
    input  wire                          weights_32_ce0,
    output wire [15:0]                   weights_32_q0,
    input  wire [6:0]                    weights_33_address0,
    input  wire                          weights_33_ce0,
    output wire [15:0]                   weights_33_q0,
    input  wire [6:0]                    weights_34_address0,
    input  wire                          weights_34_ce0,
    output wire [15:0]                   weights_34_q0,
    input  wire [6:0]                    weights_35_address0,
    input  wire                          weights_35_ce0,
    output wire [15:0]                   weights_35_q0,
    input  wire [6:0]                    weights_36_address0,
    input  wire                          weights_36_ce0,
    output wire [15:0]                   weights_36_q0,
    input  wire [6:0]                    weights_37_address0,
    input  wire                          weights_37_ce0,
    output wire [15:0]                   weights_37_q0,
    input  wire [6:0]                    weights_38_address0,
    input  wire                          weights_38_ce0,
    output wire [15:0]                   weights_38_q0,
    input  wire [6:0]                    weights_39_address0,
    input  wire                          weights_39_ce0,
    output wire [15:0]                   weights_39_q0,
    input  wire [6:0]                    weights_40_address0,
    input  wire                          weights_40_ce0,
    output wire [15:0]                   weights_40_q0,
    input  wire [6:0]                    weights_41_address0,
    input  wire                          weights_41_ce0,
    output wire [15:0]                   weights_41_q0,
    input  wire [6:0]                    weights_42_address0,
    input  wire                          weights_42_ce0,
    output wire [15:0]                   weights_42_q0,
    input  wire [6:0]                    weights_43_address0,
    input  wire                          weights_43_ce0,
    output wire [15:0]                   weights_43_q0,
    input  wire [6:0]                    weights_44_address0,
    input  wire                          weights_44_ce0,
    output wire [15:0]                   weights_44_q0,
    input  wire [6:0]                    weights_45_address0,
    input  wire                          weights_45_ce0,
    output wire [15:0]                   weights_45_q0,
    input  wire [6:0]                    weights_46_address0,
    input  wire                          weights_46_ce0,
    output wire [15:0]                   weights_46_q0,
    input  wire [6:0]                    weights_47_address0,
    input  wire                          weights_47_ce0,
    output wire [15:0]                   weights_47_q0,
    input  wire [6:0]                    weights_48_address0,
    input  wire                          weights_48_ce0,
    output wire [15:0]                   weights_48_q0,
    input  wire [6:0]                    weights_49_address0,
    input  wire                          weights_49_ce0,
    output wire [15:0]                   weights_49_q0,
    input  wire [6:0]                    weights_50_address0,
    input  wire                          weights_50_ce0,
    output wire [15:0]                   weights_50_q0,
    input  wire [6:0]                    weights_51_address0,
    input  wire                          weights_51_ce0,
    output wire [15:0]                   weights_51_q0,
    input  wire [6:0]                    weights_52_address0,
    input  wire                          weights_52_ce0,
    output wire [15:0]                   weights_52_q0,
    input  wire [6:0]                    weights_53_address0,
    input  wire                          weights_53_ce0,
    output wire [15:0]                   weights_53_q0,
    input  wire [6:0]                    weights_54_address0,
    input  wire                          weights_54_ce0,
    output wire [15:0]                   weights_54_q0,
    input  wire [6:0]                    weights_55_address0,
    input  wire                          weights_55_ce0,
    output wire [15:0]                   weights_55_q0,
    input  wire [6:0]                    weights_56_address0,
    input  wire                          weights_56_ce0,
    output wire [15:0]                   weights_56_q0,
    input  wire [6:0]                    weights_57_address0,
    input  wire                          weights_57_ce0,
    output wire [15:0]                   weights_57_q0,
    input  wire [6:0]                    weights_58_address0,
    input  wire                          weights_58_ce0,
    output wire [15:0]                   weights_58_q0,
    input  wire [6:0]                    weights_59_address0,
    input  wire                          weights_59_ce0,
    output wire [15:0]                   weights_59_q0,
    input  wire [6:0]                    weights_60_address0,
    input  wire                          weights_60_ce0,
    output wire [15:0]                   weights_60_q0,
    input  wire [6:0]                    weights_61_address0,
    input  wire                          weights_61_ce0,
    output wire [15:0]                   weights_61_q0,
    input  wire [6:0]                    weights_62_address0,
    input  wire                          weights_62_ce0,
    output wire [15:0]                   weights_62_q0,
    input  wire [6:0]                    weights_63_address0,
    input  wire                          weights_63_ce0,
    output wire [15:0]                   weights_63_q0,
    input  wire [6:0]                    weights_64_address0,
    input  wire                          weights_64_ce0,
    output wire [15:0]                   weights_64_q0,
    input  wire [6:0]                    weights_65_address0,
    input  wire                          weights_65_ce0,
    output wire [15:0]                   weights_65_q0,
    input  wire [6:0]                    weights_66_address0,
    input  wire                          weights_66_ce0,
    output wire [15:0]                   weights_66_q0,
    input  wire [6:0]                    weights_67_address0,
    input  wire                          weights_67_ce0,
    output wire [15:0]                   weights_67_q0,
    input  wire [6:0]                    weights_68_address0,
    input  wire                          weights_68_ce0,
    output wire [15:0]                   weights_68_q0,
    input  wire [6:0]                    weights_69_address0,
    input  wire                          weights_69_ce0,
    output wire [15:0]                   weights_69_q0,
    input  wire [6:0]                    weights_70_address0,
    input  wire                          weights_70_ce0,
    output wire [15:0]                   weights_70_q0,
    input  wire [6:0]                    weights_71_address0,
    input  wire                          weights_71_ce0,
    output wire [15:0]                   weights_71_q0,
    input  wire [6:0]                    weights_72_address0,
    input  wire                          weights_72_ce0,
    output wire [15:0]                   weights_72_q0,
    input  wire [6:0]                    weights_73_address0,
    input  wire                          weights_73_ce0,
    output wire [15:0]                   weights_73_q0,
    input  wire [6:0]                    weights_74_address0,
    input  wire                          weights_74_ce0,
    output wire [15:0]                   weights_74_q0,
    input  wire [6:0]                    weights_75_address0,
    input  wire                          weights_75_ce0,
    output wire [15:0]                   weights_75_q0,
    input  wire [6:0]                    weights_76_address0,
    input  wire                          weights_76_ce0,
    output wire [15:0]                   weights_76_q0,
    input  wire [6:0]                    weights_77_address0,
    input  wire                          weights_77_ce0,
    output wire [15:0]                   weights_77_q0,
    input  wire [6:0]                    weights_78_address0,
    input  wire                          weights_78_ce0,
    output wire [15:0]                   weights_78_q0,
    input  wire [6:0]                    weights_79_address0,
    input  wire                          weights_79_ce0,
    output wire [15:0]                   weights_79_q0,
    input  wire [6:0]                    weights_80_address0,
    input  wire                          weights_80_ce0,
    output wire [15:0]                   weights_80_q0,
    input  wire [6:0]                    weights_81_address0,
    input  wire                          weights_81_ce0,
    output wire [15:0]                   weights_81_q0,
    input  wire [6:0]                    weights_82_address0,
    input  wire                          weights_82_ce0,
    output wire [15:0]                   weights_82_q0,
    input  wire [6:0]                    weights_83_address0,
    input  wire                          weights_83_ce0,
    output wire [15:0]                   weights_83_q0,
    input  wire [6:0]                    weights_84_address0,
    input  wire                          weights_84_ce0,
    output wire [15:0]                   weights_84_q0,
    input  wire [6:0]                    weights_85_address0,
    input  wire                          weights_85_ce0,
    output wire [15:0]                   weights_85_q0,
    input  wire [6:0]                    weights_86_address0,
    input  wire                          weights_86_ce0,
    output wire [15:0]                   weights_86_q0,
    input  wire [6:0]                    weights_87_address0,
    input  wire                          weights_87_ce0,
    output wire [15:0]                   weights_87_q0,
    input  wire [6:0]                    weights_88_address0,
    input  wire                          weights_88_ce0,
    output wire [15:0]                   weights_88_q0,
    input  wire [6:0]                    weights_89_address0,
    input  wire                          weights_89_ce0,
    output wire [15:0]                   weights_89_q0,
    input  wire [6:0]                    weights_90_address0,
    input  wire                          weights_90_ce0,
    output wire [15:0]                   weights_90_q0,
    input  wire [6:0]                    weights_91_address0,
    input  wire                          weights_91_ce0,
    output wire [15:0]                   weights_91_q0,
    input  wire [6:0]                    weights_92_address0,
    input  wire                          weights_92_ce0,
    output wire [15:0]                   weights_92_q0,
    input  wire [6:0]                    weights_93_address0,
    input  wire                          weights_93_ce0,
    output wire [15:0]                   weights_93_q0,
    input  wire [6:0]                    weights_94_address0,
    input  wire                          weights_94_ce0,
    output wire [15:0]                   weights_94_q0,
    input  wire [6:0]                    weights_95_address0,
    input  wire                          weights_95_ce0,
    output wire [15:0]                   weights_95_q0,
    input  wire [6:0]                    weights_96_address0,
    input  wire                          weights_96_ce0,
    output wire [15:0]                   weights_96_q0,
    input  wire [6:0]                    weights_97_address0,
    input  wire                          weights_97_ce0,
    output wire [15:0]                   weights_97_q0,
    input  wire [6:0]                    weights_98_address0,
    input  wire                          weights_98_ce0,
    output wire [15:0]                   weights_98_q0,
    input  wire [6:0]                    weights_99_address0,
    input  wire                          weights_99_ce0,
    output wire [15:0]                   weights_99_q0,
    input  wire [6:0]                    weights_100_address0,
    input  wire                          weights_100_ce0,
    output wire [15:0]                   weights_100_q0,
    input  wire [6:0]                    weights_101_address0,
    input  wire                          weights_101_ce0,
    output wire [15:0]                   weights_101_q0,
    input  wire [6:0]                    weights_102_address0,
    input  wire                          weights_102_ce0,
    output wire [15:0]                   weights_102_q0,
    input  wire [6:0]                    weights_103_address0,
    input  wire                          weights_103_ce0,
    output wire [15:0]                   weights_103_q0,
    input  wire [6:0]                    weights_104_address0,
    input  wire                          weights_104_ce0,
    output wire [15:0]                   weights_104_q0,
    input  wire [6:0]                    weights_105_address0,
    input  wire                          weights_105_ce0,
    output wire [15:0]                   weights_105_q0,
    input  wire [6:0]                    weights_106_address0,
    input  wire                          weights_106_ce0,
    output wire [15:0]                   weights_106_q0,
    input  wire [6:0]                    weights_107_address0,
    input  wire                          weights_107_ce0,
    output wire [15:0]                   weights_107_q0,
    input  wire [6:0]                    weights_108_address0,
    input  wire                          weights_108_ce0,
    output wire [15:0]                   weights_108_q0,
    input  wire [6:0]                    weights_109_address0,
    input  wire                          weights_109_ce0,
    output wire [15:0]                   weights_109_q0,
    input  wire [6:0]                    weights_110_address0,
    input  wire                          weights_110_ce0,
    output wire [15:0]                   weights_110_q0,
    input  wire [6:0]                    weights_111_address0,
    input  wire                          weights_111_ce0,
    output wire [15:0]                   weights_111_q0,
    input  wire [6:0]                    weights_112_address0,
    input  wire                          weights_112_ce0,
    output wire [15:0]                   weights_112_q0,
    input  wire [6:0]                    weights_113_address0,
    input  wire                          weights_113_ce0,
    output wire [15:0]                   weights_113_q0,
    input  wire [6:0]                    weights_114_address0,
    input  wire                          weights_114_ce0,
    output wire [15:0]                   weights_114_q0,
    input  wire [6:0]                    weights_115_address0,
    input  wire                          weights_115_ce0,
    output wire [15:0]                   weights_115_q0,
    input  wire [6:0]                    weights_116_address0,
    input  wire                          weights_116_ce0,
    output wire [15:0]                   weights_116_q0,
    input  wire [6:0]                    weights_117_address0,
    input  wire                          weights_117_ce0,
    output wire [15:0]                   weights_117_q0,
    input  wire [6:0]                    weights_118_address0,
    input  wire                          weights_118_ce0,
    output wire [15:0]                   weights_118_q0,
    input  wire [6:0]                    weights_119_address0,
    input  wire                          weights_119_ce0,
    output wire [15:0]                   weights_119_q0,
    input  wire [6:0]                    weights_120_address0,
    input  wire                          weights_120_ce0,
    output wire [15:0]                   weights_120_q0,
    input  wire [6:0]                    weights_121_address0,
    input  wire                          weights_121_ce0,
    output wire [15:0]                   weights_121_q0,
    input  wire [6:0]                    weights_122_address0,
    input  wire                          weights_122_ce0,
    output wire [15:0]                   weights_122_q0,
    input  wire [6:0]                    weights_123_address0,
    input  wire                          weights_123_ce0,
    output wire [15:0]                   weights_123_q0,
    input  wire [6:0]                    weights_124_address0,
    input  wire                          weights_124_ce0,
    output wire [15:0]                   weights_124_q0,
    input  wire [6:0]                    weights_125_address0,
    input  wire                          weights_125_ce0,
    output wire [15:0]                   weights_125_q0,
    input  wire [6:0]                    weights_126_address0,
    input  wire                          weights_126_ce0,
    output wire [15:0]                   weights_126_q0,
    input  wire [6:0]                    weights_127_address0,
    input  wire                          weights_127_ce0,
    output wire [15:0]                   weights_127_q0,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [0:0]                    ap_local_deadlock
);
//------------------------Address Info-------------------
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0 - enable ap_done interrupt (Read/Write)
//          bit 1 - enable ap_ready interrupt (Read/Write)
//          bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0 - ap_done (COR/TOW)
//          bit 1 - ap_ready (COR/TOW)
//          bit 5 - ap_local_deadlock (COR/TOW)
//          others - reserved
// 0x0010 : Data signal of input_0
//          bit 15~0 - input_0[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of input_1
//          bit 15~0 - input_1[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of input_2
//          bit 15~0 - input_2[15:0] (Read/Write)
//          others   - reserved
// 0x0024 : reserved
// 0x0028 : Data signal of input_3
//          bit 15~0 - input_3[15:0] (Read/Write)
//          others   - reserved
// 0x002c : reserved
// 0x0030 : Data signal of input_4
//          bit 15~0 - input_4[15:0] (Read/Write)
//          others   - reserved
// 0x0034 : reserved
// 0x0038 : Data signal of input_5
//          bit 15~0 - input_5[15:0] (Read/Write)
//          others   - reserved
// 0x003c : reserved
// 0x0040 : Data signal of input_6
//          bit 15~0 - input_6[15:0] (Read/Write)
//          others   - reserved
// 0x0044 : reserved
// 0x0048 : Data signal of input_7
//          bit 15~0 - input_7[15:0] (Read/Write)
//          others   - reserved
// 0x004c : reserved
// 0x0050 : Data signal of input_8
//          bit 15~0 - input_8[15:0] (Read/Write)
//          others   - reserved
// 0x0054 : reserved
// 0x0058 : Data signal of input_9
//          bit 15~0 - input_9[15:0] (Read/Write)
//          others   - reserved
// 0x005c : reserved
// 0x0060 : Data signal of input_10
//          bit 15~0 - input_10[15:0] (Read/Write)
//          others   - reserved
// 0x0064 : reserved
// 0x0068 : Data signal of input_11
//          bit 15~0 - input_11[15:0] (Read/Write)
//          others   - reserved
// 0x006c : reserved
// 0x0070 : Data signal of input_12
//          bit 15~0 - input_12[15:0] (Read/Write)
//          others   - reserved
// 0x0074 : reserved
// 0x0078 : Data signal of input_13
//          bit 15~0 - input_13[15:0] (Read/Write)
//          others   - reserved
// 0x007c : reserved
// 0x0080 : Data signal of input_14
//          bit 15~0 - input_14[15:0] (Read/Write)
//          others   - reserved
// 0x0084 : reserved
// 0x0088 : Data signal of input_15
//          bit 15~0 - input_15[15:0] (Read/Write)
//          others   - reserved
// 0x008c : reserved
// 0x0090 : Data signal of input_16
//          bit 15~0 - input_16[15:0] (Read/Write)
//          others   - reserved
// 0x0094 : reserved
// 0x0098 : Data signal of input_17
//          bit 15~0 - input_17[15:0] (Read/Write)
//          others   - reserved
// 0x009c : reserved
// 0x00a0 : Data signal of input_18
//          bit 15~0 - input_18[15:0] (Read/Write)
//          others   - reserved
// 0x00a4 : reserved
// 0x00a8 : Data signal of input_19
//          bit 15~0 - input_19[15:0] (Read/Write)
//          others   - reserved
// 0x00ac : reserved
// 0x00b0 : Data signal of input_20
//          bit 15~0 - input_20[15:0] (Read/Write)
//          others   - reserved
// 0x00b4 : reserved
// 0x00b8 : Data signal of input_21
//          bit 15~0 - input_21[15:0] (Read/Write)
//          others   - reserved
// 0x00bc : reserved
// 0x00c0 : Data signal of input_22
//          bit 15~0 - input_22[15:0] (Read/Write)
//          others   - reserved
// 0x00c4 : reserved
// 0x00c8 : Data signal of input_23
//          bit 15~0 - input_23[15:0] (Read/Write)
//          others   - reserved
// 0x00cc : reserved
// 0x00d0 : Data signal of input_24
//          bit 15~0 - input_24[15:0] (Read/Write)
//          others   - reserved
// 0x00d4 : reserved
// 0x00d8 : Data signal of input_25
//          bit 15~0 - input_25[15:0] (Read/Write)
//          others   - reserved
// 0x00dc : reserved
// 0x00e0 : Data signal of input_26
//          bit 15~0 - input_26[15:0] (Read/Write)
//          others   - reserved
// 0x00e4 : reserved
// 0x00e8 : Data signal of input_27
//          bit 15~0 - input_27[15:0] (Read/Write)
//          others   - reserved
// 0x00ec : reserved
// 0x00f0 : Data signal of input_28
//          bit 15~0 - input_28[15:0] (Read/Write)
//          others   - reserved
// 0x00f4 : reserved
// 0x00f8 : Data signal of input_29
//          bit 15~0 - input_29[15:0] (Read/Write)
//          others   - reserved
// 0x00fc : reserved
// 0x0100 : Data signal of input_30
//          bit 15~0 - input_30[15:0] (Read/Write)
//          others   - reserved
// 0x0104 : reserved
// 0x0108 : Data signal of input_31
//          bit 15~0 - input_31[15:0] (Read/Write)
//          others   - reserved
// 0x010c : reserved
// 0x0110 : Data signal of input_32
//          bit 15~0 - input_32[15:0] (Read/Write)
//          others   - reserved
// 0x0114 : reserved
// 0x0118 : Data signal of input_33
//          bit 15~0 - input_33[15:0] (Read/Write)
//          others   - reserved
// 0x011c : reserved
// 0x0120 : Data signal of input_34
//          bit 15~0 - input_34[15:0] (Read/Write)
//          others   - reserved
// 0x0124 : reserved
// 0x0128 : Data signal of input_35
//          bit 15~0 - input_35[15:0] (Read/Write)
//          others   - reserved
// 0x012c : reserved
// 0x0130 : Data signal of input_36
//          bit 15~0 - input_36[15:0] (Read/Write)
//          others   - reserved
// 0x0134 : reserved
// 0x0138 : Data signal of input_37
//          bit 15~0 - input_37[15:0] (Read/Write)
//          others   - reserved
// 0x013c : reserved
// 0x0140 : Data signal of input_38
//          bit 15~0 - input_38[15:0] (Read/Write)
//          others   - reserved
// 0x0144 : reserved
// 0x0148 : Data signal of input_39
//          bit 15~0 - input_39[15:0] (Read/Write)
//          others   - reserved
// 0x014c : reserved
// 0x0150 : Data signal of input_40
//          bit 15~0 - input_40[15:0] (Read/Write)
//          others   - reserved
// 0x0154 : reserved
// 0x0158 : Data signal of input_41
//          bit 15~0 - input_41[15:0] (Read/Write)
//          others   - reserved
// 0x015c : reserved
// 0x0160 : Data signal of input_42
//          bit 15~0 - input_42[15:0] (Read/Write)
//          others   - reserved
// 0x0164 : reserved
// 0x0168 : Data signal of input_43
//          bit 15~0 - input_43[15:0] (Read/Write)
//          others   - reserved
// 0x016c : reserved
// 0x0170 : Data signal of input_44
//          bit 15~0 - input_44[15:0] (Read/Write)
//          others   - reserved
// 0x0174 : reserved
// 0x0178 : Data signal of input_45
//          bit 15~0 - input_45[15:0] (Read/Write)
//          others   - reserved
// 0x017c : reserved
// 0x0180 : Data signal of input_46
//          bit 15~0 - input_46[15:0] (Read/Write)
//          others   - reserved
// 0x0184 : reserved
// 0x0188 : Data signal of input_47
//          bit 15~0 - input_47[15:0] (Read/Write)
//          others   - reserved
// 0x018c : reserved
// 0x0190 : Data signal of input_48
//          bit 15~0 - input_48[15:0] (Read/Write)
//          others   - reserved
// 0x0194 : reserved
// 0x0198 : Data signal of input_49
//          bit 15~0 - input_49[15:0] (Read/Write)
//          others   - reserved
// 0x019c : reserved
// 0x01a0 : Data signal of input_50
//          bit 15~0 - input_50[15:0] (Read/Write)
//          others   - reserved
// 0x01a4 : reserved
// 0x01a8 : Data signal of input_51
//          bit 15~0 - input_51[15:0] (Read/Write)
//          others   - reserved
// 0x01ac : reserved
// 0x01b0 : Data signal of input_52
//          bit 15~0 - input_52[15:0] (Read/Write)
//          others   - reserved
// 0x01b4 : reserved
// 0x01b8 : Data signal of input_53
//          bit 15~0 - input_53[15:0] (Read/Write)
//          others   - reserved
// 0x01bc : reserved
// 0x01c0 : Data signal of input_54
//          bit 15~0 - input_54[15:0] (Read/Write)
//          others   - reserved
// 0x01c4 : reserved
// 0x01c8 : Data signal of input_55
//          bit 15~0 - input_55[15:0] (Read/Write)
//          others   - reserved
// 0x01cc : reserved
// 0x01d0 : Data signal of input_56
//          bit 15~0 - input_56[15:0] (Read/Write)
//          others   - reserved
// 0x01d4 : reserved
// 0x01d8 : Data signal of input_57
//          bit 15~0 - input_57[15:0] (Read/Write)
//          others   - reserved
// 0x01dc : reserved
// 0x01e0 : Data signal of input_58
//          bit 15~0 - input_58[15:0] (Read/Write)
//          others   - reserved
// 0x01e4 : reserved
// 0x01e8 : Data signal of input_59
//          bit 15~0 - input_59[15:0] (Read/Write)
//          others   - reserved
// 0x01ec : reserved
// 0x01f0 : Data signal of input_60
//          bit 15~0 - input_60[15:0] (Read/Write)
//          others   - reserved
// 0x01f4 : reserved
// 0x01f8 : Data signal of input_61
//          bit 15~0 - input_61[15:0] (Read/Write)
//          others   - reserved
// 0x01fc : reserved
// 0x0200 : Data signal of input_62
//          bit 15~0 - input_62[15:0] (Read/Write)
//          others   - reserved
// 0x0204 : reserved
// 0x0208 : Data signal of input_63
//          bit 15~0 - input_63[15:0] (Read/Write)
//          others   - reserved
// 0x020c : reserved
// 0x0210 : Data signal of input_64
//          bit 15~0 - input_64[15:0] (Read/Write)
//          others   - reserved
// 0x0214 : reserved
// 0x0218 : Data signal of input_65
//          bit 15~0 - input_65[15:0] (Read/Write)
//          others   - reserved
// 0x021c : reserved
// 0x0220 : Data signal of input_66
//          bit 15~0 - input_66[15:0] (Read/Write)
//          others   - reserved
// 0x0224 : reserved
// 0x0228 : Data signal of input_67
//          bit 15~0 - input_67[15:0] (Read/Write)
//          others   - reserved
// 0x022c : reserved
// 0x0230 : Data signal of input_68
//          bit 15~0 - input_68[15:0] (Read/Write)
//          others   - reserved
// 0x0234 : reserved
// 0x0238 : Data signal of input_69
//          bit 15~0 - input_69[15:0] (Read/Write)
//          others   - reserved
// 0x023c : reserved
// 0x0240 : Data signal of input_70
//          bit 15~0 - input_70[15:0] (Read/Write)
//          others   - reserved
// 0x0244 : reserved
// 0x0248 : Data signal of input_71
//          bit 15~0 - input_71[15:0] (Read/Write)
//          others   - reserved
// 0x024c : reserved
// 0x0250 : Data signal of input_72
//          bit 15~0 - input_72[15:0] (Read/Write)
//          others   - reserved
// 0x0254 : reserved
// 0x0258 : Data signal of input_73
//          bit 15~0 - input_73[15:0] (Read/Write)
//          others   - reserved
// 0x025c : reserved
// 0x0260 : Data signal of input_74
//          bit 15~0 - input_74[15:0] (Read/Write)
//          others   - reserved
// 0x0264 : reserved
// 0x0268 : Data signal of input_75
//          bit 15~0 - input_75[15:0] (Read/Write)
//          others   - reserved
// 0x026c : reserved
// 0x0270 : Data signal of input_76
//          bit 15~0 - input_76[15:0] (Read/Write)
//          others   - reserved
// 0x0274 : reserved
// 0x0278 : Data signal of input_77
//          bit 15~0 - input_77[15:0] (Read/Write)
//          others   - reserved
// 0x027c : reserved
// 0x0280 : Data signal of input_78
//          bit 15~0 - input_78[15:0] (Read/Write)
//          others   - reserved
// 0x0284 : reserved
// 0x0288 : Data signal of input_79
//          bit 15~0 - input_79[15:0] (Read/Write)
//          others   - reserved
// 0x028c : reserved
// 0x0290 : Data signal of input_80
//          bit 15~0 - input_80[15:0] (Read/Write)
//          others   - reserved
// 0x0294 : reserved
// 0x0298 : Data signal of input_81
//          bit 15~0 - input_81[15:0] (Read/Write)
//          others   - reserved
// 0x029c : reserved
// 0x02a0 : Data signal of input_82
//          bit 15~0 - input_82[15:0] (Read/Write)
//          others   - reserved
// 0x02a4 : reserved
// 0x02a8 : Data signal of input_83
//          bit 15~0 - input_83[15:0] (Read/Write)
//          others   - reserved
// 0x02ac : reserved
// 0x02b0 : Data signal of input_84
//          bit 15~0 - input_84[15:0] (Read/Write)
//          others   - reserved
// 0x02b4 : reserved
// 0x02b8 : Data signal of input_85
//          bit 15~0 - input_85[15:0] (Read/Write)
//          others   - reserved
// 0x02bc : reserved
// 0x02c0 : Data signal of input_86
//          bit 15~0 - input_86[15:0] (Read/Write)
//          others   - reserved
// 0x02c4 : reserved
// 0x02c8 : Data signal of input_87
//          bit 15~0 - input_87[15:0] (Read/Write)
//          others   - reserved
// 0x02cc : reserved
// 0x02d0 : Data signal of input_88
//          bit 15~0 - input_88[15:0] (Read/Write)
//          others   - reserved
// 0x02d4 : reserved
// 0x02d8 : Data signal of input_89
//          bit 15~0 - input_89[15:0] (Read/Write)
//          others   - reserved
// 0x02dc : reserved
// 0x02e0 : Data signal of input_90
//          bit 15~0 - input_90[15:0] (Read/Write)
//          others   - reserved
// 0x02e4 : reserved
// 0x02e8 : Data signal of input_91
//          bit 15~0 - input_91[15:0] (Read/Write)
//          others   - reserved
// 0x02ec : reserved
// 0x02f0 : Data signal of input_92
//          bit 15~0 - input_92[15:0] (Read/Write)
//          others   - reserved
// 0x02f4 : reserved
// 0x02f8 : Data signal of input_93
//          bit 15~0 - input_93[15:0] (Read/Write)
//          others   - reserved
// 0x02fc : reserved
// 0x0300 : Data signal of input_94
//          bit 15~0 - input_94[15:0] (Read/Write)
//          others   - reserved
// 0x0304 : reserved
// 0x0308 : Data signal of input_95
//          bit 15~0 - input_95[15:0] (Read/Write)
//          others   - reserved
// 0x030c : reserved
// 0x0310 : Data signal of input_96
//          bit 15~0 - input_96[15:0] (Read/Write)
//          others   - reserved
// 0x0314 : reserved
// 0x0318 : Data signal of input_97
//          bit 15~0 - input_97[15:0] (Read/Write)
//          others   - reserved
// 0x031c : reserved
// 0x0320 : Data signal of input_98
//          bit 15~0 - input_98[15:0] (Read/Write)
//          others   - reserved
// 0x0324 : reserved
// 0x0328 : Data signal of input_99
//          bit 15~0 - input_99[15:0] (Read/Write)
//          others   - reserved
// 0x032c : reserved
// 0x0330 : Data signal of input_100
//          bit 15~0 - input_100[15:0] (Read/Write)
//          others   - reserved
// 0x0334 : reserved
// 0x0338 : Data signal of input_101
//          bit 15~0 - input_101[15:0] (Read/Write)
//          others   - reserved
// 0x033c : reserved
// 0x0340 : Data signal of input_102
//          bit 15~0 - input_102[15:0] (Read/Write)
//          others   - reserved
// 0x0344 : reserved
// 0x0348 : Data signal of input_103
//          bit 15~0 - input_103[15:0] (Read/Write)
//          others   - reserved
// 0x034c : reserved
// 0x0350 : Data signal of input_104
//          bit 15~0 - input_104[15:0] (Read/Write)
//          others   - reserved
// 0x0354 : reserved
// 0x0358 : Data signal of input_105
//          bit 15~0 - input_105[15:0] (Read/Write)
//          others   - reserved
// 0x035c : reserved
// 0x0360 : Data signal of input_106
//          bit 15~0 - input_106[15:0] (Read/Write)
//          others   - reserved
// 0x0364 : reserved
// 0x0368 : Data signal of input_107
//          bit 15~0 - input_107[15:0] (Read/Write)
//          others   - reserved
// 0x036c : reserved
// 0x0370 : Data signal of input_108
//          bit 15~0 - input_108[15:0] (Read/Write)
//          others   - reserved
// 0x0374 : reserved
// 0x0378 : Data signal of input_109
//          bit 15~0 - input_109[15:0] (Read/Write)
//          others   - reserved
// 0x037c : reserved
// 0x0380 : Data signal of input_110
//          bit 15~0 - input_110[15:0] (Read/Write)
//          others   - reserved
// 0x0384 : reserved
// 0x0388 : Data signal of input_111
//          bit 15~0 - input_111[15:0] (Read/Write)
//          others   - reserved
// 0x038c : reserved
// 0x0390 : Data signal of input_112
//          bit 15~0 - input_112[15:0] (Read/Write)
//          others   - reserved
// 0x0394 : reserved
// 0x0398 : Data signal of input_113
//          bit 15~0 - input_113[15:0] (Read/Write)
//          others   - reserved
// 0x039c : reserved
// 0x03a0 : Data signal of input_114
//          bit 15~0 - input_114[15:0] (Read/Write)
//          others   - reserved
// 0x03a4 : reserved
// 0x03a8 : Data signal of input_115
//          bit 15~0 - input_115[15:0] (Read/Write)
//          others   - reserved
// 0x03ac : reserved
// 0x03b0 : Data signal of input_116
//          bit 15~0 - input_116[15:0] (Read/Write)
//          others   - reserved
// 0x03b4 : reserved
// 0x03b8 : Data signal of input_117
//          bit 15~0 - input_117[15:0] (Read/Write)
//          others   - reserved
// 0x03bc : reserved
// 0x03c0 : Data signal of input_118
//          bit 15~0 - input_118[15:0] (Read/Write)
//          others   - reserved
// 0x03c4 : reserved
// 0x03c8 : Data signal of input_119
//          bit 15~0 - input_119[15:0] (Read/Write)
//          others   - reserved
// 0x03cc : reserved
// 0x03d0 : Data signal of input_120
//          bit 15~0 - input_120[15:0] (Read/Write)
//          others   - reserved
// 0x03d4 : reserved
// 0x03d8 : Data signal of input_121
//          bit 15~0 - input_121[15:0] (Read/Write)
//          others   - reserved
// 0x03dc : reserved
// 0x03e0 : Data signal of input_122
//          bit 15~0 - input_122[15:0] (Read/Write)
//          others   - reserved
// 0x03e4 : reserved
// 0x03e8 : Data signal of input_123
//          bit 15~0 - input_123[15:0] (Read/Write)
//          others   - reserved
// 0x03ec : reserved
// 0x03f0 : Data signal of input_124
//          bit 15~0 - input_124[15:0] (Read/Write)
//          others   - reserved
// 0x03f4 : reserved
// 0x03f8 : Data signal of input_125
//          bit 15~0 - input_125[15:0] (Read/Write)
//          others   - reserved
// 0x03fc : reserved
// 0x0400 : Data signal of input_126
//          bit 15~0 - input_126[15:0] (Read/Write)
//          others   - reserved
// 0x0404 : reserved
// 0x0408 : Data signal of input_127
//          bit 15~0 - input_127[15:0] (Read/Write)
//          others   - reserved
// 0x040c : reserved
// 0x0410 : Data signal of output_0
//          bit 15~0 - output_0[15:0] (Read)
//          others   - reserved
// 0x0414 : Control signal of output_0
//          bit 0  - output_0_ap_vld (Read/COR)
//          others - reserved
// 0x0420 : Data signal of output_1
//          bit 15~0 - output_1[15:0] (Read)
//          others   - reserved
// 0x0424 : Control signal of output_1
//          bit 0  - output_1_ap_vld (Read/COR)
//          others - reserved
// 0x0430 : Data signal of output_2
//          bit 15~0 - output_2[15:0] (Read)
//          others   - reserved
// 0x0434 : Control signal of output_2
//          bit 0  - output_2_ap_vld (Read/COR)
//          others - reserved
// 0x0440 : Data signal of output_3
//          bit 15~0 - output_3[15:0] (Read)
//          others   - reserved
// 0x0444 : Control signal of output_3
//          bit 0  - output_3_ap_vld (Read/COR)
//          others - reserved
// 0x0450 : Data signal of output_4
//          bit 15~0 - output_4[15:0] (Read)
//          others   - reserved
// 0x0454 : Control signal of output_4
//          bit 0  - output_4_ap_vld (Read/COR)
//          others - reserved
// 0x0460 : Data signal of output_5
//          bit 15~0 - output_5[15:0] (Read)
//          others   - reserved
// 0x0464 : Control signal of output_5
//          bit 0  - output_5_ap_vld (Read/COR)
//          others - reserved
// 0x0470 : Data signal of output_6
//          bit 15~0 - output_6[15:0] (Read)
//          others   - reserved
// 0x0474 : Control signal of output_6
//          bit 0  - output_6_ap_vld (Read/COR)
//          others - reserved
// 0x0480 : Data signal of output_7
//          bit 15~0 - output_7[15:0] (Read)
//          others   - reserved
// 0x0484 : Control signal of output_7
//          bit 0  - output_7_ap_vld (Read/COR)
//          others - reserved
// 0x0490 : Data signal of output_8
//          bit 15~0 - output_8[15:0] (Read)
//          others   - reserved
// 0x0494 : Control signal of output_8
//          bit 0  - output_8_ap_vld (Read/COR)
//          others - reserved
// 0x04a0 : Data signal of output_9
//          bit 15~0 - output_9[15:0] (Read)
//          others   - reserved
// 0x04a4 : Control signal of output_9
//          bit 0  - output_9_ap_vld (Read/COR)
//          others - reserved
// 0x04b0 : Data signal of output_10
//          bit 15~0 - output_10[15:0] (Read)
//          others   - reserved
// 0x04b4 : Control signal of output_10
//          bit 0  - output_10_ap_vld (Read/COR)
//          others - reserved
// 0x04c0 : Data signal of output_11
//          bit 15~0 - output_11[15:0] (Read)
//          others   - reserved
// 0x04c4 : Control signal of output_11
//          bit 0  - output_11_ap_vld (Read/COR)
//          others - reserved
// 0x04d0 : Data signal of output_12
//          bit 15~0 - output_12[15:0] (Read)
//          others   - reserved
// 0x04d4 : Control signal of output_12
//          bit 0  - output_12_ap_vld (Read/COR)
//          others - reserved
// 0x04e0 : Data signal of output_13
//          bit 15~0 - output_13[15:0] (Read)
//          others   - reserved
// 0x04e4 : Control signal of output_13
//          bit 0  - output_13_ap_vld (Read/COR)
//          others - reserved
// 0x04f0 : Data signal of output_14
//          bit 15~0 - output_14[15:0] (Read)
//          others   - reserved
// 0x04f4 : Control signal of output_14
//          bit 0  - output_14_ap_vld (Read/COR)
//          others - reserved
// 0x0500 : Data signal of output_15
//          bit 15~0 - output_15[15:0] (Read)
//          others   - reserved
// 0x0504 : Control signal of output_15
//          bit 0  - output_15_ap_vld (Read/COR)
//          others - reserved
// 0x0510 : Data signal of output_16
//          bit 15~0 - output_16[15:0] (Read)
//          others   - reserved
// 0x0514 : Control signal of output_16
//          bit 0  - output_16_ap_vld (Read/COR)
//          others - reserved
// 0x0520 : Data signal of output_17
//          bit 15~0 - output_17[15:0] (Read)
//          others   - reserved
// 0x0524 : Control signal of output_17
//          bit 0  - output_17_ap_vld (Read/COR)
//          others - reserved
// 0x0530 : Data signal of output_18
//          bit 15~0 - output_18[15:0] (Read)
//          others   - reserved
// 0x0534 : Control signal of output_18
//          bit 0  - output_18_ap_vld (Read/COR)
//          others - reserved
// 0x0540 : Data signal of output_19
//          bit 15~0 - output_19[15:0] (Read)
//          others   - reserved
// 0x0544 : Control signal of output_19
//          bit 0  - output_19_ap_vld (Read/COR)
//          others - reserved
// 0x0550 : Data signal of output_20
//          bit 15~0 - output_20[15:0] (Read)
//          others   - reserved
// 0x0554 : Control signal of output_20
//          bit 0  - output_20_ap_vld (Read/COR)
//          others - reserved
// 0x0560 : Data signal of output_21
//          bit 15~0 - output_21[15:0] (Read)
//          others   - reserved
// 0x0564 : Control signal of output_21
//          bit 0  - output_21_ap_vld (Read/COR)
//          others - reserved
// 0x0570 : Data signal of output_22
//          bit 15~0 - output_22[15:0] (Read)
//          others   - reserved
// 0x0574 : Control signal of output_22
//          bit 0  - output_22_ap_vld (Read/COR)
//          others - reserved
// 0x0580 : Data signal of output_23
//          bit 15~0 - output_23[15:0] (Read)
//          others   - reserved
// 0x0584 : Control signal of output_23
//          bit 0  - output_23_ap_vld (Read/COR)
//          others - reserved
// 0x0590 : Data signal of output_24
//          bit 15~0 - output_24[15:0] (Read)
//          others   - reserved
// 0x0594 : Control signal of output_24
//          bit 0  - output_24_ap_vld (Read/COR)
//          others - reserved
// 0x05a0 : Data signal of output_25
//          bit 15~0 - output_25[15:0] (Read)
//          others   - reserved
// 0x05a4 : Control signal of output_25
//          bit 0  - output_25_ap_vld (Read/COR)
//          others - reserved
// 0x05b0 : Data signal of output_26
//          bit 15~0 - output_26[15:0] (Read)
//          others   - reserved
// 0x05b4 : Control signal of output_26
//          bit 0  - output_26_ap_vld (Read/COR)
//          others - reserved
// 0x05c0 : Data signal of output_27
//          bit 15~0 - output_27[15:0] (Read)
//          others   - reserved
// 0x05c4 : Control signal of output_27
//          bit 0  - output_27_ap_vld (Read/COR)
//          others - reserved
// 0x05d0 : Data signal of output_28
//          bit 15~0 - output_28[15:0] (Read)
//          others   - reserved
// 0x05d4 : Control signal of output_28
//          bit 0  - output_28_ap_vld (Read/COR)
//          others - reserved
// 0x05e0 : Data signal of output_29
//          bit 15~0 - output_29[15:0] (Read)
//          others   - reserved
// 0x05e4 : Control signal of output_29
//          bit 0  - output_29_ap_vld (Read/COR)
//          others - reserved
// 0x05f0 : Data signal of output_30
//          bit 15~0 - output_30[15:0] (Read)
//          others   - reserved
// 0x05f4 : Control signal of output_30
//          bit 0  - output_30_ap_vld (Read/COR)
//          others - reserved
// 0x0600 : Data signal of output_31
//          bit 15~0 - output_31[15:0] (Read)
//          others   - reserved
// 0x0604 : Control signal of output_31
//          bit 0  - output_31_ap_vld (Read/COR)
//          others - reserved
// 0x0610 : Data signal of output_32
//          bit 15~0 - output_32[15:0] (Read)
//          others   - reserved
// 0x0614 : Control signal of output_32
//          bit 0  - output_32_ap_vld (Read/COR)
//          others - reserved
// 0x0620 : Data signal of output_33
//          bit 15~0 - output_33[15:0] (Read)
//          others   - reserved
// 0x0624 : Control signal of output_33
//          bit 0  - output_33_ap_vld (Read/COR)
//          others - reserved
// 0x0630 : Data signal of output_34
//          bit 15~0 - output_34[15:0] (Read)
//          others   - reserved
// 0x0634 : Control signal of output_34
//          bit 0  - output_34_ap_vld (Read/COR)
//          others - reserved
// 0x0640 : Data signal of output_35
//          bit 15~0 - output_35[15:0] (Read)
//          others   - reserved
// 0x0644 : Control signal of output_35
//          bit 0  - output_35_ap_vld (Read/COR)
//          others - reserved
// 0x0650 : Data signal of output_36
//          bit 15~0 - output_36[15:0] (Read)
//          others   - reserved
// 0x0654 : Control signal of output_36
//          bit 0  - output_36_ap_vld (Read/COR)
//          others - reserved
// 0x0660 : Data signal of output_37
//          bit 15~0 - output_37[15:0] (Read)
//          others   - reserved
// 0x0664 : Control signal of output_37
//          bit 0  - output_37_ap_vld (Read/COR)
//          others - reserved
// 0x0670 : Data signal of output_38
//          bit 15~0 - output_38[15:0] (Read)
//          others   - reserved
// 0x0674 : Control signal of output_38
//          bit 0  - output_38_ap_vld (Read/COR)
//          others - reserved
// 0x0680 : Data signal of output_39
//          bit 15~0 - output_39[15:0] (Read)
//          others   - reserved
// 0x0684 : Control signal of output_39
//          bit 0  - output_39_ap_vld (Read/COR)
//          others - reserved
// 0x0690 : Data signal of output_40
//          bit 15~0 - output_40[15:0] (Read)
//          others   - reserved
// 0x0694 : Control signal of output_40
//          bit 0  - output_40_ap_vld (Read/COR)
//          others - reserved
// 0x06a0 : Data signal of output_41
//          bit 15~0 - output_41[15:0] (Read)
//          others   - reserved
// 0x06a4 : Control signal of output_41
//          bit 0  - output_41_ap_vld (Read/COR)
//          others - reserved
// 0x06b0 : Data signal of output_42
//          bit 15~0 - output_42[15:0] (Read)
//          others   - reserved
// 0x06b4 : Control signal of output_42
//          bit 0  - output_42_ap_vld (Read/COR)
//          others - reserved
// 0x06c0 : Data signal of output_43
//          bit 15~0 - output_43[15:0] (Read)
//          others   - reserved
// 0x06c4 : Control signal of output_43
//          bit 0  - output_43_ap_vld (Read/COR)
//          others - reserved
// 0x06d0 : Data signal of output_44
//          bit 15~0 - output_44[15:0] (Read)
//          others   - reserved
// 0x06d4 : Control signal of output_44
//          bit 0  - output_44_ap_vld (Read/COR)
//          others - reserved
// 0x06e0 : Data signal of output_45
//          bit 15~0 - output_45[15:0] (Read)
//          others   - reserved
// 0x06e4 : Control signal of output_45
//          bit 0  - output_45_ap_vld (Read/COR)
//          others - reserved
// 0x06f0 : Data signal of output_46
//          bit 15~0 - output_46[15:0] (Read)
//          others   - reserved
// 0x06f4 : Control signal of output_46
//          bit 0  - output_46_ap_vld (Read/COR)
//          others - reserved
// 0x0700 : Data signal of output_47
//          bit 15~0 - output_47[15:0] (Read)
//          others   - reserved
// 0x0704 : Control signal of output_47
//          bit 0  - output_47_ap_vld (Read/COR)
//          others - reserved
// 0x0710 : Data signal of output_48
//          bit 15~0 - output_48[15:0] (Read)
//          others   - reserved
// 0x0714 : Control signal of output_48
//          bit 0  - output_48_ap_vld (Read/COR)
//          others - reserved
// 0x0720 : Data signal of output_49
//          bit 15~0 - output_49[15:0] (Read)
//          others   - reserved
// 0x0724 : Control signal of output_49
//          bit 0  - output_49_ap_vld (Read/COR)
//          others - reserved
// 0x0730 : Data signal of output_50
//          bit 15~0 - output_50[15:0] (Read)
//          others   - reserved
// 0x0734 : Control signal of output_50
//          bit 0  - output_50_ap_vld (Read/COR)
//          others - reserved
// 0x0740 : Data signal of output_51
//          bit 15~0 - output_51[15:0] (Read)
//          others   - reserved
// 0x0744 : Control signal of output_51
//          bit 0  - output_51_ap_vld (Read/COR)
//          others - reserved
// 0x0750 : Data signal of output_52
//          bit 15~0 - output_52[15:0] (Read)
//          others   - reserved
// 0x0754 : Control signal of output_52
//          bit 0  - output_52_ap_vld (Read/COR)
//          others - reserved
// 0x0760 : Data signal of output_53
//          bit 15~0 - output_53[15:0] (Read)
//          others   - reserved
// 0x0764 : Control signal of output_53
//          bit 0  - output_53_ap_vld (Read/COR)
//          others - reserved
// 0x0770 : Data signal of output_54
//          bit 15~0 - output_54[15:0] (Read)
//          others   - reserved
// 0x0774 : Control signal of output_54
//          bit 0  - output_54_ap_vld (Read/COR)
//          others - reserved
// 0x0780 : Data signal of output_55
//          bit 15~0 - output_55[15:0] (Read)
//          others   - reserved
// 0x0784 : Control signal of output_55
//          bit 0  - output_55_ap_vld (Read/COR)
//          others - reserved
// 0x0790 : Data signal of output_56
//          bit 15~0 - output_56[15:0] (Read)
//          others   - reserved
// 0x0794 : Control signal of output_56
//          bit 0  - output_56_ap_vld (Read/COR)
//          others - reserved
// 0x07a0 : Data signal of output_57
//          bit 15~0 - output_57[15:0] (Read)
//          others   - reserved
// 0x07a4 : Control signal of output_57
//          bit 0  - output_57_ap_vld (Read/COR)
//          others - reserved
// 0x07b0 : Data signal of output_58
//          bit 15~0 - output_58[15:0] (Read)
//          others   - reserved
// 0x07b4 : Control signal of output_58
//          bit 0  - output_58_ap_vld (Read/COR)
//          others - reserved
// 0x07c0 : Data signal of output_59
//          bit 15~0 - output_59[15:0] (Read)
//          others   - reserved
// 0x07c4 : Control signal of output_59
//          bit 0  - output_59_ap_vld (Read/COR)
//          others - reserved
// 0x07d0 : Data signal of output_60
//          bit 15~0 - output_60[15:0] (Read)
//          others   - reserved
// 0x07d4 : Control signal of output_60
//          bit 0  - output_60_ap_vld (Read/COR)
//          others - reserved
// 0x07e0 : Data signal of output_61
//          bit 15~0 - output_61[15:0] (Read)
//          others   - reserved
// 0x07e4 : Control signal of output_61
//          bit 0  - output_61_ap_vld (Read/COR)
//          others - reserved
// 0x07f0 : Data signal of output_62
//          bit 15~0 - output_62[15:0] (Read)
//          others   - reserved
// 0x07f4 : Control signal of output_62
//          bit 0  - output_62_ap_vld (Read/COR)
//          others - reserved
// 0x0800 : Data signal of output_63
//          bit 15~0 - output_63[15:0] (Read)
//          others   - reserved
// 0x0804 : Control signal of output_63
//          bit 0  - output_63_ap_vld (Read/COR)
//          others - reserved
// 0x0810 : Data signal of output_64
//          bit 15~0 - output_64[15:0] (Read)
//          others   - reserved
// 0x0814 : Control signal of output_64
//          bit 0  - output_64_ap_vld (Read/COR)
//          others - reserved
// 0x0820 : Data signal of output_65
//          bit 15~0 - output_65[15:0] (Read)
//          others   - reserved
// 0x0824 : Control signal of output_65
//          bit 0  - output_65_ap_vld (Read/COR)
//          others - reserved
// 0x0830 : Data signal of output_66
//          bit 15~0 - output_66[15:0] (Read)
//          others   - reserved
// 0x0834 : Control signal of output_66
//          bit 0  - output_66_ap_vld (Read/COR)
//          others - reserved
// 0x0840 : Data signal of output_67
//          bit 15~0 - output_67[15:0] (Read)
//          others   - reserved
// 0x0844 : Control signal of output_67
//          bit 0  - output_67_ap_vld (Read/COR)
//          others - reserved
// 0x0850 : Data signal of output_68
//          bit 15~0 - output_68[15:0] (Read)
//          others   - reserved
// 0x0854 : Control signal of output_68
//          bit 0  - output_68_ap_vld (Read/COR)
//          others - reserved
// 0x0860 : Data signal of output_69
//          bit 15~0 - output_69[15:0] (Read)
//          others   - reserved
// 0x0864 : Control signal of output_69
//          bit 0  - output_69_ap_vld (Read/COR)
//          others - reserved
// 0x0870 : Data signal of output_70
//          bit 15~0 - output_70[15:0] (Read)
//          others   - reserved
// 0x0874 : Control signal of output_70
//          bit 0  - output_70_ap_vld (Read/COR)
//          others - reserved
// 0x0880 : Data signal of output_71
//          bit 15~0 - output_71[15:0] (Read)
//          others   - reserved
// 0x0884 : Control signal of output_71
//          bit 0  - output_71_ap_vld (Read/COR)
//          others - reserved
// 0x0890 : Data signal of output_72
//          bit 15~0 - output_72[15:0] (Read)
//          others   - reserved
// 0x0894 : Control signal of output_72
//          bit 0  - output_72_ap_vld (Read/COR)
//          others - reserved
// 0x08a0 : Data signal of output_73
//          bit 15~0 - output_73[15:0] (Read)
//          others   - reserved
// 0x08a4 : Control signal of output_73
//          bit 0  - output_73_ap_vld (Read/COR)
//          others - reserved
// 0x08b0 : Data signal of output_74
//          bit 15~0 - output_74[15:0] (Read)
//          others   - reserved
// 0x08b4 : Control signal of output_74
//          bit 0  - output_74_ap_vld (Read/COR)
//          others - reserved
// 0x08c0 : Data signal of output_75
//          bit 15~0 - output_75[15:0] (Read)
//          others   - reserved
// 0x08c4 : Control signal of output_75
//          bit 0  - output_75_ap_vld (Read/COR)
//          others - reserved
// 0x08d0 : Data signal of output_76
//          bit 15~0 - output_76[15:0] (Read)
//          others   - reserved
// 0x08d4 : Control signal of output_76
//          bit 0  - output_76_ap_vld (Read/COR)
//          others - reserved
// 0x08e0 : Data signal of output_77
//          bit 15~0 - output_77[15:0] (Read)
//          others   - reserved
// 0x08e4 : Control signal of output_77
//          bit 0  - output_77_ap_vld (Read/COR)
//          others - reserved
// 0x08f0 : Data signal of output_78
//          bit 15~0 - output_78[15:0] (Read)
//          others   - reserved
// 0x08f4 : Control signal of output_78
//          bit 0  - output_78_ap_vld (Read/COR)
//          others - reserved
// 0x0900 : Data signal of output_79
//          bit 15~0 - output_79[15:0] (Read)
//          others   - reserved
// 0x0904 : Control signal of output_79
//          bit 0  - output_79_ap_vld (Read/COR)
//          others - reserved
// 0x0910 : Data signal of output_80
//          bit 15~0 - output_80[15:0] (Read)
//          others   - reserved
// 0x0914 : Control signal of output_80
//          bit 0  - output_80_ap_vld (Read/COR)
//          others - reserved
// 0x0920 : Data signal of output_81
//          bit 15~0 - output_81[15:0] (Read)
//          others   - reserved
// 0x0924 : Control signal of output_81
//          bit 0  - output_81_ap_vld (Read/COR)
//          others - reserved
// 0x0930 : Data signal of output_82
//          bit 15~0 - output_82[15:0] (Read)
//          others   - reserved
// 0x0934 : Control signal of output_82
//          bit 0  - output_82_ap_vld (Read/COR)
//          others - reserved
// 0x0940 : Data signal of output_83
//          bit 15~0 - output_83[15:0] (Read)
//          others   - reserved
// 0x0944 : Control signal of output_83
//          bit 0  - output_83_ap_vld (Read/COR)
//          others - reserved
// 0x0950 : Data signal of output_84
//          bit 15~0 - output_84[15:0] (Read)
//          others   - reserved
// 0x0954 : Control signal of output_84
//          bit 0  - output_84_ap_vld (Read/COR)
//          others - reserved
// 0x0960 : Data signal of output_85
//          bit 15~0 - output_85[15:0] (Read)
//          others   - reserved
// 0x0964 : Control signal of output_85
//          bit 0  - output_85_ap_vld (Read/COR)
//          others - reserved
// 0x0970 : Data signal of output_86
//          bit 15~0 - output_86[15:0] (Read)
//          others   - reserved
// 0x0974 : Control signal of output_86
//          bit 0  - output_86_ap_vld (Read/COR)
//          others - reserved
// 0x0980 : Data signal of output_87
//          bit 15~0 - output_87[15:0] (Read)
//          others   - reserved
// 0x0984 : Control signal of output_87
//          bit 0  - output_87_ap_vld (Read/COR)
//          others - reserved
// 0x0990 : Data signal of output_88
//          bit 15~0 - output_88[15:0] (Read)
//          others   - reserved
// 0x0994 : Control signal of output_88
//          bit 0  - output_88_ap_vld (Read/COR)
//          others - reserved
// 0x09a0 : Data signal of output_89
//          bit 15~0 - output_89[15:0] (Read)
//          others   - reserved
// 0x09a4 : Control signal of output_89
//          bit 0  - output_89_ap_vld (Read/COR)
//          others - reserved
// 0x09b0 : Data signal of output_90
//          bit 15~0 - output_90[15:0] (Read)
//          others   - reserved
// 0x09b4 : Control signal of output_90
//          bit 0  - output_90_ap_vld (Read/COR)
//          others - reserved
// 0x09c0 : Data signal of output_91
//          bit 15~0 - output_91[15:0] (Read)
//          others   - reserved
// 0x09c4 : Control signal of output_91
//          bit 0  - output_91_ap_vld (Read/COR)
//          others - reserved
// 0x09d0 : Data signal of output_92
//          bit 15~0 - output_92[15:0] (Read)
//          others   - reserved
// 0x09d4 : Control signal of output_92
//          bit 0  - output_92_ap_vld (Read/COR)
//          others - reserved
// 0x09e0 : Data signal of output_93
//          bit 15~0 - output_93[15:0] (Read)
//          others   - reserved
// 0x09e4 : Control signal of output_93
//          bit 0  - output_93_ap_vld (Read/COR)
//          others - reserved
// 0x09f0 : Data signal of output_94
//          bit 15~0 - output_94[15:0] (Read)
//          others   - reserved
// 0x09f4 : Control signal of output_94
//          bit 0  - output_94_ap_vld (Read/COR)
//          others - reserved
// 0x0a00 : Data signal of output_95
//          bit 15~0 - output_95[15:0] (Read)
//          others   - reserved
// 0x0a04 : Control signal of output_95
//          bit 0  - output_95_ap_vld (Read/COR)
//          others - reserved
// 0x0a10 : Data signal of output_96
//          bit 15~0 - output_96[15:0] (Read)
//          others   - reserved
// 0x0a14 : Control signal of output_96
//          bit 0  - output_96_ap_vld (Read/COR)
//          others - reserved
// 0x0a20 : Data signal of output_97
//          bit 15~0 - output_97[15:0] (Read)
//          others   - reserved
// 0x0a24 : Control signal of output_97
//          bit 0  - output_97_ap_vld (Read/COR)
//          others - reserved
// 0x0a30 : Data signal of output_98
//          bit 15~0 - output_98[15:0] (Read)
//          others   - reserved
// 0x0a34 : Control signal of output_98
//          bit 0  - output_98_ap_vld (Read/COR)
//          others - reserved
// 0x0a40 : Data signal of output_99
//          bit 15~0 - output_99[15:0] (Read)
//          others   - reserved
// 0x0a44 : Control signal of output_99
//          bit 0  - output_99_ap_vld (Read/COR)
//          others - reserved
// 0x0a50 : Data signal of output_100
//          bit 15~0 - output_100[15:0] (Read)
//          others   - reserved
// 0x0a54 : Control signal of output_100
//          bit 0  - output_100_ap_vld (Read/COR)
//          others - reserved
// 0x0a60 : Data signal of output_101
//          bit 15~0 - output_101[15:0] (Read)
//          others   - reserved
// 0x0a64 : Control signal of output_101
//          bit 0  - output_101_ap_vld (Read/COR)
//          others - reserved
// 0x0a70 : Data signal of output_102
//          bit 15~0 - output_102[15:0] (Read)
//          others   - reserved
// 0x0a74 : Control signal of output_102
//          bit 0  - output_102_ap_vld (Read/COR)
//          others - reserved
// 0x0a80 : Data signal of output_103
//          bit 15~0 - output_103[15:0] (Read)
//          others   - reserved
// 0x0a84 : Control signal of output_103
//          bit 0  - output_103_ap_vld (Read/COR)
//          others - reserved
// 0x0a90 : Data signal of output_104
//          bit 15~0 - output_104[15:0] (Read)
//          others   - reserved
// 0x0a94 : Control signal of output_104
//          bit 0  - output_104_ap_vld (Read/COR)
//          others - reserved
// 0x0aa0 : Data signal of output_105
//          bit 15~0 - output_105[15:0] (Read)
//          others   - reserved
// 0x0aa4 : Control signal of output_105
//          bit 0  - output_105_ap_vld (Read/COR)
//          others - reserved
// 0x0ab0 : Data signal of output_106
//          bit 15~0 - output_106[15:0] (Read)
//          others   - reserved
// 0x0ab4 : Control signal of output_106
//          bit 0  - output_106_ap_vld (Read/COR)
//          others - reserved
// 0x0ac0 : Data signal of output_107
//          bit 15~0 - output_107[15:0] (Read)
//          others   - reserved
// 0x0ac4 : Control signal of output_107
//          bit 0  - output_107_ap_vld (Read/COR)
//          others - reserved
// 0x0ad0 : Data signal of output_108
//          bit 15~0 - output_108[15:0] (Read)
//          others   - reserved
// 0x0ad4 : Control signal of output_108
//          bit 0  - output_108_ap_vld (Read/COR)
//          others - reserved
// 0x0ae0 : Data signal of output_109
//          bit 15~0 - output_109[15:0] (Read)
//          others   - reserved
// 0x0ae4 : Control signal of output_109
//          bit 0  - output_109_ap_vld (Read/COR)
//          others - reserved
// 0x0af0 : Data signal of output_110
//          bit 15~0 - output_110[15:0] (Read)
//          others   - reserved
// 0x0af4 : Control signal of output_110
//          bit 0  - output_110_ap_vld (Read/COR)
//          others - reserved
// 0x0b00 : Data signal of output_111
//          bit 15~0 - output_111[15:0] (Read)
//          others   - reserved
// 0x0b04 : Control signal of output_111
//          bit 0  - output_111_ap_vld (Read/COR)
//          others - reserved
// 0x0b10 : Data signal of output_112
//          bit 15~0 - output_112[15:0] (Read)
//          others   - reserved
// 0x0b14 : Control signal of output_112
//          bit 0  - output_112_ap_vld (Read/COR)
//          others - reserved
// 0x0b20 : Data signal of output_113
//          bit 15~0 - output_113[15:0] (Read)
//          others   - reserved
// 0x0b24 : Control signal of output_113
//          bit 0  - output_113_ap_vld (Read/COR)
//          others - reserved
// 0x0b30 : Data signal of output_114
//          bit 15~0 - output_114[15:0] (Read)
//          others   - reserved
// 0x0b34 : Control signal of output_114
//          bit 0  - output_114_ap_vld (Read/COR)
//          others - reserved
// 0x0b40 : Data signal of output_115
//          bit 15~0 - output_115[15:0] (Read)
//          others   - reserved
// 0x0b44 : Control signal of output_115
//          bit 0  - output_115_ap_vld (Read/COR)
//          others - reserved
// 0x0b50 : Data signal of output_116
//          bit 15~0 - output_116[15:0] (Read)
//          others   - reserved
// 0x0b54 : Control signal of output_116
//          bit 0  - output_116_ap_vld (Read/COR)
//          others - reserved
// 0x0b60 : Data signal of output_117
//          bit 15~0 - output_117[15:0] (Read)
//          others   - reserved
// 0x0b64 : Control signal of output_117
//          bit 0  - output_117_ap_vld (Read/COR)
//          others - reserved
// 0x0b70 : Data signal of output_118
//          bit 15~0 - output_118[15:0] (Read)
//          others   - reserved
// 0x0b74 : Control signal of output_118
//          bit 0  - output_118_ap_vld (Read/COR)
//          others - reserved
// 0x0b80 : Data signal of output_119
//          bit 15~0 - output_119[15:0] (Read)
//          others   - reserved
// 0x0b84 : Control signal of output_119
//          bit 0  - output_119_ap_vld (Read/COR)
//          others - reserved
// 0x0b90 : Data signal of output_120
//          bit 15~0 - output_120[15:0] (Read)
//          others   - reserved
// 0x0b94 : Control signal of output_120
//          bit 0  - output_120_ap_vld (Read/COR)
//          others - reserved
// 0x0ba0 : Data signal of output_121
//          bit 15~0 - output_121[15:0] (Read)
//          others   - reserved
// 0x0ba4 : Control signal of output_121
//          bit 0  - output_121_ap_vld (Read/COR)
//          others - reserved
// 0x0bb0 : Data signal of output_122
//          bit 15~0 - output_122[15:0] (Read)
//          others   - reserved
// 0x0bb4 : Control signal of output_122
//          bit 0  - output_122_ap_vld (Read/COR)
//          others - reserved
// 0x0bc0 : Data signal of output_123
//          bit 15~0 - output_123[15:0] (Read)
//          others   - reserved
// 0x0bc4 : Control signal of output_123
//          bit 0  - output_123_ap_vld (Read/COR)
//          others - reserved
// 0x0bd0 : Data signal of output_124
//          bit 15~0 - output_124[15:0] (Read)
//          others   - reserved
// 0x0bd4 : Control signal of output_124
//          bit 0  - output_124_ap_vld (Read/COR)
//          others - reserved
// 0x0be0 : Data signal of output_125
//          bit 15~0 - output_125[15:0] (Read)
//          others   - reserved
// 0x0be4 : Control signal of output_125
//          bit 0  - output_125_ap_vld (Read/COR)
//          others - reserved
// 0x0bf0 : Data signal of output_126
//          bit 15~0 - output_126[15:0] (Read)
//          others   - reserved
// 0x0bf4 : Control signal of output_126
//          bit 0  - output_126_ap_vld (Read/COR)
//          others - reserved
// 0x0c00 : Data signal of output_127
//          bit 15~0 - output_127[15:0] (Read)
//          others   - reserved
// 0x0c04 : Control signal of output_127
//          bit 0  - output_127_ap_vld (Read/COR)
//          others - reserved
// 0x0c10 : Data signal of numOfOutputNeurons
//          bit 15~0 - numOfOutputNeurons[15:0] (Read/Write)
//          others   - reserved
// 0x0c14 : reserved
// 0x0c18 : Data signal of activation
//          bit 7~0 - activation[7:0] (Read/Write)
//          others  - reserved
// 0x0c1c : reserved
// 0x0d00 ~
// 0x0dff : Memory 'bias' (128 * 16b)
//          Word n : bit [15: 0] - bias[2n]
//                   bit [31:16] - bias[2n+1]
// 0x0e00 ~
// 0x0eff : Memory 'weights_0' (128 * 16b)
//          Word n : bit [15: 0] - weights_0[2n]
//                   bit [31:16] - weights_0[2n+1]
// 0x0f00 ~
// 0x0fff : Memory 'weights_1' (128 * 16b)
//          Word n : bit [15: 0] - weights_1[2n]
//                   bit [31:16] - weights_1[2n+1]
// 0x1000 ~
// 0x10ff : Memory 'weights_2' (128 * 16b)
//          Word n : bit [15: 0] - weights_2[2n]
//                   bit [31:16] - weights_2[2n+1]
// 0x1100 ~
// 0x11ff : Memory 'weights_3' (128 * 16b)
//          Word n : bit [15: 0] - weights_3[2n]
//                   bit [31:16] - weights_3[2n+1]
// 0x1200 ~
// 0x12ff : Memory 'weights_4' (128 * 16b)
//          Word n : bit [15: 0] - weights_4[2n]
//                   bit [31:16] - weights_4[2n+1]
// 0x1300 ~
// 0x13ff : Memory 'weights_5' (128 * 16b)
//          Word n : bit [15: 0] - weights_5[2n]
//                   bit [31:16] - weights_5[2n+1]
// 0x1400 ~
// 0x14ff : Memory 'weights_6' (128 * 16b)
//          Word n : bit [15: 0] - weights_6[2n]
//                   bit [31:16] - weights_6[2n+1]
// 0x1500 ~
// 0x15ff : Memory 'weights_7' (128 * 16b)
//          Word n : bit [15: 0] - weights_7[2n]
//                   bit [31:16] - weights_7[2n+1]
// 0x1600 ~
// 0x16ff : Memory 'weights_8' (128 * 16b)
//          Word n : bit [15: 0] - weights_8[2n]
//                   bit [31:16] - weights_8[2n+1]
// 0x1700 ~
// 0x17ff : Memory 'weights_9' (128 * 16b)
//          Word n : bit [15: 0] - weights_9[2n]
//                   bit [31:16] - weights_9[2n+1]
// 0x1800 ~
// 0x18ff : Memory 'weights_10' (128 * 16b)
//          Word n : bit [15: 0] - weights_10[2n]
//                   bit [31:16] - weights_10[2n+1]
// 0x1900 ~
// 0x19ff : Memory 'weights_11' (128 * 16b)
//          Word n : bit [15: 0] - weights_11[2n]
//                   bit [31:16] - weights_11[2n+1]
// 0x1a00 ~
// 0x1aff : Memory 'weights_12' (128 * 16b)
//          Word n : bit [15: 0] - weights_12[2n]
//                   bit [31:16] - weights_12[2n+1]
// 0x1b00 ~
// 0x1bff : Memory 'weights_13' (128 * 16b)
//          Word n : bit [15: 0] - weights_13[2n]
//                   bit [31:16] - weights_13[2n+1]
// 0x1c00 ~
// 0x1cff : Memory 'weights_14' (128 * 16b)
//          Word n : bit [15: 0] - weights_14[2n]
//                   bit [31:16] - weights_14[2n+1]
// 0x1d00 ~
// 0x1dff : Memory 'weights_15' (128 * 16b)
//          Word n : bit [15: 0] - weights_15[2n]
//                   bit [31:16] - weights_15[2n+1]
// 0x1e00 ~
// 0x1eff : Memory 'weights_16' (128 * 16b)
//          Word n : bit [15: 0] - weights_16[2n]
//                   bit [31:16] - weights_16[2n+1]
// 0x1f00 ~
// 0x1fff : Memory 'weights_17' (128 * 16b)
//          Word n : bit [15: 0] - weights_17[2n]
//                   bit [31:16] - weights_17[2n+1]
// 0x2000 ~
// 0x20ff : Memory 'weights_18' (128 * 16b)
//          Word n : bit [15: 0] - weights_18[2n]
//                   bit [31:16] - weights_18[2n+1]
// 0x2100 ~
// 0x21ff : Memory 'weights_19' (128 * 16b)
//          Word n : bit [15: 0] - weights_19[2n]
//                   bit [31:16] - weights_19[2n+1]
// 0x2200 ~
// 0x22ff : Memory 'weights_20' (128 * 16b)
//          Word n : bit [15: 0] - weights_20[2n]
//                   bit [31:16] - weights_20[2n+1]
// 0x2300 ~
// 0x23ff : Memory 'weights_21' (128 * 16b)
//          Word n : bit [15: 0] - weights_21[2n]
//                   bit [31:16] - weights_21[2n+1]
// 0x2400 ~
// 0x24ff : Memory 'weights_22' (128 * 16b)
//          Word n : bit [15: 0] - weights_22[2n]
//                   bit [31:16] - weights_22[2n+1]
// 0x2500 ~
// 0x25ff : Memory 'weights_23' (128 * 16b)
//          Word n : bit [15: 0] - weights_23[2n]
//                   bit [31:16] - weights_23[2n+1]
// 0x2600 ~
// 0x26ff : Memory 'weights_24' (128 * 16b)
//          Word n : bit [15: 0] - weights_24[2n]
//                   bit [31:16] - weights_24[2n+1]
// 0x2700 ~
// 0x27ff : Memory 'weights_25' (128 * 16b)
//          Word n : bit [15: 0] - weights_25[2n]
//                   bit [31:16] - weights_25[2n+1]
// 0x2800 ~
// 0x28ff : Memory 'weights_26' (128 * 16b)
//          Word n : bit [15: 0] - weights_26[2n]
//                   bit [31:16] - weights_26[2n+1]
// 0x2900 ~
// 0x29ff : Memory 'weights_27' (128 * 16b)
//          Word n : bit [15: 0] - weights_27[2n]
//                   bit [31:16] - weights_27[2n+1]
// 0x2a00 ~
// 0x2aff : Memory 'weights_28' (128 * 16b)
//          Word n : bit [15: 0] - weights_28[2n]
//                   bit [31:16] - weights_28[2n+1]
// 0x2b00 ~
// 0x2bff : Memory 'weights_29' (128 * 16b)
//          Word n : bit [15: 0] - weights_29[2n]
//                   bit [31:16] - weights_29[2n+1]
// 0x2c00 ~
// 0x2cff : Memory 'weights_30' (128 * 16b)
//          Word n : bit [15: 0] - weights_30[2n]
//                   bit [31:16] - weights_30[2n+1]
// 0x2d00 ~
// 0x2dff : Memory 'weights_31' (128 * 16b)
//          Word n : bit [15: 0] - weights_31[2n]
//                   bit [31:16] - weights_31[2n+1]
// 0x2e00 ~
// 0x2eff : Memory 'weights_32' (128 * 16b)
//          Word n : bit [15: 0] - weights_32[2n]
//                   bit [31:16] - weights_32[2n+1]
// 0x2f00 ~
// 0x2fff : Memory 'weights_33' (128 * 16b)
//          Word n : bit [15: 0] - weights_33[2n]
//                   bit [31:16] - weights_33[2n+1]
// 0x3000 ~
// 0x30ff : Memory 'weights_34' (128 * 16b)
//          Word n : bit [15: 0] - weights_34[2n]
//                   bit [31:16] - weights_34[2n+1]
// 0x3100 ~
// 0x31ff : Memory 'weights_35' (128 * 16b)
//          Word n : bit [15: 0] - weights_35[2n]
//                   bit [31:16] - weights_35[2n+1]
// 0x3200 ~
// 0x32ff : Memory 'weights_36' (128 * 16b)
//          Word n : bit [15: 0] - weights_36[2n]
//                   bit [31:16] - weights_36[2n+1]
// 0x3300 ~
// 0x33ff : Memory 'weights_37' (128 * 16b)
//          Word n : bit [15: 0] - weights_37[2n]
//                   bit [31:16] - weights_37[2n+1]
// 0x3400 ~
// 0x34ff : Memory 'weights_38' (128 * 16b)
//          Word n : bit [15: 0] - weights_38[2n]
//                   bit [31:16] - weights_38[2n+1]
// 0x3500 ~
// 0x35ff : Memory 'weights_39' (128 * 16b)
//          Word n : bit [15: 0] - weights_39[2n]
//                   bit [31:16] - weights_39[2n+1]
// 0x3600 ~
// 0x36ff : Memory 'weights_40' (128 * 16b)
//          Word n : bit [15: 0] - weights_40[2n]
//                   bit [31:16] - weights_40[2n+1]
// 0x3700 ~
// 0x37ff : Memory 'weights_41' (128 * 16b)
//          Word n : bit [15: 0] - weights_41[2n]
//                   bit [31:16] - weights_41[2n+1]
// 0x3800 ~
// 0x38ff : Memory 'weights_42' (128 * 16b)
//          Word n : bit [15: 0] - weights_42[2n]
//                   bit [31:16] - weights_42[2n+1]
// 0x3900 ~
// 0x39ff : Memory 'weights_43' (128 * 16b)
//          Word n : bit [15: 0] - weights_43[2n]
//                   bit [31:16] - weights_43[2n+1]
// 0x3a00 ~
// 0x3aff : Memory 'weights_44' (128 * 16b)
//          Word n : bit [15: 0] - weights_44[2n]
//                   bit [31:16] - weights_44[2n+1]
// 0x3b00 ~
// 0x3bff : Memory 'weights_45' (128 * 16b)
//          Word n : bit [15: 0] - weights_45[2n]
//                   bit [31:16] - weights_45[2n+1]
// 0x3c00 ~
// 0x3cff : Memory 'weights_46' (128 * 16b)
//          Word n : bit [15: 0] - weights_46[2n]
//                   bit [31:16] - weights_46[2n+1]
// 0x3d00 ~
// 0x3dff : Memory 'weights_47' (128 * 16b)
//          Word n : bit [15: 0] - weights_47[2n]
//                   bit [31:16] - weights_47[2n+1]
// 0x3e00 ~
// 0x3eff : Memory 'weights_48' (128 * 16b)
//          Word n : bit [15: 0] - weights_48[2n]
//                   bit [31:16] - weights_48[2n+1]
// 0x3f00 ~
// 0x3fff : Memory 'weights_49' (128 * 16b)
//          Word n : bit [15: 0] - weights_49[2n]
//                   bit [31:16] - weights_49[2n+1]
// 0x4000 ~
// 0x40ff : Memory 'weights_50' (128 * 16b)
//          Word n : bit [15: 0] - weights_50[2n]
//                   bit [31:16] - weights_50[2n+1]
// 0x4100 ~
// 0x41ff : Memory 'weights_51' (128 * 16b)
//          Word n : bit [15: 0] - weights_51[2n]
//                   bit [31:16] - weights_51[2n+1]
// 0x4200 ~
// 0x42ff : Memory 'weights_52' (128 * 16b)
//          Word n : bit [15: 0] - weights_52[2n]
//                   bit [31:16] - weights_52[2n+1]
// 0x4300 ~
// 0x43ff : Memory 'weights_53' (128 * 16b)
//          Word n : bit [15: 0] - weights_53[2n]
//                   bit [31:16] - weights_53[2n+1]
// 0x4400 ~
// 0x44ff : Memory 'weights_54' (128 * 16b)
//          Word n : bit [15: 0] - weights_54[2n]
//                   bit [31:16] - weights_54[2n+1]
// 0x4500 ~
// 0x45ff : Memory 'weights_55' (128 * 16b)
//          Word n : bit [15: 0] - weights_55[2n]
//                   bit [31:16] - weights_55[2n+1]
// 0x4600 ~
// 0x46ff : Memory 'weights_56' (128 * 16b)
//          Word n : bit [15: 0] - weights_56[2n]
//                   bit [31:16] - weights_56[2n+1]
// 0x4700 ~
// 0x47ff : Memory 'weights_57' (128 * 16b)
//          Word n : bit [15: 0] - weights_57[2n]
//                   bit [31:16] - weights_57[2n+1]
// 0x4800 ~
// 0x48ff : Memory 'weights_58' (128 * 16b)
//          Word n : bit [15: 0] - weights_58[2n]
//                   bit [31:16] - weights_58[2n+1]
// 0x4900 ~
// 0x49ff : Memory 'weights_59' (128 * 16b)
//          Word n : bit [15: 0] - weights_59[2n]
//                   bit [31:16] - weights_59[2n+1]
// 0x4a00 ~
// 0x4aff : Memory 'weights_60' (128 * 16b)
//          Word n : bit [15: 0] - weights_60[2n]
//                   bit [31:16] - weights_60[2n+1]
// 0x4b00 ~
// 0x4bff : Memory 'weights_61' (128 * 16b)
//          Word n : bit [15: 0] - weights_61[2n]
//                   bit [31:16] - weights_61[2n+1]
// 0x4c00 ~
// 0x4cff : Memory 'weights_62' (128 * 16b)
//          Word n : bit [15: 0] - weights_62[2n]
//                   bit [31:16] - weights_62[2n+1]
// 0x4d00 ~
// 0x4dff : Memory 'weights_63' (128 * 16b)
//          Word n : bit [15: 0] - weights_63[2n]
//                   bit [31:16] - weights_63[2n+1]
// 0x4e00 ~
// 0x4eff : Memory 'weights_64' (128 * 16b)
//          Word n : bit [15: 0] - weights_64[2n]
//                   bit [31:16] - weights_64[2n+1]
// 0x4f00 ~
// 0x4fff : Memory 'weights_65' (128 * 16b)
//          Word n : bit [15: 0] - weights_65[2n]
//                   bit [31:16] - weights_65[2n+1]
// 0x5000 ~
// 0x50ff : Memory 'weights_66' (128 * 16b)
//          Word n : bit [15: 0] - weights_66[2n]
//                   bit [31:16] - weights_66[2n+1]
// 0x5100 ~
// 0x51ff : Memory 'weights_67' (128 * 16b)
//          Word n : bit [15: 0] - weights_67[2n]
//                   bit [31:16] - weights_67[2n+1]
// 0x5200 ~
// 0x52ff : Memory 'weights_68' (128 * 16b)
//          Word n : bit [15: 0] - weights_68[2n]
//                   bit [31:16] - weights_68[2n+1]
// 0x5300 ~
// 0x53ff : Memory 'weights_69' (128 * 16b)
//          Word n : bit [15: 0] - weights_69[2n]
//                   bit [31:16] - weights_69[2n+1]
// 0x5400 ~
// 0x54ff : Memory 'weights_70' (128 * 16b)
//          Word n : bit [15: 0] - weights_70[2n]
//                   bit [31:16] - weights_70[2n+1]
// 0x5500 ~
// 0x55ff : Memory 'weights_71' (128 * 16b)
//          Word n : bit [15: 0] - weights_71[2n]
//                   bit [31:16] - weights_71[2n+1]
// 0x5600 ~
// 0x56ff : Memory 'weights_72' (128 * 16b)
//          Word n : bit [15: 0] - weights_72[2n]
//                   bit [31:16] - weights_72[2n+1]
// 0x5700 ~
// 0x57ff : Memory 'weights_73' (128 * 16b)
//          Word n : bit [15: 0] - weights_73[2n]
//                   bit [31:16] - weights_73[2n+1]
// 0x5800 ~
// 0x58ff : Memory 'weights_74' (128 * 16b)
//          Word n : bit [15: 0] - weights_74[2n]
//                   bit [31:16] - weights_74[2n+1]
// 0x5900 ~
// 0x59ff : Memory 'weights_75' (128 * 16b)
//          Word n : bit [15: 0] - weights_75[2n]
//                   bit [31:16] - weights_75[2n+1]
// 0x5a00 ~
// 0x5aff : Memory 'weights_76' (128 * 16b)
//          Word n : bit [15: 0] - weights_76[2n]
//                   bit [31:16] - weights_76[2n+1]
// 0x5b00 ~
// 0x5bff : Memory 'weights_77' (128 * 16b)
//          Word n : bit [15: 0] - weights_77[2n]
//                   bit [31:16] - weights_77[2n+1]
// 0x5c00 ~
// 0x5cff : Memory 'weights_78' (128 * 16b)
//          Word n : bit [15: 0] - weights_78[2n]
//                   bit [31:16] - weights_78[2n+1]
// 0x5d00 ~
// 0x5dff : Memory 'weights_79' (128 * 16b)
//          Word n : bit [15: 0] - weights_79[2n]
//                   bit [31:16] - weights_79[2n+1]
// 0x5e00 ~
// 0x5eff : Memory 'weights_80' (128 * 16b)
//          Word n : bit [15: 0] - weights_80[2n]
//                   bit [31:16] - weights_80[2n+1]
// 0x5f00 ~
// 0x5fff : Memory 'weights_81' (128 * 16b)
//          Word n : bit [15: 0] - weights_81[2n]
//                   bit [31:16] - weights_81[2n+1]
// 0x6000 ~
// 0x60ff : Memory 'weights_82' (128 * 16b)
//          Word n : bit [15: 0] - weights_82[2n]
//                   bit [31:16] - weights_82[2n+1]
// 0x6100 ~
// 0x61ff : Memory 'weights_83' (128 * 16b)
//          Word n : bit [15: 0] - weights_83[2n]
//                   bit [31:16] - weights_83[2n+1]
// 0x6200 ~
// 0x62ff : Memory 'weights_84' (128 * 16b)
//          Word n : bit [15: 0] - weights_84[2n]
//                   bit [31:16] - weights_84[2n+1]
// 0x6300 ~
// 0x63ff : Memory 'weights_85' (128 * 16b)
//          Word n : bit [15: 0] - weights_85[2n]
//                   bit [31:16] - weights_85[2n+1]
// 0x6400 ~
// 0x64ff : Memory 'weights_86' (128 * 16b)
//          Word n : bit [15: 0] - weights_86[2n]
//                   bit [31:16] - weights_86[2n+1]
// 0x6500 ~
// 0x65ff : Memory 'weights_87' (128 * 16b)
//          Word n : bit [15: 0] - weights_87[2n]
//                   bit [31:16] - weights_87[2n+1]
// 0x6600 ~
// 0x66ff : Memory 'weights_88' (128 * 16b)
//          Word n : bit [15: 0] - weights_88[2n]
//                   bit [31:16] - weights_88[2n+1]
// 0x6700 ~
// 0x67ff : Memory 'weights_89' (128 * 16b)
//          Word n : bit [15: 0] - weights_89[2n]
//                   bit [31:16] - weights_89[2n+1]
// 0x6800 ~
// 0x68ff : Memory 'weights_90' (128 * 16b)
//          Word n : bit [15: 0] - weights_90[2n]
//                   bit [31:16] - weights_90[2n+1]
// 0x6900 ~
// 0x69ff : Memory 'weights_91' (128 * 16b)
//          Word n : bit [15: 0] - weights_91[2n]
//                   bit [31:16] - weights_91[2n+1]
// 0x6a00 ~
// 0x6aff : Memory 'weights_92' (128 * 16b)
//          Word n : bit [15: 0] - weights_92[2n]
//                   bit [31:16] - weights_92[2n+1]
// 0x6b00 ~
// 0x6bff : Memory 'weights_93' (128 * 16b)
//          Word n : bit [15: 0] - weights_93[2n]
//                   bit [31:16] - weights_93[2n+1]
// 0x6c00 ~
// 0x6cff : Memory 'weights_94' (128 * 16b)
//          Word n : bit [15: 0] - weights_94[2n]
//                   bit [31:16] - weights_94[2n+1]
// 0x6d00 ~
// 0x6dff : Memory 'weights_95' (128 * 16b)
//          Word n : bit [15: 0] - weights_95[2n]
//                   bit [31:16] - weights_95[2n+1]
// 0x6e00 ~
// 0x6eff : Memory 'weights_96' (128 * 16b)
//          Word n : bit [15: 0] - weights_96[2n]
//                   bit [31:16] - weights_96[2n+1]
// 0x6f00 ~
// 0x6fff : Memory 'weights_97' (128 * 16b)
//          Word n : bit [15: 0] - weights_97[2n]
//                   bit [31:16] - weights_97[2n+1]
// 0x7000 ~
// 0x70ff : Memory 'weights_98' (128 * 16b)
//          Word n : bit [15: 0] - weights_98[2n]
//                   bit [31:16] - weights_98[2n+1]
// 0x7100 ~
// 0x71ff : Memory 'weights_99' (128 * 16b)
//          Word n : bit [15: 0] - weights_99[2n]
//                   bit [31:16] - weights_99[2n+1]
// 0x7200 ~
// 0x72ff : Memory 'weights_100' (128 * 16b)
//          Word n : bit [15: 0] - weights_100[2n]
//                   bit [31:16] - weights_100[2n+1]
// 0x7300 ~
// 0x73ff : Memory 'weights_101' (128 * 16b)
//          Word n : bit [15: 0] - weights_101[2n]
//                   bit [31:16] - weights_101[2n+1]
// 0x7400 ~
// 0x74ff : Memory 'weights_102' (128 * 16b)
//          Word n : bit [15: 0] - weights_102[2n]
//                   bit [31:16] - weights_102[2n+1]
// 0x7500 ~
// 0x75ff : Memory 'weights_103' (128 * 16b)
//          Word n : bit [15: 0] - weights_103[2n]
//                   bit [31:16] - weights_103[2n+1]
// 0x7600 ~
// 0x76ff : Memory 'weights_104' (128 * 16b)
//          Word n : bit [15: 0] - weights_104[2n]
//                   bit [31:16] - weights_104[2n+1]
// 0x7700 ~
// 0x77ff : Memory 'weights_105' (128 * 16b)
//          Word n : bit [15: 0] - weights_105[2n]
//                   bit [31:16] - weights_105[2n+1]
// 0x7800 ~
// 0x78ff : Memory 'weights_106' (128 * 16b)
//          Word n : bit [15: 0] - weights_106[2n]
//                   bit [31:16] - weights_106[2n+1]
// 0x7900 ~
// 0x79ff : Memory 'weights_107' (128 * 16b)
//          Word n : bit [15: 0] - weights_107[2n]
//                   bit [31:16] - weights_107[2n+1]
// 0x7a00 ~
// 0x7aff : Memory 'weights_108' (128 * 16b)
//          Word n : bit [15: 0] - weights_108[2n]
//                   bit [31:16] - weights_108[2n+1]
// 0x7b00 ~
// 0x7bff : Memory 'weights_109' (128 * 16b)
//          Word n : bit [15: 0] - weights_109[2n]
//                   bit [31:16] - weights_109[2n+1]
// 0x7c00 ~
// 0x7cff : Memory 'weights_110' (128 * 16b)
//          Word n : bit [15: 0] - weights_110[2n]
//                   bit [31:16] - weights_110[2n+1]
// 0x7d00 ~
// 0x7dff : Memory 'weights_111' (128 * 16b)
//          Word n : bit [15: 0] - weights_111[2n]
//                   bit [31:16] - weights_111[2n+1]
// 0x7e00 ~
// 0x7eff : Memory 'weights_112' (128 * 16b)
//          Word n : bit [15: 0] - weights_112[2n]
//                   bit [31:16] - weights_112[2n+1]
// 0x7f00 ~
// 0x7fff : Memory 'weights_113' (128 * 16b)
//          Word n : bit [15: 0] - weights_113[2n]
//                   bit [31:16] - weights_113[2n+1]
// 0x8000 ~
// 0x80ff : Memory 'weights_114' (128 * 16b)
//          Word n : bit [15: 0] - weights_114[2n]
//                   bit [31:16] - weights_114[2n+1]
// 0x8100 ~
// 0x81ff : Memory 'weights_115' (128 * 16b)
//          Word n : bit [15: 0] - weights_115[2n]
//                   bit [31:16] - weights_115[2n+1]
// 0x8200 ~
// 0x82ff : Memory 'weights_116' (128 * 16b)
//          Word n : bit [15: 0] - weights_116[2n]
//                   bit [31:16] - weights_116[2n+1]
// 0x8300 ~
// 0x83ff : Memory 'weights_117' (128 * 16b)
//          Word n : bit [15: 0] - weights_117[2n]
//                   bit [31:16] - weights_117[2n+1]
// 0x8400 ~
// 0x84ff : Memory 'weights_118' (128 * 16b)
//          Word n : bit [15: 0] - weights_118[2n]
//                   bit [31:16] - weights_118[2n+1]
// 0x8500 ~
// 0x85ff : Memory 'weights_119' (128 * 16b)
//          Word n : bit [15: 0] - weights_119[2n]
//                   bit [31:16] - weights_119[2n+1]
// 0x8600 ~
// 0x86ff : Memory 'weights_120' (128 * 16b)
//          Word n : bit [15: 0] - weights_120[2n]
//                   bit [31:16] - weights_120[2n+1]
// 0x8700 ~
// 0x87ff : Memory 'weights_121' (128 * 16b)
//          Word n : bit [15: 0] - weights_121[2n]
//                   bit [31:16] - weights_121[2n+1]
// 0x8800 ~
// 0x88ff : Memory 'weights_122' (128 * 16b)
//          Word n : bit [15: 0] - weights_122[2n]
//                   bit [31:16] - weights_122[2n+1]
// 0x8900 ~
// 0x89ff : Memory 'weights_123' (128 * 16b)
//          Word n : bit [15: 0] - weights_123[2n]
//                   bit [31:16] - weights_123[2n+1]
// 0x8a00 ~
// 0x8aff : Memory 'weights_124' (128 * 16b)
//          Word n : bit [15: 0] - weights_124[2n]
//                   bit [31:16] - weights_124[2n+1]
// 0x8b00 ~
// 0x8bff : Memory 'weights_125' (128 * 16b)
//          Word n : bit [15: 0] - weights_125[2n]
//                   bit [31:16] - weights_125[2n+1]
// 0x8c00 ~
// 0x8cff : Memory 'weights_126' (128 * 16b)
//          Word n : bit [15: 0] - weights_126[2n]
//                   bit [31:16] - weights_126[2n+1]
// 0x8d00 ~
// 0x8dff : Memory 'weights_127' (128 * 16b)
//          Word n : bit [15: 0] - weights_127[2n]
//                   bit [31:16] - weights_127[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                   = 16'h0000,
    ADDR_GIE                       = 16'h0004,
    ADDR_IER                       = 16'h0008,
    ADDR_ISR                       = 16'h000c,
    ADDR_INPUT_0_DATA_0            = 16'h0010,
    ADDR_INPUT_0_CTRL              = 16'h0014,
    ADDR_INPUT_1_DATA_0            = 16'h0018,
    ADDR_INPUT_1_CTRL              = 16'h001c,
    ADDR_INPUT_2_DATA_0            = 16'h0020,
    ADDR_INPUT_2_CTRL              = 16'h0024,
    ADDR_INPUT_3_DATA_0            = 16'h0028,
    ADDR_INPUT_3_CTRL              = 16'h002c,
    ADDR_INPUT_4_DATA_0            = 16'h0030,
    ADDR_INPUT_4_CTRL              = 16'h0034,
    ADDR_INPUT_5_DATA_0            = 16'h0038,
    ADDR_INPUT_5_CTRL              = 16'h003c,
    ADDR_INPUT_6_DATA_0            = 16'h0040,
    ADDR_INPUT_6_CTRL              = 16'h0044,
    ADDR_INPUT_7_DATA_0            = 16'h0048,
    ADDR_INPUT_7_CTRL              = 16'h004c,
    ADDR_INPUT_8_DATA_0            = 16'h0050,
    ADDR_INPUT_8_CTRL              = 16'h0054,
    ADDR_INPUT_9_DATA_0            = 16'h0058,
    ADDR_INPUT_9_CTRL              = 16'h005c,
    ADDR_INPUT_10_DATA_0           = 16'h0060,
    ADDR_INPUT_10_CTRL             = 16'h0064,
    ADDR_INPUT_11_DATA_0           = 16'h0068,
    ADDR_INPUT_11_CTRL             = 16'h006c,
    ADDR_INPUT_12_DATA_0           = 16'h0070,
    ADDR_INPUT_12_CTRL             = 16'h0074,
    ADDR_INPUT_13_DATA_0           = 16'h0078,
    ADDR_INPUT_13_CTRL             = 16'h007c,
    ADDR_INPUT_14_DATA_0           = 16'h0080,
    ADDR_INPUT_14_CTRL             = 16'h0084,
    ADDR_INPUT_15_DATA_0           = 16'h0088,
    ADDR_INPUT_15_CTRL             = 16'h008c,
    ADDR_INPUT_16_DATA_0           = 16'h0090,
    ADDR_INPUT_16_CTRL             = 16'h0094,
    ADDR_INPUT_17_DATA_0           = 16'h0098,
    ADDR_INPUT_17_CTRL             = 16'h009c,
    ADDR_INPUT_18_DATA_0           = 16'h00a0,
    ADDR_INPUT_18_CTRL             = 16'h00a4,
    ADDR_INPUT_19_DATA_0           = 16'h00a8,
    ADDR_INPUT_19_CTRL             = 16'h00ac,
    ADDR_INPUT_20_DATA_0           = 16'h00b0,
    ADDR_INPUT_20_CTRL             = 16'h00b4,
    ADDR_INPUT_21_DATA_0           = 16'h00b8,
    ADDR_INPUT_21_CTRL             = 16'h00bc,
    ADDR_INPUT_22_DATA_0           = 16'h00c0,
    ADDR_INPUT_22_CTRL             = 16'h00c4,
    ADDR_INPUT_23_DATA_0           = 16'h00c8,
    ADDR_INPUT_23_CTRL             = 16'h00cc,
    ADDR_INPUT_24_DATA_0           = 16'h00d0,
    ADDR_INPUT_24_CTRL             = 16'h00d4,
    ADDR_INPUT_25_DATA_0           = 16'h00d8,
    ADDR_INPUT_25_CTRL             = 16'h00dc,
    ADDR_INPUT_26_DATA_0           = 16'h00e0,
    ADDR_INPUT_26_CTRL             = 16'h00e4,
    ADDR_INPUT_27_DATA_0           = 16'h00e8,
    ADDR_INPUT_27_CTRL             = 16'h00ec,
    ADDR_INPUT_28_DATA_0           = 16'h00f0,
    ADDR_INPUT_28_CTRL             = 16'h00f4,
    ADDR_INPUT_29_DATA_0           = 16'h00f8,
    ADDR_INPUT_29_CTRL             = 16'h00fc,
    ADDR_INPUT_30_DATA_0           = 16'h0100,
    ADDR_INPUT_30_CTRL             = 16'h0104,
    ADDR_INPUT_31_DATA_0           = 16'h0108,
    ADDR_INPUT_31_CTRL             = 16'h010c,
    ADDR_INPUT_32_DATA_0           = 16'h0110,
    ADDR_INPUT_32_CTRL             = 16'h0114,
    ADDR_INPUT_33_DATA_0           = 16'h0118,
    ADDR_INPUT_33_CTRL             = 16'h011c,
    ADDR_INPUT_34_DATA_0           = 16'h0120,
    ADDR_INPUT_34_CTRL             = 16'h0124,
    ADDR_INPUT_35_DATA_0           = 16'h0128,
    ADDR_INPUT_35_CTRL             = 16'h012c,
    ADDR_INPUT_36_DATA_0           = 16'h0130,
    ADDR_INPUT_36_CTRL             = 16'h0134,
    ADDR_INPUT_37_DATA_0           = 16'h0138,
    ADDR_INPUT_37_CTRL             = 16'h013c,
    ADDR_INPUT_38_DATA_0           = 16'h0140,
    ADDR_INPUT_38_CTRL             = 16'h0144,
    ADDR_INPUT_39_DATA_0           = 16'h0148,
    ADDR_INPUT_39_CTRL             = 16'h014c,
    ADDR_INPUT_40_DATA_0           = 16'h0150,
    ADDR_INPUT_40_CTRL             = 16'h0154,
    ADDR_INPUT_41_DATA_0           = 16'h0158,
    ADDR_INPUT_41_CTRL             = 16'h015c,
    ADDR_INPUT_42_DATA_0           = 16'h0160,
    ADDR_INPUT_42_CTRL             = 16'h0164,
    ADDR_INPUT_43_DATA_0           = 16'h0168,
    ADDR_INPUT_43_CTRL             = 16'h016c,
    ADDR_INPUT_44_DATA_0           = 16'h0170,
    ADDR_INPUT_44_CTRL             = 16'h0174,
    ADDR_INPUT_45_DATA_0           = 16'h0178,
    ADDR_INPUT_45_CTRL             = 16'h017c,
    ADDR_INPUT_46_DATA_0           = 16'h0180,
    ADDR_INPUT_46_CTRL             = 16'h0184,
    ADDR_INPUT_47_DATA_0           = 16'h0188,
    ADDR_INPUT_47_CTRL             = 16'h018c,
    ADDR_INPUT_48_DATA_0           = 16'h0190,
    ADDR_INPUT_48_CTRL             = 16'h0194,
    ADDR_INPUT_49_DATA_0           = 16'h0198,
    ADDR_INPUT_49_CTRL             = 16'h019c,
    ADDR_INPUT_50_DATA_0           = 16'h01a0,
    ADDR_INPUT_50_CTRL             = 16'h01a4,
    ADDR_INPUT_51_DATA_0           = 16'h01a8,
    ADDR_INPUT_51_CTRL             = 16'h01ac,
    ADDR_INPUT_52_DATA_0           = 16'h01b0,
    ADDR_INPUT_52_CTRL             = 16'h01b4,
    ADDR_INPUT_53_DATA_0           = 16'h01b8,
    ADDR_INPUT_53_CTRL             = 16'h01bc,
    ADDR_INPUT_54_DATA_0           = 16'h01c0,
    ADDR_INPUT_54_CTRL             = 16'h01c4,
    ADDR_INPUT_55_DATA_0           = 16'h01c8,
    ADDR_INPUT_55_CTRL             = 16'h01cc,
    ADDR_INPUT_56_DATA_0           = 16'h01d0,
    ADDR_INPUT_56_CTRL             = 16'h01d4,
    ADDR_INPUT_57_DATA_0           = 16'h01d8,
    ADDR_INPUT_57_CTRL             = 16'h01dc,
    ADDR_INPUT_58_DATA_0           = 16'h01e0,
    ADDR_INPUT_58_CTRL             = 16'h01e4,
    ADDR_INPUT_59_DATA_0           = 16'h01e8,
    ADDR_INPUT_59_CTRL             = 16'h01ec,
    ADDR_INPUT_60_DATA_0           = 16'h01f0,
    ADDR_INPUT_60_CTRL             = 16'h01f4,
    ADDR_INPUT_61_DATA_0           = 16'h01f8,
    ADDR_INPUT_61_CTRL             = 16'h01fc,
    ADDR_INPUT_62_DATA_0           = 16'h0200,
    ADDR_INPUT_62_CTRL             = 16'h0204,
    ADDR_INPUT_63_DATA_0           = 16'h0208,
    ADDR_INPUT_63_CTRL             = 16'h020c,
    ADDR_INPUT_64_DATA_0           = 16'h0210,
    ADDR_INPUT_64_CTRL             = 16'h0214,
    ADDR_INPUT_65_DATA_0           = 16'h0218,
    ADDR_INPUT_65_CTRL             = 16'h021c,
    ADDR_INPUT_66_DATA_0           = 16'h0220,
    ADDR_INPUT_66_CTRL             = 16'h0224,
    ADDR_INPUT_67_DATA_0           = 16'h0228,
    ADDR_INPUT_67_CTRL             = 16'h022c,
    ADDR_INPUT_68_DATA_0           = 16'h0230,
    ADDR_INPUT_68_CTRL             = 16'h0234,
    ADDR_INPUT_69_DATA_0           = 16'h0238,
    ADDR_INPUT_69_CTRL             = 16'h023c,
    ADDR_INPUT_70_DATA_0           = 16'h0240,
    ADDR_INPUT_70_CTRL             = 16'h0244,
    ADDR_INPUT_71_DATA_0           = 16'h0248,
    ADDR_INPUT_71_CTRL             = 16'h024c,
    ADDR_INPUT_72_DATA_0           = 16'h0250,
    ADDR_INPUT_72_CTRL             = 16'h0254,
    ADDR_INPUT_73_DATA_0           = 16'h0258,
    ADDR_INPUT_73_CTRL             = 16'h025c,
    ADDR_INPUT_74_DATA_0           = 16'h0260,
    ADDR_INPUT_74_CTRL             = 16'h0264,
    ADDR_INPUT_75_DATA_0           = 16'h0268,
    ADDR_INPUT_75_CTRL             = 16'h026c,
    ADDR_INPUT_76_DATA_0           = 16'h0270,
    ADDR_INPUT_76_CTRL             = 16'h0274,
    ADDR_INPUT_77_DATA_0           = 16'h0278,
    ADDR_INPUT_77_CTRL             = 16'h027c,
    ADDR_INPUT_78_DATA_0           = 16'h0280,
    ADDR_INPUT_78_CTRL             = 16'h0284,
    ADDR_INPUT_79_DATA_0           = 16'h0288,
    ADDR_INPUT_79_CTRL             = 16'h028c,
    ADDR_INPUT_80_DATA_0           = 16'h0290,
    ADDR_INPUT_80_CTRL             = 16'h0294,
    ADDR_INPUT_81_DATA_0           = 16'h0298,
    ADDR_INPUT_81_CTRL             = 16'h029c,
    ADDR_INPUT_82_DATA_0           = 16'h02a0,
    ADDR_INPUT_82_CTRL             = 16'h02a4,
    ADDR_INPUT_83_DATA_0           = 16'h02a8,
    ADDR_INPUT_83_CTRL             = 16'h02ac,
    ADDR_INPUT_84_DATA_0           = 16'h02b0,
    ADDR_INPUT_84_CTRL             = 16'h02b4,
    ADDR_INPUT_85_DATA_0           = 16'h02b8,
    ADDR_INPUT_85_CTRL             = 16'h02bc,
    ADDR_INPUT_86_DATA_0           = 16'h02c0,
    ADDR_INPUT_86_CTRL             = 16'h02c4,
    ADDR_INPUT_87_DATA_0           = 16'h02c8,
    ADDR_INPUT_87_CTRL             = 16'h02cc,
    ADDR_INPUT_88_DATA_0           = 16'h02d0,
    ADDR_INPUT_88_CTRL             = 16'h02d4,
    ADDR_INPUT_89_DATA_0           = 16'h02d8,
    ADDR_INPUT_89_CTRL             = 16'h02dc,
    ADDR_INPUT_90_DATA_0           = 16'h02e0,
    ADDR_INPUT_90_CTRL             = 16'h02e4,
    ADDR_INPUT_91_DATA_0           = 16'h02e8,
    ADDR_INPUT_91_CTRL             = 16'h02ec,
    ADDR_INPUT_92_DATA_0           = 16'h02f0,
    ADDR_INPUT_92_CTRL             = 16'h02f4,
    ADDR_INPUT_93_DATA_0           = 16'h02f8,
    ADDR_INPUT_93_CTRL             = 16'h02fc,
    ADDR_INPUT_94_DATA_0           = 16'h0300,
    ADDR_INPUT_94_CTRL             = 16'h0304,
    ADDR_INPUT_95_DATA_0           = 16'h0308,
    ADDR_INPUT_95_CTRL             = 16'h030c,
    ADDR_INPUT_96_DATA_0           = 16'h0310,
    ADDR_INPUT_96_CTRL             = 16'h0314,
    ADDR_INPUT_97_DATA_0           = 16'h0318,
    ADDR_INPUT_97_CTRL             = 16'h031c,
    ADDR_INPUT_98_DATA_0           = 16'h0320,
    ADDR_INPUT_98_CTRL             = 16'h0324,
    ADDR_INPUT_99_DATA_0           = 16'h0328,
    ADDR_INPUT_99_CTRL             = 16'h032c,
    ADDR_INPUT_100_DATA_0          = 16'h0330,
    ADDR_INPUT_100_CTRL            = 16'h0334,
    ADDR_INPUT_101_DATA_0          = 16'h0338,
    ADDR_INPUT_101_CTRL            = 16'h033c,
    ADDR_INPUT_102_DATA_0          = 16'h0340,
    ADDR_INPUT_102_CTRL            = 16'h0344,
    ADDR_INPUT_103_DATA_0          = 16'h0348,
    ADDR_INPUT_103_CTRL            = 16'h034c,
    ADDR_INPUT_104_DATA_0          = 16'h0350,
    ADDR_INPUT_104_CTRL            = 16'h0354,
    ADDR_INPUT_105_DATA_0          = 16'h0358,
    ADDR_INPUT_105_CTRL            = 16'h035c,
    ADDR_INPUT_106_DATA_0          = 16'h0360,
    ADDR_INPUT_106_CTRL            = 16'h0364,
    ADDR_INPUT_107_DATA_0          = 16'h0368,
    ADDR_INPUT_107_CTRL            = 16'h036c,
    ADDR_INPUT_108_DATA_0          = 16'h0370,
    ADDR_INPUT_108_CTRL            = 16'h0374,
    ADDR_INPUT_109_DATA_0          = 16'h0378,
    ADDR_INPUT_109_CTRL            = 16'h037c,
    ADDR_INPUT_110_DATA_0          = 16'h0380,
    ADDR_INPUT_110_CTRL            = 16'h0384,
    ADDR_INPUT_111_DATA_0          = 16'h0388,
    ADDR_INPUT_111_CTRL            = 16'h038c,
    ADDR_INPUT_112_DATA_0          = 16'h0390,
    ADDR_INPUT_112_CTRL            = 16'h0394,
    ADDR_INPUT_113_DATA_0          = 16'h0398,
    ADDR_INPUT_113_CTRL            = 16'h039c,
    ADDR_INPUT_114_DATA_0          = 16'h03a0,
    ADDR_INPUT_114_CTRL            = 16'h03a4,
    ADDR_INPUT_115_DATA_0          = 16'h03a8,
    ADDR_INPUT_115_CTRL            = 16'h03ac,
    ADDR_INPUT_116_DATA_0          = 16'h03b0,
    ADDR_INPUT_116_CTRL            = 16'h03b4,
    ADDR_INPUT_117_DATA_0          = 16'h03b8,
    ADDR_INPUT_117_CTRL            = 16'h03bc,
    ADDR_INPUT_118_DATA_0          = 16'h03c0,
    ADDR_INPUT_118_CTRL            = 16'h03c4,
    ADDR_INPUT_119_DATA_0          = 16'h03c8,
    ADDR_INPUT_119_CTRL            = 16'h03cc,
    ADDR_INPUT_120_DATA_0          = 16'h03d0,
    ADDR_INPUT_120_CTRL            = 16'h03d4,
    ADDR_INPUT_121_DATA_0          = 16'h03d8,
    ADDR_INPUT_121_CTRL            = 16'h03dc,
    ADDR_INPUT_122_DATA_0          = 16'h03e0,
    ADDR_INPUT_122_CTRL            = 16'h03e4,
    ADDR_INPUT_123_DATA_0          = 16'h03e8,
    ADDR_INPUT_123_CTRL            = 16'h03ec,
    ADDR_INPUT_124_DATA_0          = 16'h03f0,
    ADDR_INPUT_124_CTRL            = 16'h03f4,
    ADDR_INPUT_125_DATA_0          = 16'h03f8,
    ADDR_INPUT_125_CTRL            = 16'h03fc,
    ADDR_INPUT_126_DATA_0          = 16'h0400,
    ADDR_INPUT_126_CTRL            = 16'h0404,
    ADDR_INPUT_127_DATA_0          = 16'h0408,
    ADDR_INPUT_127_CTRL            = 16'h040c,
    ADDR_OUTPUT_0_DATA_0           = 16'h0410,
    ADDR_OUTPUT_0_CTRL             = 16'h0414,
    ADDR_OUTPUT_1_DATA_0           = 16'h0420,
    ADDR_OUTPUT_1_CTRL             = 16'h0424,
    ADDR_OUTPUT_2_DATA_0           = 16'h0430,
    ADDR_OUTPUT_2_CTRL             = 16'h0434,
    ADDR_OUTPUT_3_DATA_0           = 16'h0440,
    ADDR_OUTPUT_3_CTRL             = 16'h0444,
    ADDR_OUTPUT_4_DATA_0           = 16'h0450,
    ADDR_OUTPUT_4_CTRL             = 16'h0454,
    ADDR_OUTPUT_5_DATA_0           = 16'h0460,
    ADDR_OUTPUT_5_CTRL             = 16'h0464,
    ADDR_OUTPUT_6_DATA_0           = 16'h0470,
    ADDR_OUTPUT_6_CTRL             = 16'h0474,
    ADDR_OUTPUT_7_DATA_0           = 16'h0480,
    ADDR_OUTPUT_7_CTRL             = 16'h0484,
    ADDR_OUTPUT_8_DATA_0           = 16'h0490,
    ADDR_OUTPUT_8_CTRL             = 16'h0494,
    ADDR_OUTPUT_9_DATA_0           = 16'h04a0,
    ADDR_OUTPUT_9_CTRL             = 16'h04a4,
    ADDR_OUTPUT_10_DATA_0          = 16'h04b0,
    ADDR_OUTPUT_10_CTRL            = 16'h04b4,
    ADDR_OUTPUT_11_DATA_0          = 16'h04c0,
    ADDR_OUTPUT_11_CTRL            = 16'h04c4,
    ADDR_OUTPUT_12_DATA_0          = 16'h04d0,
    ADDR_OUTPUT_12_CTRL            = 16'h04d4,
    ADDR_OUTPUT_13_DATA_0          = 16'h04e0,
    ADDR_OUTPUT_13_CTRL            = 16'h04e4,
    ADDR_OUTPUT_14_DATA_0          = 16'h04f0,
    ADDR_OUTPUT_14_CTRL            = 16'h04f4,
    ADDR_OUTPUT_15_DATA_0          = 16'h0500,
    ADDR_OUTPUT_15_CTRL            = 16'h0504,
    ADDR_OUTPUT_16_DATA_0          = 16'h0510,
    ADDR_OUTPUT_16_CTRL            = 16'h0514,
    ADDR_OUTPUT_17_DATA_0          = 16'h0520,
    ADDR_OUTPUT_17_CTRL            = 16'h0524,
    ADDR_OUTPUT_18_DATA_0          = 16'h0530,
    ADDR_OUTPUT_18_CTRL            = 16'h0534,
    ADDR_OUTPUT_19_DATA_0          = 16'h0540,
    ADDR_OUTPUT_19_CTRL            = 16'h0544,
    ADDR_OUTPUT_20_DATA_0          = 16'h0550,
    ADDR_OUTPUT_20_CTRL            = 16'h0554,
    ADDR_OUTPUT_21_DATA_0          = 16'h0560,
    ADDR_OUTPUT_21_CTRL            = 16'h0564,
    ADDR_OUTPUT_22_DATA_0          = 16'h0570,
    ADDR_OUTPUT_22_CTRL            = 16'h0574,
    ADDR_OUTPUT_23_DATA_0          = 16'h0580,
    ADDR_OUTPUT_23_CTRL            = 16'h0584,
    ADDR_OUTPUT_24_DATA_0          = 16'h0590,
    ADDR_OUTPUT_24_CTRL            = 16'h0594,
    ADDR_OUTPUT_25_DATA_0          = 16'h05a0,
    ADDR_OUTPUT_25_CTRL            = 16'h05a4,
    ADDR_OUTPUT_26_DATA_0          = 16'h05b0,
    ADDR_OUTPUT_26_CTRL            = 16'h05b4,
    ADDR_OUTPUT_27_DATA_0          = 16'h05c0,
    ADDR_OUTPUT_27_CTRL            = 16'h05c4,
    ADDR_OUTPUT_28_DATA_0          = 16'h05d0,
    ADDR_OUTPUT_28_CTRL            = 16'h05d4,
    ADDR_OUTPUT_29_DATA_0          = 16'h05e0,
    ADDR_OUTPUT_29_CTRL            = 16'h05e4,
    ADDR_OUTPUT_30_DATA_0          = 16'h05f0,
    ADDR_OUTPUT_30_CTRL            = 16'h05f4,
    ADDR_OUTPUT_31_DATA_0          = 16'h0600,
    ADDR_OUTPUT_31_CTRL            = 16'h0604,
    ADDR_OUTPUT_32_DATA_0          = 16'h0610,
    ADDR_OUTPUT_32_CTRL            = 16'h0614,
    ADDR_OUTPUT_33_DATA_0          = 16'h0620,
    ADDR_OUTPUT_33_CTRL            = 16'h0624,
    ADDR_OUTPUT_34_DATA_0          = 16'h0630,
    ADDR_OUTPUT_34_CTRL            = 16'h0634,
    ADDR_OUTPUT_35_DATA_0          = 16'h0640,
    ADDR_OUTPUT_35_CTRL            = 16'h0644,
    ADDR_OUTPUT_36_DATA_0          = 16'h0650,
    ADDR_OUTPUT_36_CTRL            = 16'h0654,
    ADDR_OUTPUT_37_DATA_0          = 16'h0660,
    ADDR_OUTPUT_37_CTRL            = 16'h0664,
    ADDR_OUTPUT_38_DATA_0          = 16'h0670,
    ADDR_OUTPUT_38_CTRL            = 16'h0674,
    ADDR_OUTPUT_39_DATA_0          = 16'h0680,
    ADDR_OUTPUT_39_CTRL            = 16'h0684,
    ADDR_OUTPUT_40_DATA_0          = 16'h0690,
    ADDR_OUTPUT_40_CTRL            = 16'h0694,
    ADDR_OUTPUT_41_DATA_0          = 16'h06a0,
    ADDR_OUTPUT_41_CTRL            = 16'h06a4,
    ADDR_OUTPUT_42_DATA_0          = 16'h06b0,
    ADDR_OUTPUT_42_CTRL            = 16'h06b4,
    ADDR_OUTPUT_43_DATA_0          = 16'h06c0,
    ADDR_OUTPUT_43_CTRL            = 16'h06c4,
    ADDR_OUTPUT_44_DATA_0          = 16'h06d0,
    ADDR_OUTPUT_44_CTRL            = 16'h06d4,
    ADDR_OUTPUT_45_DATA_0          = 16'h06e0,
    ADDR_OUTPUT_45_CTRL            = 16'h06e4,
    ADDR_OUTPUT_46_DATA_0          = 16'h06f0,
    ADDR_OUTPUT_46_CTRL            = 16'h06f4,
    ADDR_OUTPUT_47_DATA_0          = 16'h0700,
    ADDR_OUTPUT_47_CTRL            = 16'h0704,
    ADDR_OUTPUT_48_DATA_0          = 16'h0710,
    ADDR_OUTPUT_48_CTRL            = 16'h0714,
    ADDR_OUTPUT_49_DATA_0          = 16'h0720,
    ADDR_OUTPUT_49_CTRL            = 16'h0724,
    ADDR_OUTPUT_50_DATA_0          = 16'h0730,
    ADDR_OUTPUT_50_CTRL            = 16'h0734,
    ADDR_OUTPUT_51_DATA_0          = 16'h0740,
    ADDR_OUTPUT_51_CTRL            = 16'h0744,
    ADDR_OUTPUT_52_DATA_0          = 16'h0750,
    ADDR_OUTPUT_52_CTRL            = 16'h0754,
    ADDR_OUTPUT_53_DATA_0          = 16'h0760,
    ADDR_OUTPUT_53_CTRL            = 16'h0764,
    ADDR_OUTPUT_54_DATA_0          = 16'h0770,
    ADDR_OUTPUT_54_CTRL            = 16'h0774,
    ADDR_OUTPUT_55_DATA_0          = 16'h0780,
    ADDR_OUTPUT_55_CTRL            = 16'h0784,
    ADDR_OUTPUT_56_DATA_0          = 16'h0790,
    ADDR_OUTPUT_56_CTRL            = 16'h0794,
    ADDR_OUTPUT_57_DATA_0          = 16'h07a0,
    ADDR_OUTPUT_57_CTRL            = 16'h07a4,
    ADDR_OUTPUT_58_DATA_0          = 16'h07b0,
    ADDR_OUTPUT_58_CTRL            = 16'h07b4,
    ADDR_OUTPUT_59_DATA_0          = 16'h07c0,
    ADDR_OUTPUT_59_CTRL            = 16'h07c4,
    ADDR_OUTPUT_60_DATA_0          = 16'h07d0,
    ADDR_OUTPUT_60_CTRL            = 16'h07d4,
    ADDR_OUTPUT_61_DATA_0          = 16'h07e0,
    ADDR_OUTPUT_61_CTRL            = 16'h07e4,
    ADDR_OUTPUT_62_DATA_0          = 16'h07f0,
    ADDR_OUTPUT_62_CTRL            = 16'h07f4,
    ADDR_OUTPUT_63_DATA_0          = 16'h0800,
    ADDR_OUTPUT_63_CTRL            = 16'h0804,
    ADDR_OUTPUT_64_DATA_0          = 16'h0810,
    ADDR_OUTPUT_64_CTRL            = 16'h0814,
    ADDR_OUTPUT_65_DATA_0          = 16'h0820,
    ADDR_OUTPUT_65_CTRL            = 16'h0824,
    ADDR_OUTPUT_66_DATA_0          = 16'h0830,
    ADDR_OUTPUT_66_CTRL            = 16'h0834,
    ADDR_OUTPUT_67_DATA_0          = 16'h0840,
    ADDR_OUTPUT_67_CTRL            = 16'h0844,
    ADDR_OUTPUT_68_DATA_0          = 16'h0850,
    ADDR_OUTPUT_68_CTRL            = 16'h0854,
    ADDR_OUTPUT_69_DATA_0          = 16'h0860,
    ADDR_OUTPUT_69_CTRL            = 16'h0864,
    ADDR_OUTPUT_70_DATA_0          = 16'h0870,
    ADDR_OUTPUT_70_CTRL            = 16'h0874,
    ADDR_OUTPUT_71_DATA_0          = 16'h0880,
    ADDR_OUTPUT_71_CTRL            = 16'h0884,
    ADDR_OUTPUT_72_DATA_0          = 16'h0890,
    ADDR_OUTPUT_72_CTRL            = 16'h0894,
    ADDR_OUTPUT_73_DATA_0          = 16'h08a0,
    ADDR_OUTPUT_73_CTRL            = 16'h08a4,
    ADDR_OUTPUT_74_DATA_0          = 16'h08b0,
    ADDR_OUTPUT_74_CTRL            = 16'h08b4,
    ADDR_OUTPUT_75_DATA_0          = 16'h08c0,
    ADDR_OUTPUT_75_CTRL            = 16'h08c4,
    ADDR_OUTPUT_76_DATA_0          = 16'h08d0,
    ADDR_OUTPUT_76_CTRL            = 16'h08d4,
    ADDR_OUTPUT_77_DATA_0          = 16'h08e0,
    ADDR_OUTPUT_77_CTRL            = 16'h08e4,
    ADDR_OUTPUT_78_DATA_0          = 16'h08f0,
    ADDR_OUTPUT_78_CTRL            = 16'h08f4,
    ADDR_OUTPUT_79_DATA_0          = 16'h0900,
    ADDR_OUTPUT_79_CTRL            = 16'h0904,
    ADDR_OUTPUT_80_DATA_0          = 16'h0910,
    ADDR_OUTPUT_80_CTRL            = 16'h0914,
    ADDR_OUTPUT_81_DATA_0          = 16'h0920,
    ADDR_OUTPUT_81_CTRL            = 16'h0924,
    ADDR_OUTPUT_82_DATA_0          = 16'h0930,
    ADDR_OUTPUT_82_CTRL            = 16'h0934,
    ADDR_OUTPUT_83_DATA_0          = 16'h0940,
    ADDR_OUTPUT_83_CTRL            = 16'h0944,
    ADDR_OUTPUT_84_DATA_0          = 16'h0950,
    ADDR_OUTPUT_84_CTRL            = 16'h0954,
    ADDR_OUTPUT_85_DATA_0          = 16'h0960,
    ADDR_OUTPUT_85_CTRL            = 16'h0964,
    ADDR_OUTPUT_86_DATA_0          = 16'h0970,
    ADDR_OUTPUT_86_CTRL            = 16'h0974,
    ADDR_OUTPUT_87_DATA_0          = 16'h0980,
    ADDR_OUTPUT_87_CTRL            = 16'h0984,
    ADDR_OUTPUT_88_DATA_0          = 16'h0990,
    ADDR_OUTPUT_88_CTRL            = 16'h0994,
    ADDR_OUTPUT_89_DATA_0          = 16'h09a0,
    ADDR_OUTPUT_89_CTRL            = 16'h09a4,
    ADDR_OUTPUT_90_DATA_0          = 16'h09b0,
    ADDR_OUTPUT_90_CTRL            = 16'h09b4,
    ADDR_OUTPUT_91_DATA_0          = 16'h09c0,
    ADDR_OUTPUT_91_CTRL            = 16'h09c4,
    ADDR_OUTPUT_92_DATA_0          = 16'h09d0,
    ADDR_OUTPUT_92_CTRL            = 16'h09d4,
    ADDR_OUTPUT_93_DATA_0          = 16'h09e0,
    ADDR_OUTPUT_93_CTRL            = 16'h09e4,
    ADDR_OUTPUT_94_DATA_0          = 16'h09f0,
    ADDR_OUTPUT_94_CTRL            = 16'h09f4,
    ADDR_OUTPUT_95_DATA_0          = 16'h0a00,
    ADDR_OUTPUT_95_CTRL            = 16'h0a04,
    ADDR_OUTPUT_96_DATA_0          = 16'h0a10,
    ADDR_OUTPUT_96_CTRL            = 16'h0a14,
    ADDR_OUTPUT_97_DATA_0          = 16'h0a20,
    ADDR_OUTPUT_97_CTRL            = 16'h0a24,
    ADDR_OUTPUT_98_DATA_0          = 16'h0a30,
    ADDR_OUTPUT_98_CTRL            = 16'h0a34,
    ADDR_OUTPUT_99_DATA_0          = 16'h0a40,
    ADDR_OUTPUT_99_CTRL            = 16'h0a44,
    ADDR_OUTPUT_100_DATA_0         = 16'h0a50,
    ADDR_OUTPUT_100_CTRL           = 16'h0a54,
    ADDR_OUTPUT_101_DATA_0         = 16'h0a60,
    ADDR_OUTPUT_101_CTRL           = 16'h0a64,
    ADDR_OUTPUT_102_DATA_0         = 16'h0a70,
    ADDR_OUTPUT_102_CTRL           = 16'h0a74,
    ADDR_OUTPUT_103_DATA_0         = 16'h0a80,
    ADDR_OUTPUT_103_CTRL           = 16'h0a84,
    ADDR_OUTPUT_104_DATA_0         = 16'h0a90,
    ADDR_OUTPUT_104_CTRL           = 16'h0a94,
    ADDR_OUTPUT_105_DATA_0         = 16'h0aa0,
    ADDR_OUTPUT_105_CTRL           = 16'h0aa4,
    ADDR_OUTPUT_106_DATA_0         = 16'h0ab0,
    ADDR_OUTPUT_106_CTRL           = 16'h0ab4,
    ADDR_OUTPUT_107_DATA_0         = 16'h0ac0,
    ADDR_OUTPUT_107_CTRL           = 16'h0ac4,
    ADDR_OUTPUT_108_DATA_0         = 16'h0ad0,
    ADDR_OUTPUT_108_CTRL           = 16'h0ad4,
    ADDR_OUTPUT_109_DATA_0         = 16'h0ae0,
    ADDR_OUTPUT_109_CTRL           = 16'h0ae4,
    ADDR_OUTPUT_110_DATA_0         = 16'h0af0,
    ADDR_OUTPUT_110_CTRL           = 16'h0af4,
    ADDR_OUTPUT_111_DATA_0         = 16'h0b00,
    ADDR_OUTPUT_111_CTRL           = 16'h0b04,
    ADDR_OUTPUT_112_DATA_0         = 16'h0b10,
    ADDR_OUTPUT_112_CTRL           = 16'h0b14,
    ADDR_OUTPUT_113_DATA_0         = 16'h0b20,
    ADDR_OUTPUT_113_CTRL           = 16'h0b24,
    ADDR_OUTPUT_114_DATA_0         = 16'h0b30,
    ADDR_OUTPUT_114_CTRL           = 16'h0b34,
    ADDR_OUTPUT_115_DATA_0         = 16'h0b40,
    ADDR_OUTPUT_115_CTRL           = 16'h0b44,
    ADDR_OUTPUT_116_DATA_0         = 16'h0b50,
    ADDR_OUTPUT_116_CTRL           = 16'h0b54,
    ADDR_OUTPUT_117_DATA_0         = 16'h0b60,
    ADDR_OUTPUT_117_CTRL           = 16'h0b64,
    ADDR_OUTPUT_118_DATA_0         = 16'h0b70,
    ADDR_OUTPUT_118_CTRL           = 16'h0b74,
    ADDR_OUTPUT_119_DATA_0         = 16'h0b80,
    ADDR_OUTPUT_119_CTRL           = 16'h0b84,
    ADDR_OUTPUT_120_DATA_0         = 16'h0b90,
    ADDR_OUTPUT_120_CTRL           = 16'h0b94,
    ADDR_OUTPUT_121_DATA_0         = 16'h0ba0,
    ADDR_OUTPUT_121_CTRL           = 16'h0ba4,
    ADDR_OUTPUT_122_DATA_0         = 16'h0bb0,
    ADDR_OUTPUT_122_CTRL           = 16'h0bb4,
    ADDR_OUTPUT_123_DATA_0         = 16'h0bc0,
    ADDR_OUTPUT_123_CTRL           = 16'h0bc4,
    ADDR_OUTPUT_124_DATA_0         = 16'h0bd0,
    ADDR_OUTPUT_124_CTRL           = 16'h0bd4,
    ADDR_OUTPUT_125_DATA_0         = 16'h0be0,
    ADDR_OUTPUT_125_CTRL           = 16'h0be4,
    ADDR_OUTPUT_126_DATA_0         = 16'h0bf0,
    ADDR_OUTPUT_126_CTRL           = 16'h0bf4,
    ADDR_OUTPUT_127_DATA_0         = 16'h0c00,
    ADDR_OUTPUT_127_CTRL           = 16'h0c04,
    ADDR_NUMOFOUTPUTNEURONS_DATA_0 = 16'h0c10,
    ADDR_NUMOFOUTPUTNEURONS_CTRL   = 16'h0c14,
    ADDR_ACTIVATION_DATA_0         = 16'h0c18,
    ADDR_ACTIVATION_CTRL           = 16'h0c1c,
    ADDR_BIAS_BASE                 = 16'h0d00,
    ADDR_BIAS_HIGH                 = 16'h0dff,
    ADDR_WEIGHTS_0_BASE            = 16'h0e00,
    ADDR_WEIGHTS_0_HIGH            = 16'h0eff,
    ADDR_WEIGHTS_1_BASE            = 16'h0f00,
    ADDR_WEIGHTS_1_HIGH            = 16'h0fff,
    ADDR_WEIGHTS_2_BASE            = 16'h1000,
    ADDR_WEIGHTS_2_HIGH            = 16'h10ff,
    ADDR_WEIGHTS_3_BASE            = 16'h1100,
    ADDR_WEIGHTS_3_HIGH            = 16'h11ff,
    ADDR_WEIGHTS_4_BASE            = 16'h1200,
    ADDR_WEIGHTS_4_HIGH            = 16'h12ff,
    ADDR_WEIGHTS_5_BASE            = 16'h1300,
    ADDR_WEIGHTS_5_HIGH            = 16'h13ff,
    ADDR_WEIGHTS_6_BASE            = 16'h1400,
    ADDR_WEIGHTS_6_HIGH            = 16'h14ff,
    ADDR_WEIGHTS_7_BASE            = 16'h1500,
    ADDR_WEIGHTS_7_HIGH            = 16'h15ff,
    ADDR_WEIGHTS_8_BASE            = 16'h1600,
    ADDR_WEIGHTS_8_HIGH            = 16'h16ff,
    ADDR_WEIGHTS_9_BASE            = 16'h1700,
    ADDR_WEIGHTS_9_HIGH            = 16'h17ff,
    ADDR_WEIGHTS_10_BASE           = 16'h1800,
    ADDR_WEIGHTS_10_HIGH           = 16'h18ff,
    ADDR_WEIGHTS_11_BASE           = 16'h1900,
    ADDR_WEIGHTS_11_HIGH           = 16'h19ff,
    ADDR_WEIGHTS_12_BASE           = 16'h1a00,
    ADDR_WEIGHTS_12_HIGH           = 16'h1aff,
    ADDR_WEIGHTS_13_BASE           = 16'h1b00,
    ADDR_WEIGHTS_13_HIGH           = 16'h1bff,
    ADDR_WEIGHTS_14_BASE           = 16'h1c00,
    ADDR_WEIGHTS_14_HIGH           = 16'h1cff,
    ADDR_WEIGHTS_15_BASE           = 16'h1d00,
    ADDR_WEIGHTS_15_HIGH           = 16'h1dff,
    ADDR_WEIGHTS_16_BASE           = 16'h1e00,
    ADDR_WEIGHTS_16_HIGH           = 16'h1eff,
    ADDR_WEIGHTS_17_BASE           = 16'h1f00,
    ADDR_WEIGHTS_17_HIGH           = 16'h1fff,
    ADDR_WEIGHTS_18_BASE           = 16'h2000,
    ADDR_WEIGHTS_18_HIGH           = 16'h20ff,
    ADDR_WEIGHTS_19_BASE           = 16'h2100,
    ADDR_WEIGHTS_19_HIGH           = 16'h21ff,
    ADDR_WEIGHTS_20_BASE           = 16'h2200,
    ADDR_WEIGHTS_20_HIGH           = 16'h22ff,
    ADDR_WEIGHTS_21_BASE           = 16'h2300,
    ADDR_WEIGHTS_21_HIGH           = 16'h23ff,
    ADDR_WEIGHTS_22_BASE           = 16'h2400,
    ADDR_WEIGHTS_22_HIGH           = 16'h24ff,
    ADDR_WEIGHTS_23_BASE           = 16'h2500,
    ADDR_WEIGHTS_23_HIGH           = 16'h25ff,
    ADDR_WEIGHTS_24_BASE           = 16'h2600,
    ADDR_WEIGHTS_24_HIGH           = 16'h26ff,
    ADDR_WEIGHTS_25_BASE           = 16'h2700,
    ADDR_WEIGHTS_25_HIGH           = 16'h27ff,
    ADDR_WEIGHTS_26_BASE           = 16'h2800,
    ADDR_WEIGHTS_26_HIGH           = 16'h28ff,
    ADDR_WEIGHTS_27_BASE           = 16'h2900,
    ADDR_WEIGHTS_27_HIGH           = 16'h29ff,
    ADDR_WEIGHTS_28_BASE           = 16'h2a00,
    ADDR_WEIGHTS_28_HIGH           = 16'h2aff,
    ADDR_WEIGHTS_29_BASE           = 16'h2b00,
    ADDR_WEIGHTS_29_HIGH           = 16'h2bff,
    ADDR_WEIGHTS_30_BASE           = 16'h2c00,
    ADDR_WEIGHTS_30_HIGH           = 16'h2cff,
    ADDR_WEIGHTS_31_BASE           = 16'h2d00,
    ADDR_WEIGHTS_31_HIGH           = 16'h2dff,
    ADDR_WEIGHTS_32_BASE           = 16'h2e00,
    ADDR_WEIGHTS_32_HIGH           = 16'h2eff,
    ADDR_WEIGHTS_33_BASE           = 16'h2f00,
    ADDR_WEIGHTS_33_HIGH           = 16'h2fff,
    ADDR_WEIGHTS_34_BASE           = 16'h3000,
    ADDR_WEIGHTS_34_HIGH           = 16'h30ff,
    ADDR_WEIGHTS_35_BASE           = 16'h3100,
    ADDR_WEIGHTS_35_HIGH           = 16'h31ff,
    ADDR_WEIGHTS_36_BASE           = 16'h3200,
    ADDR_WEIGHTS_36_HIGH           = 16'h32ff,
    ADDR_WEIGHTS_37_BASE           = 16'h3300,
    ADDR_WEIGHTS_37_HIGH           = 16'h33ff,
    ADDR_WEIGHTS_38_BASE           = 16'h3400,
    ADDR_WEIGHTS_38_HIGH           = 16'h34ff,
    ADDR_WEIGHTS_39_BASE           = 16'h3500,
    ADDR_WEIGHTS_39_HIGH           = 16'h35ff,
    ADDR_WEIGHTS_40_BASE           = 16'h3600,
    ADDR_WEIGHTS_40_HIGH           = 16'h36ff,
    ADDR_WEIGHTS_41_BASE           = 16'h3700,
    ADDR_WEIGHTS_41_HIGH           = 16'h37ff,
    ADDR_WEIGHTS_42_BASE           = 16'h3800,
    ADDR_WEIGHTS_42_HIGH           = 16'h38ff,
    ADDR_WEIGHTS_43_BASE           = 16'h3900,
    ADDR_WEIGHTS_43_HIGH           = 16'h39ff,
    ADDR_WEIGHTS_44_BASE           = 16'h3a00,
    ADDR_WEIGHTS_44_HIGH           = 16'h3aff,
    ADDR_WEIGHTS_45_BASE           = 16'h3b00,
    ADDR_WEIGHTS_45_HIGH           = 16'h3bff,
    ADDR_WEIGHTS_46_BASE           = 16'h3c00,
    ADDR_WEIGHTS_46_HIGH           = 16'h3cff,
    ADDR_WEIGHTS_47_BASE           = 16'h3d00,
    ADDR_WEIGHTS_47_HIGH           = 16'h3dff,
    ADDR_WEIGHTS_48_BASE           = 16'h3e00,
    ADDR_WEIGHTS_48_HIGH           = 16'h3eff,
    ADDR_WEIGHTS_49_BASE           = 16'h3f00,
    ADDR_WEIGHTS_49_HIGH           = 16'h3fff,
    ADDR_WEIGHTS_50_BASE           = 16'h4000,
    ADDR_WEIGHTS_50_HIGH           = 16'h40ff,
    ADDR_WEIGHTS_51_BASE           = 16'h4100,
    ADDR_WEIGHTS_51_HIGH           = 16'h41ff,
    ADDR_WEIGHTS_52_BASE           = 16'h4200,
    ADDR_WEIGHTS_52_HIGH           = 16'h42ff,
    ADDR_WEIGHTS_53_BASE           = 16'h4300,
    ADDR_WEIGHTS_53_HIGH           = 16'h43ff,
    ADDR_WEIGHTS_54_BASE           = 16'h4400,
    ADDR_WEIGHTS_54_HIGH           = 16'h44ff,
    ADDR_WEIGHTS_55_BASE           = 16'h4500,
    ADDR_WEIGHTS_55_HIGH           = 16'h45ff,
    ADDR_WEIGHTS_56_BASE           = 16'h4600,
    ADDR_WEIGHTS_56_HIGH           = 16'h46ff,
    ADDR_WEIGHTS_57_BASE           = 16'h4700,
    ADDR_WEIGHTS_57_HIGH           = 16'h47ff,
    ADDR_WEIGHTS_58_BASE           = 16'h4800,
    ADDR_WEIGHTS_58_HIGH           = 16'h48ff,
    ADDR_WEIGHTS_59_BASE           = 16'h4900,
    ADDR_WEIGHTS_59_HIGH           = 16'h49ff,
    ADDR_WEIGHTS_60_BASE           = 16'h4a00,
    ADDR_WEIGHTS_60_HIGH           = 16'h4aff,
    ADDR_WEIGHTS_61_BASE           = 16'h4b00,
    ADDR_WEIGHTS_61_HIGH           = 16'h4bff,
    ADDR_WEIGHTS_62_BASE           = 16'h4c00,
    ADDR_WEIGHTS_62_HIGH           = 16'h4cff,
    ADDR_WEIGHTS_63_BASE           = 16'h4d00,
    ADDR_WEIGHTS_63_HIGH           = 16'h4dff,
    ADDR_WEIGHTS_64_BASE           = 16'h4e00,
    ADDR_WEIGHTS_64_HIGH           = 16'h4eff,
    ADDR_WEIGHTS_65_BASE           = 16'h4f00,
    ADDR_WEIGHTS_65_HIGH           = 16'h4fff,
    ADDR_WEIGHTS_66_BASE           = 16'h5000,
    ADDR_WEIGHTS_66_HIGH           = 16'h50ff,
    ADDR_WEIGHTS_67_BASE           = 16'h5100,
    ADDR_WEIGHTS_67_HIGH           = 16'h51ff,
    ADDR_WEIGHTS_68_BASE           = 16'h5200,
    ADDR_WEIGHTS_68_HIGH           = 16'h52ff,
    ADDR_WEIGHTS_69_BASE           = 16'h5300,
    ADDR_WEIGHTS_69_HIGH           = 16'h53ff,
    ADDR_WEIGHTS_70_BASE           = 16'h5400,
    ADDR_WEIGHTS_70_HIGH           = 16'h54ff,
    ADDR_WEIGHTS_71_BASE           = 16'h5500,
    ADDR_WEIGHTS_71_HIGH           = 16'h55ff,
    ADDR_WEIGHTS_72_BASE           = 16'h5600,
    ADDR_WEIGHTS_72_HIGH           = 16'h56ff,
    ADDR_WEIGHTS_73_BASE           = 16'h5700,
    ADDR_WEIGHTS_73_HIGH           = 16'h57ff,
    ADDR_WEIGHTS_74_BASE           = 16'h5800,
    ADDR_WEIGHTS_74_HIGH           = 16'h58ff,
    ADDR_WEIGHTS_75_BASE           = 16'h5900,
    ADDR_WEIGHTS_75_HIGH           = 16'h59ff,
    ADDR_WEIGHTS_76_BASE           = 16'h5a00,
    ADDR_WEIGHTS_76_HIGH           = 16'h5aff,
    ADDR_WEIGHTS_77_BASE           = 16'h5b00,
    ADDR_WEIGHTS_77_HIGH           = 16'h5bff,
    ADDR_WEIGHTS_78_BASE           = 16'h5c00,
    ADDR_WEIGHTS_78_HIGH           = 16'h5cff,
    ADDR_WEIGHTS_79_BASE           = 16'h5d00,
    ADDR_WEIGHTS_79_HIGH           = 16'h5dff,
    ADDR_WEIGHTS_80_BASE           = 16'h5e00,
    ADDR_WEIGHTS_80_HIGH           = 16'h5eff,
    ADDR_WEIGHTS_81_BASE           = 16'h5f00,
    ADDR_WEIGHTS_81_HIGH           = 16'h5fff,
    ADDR_WEIGHTS_82_BASE           = 16'h6000,
    ADDR_WEIGHTS_82_HIGH           = 16'h60ff,
    ADDR_WEIGHTS_83_BASE           = 16'h6100,
    ADDR_WEIGHTS_83_HIGH           = 16'h61ff,
    ADDR_WEIGHTS_84_BASE           = 16'h6200,
    ADDR_WEIGHTS_84_HIGH           = 16'h62ff,
    ADDR_WEIGHTS_85_BASE           = 16'h6300,
    ADDR_WEIGHTS_85_HIGH           = 16'h63ff,
    ADDR_WEIGHTS_86_BASE           = 16'h6400,
    ADDR_WEIGHTS_86_HIGH           = 16'h64ff,
    ADDR_WEIGHTS_87_BASE           = 16'h6500,
    ADDR_WEIGHTS_87_HIGH           = 16'h65ff,
    ADDR_WEIGHTS_88_BASE           = 16'h6600,
    ADDR_WEIGHTS_88_HIGH           = 16'h66ff,
    ADDR_WEIGHTS_89_BASE           = 16'h6700,
    ADDR_WEIGHTS_89_HIGH           = 16'h67ff,
    ADDR_WEIGHTS_90_BASE           = 16'h6800,
    ADDR_WEIGHTS_90_HIGH           = 16'h68ff,
    ADDR_WEIGHTS_91_BASE           = 16'h6900,
    ADDR_WEIGHTS_91_HIGH           = 16'h69ff,
    ADDR_WEIGHTS_92_BASE           = 16'h6a00,
    ADDR_WEIGHTS_92_HIGH           = 16'h6aff,
    ADDR_WEIGHTS_93_BASE           = 16'h6b00,
    ADDR_WEIGHTS_93_HIGH           = 16'h6bff,
    ADDR_WEIGHTS_94_BASE           = 16'h6c00,
    ADDR_WEIGHTS_94_HIGH           = 16'h6cff,
    ADDR_WEIGHTS_95_BASE           = 16'h6d00,
    ADDR_WEIGHTS_95_HIGH           = 16'h6dff,
    ADDR_WEIGHTS_96_BASE           = 16'h6e00,
    ADDR_WEIGHTS_96_HIGH           = 16'h6eff,
    ADDR_WEIGHTS_97_BASE           = 16'h6f00,
    ADDR_WEIGHTS_97_HIGH           = 16'h6fff,
    ADDR_WEIGHTS_98_BASE           = 16'h7000,
    ADDR_WEIGHTS_98_HIGH           = 16'h70ff,
    ADDR_WEIGHTS_99_BASE           = 16'h7100,
    ADDR_WEIGHTS_99_HIGH           = 16'h71ff,
    ADDR_WEIGHTS_100_BASE          = 16'h7200,
    ADDR_WEIGHTS_100_HIGH          = 16'h72ff,
    ADDR_WEIGHTS_101_BASE          = 16'h7300,
    ADDR_WEIGHTS_101_HIGH          = 16'h73ff,
    ADDR_WEIGHTS_102_BASE          = 16'h7400,
    ADDR_WEIGHTS_102_HIGH          = 16'h74ff,
    ADDR_WEIGHTS_103_BASE          = 16'h7500,
    ADDR_WEIGHTS_103_HIGH          = 16'h75ff,
    ADDR_WEIGHTS_104_BASE          = 16'h7600,
    ADDR_WEIGHTS_104_HIGH          = 16'h76ff,
    ADDR_WEIGHTS_105_BASE          = 16'h7700,
    ADDR_WEIGHTS_105_HIGH          = 16'h77ff,
    ADDR_WEIGHTS_106_BASE          = 16'h7800,
    ADDR_WEIGHTS_106_HIGH          = 16'h78ff,
    ADDR_WEIGHTS_107_BASE          = 16'h7900,
    ADDR_WEIGHTS_107_HIGH          = 16'h79ff,
    ADDR_WEIGHTS_108_BASE          = 16'h7a00,
    ADDR_WEIGHTS_108_HIGH          = 16'h7aff,
    ADDR_WEIGHTS_109_BASE          = 16'h7b00,
    ADDR_WEIGHTS_109_HIGH          = 16'h7bff,
    ADDR_WEIGHTS_110_BASE          = 16'h7c00,
    ADDR_WEIGHTS_110_HIGH          = 16'h7cff,
    ADDR_WEIGHTS_111_BASE          = 16'h7d00,
    ADDR_WEIGHTS_111_HIGH          = 16'h7dff,
    ADDR_WEIGHTS_112_BASE          = 16'h7e00,
    ADDR_WEIGHTS_112_HIGH          = 16'h7eff,
    ADDR_WEIGHTS_113_BASE          = 16'h7f00,
    ADDR_WEIGHTS_113_HIGH          = 16'h7fff,
    ADDR_WEIGHTS_114_BASE          = 16'h8000,
    ADDR_WEIGHTS_114_HIGH          = 16'h80ff,
    ADDR_WEIGHTS_115_BASE          = 16'h8100,
    ADDR_WEIGHTS_115_HIGH          = 16'h81ff,
    ADDR_WEIGHTS_116_BASE          = 16'h8200,
    ADDR_WEIGHTS_116_HIGH          = 16'h82ff,
    ADDR_WEIGHTS_117_BASE          = 16'h8300,
    ADDR_WEIGHTS_117_HIGH          = 16'h83ff,
    ADDR_WEIGHTS_118_BASE          = 16'h8400,
    ADDR_WEIGHTS_118_HIGH          = 16'h84ff,
    ADDR_WEIGHTS_119_BASE          = 16'h8500,
    ADDR_WEIGHTS_119_HIGH          = 16'h85ff,
    ADDR_WEIGHTS_120_BASE          = 16'h8600,
    ADDR_WEIGHTS_120_HIGH          = 16'h86ff,
    ADDR_WEIGHTS_121_BASE          = 16'h8700,
    ADDR_WEIGHTS_121_HIGH          = 16'h87ff,
    ADDR_WEIGHTS_122_BASE          = 16'h8800,
    ADDR_WEIGHTS_122_HIGH          = 16'h88ff,
    ADDR_WEIGHTS_123_BASE          = 16'h8900,
    ADDR_WEIGHTS_123_HIGH          = 16'h89ff,
    ADDR_WEIGHTS_124_BASE          = 16'h8a00,
    ADDR_WEIGHTS_124_HIGH          = 16'h8aff,
    ADDR_WEIGHTS_125_BASE          = 16'h8b00,
    ADDR_WEIGHTS_125_HIGH          = 16'h8bff,
    ADDR_WEIGHTS_126_BASE          = 16'h8c00,
    ADDR_WEIGHTS_126_HIGH          = 16'h8cff,
    ADDR_WEIGHTS_127_BASE          = 16'h8d00,
    ADDR_WEIGHTS_127_HIGH          = 16'h8dff,
    WRIDLE                         = 2'd0,
    WRDATA                         = 2'd1,
    WRRESP                         = 2'd2,
    WRRESET                        = 2'd3,
    RDIDLE                         = 2'd0,
    RDDATA                         = 2'd1,
    RDRESET                        = 2'd2,
    ADDR_BITS                = 16;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [5:0]                    int_ier = 6'b0;
    reg  [5:0]                    int_isr = 6'b0;
    reg  [15:0]                   int_input_0 = 'b0;
    reg  [15:0]                   int_input_1 = 'b0;
    reg  [15:0]                   int_input_2 = 'b0;
    reg  [15:0]                   int_input_3 = 'b0;
    reg  [15:0]                   int_input_4 = 'b0;
    reg  [15:0]                   int_input_5 = 'b0;
    reg  [15:0]                   int_input_6 = 'b0;
    reg  [15:0]                   int_input_7 = 'b0;
    reg  [15:0]                   int_input_8 = 'b0;
    reg  [15:0]                   int_input_9 = 'b0;
    reg  [15:0]                   int_input_10 = 'b0;
    reg  [15:0]                   int_input_11 = 'b0;
    reg  [15:0]                   int_input_12 = 'b0;
    reg  [15:0]                   int_input_13 = 'b0;
    reg  [15:0]                   int_input_14 = 'b0;
    reg  [15:0]                   int_input_15 = 'b0;
    reg  [15:0]                   int_input_16 = 'b0;
    reg  [15:0]                   int_input_17 = 'b0;
    reg  [15:0]                   int_input_18 = 'b0;
    reg  [15:0]                   int_input_19 = 'b0;
    reg  [15:0]                   int_input_20 = 'b0;
    reg  [15:0]                   int_input_21 = 'b0;
    reg  [15:0]                   int_input_22 = 'b0;
    reg  [15:0]                   int_input_23 = 'b0;
    reg  [15:0]                   int_input_24 = 'b0;
    reg  [15:0]                   int_input_25 = 'b0;
    reg  [15:0]                   int_input_26 = 'b0;
    reg  [15:0]                   int_input_27 = 'b0;
    reg  [15:0]                   int_input_28 = 'b0;
    reg  [15:0]                   int_input_29 = 'b0;
    reg  [15:0]                   int_input_30 = 'b0;
    reg  [15:0]                   int_input_31 = 'b0;
    reg  [15:0]                   int_input_32 = 'b0;
    reg  [15:0]                   int_input_33 = 'b0;
    reg  [15:0]                   int_input_34 = 'b0;
    reg  [15:0]                   int_input_35 = 'b0;
    reg  [15:0]                   int_input_36 = 'b0;
    reg  [15:0]                   int_input_37 = 'b0;
    reg  [15:0]                   int_input_38 = 'b0;
    reg  [15:0]                   int_input_39 = 'b0;
    reg  [15:0]                   int_input_40 = 'b0;
    reg  [15:0]                   int_input_41 = 'b0;
    reg  [15:0]                   int_input_42 = 'b0;
    reg  [15:0]                   int_input_43 = 'b0;
    reg  [15:0]                   int_input_44 = 'b0;
    reg  [15:0]                   int_input_45 = 'b0;
    reg  [15:0]                   int_input_46 = 'b0;
    reg  [15:0]                   int_input_47 = 'b0;
    reg  [15:0]                   int_input_48 = 'b0;
    reg  [15:0]                   int_input_49 = 'b0;
    reg  [15:0]                   int_input_50 = 'b0;
    reg  [15:0]                   int_input_51 = 'b0;
    reg  [15:0]                   int_input_52 = 'b0;
    reg  [15:0]                   int_input_53 = 'b0;
    reg  [15:0]                   int_input_54 = 'b0;
    reg  [15:0]                   int_input_55 = 'b0;
    reg  [15:0]                   int_input_56 = 'b0;
    reg  [15:0]                   int_input_57 = 'b0;
    reg  [15:0]                   int_input_58 = 'b0;
    reg  [15:0]                   int_input_59 = 'b0;
    reg  [15:0]                   int_input_60 = 'b0;
    reg  [15:0]                   int_input_61 = 'b0;
    reg  [15:0]                   int_input_62 = 'b0;
    reg  [15:0]                   int_input_63 = 'b0;
    reg  [15:0]                   int_input_64 = 'b0;
    reg  [15:0]                   int_input_65 = 'b0;
    reg  [15:0]                   int_input_66 = 'b0;
    reg  [15:0]                   int_input_67 = 'b0;
    reg  [15:0]                   int_input_68 = 'b0;
    reg  [15:0]                   int_input_69 = 'b0;
    reg  [15:0]                   int_input_70 = 'b0;
    reg  [15:0]                   int_input_71 = 'b0;
    reg  [15:0]                   int_input_72 = 'b0;
    reg  [15:0]                   int_input_73 = 'b0;
    reg  [15:0]                   int_input_74 = 'b0;
    reg  [15:0]                   int_input_75 = 'b0;
    reg  [15:0]                   int_input_76 = 'b0;
    reg  [15:0]                   int_input_77 = 'b0;
    reg  [15:0]                   int_input_78 = 'b0;
    reg  [15:0]                   int_input_79 = 'b0;
    reg  [15:0]                   int_input_80 = 'b0;
    reg  [15:0]                   int_input_81 = 'b0;
    reg  [15:0]                   int_input_82 = 'b0;
    reg  [15:0]                   int_input_83 = 'b0;
    reg  [15:0]                   int_input_84 = 'b0;
    reg  [15:0]                   int_input_85 = 'b0;
    reg  [15:0]                   int_input_86 = 'b0;
    reg  [15:0]                   int_input_87 = 'b0;
    reg  [15:0]                   int_input_88 = 'b0;
    reg  [15:0]                   int_input_89 = 'b0;
    reg  [15:0]                   int_input_90 = 'b0;
    reg  [15:0]                   int_input_91 = 'b0;
    reg  [15:0]                   int_input_92 = 'b0;
    reg  [15:0]                   int_input_93 = 'b0;
    reg  [15:0]                   int_input_94 = 'b0;
    reg  [15:0]                   int_input_95 = 'b0;
    reg  [15:0]                   int_input_96 = 'b0;
    reg  [15:0]                   int_input_97 = 'b0;
    reg  [15:0]                   int_input_98 = 'b0;
    reg  [15:0]                   int_input_99 = 'b0;
    reg  [15:0]                   int_input_100 = 'b0;
    reg  [15:0]                   int_input_101 = 'b0;
    reg  [15:0]                   int_input_102 = 'b0;
    reg  [15:0]                   int_input_103 = 'b0;
    reg  [15:0]                   int_input_104 = 'b0;
    reg  [15:0]                   int_input_105 = 'b0;
    reg  [15:0]                   int_input_106 = 'b0;
    reg  [15:0]                   int_input_107 = 'b0;
    reg  [15:0]                   int_input_108 = 'b0;
    reg  [15:0]                   int_input_109 = 'b0;
    reg  [15:0]                   int_input_110 = 'b0;
    reg  [15:0]                   int_input_111 = 'b0;
    reg  [15:0]                   int_input_112 = 'b0;
    reg  [15:0]                   int_input_113 = 'b0;
    reg  [15:0]                   int_input_114 = 'b0;
    reg  [15:0]                   int_input_115 = 'b0;
    reg  [15:0]                   int_input_116 = 'b0;
    reg  [15:0]                   int_input_117 = 'b0;
    reg  [15:0]                   int_input_118 = 'b0;
    reg  [15:0]                   int_input_119 = 'b0;
    reg  [15:0]                   int_input_120 = 'b0;
    reg  [15:0]                   int_input_121 = 'b0;
    reg  [15:0]                   int_input_122 = 'b0;
    reg  [15:0]                   int_input_123 = 'b0;
    reg  [15:0]                   int_input_124 = 'b0;
    reg  [15:0]                   int_input_125 = 'b0;
    reg  [15:0]                   int_input_126 = 'b0;
    reg  [15:0]                   int_input_127 = 'b0;
    reg                           int_output_0_ap_vld;
    reg  [15:0]                   int_output_0 = 'b0;
    reg                           int_output_1_ap_vld;
    reg  [15:0]                   int_output_1 = 'b0;
    reg                           int_output_2_ap_vld;
    reg  [15:0]                   int_output_2 = 'b0;
    reg                           int_output_3_ap_vld;
    reg  [15:0]                   int_output_3 = 'b0;
    reg                           int_output_4_ap_vld;
    reg  [15:0]                   int_output_4 = 'b0;
    reg                           int_output_5_ap_vld;
    reg  [15:0]                   int_output_5 = 'b0;
    reg                           int_output_6_ap_vld;
    reg  [15:0]                   int_output_6 = 'b0;
    reg                           int_output_7_ap_vld;
    reg  [15:0]                   int_output_7 = 'b0;
    reg                           int_output_8_ap_vld;
    reg  [15:0]                   int_output_8 = 'b0;
    reg                           int_output_9_ap_vld;
    reg  [15:0]                   int_output_9 = 'b0;
    reg                           int_output_10_ap_vld;
    reg  [15:0]                   int_output_10 = 'b0;
    reg                           int_output_11_ap_vld;
    reg  [15:0]                   int_output_11 = 'b0;
    reg                           int_output_12_ap_vld;
    reg  [15:0]                   int_output_12 = 'b0;
    reg                           int_output_13_ap_vld;
    reg  [15:0]                   int_output_13 = 'b0;
    reg                           int_output_14_ap_vld;
    reg  [15:0]                   int_output_14 = 'b0;
    reg                           int_output_15_ap_vld;
    reg  [15:0]                   int_output_15 = 'b0;
    reg                           int_output_16_ap_vld;
    reg  [15:0]                   int_output_16 = 'b0;
    reg                           int_output_17_ap_vld;
    reg  [15:0]                   int_output_17 = 'b0;
    reg                           int_output_18_ap_vld;
    reg  [15:0]                   int_output_18 = 'b0;
    reg                           int_output_19_ap_vld;
    reg  [15:0]                   int_output_19 = 'b0;
    reg                           int_output_20_ap_vld;
    reg  [15:0]                   int_output_20 = 'b0;
    reg                           int_output_21_ap_vld;
    reg  [15:0]                   int_output_21 = 'b0;
    reg                           int_output_22_ap_vld;
    reg  [15:0]                   int_output_22 = 'b0;
    reg                           int_output_23_ap_vld;
    reg  [15:0]                   int_output_23 = 'b0;
    reg                           int_output_24_ap_vld;
    reg  [15:0]                   int_output_24 = 'b0;
    reg                           int_output_25_ap_vld;
    reg  [15:0]                   int_output_25 = 'b0;
    reg                           int_output_26_ap_vld;
    reg  [15:0]                   int_output_26 = 'b0;
    reg                           int_output_27_ap_vld;
    reg  [15:0]                   int_output_27 = 'b0;
    reg                           int_output_28_ap_vld;
    reg  [15:0]                   int_output_28 = 'b0;
    reg                           int_output_29_ap_vld;
    reg  [15:0]                   int_output_29 = 'b0;
    reg                           int_output_30_ap_vld;
    reg  [15:0]                   int_output_30 = 'b0;
    reg                           int_output_31_ap_vld;
    reg  [15:0]                   int_output_31 = 'b0;
    reg                           int_output_32_ap_vld;
    reg  [15:0]                   int_output_32 = 'b0;
    reg                           int_output_33_ap_vld;
    reg  [15:0]                   int_output_33 = 'b0;
    reg                           int_output_34_ap_vld;
    reg  [15:0]                   int_output_34 = 'b0;
    reg                           int_output_35_ap_vld;
    reg  [15:0]                   int_output_35 = 'b0;
    reg                           int_output_36_ap_vld;
    reg  [15:0]                   int_output_36 = 'b0;
    reg                           int_output_37_ap_vld;
    reg  [15:0]                   int_output_37 = 'b0;
    reg                           int_output_38_ap_vld;
    reg  [15:0]                   int_output_38 = 'b0;
    reg                           int_output_39_ap_vld;
    reg  [15:0]                   int_output_39 = 'b0;
    reg                           int_output_40_ap_vld;
    reg  [15:0]                   int_output_40 = 'b0;
    reg                           int_output_41_ap_vld;
    reg  [15:0]                   int_output_41 = 'b0;
    reg                           int_output_42_ap_vld;
    reg  [15:0]                   int_output_42 = 'b0;
    reg                           int_output_43_ap_vld;
    reg  [15:0]                   int_output_43 = 'b0;
    reg                           int_output_44_ap_vld;
    reg  [15:0]                   int_output_44 = 'b0;
    reg                           int_output_45_ap_vld;
    reg  [15:0]                   int_output_45 = 'b0;
    reg                           int_output_46_ap_vld;
    reg  [15:0]                   int_output_46 = 'b0;
    reg                           int_output_47_ap_vld;
    reg  [15:0]                   int_output_47 = 'b0;
    reg                           int_output_48_ap_vld;
    reg  [15:0]                   int_output_48 = 'b0;
    reg                           int_output_49_ap_vld;
    reg  [15:0]                   int_output_49 = 'b0;
    reg                           int_output_50_ap_vld;
    reg  [15:0]                   int_output_50 = 'b0;
    reg                           int_output_51_ap_vld;
    reg  [15:0]                   int_output_51 = 'b0;
    reg                           int_output_52_ap_vld;
    reg  [15:0]                   int_output_52 = 'b0;
    reg                           int_output_53_ap_vld;
    reg  [15:0]                   int_output_53 = 'b0;
    reg                           int_output_54_ap_vld;
    reg  [15:0]                   int_output_54 = 'b0;
    reg                           int_output_55_ap_vld;
    reg  [15:0]                   int_output_55 = 'b0;
    reg                           int_output_56_ap_vld;
    reg  [15:0]                   int_output_56 = 'b0;
    reg                           int_output_57_ap_vld;
    reg  [15:0]                   int_output_57 = 'b0;
    reg                           int_output_58_ap_vld;
    reg  [15:0]                   int_output_58 = 'b0;
    reg                           int_output_59_ap_vld;
    reg  [15:0]                   int_output_59 = 'b0;
    reg                           int_output_60_ap_vld;
    reg  [15:0]                   int_output_60 = 'b0;
    reg                           int_output_61_ap_vld;
    reg  [15:0]                   int_output_61 = 'b0;
    reg                           int_output_62_ap_vld;
    reg  [15:0]                   int_output_62 = 'b0;
    reg                           int_output_63_ap_vld;
    reg  [15:0]                   int_output_63 = 'b0;
    reg                           int_output_64_ap_vld;
    reg  [15:0]                   int_output_64 = 'b0;
    reg                           int_output_65_ap_vld;
    reg  [15:0]                   int_output_65 = 'b0;
    reg                           int_output_66_ap_vld;
    reg  [15:0]                   int_output_66 = 'b0;
    reg                           int_output_67_ap_vld;
    reg  [15:0]                   int_output_67 = 'b0;
    reg                           int_output_68_ap_vld;
    reg  [15:0]                   int_output_68 = 'b0;
    reg                           int_output_69_ap_vld;
    reg  [15:0]                   int_output_69 = 'b0;
    reg                           int_output_70_ap_vld;
    reg  [15:0]                   int_output_70 = 'b0;
    reg                           int_output_71_ap_vld;
    reg  [15:0]                   int_output_71 = 'b0;
    reg                           int_output_72_ap_vld;
    reg  [15:0]                   int_output_72 = 'b0;
    reg                           int_output_73_ap_vld;
    reg  [15:0]                   int_output_73 = 'b0;
    reg                           int_output_74_ap_vld;
    reg  [15:0]                   int_output_74 = 'b0;
    reg                           int_output_75_ap_vld;
    reg  [15:0]                   int_output_75 = 'b0;
    reg                           int_output_76_ap_vld;
    reg  [15:0]                   int_output_76 = 'b0;
    reg                           int_output_77_ap_vld;
    reg  [15:0]                   int_output_77 = 'b0;
    reg                           int_output_78_ap_vld;
    reg  [15:0]                   int_output_78 = 'b0;
    reg                           int_output_79_ap_vld;
    reg  [15:0]                   int_output_79 = 'b0;
    reg                           int_output_80_ap_vld;
    reg  [15:0]                   int_output_80 = 'b0;
    reg                           int_output_81_ap_vld;
    reg  [15:0]                   int_output_81 = 'b0;
    reg                           int_output_82_ap_vld;
    reg  [15:0]                   int_output_82 = 'b0;
    reg                           int_output_83_ap_vld;
    reg  [15:0]                   int_output_83 = 'b0;
    reg                           int_output_84_ap_vld;
    reg  [15:0]                   int_output_84 = 'b0;
    reg                           int_output_85_ap_vld;
    reg  [15:0]                   int_output_85 = 'b0;
    reg                           int_output_86_ap_vld;
    reg  [15:0]                   int_output_86 = 'b0;
    reg                           int_output_87_ap_vld;
    reg  [15:0]                   int_output_87 = 'b0;
    reg                           int_output_88_ap_vld;
    reg  [15:0]                   int_output_88 = 'b0;
    reg                           int_output_89_ap_vld;
    reg  [15:0]                   int_output_89 = 'b0;
    reg                           int_output_90_ap_vld;
    reg  [15:0]                   int_output_90 = 'b0;
    reg                           int_output_91_ap_vld;
    reg  [15:0]                   int_output_91 = 'b0;
    reg                           int_output_92_ap_vld;
    reg  [15:0]                   int_output_92 = 'b0;
    reg                           int_output_93_ap_vld;
    reg  [15:0]                   int_output_93 = 'b0;
    reg                           int_output_94_ap_vld;
    reg  [15:0]                   int_output_94 = 'b0;
    reg                           int_output_95_ap_vld;
    reg  [15:0]                   int_output_95 = 'b0;
    reg                           int_output_96_ap_vld;
    reg  [15:0]                   int_output_96 = 'b0;
    reg                           int_output_97_ap_vld;
    reg  [15:0]                   int_output_97 = 'b0;
    reg                           int_output_98_ap_vld;
    reg  [15:0]                   int_output_98 = 'b0;
    reg                           int_output_99_ap_vld;
    reg  [15:0]                   int_output_99 = 'b0;
    reg                           int_output_100_ap_vld;
    reg  [15:0]                   int_output_100 = 'b0;
    reg                           int_output_101_ap_vld;
    reg  [15:0]                   int_output_101 = 'b0;
    reg                           int_output_102_ap_vld;
    reg  [15:0]                   int_output_102 = 'b0;
    reg                           int_output_103_ap_vld;
    reg  [15:0]                   int_output_103 = 'b0;
    reg                           int_output_104_ap_vld;
    reg  [15:0]                   int_output_104 = 'b0;
    reg                           int_output_105_ap_vld;
    reg  [15:0]                   int_output_105 = 'b0;
    reg                           int_output_106_ap_vld;
    reg  [15:0]                   int_output_106 = 'b0;
    reg                           int_output_107_ap_vld;
    reg  [15:0]                   int_output_107 = 'b0;
    reg                           int_output_108_ap_vld;
    reg  [15:0]                   int_output_108 = 'b0;
    reg                           int_output_109_ap_vld;
    reg  [15:0]                   int_output_109 = 'b0;
    reg                           int_output_110_ap_vld;
    reg  [15:0]                   int_output_110 = 'b0;
    reg                           int_output_111_ap_vld;
    reg  [15:0]                   int_output_111 = 'b0;
    reg                           int_output_112_ap_vld;
    reg  [15:0]                   int_output_112 = 'b0;
    reg                           int_output_113_ap_vld;
    reg  [15:0]                   int_output_113 = 'b0;
    reg                           int_output_114_ap_vld;
    reg  [15:0]                   int_output_114 = 'b0;
    reg                           int_output_115_ap_vld;
    reg  [15:0]                   int_output_115 = 'b0;
    reg                           int_output_116_ap_vld;
    reg  [15:0]                   int_output_116 = 'b0;
    reg                           int_output_117_ap_vld;
    reg  [15:0]                   int_output_117 = 'b0;
    reg                           int_output_118_ap_vld;
    reg  [15:0]                   int_output_118 = 'b0;
    reg                           int_output_119_ap_vld;
    reg  [15:0]                   int_output_119 = 'b0;
    reg                           int_output_120_ap_vld;
    reg  [15:0]                   int_output_120 = 'b0;
    reg                           int_output_121_ap_vld;
    reg  [15:0]                   int_output_121 = 'b0;
    reg                           int_output_122_ap_vld;
    reg  [15:0]                   int_output_122 = 'b0;
    reg                           int_output_123_ap_vld;
    reg  [15:0]                   int_output_123 = 'b0;
    reg                           int_output_124_ap_vld;
    reg  [15:0]                   int_output_124 = 'b0;
    reg                           int_output_125_ap_vld;
    reg  [15:0]                   int_output_125 = 'b0;
    reg                           int_output_126_ap_vld;
    reg  [15:0]                   int_output_126 = 'b0;
    reg                           int_output_127_ap_vld;
    reg  [15:0]                   int_output_127 = 'b0;
    reg  [15:0]                   int_numOfOutputNeurons = 'b0;
    reg  [7:0]                    int_activation = 'b0;
    // memory signals
    wire [5:0]                    int_bias_address0;
    wire                          int_bias_ce0;
    wire [31:0]                   int_bias_q0;
    wire [5:0]                    int_bias_address1;
    wire                          int_bias_ce1;
    wire                          int_bias_we1;
    wire [3:0]                    int_bias_be1;
    wire [31:0]                   int_bias_d1;
    wire [31:0]                   int_bias_q1;
    reg                           int_bias_read;
    reg                           int_bias_write;
    reg  [0:0]                    int_bias_shift0;
    wire [5:0]                    int_weights_0_address0;
    wire                          int_weights_0_ce0;
    wire [31:0]                   int_weights_0_q0;
    wire [5:0]                    int_weights_0_address1;
    wire                          int_weights_0_ce1;
    wire                          int_weights_0_we1;
    wire [3:0]                    int_weights_0_be1;
    wire [31:0]                   int_weights_0_d1;
    wire [31:0]                   int_weights_0_q1;
    reg                           int_weights_0_read;
    reg                           int_weights_0_write;
    reg  [0:0]                    int_weights_0_shift0;
    wire [5:0]                    int_weights_1_address0;
    wire                          int_weights_1_ce0;
    wire [31:0]                   int_weights_1_q0;
    wire [5:0]                    int_weights_1_address1;
    wire                          int_weights_1_ce1;
    wire                          int_weights_1_we1;
    wire [3:0]                    int_weights_1_be1;
    wire [31:0]                   int_weights_1_d1;
    wire [31:0]                   int_weights_1_q1;
    reg                           int_weights_1_read;
    reg                           int_weights_1_write;
    reg  [0:0]                    int_weights_1_shift0;
    wire [5:0]                    int_weights_2_address0;
    wire                          int_weights_2_ce0;
    wire [31:0]                   int_weights_2_q0;
    wire [5:0]                    int_weights_2_address1;
    wire                          int_weights_2_ce1;
    wire                          int_weights_2_we1;
    wire [3:0]                    int_weights_2_be1;
    wire [31:0]                   int_weights_2_d1;
    wire [31:0]                   int_weights_2_q1;
    reg                           int_weights_2_read;
    reg                           int_weights_2_write;
    reg  [0:0]                    int_weights_2_shift0;
    wire [5:0]                    int_weights_3_address0;
    wire                          int_weights_3_ce0;
    wire [31:0]                   int_weights_3_q0;
    wire [5:0]                    int_weights_3_address1;
    wire                          int_weights_3_ce1;
    wire                          int_weights_3_we1;
    wire [3:0]                    int_weights_3_be1;
    wire [31:0]                   int_weights_3_d1;
    wire [31:0]                   int_weights_3_q1;
    reg                           int_weights_3_read;
    reg                           int_weights_3_write;
    reg  [0:0]                    int_weights_3_shift0;
    wire [5:0]                    int_weights_4_address0;
    wire                          int_weights_4_ce0;
    wire [31:0]                   int_weights_4_q0;
    wire [5:0]                    int_weights_4_address1;
    wire                          int_weights_4_ce1;
    wire                          int_weights_4_we1;
    wire [3:0]                    int_weights_4_be1;
    wire [31:0]                   int_weights_4_d1;
    wire [31:0]                   int_weights_4_q1;
    reg                           int_weights_4_read;
    reg                           int_weights_4_write;
    reg  [0:0]                    int_weights_4_shift0;
    wire [5:0]                    int_weights_5_address0;
    wire                          int_weights_5_ce0;
    wire [31:0]                   int_weights_5_q0;
    wire [5:0]                    int_weights_5_address1;
    wire                          int_weights_5_ce1;
    wire                          int_weights_5_we1;
    wire [3:0]                    int_weights_5_be1;
    wire [31:0]                   int_weights_5_d1;
    wire [31:0]                   int_weights_5_q1;
    reg                           int_weights_5_read;
    reg                           int_weights_5_write;
    reg  [0:0]                    int_weights_5_shift0;
    wire [5:0]                    int_weights_6_address0;
    wire                          int_weights_6_ce0;
    wire [31:0]                   int_weights_6_q0;
    wire [5:0]                    int_weights_6_address1;
    wire                          int_weights_6_ce1;
    wire                          int_weights_6_we1;
    wire [3:0]                    int_weights_6_be1;
    wire [31:0]                   int_weights_6_d1;
    wire [31:0]                   int_weights_6_q1;
    reg                           int_weights_6_read;
    reg                           int_weights_6_write;
    reg  [0:0]                    int_weights_6_shift0;
    wire [5:0]                    int_weights_7_address0;
    wire                          int_weights_7_ce0;
    wire [31:0]                   int_weights_7_q0;
    wire [5:0]                    int_weights_7_address1;
    wire                          int_weights_7_ce1;
    wire                          int_weights_7_we1;
    wire [3:0]                    int_weights_7_be1;
    wire [31:0]                   int_weights_7_d1;
    wire [31:0]                   int_weights_7_q1;
    reg                           int_weights_7_read;
    reg                           int_weights_7_write;
    reg  [0:0]                    int_weights_7_shift0;
    wire [5:0]                    int_weights_8_address0;
    wire                          int_weights_8_ce0;
    wire [31:0]                   int_weights_8_q0;
    wire [5:0]                    int_weights_8_address1;
    wire                          int_weights_8_ce1;
    wire                          int_weights_8_we1;
    wire [3:0]                    int_weights_8_be1;
    wire [31:0]                   int_weights_8_d1;
    wire [31:0]                   int_weights_8_q1;
    reg                           int_weights_8_read;
    reg                           int_weights_8_write;
    reg  [0:0]                    int_weights_8_shift0;
    wire [5:0]                    int_weights_9_address0;
    wire                          int_weights_9_ce0;
    wire [31:0]                   int_weights_9_q0;
    wire [5:0]                    int_weights_9_address1;
    wire                          int_weights_9_ce1;
    wire                          int_weights_9_we1;
    wire [3:0]                    int_weights_9_be1;
    wire [31:0]                   int_weights_9_d1;
    wire [31:0]                   int_weights_9_q1;
    reg                           int_weights_9_read;
    reg                           int_weights_9_write;
    reg  [0:0]                    int_weights_9_shift0;
    wire [5:0]                    int_weights_10_address0;
    wire                          int_weights_10_ce0;
    wire [31:0]                   int_weights_10_q0;
    wire [5:0]                    int_weights_10_address1;
    wire                          int_weights_10_ce1;
    wire                          int_weights_10_we1;
    wire [3:0]                    int_weights_10_be1;
    wire [31:0]                   int_weights_10_d1;
    wire [31:0]                   int_weights_10_q1;
    reg                           int_weights_10_read;
    reg                           int_weights_10_write;
    reg  [0:0]                    int_weights_10_shift0;
    wire [5:0]                    int_weights_11_address0;
    wire                          int_weights_11_ce0;
    wire [31:0]                   int_weights_11_q0;
    wire [5:0]                    int_weights_11_address1;
    wire                          int_weights_11_ce1;
    wire                          int_weights_11_we1;
    wire [3:0]                    int_weights_11_be1;
    wire [31:0]                   int_weights_11_d1;
    wire [31:0]                   int_weights_11_q1;
    reg                           int_weights_11_read;
    reg                           int_weights_11_write;
    reg  [0:0]                    int_weights_11_shift0;
    wire [5:0]                    int_weights_12_address0;
    wire                          int_weights_12_ce0;
    wire [31:0]                   int_weights_12_q0;
    wire [5:0]                    int_weights_12_address1;
    wire                          int_weights_12_ce1;
    wire                          int_weights_12_we1;
    wire [3:0]                    int_weights_12_be1;
    wire [31:0]                   int_weights_12_d1;
    wire [31:0]                   int_weights_12_q1;
    reg                           int_weights_12_read;
    reg                           int_weights_12_write;
    reg  [0:0]                    int_weights_12_shift0;
    wire [5:0]                    int_weights_13_address0;
    wire                          int_weights_13_ce0;
    wire [31:0]                   int_weights_13_q0;
    wire [5:0]                    int_weights_13_address1;
    wire                          int_weights_13_ce1;
    wire                          int_weights_13_we1;
    wire [3:0]                    int_weights_13_be1;
    wire [31:0]                   int_weights_13_d1;
    wire [31:0]                   int_weights_13_q1;
    reg                           int_weights_13_read;
    reg                           int_weights_13_write;
    reg  [0:0]                    int_weights_13_shift0;
    wire [5:0]                    int_weights_14_address0;
    wire                          int_weights_14_ce0;
    wire [31:0]                   int_weights_14_q0;
    wire [5:0]                    int_weights_14_address1;
    wire                          int_weights_14_ce1;
    wire                          int_weights_14_we1;
    wire [3:0]                    int_weights_14_be1;
    wire [31:0]                   int_weights_14_d1;
    wire [31:0]                   int_weights_14_q1;
    reg                           int_weights_14_read;
    reg                           int_weights_14_write;
    reg  [0:0]                    int_weights_14_shift0;
    wire [5:0]                    int_weights_15_address0;
    wire                          int_weights_15_ce0;
    wire [31:0]                   int_weights_15_q0;
    wire [5:0]                    int_weights_15_address1;
    wire                          int_weights_15_ce1;
    wire                          int_weights_15_we1;
    wire [3:0]                    int_weights_15_be1;
    wire [31:0]                   int_weights_15_d1;
    wire [31:0]                   int_weights_15_q1;
    reg                           int_weights_15_read;
    reg                           int_weights_15_write;
    reg  [0:0]                    int_weights_15_shift0;
    wire [5:0]                    int_weights_16_address0;
    wire                          int_weights_16_ce0;
    wire [31:0]                   int_weights_16_q0;
    wire [5:0]                    int_weights_16_address1;
    wire                          int_weights_16_ce1;
    wire                          int_weights_16_we1;
    wire [3:0]                    int_weights_16_be1;
    wire [31:0]                   int_weights_16_d1;
    wire [31:0]                   int_weights_16_q1;
    reg                           int_weights_16_read;
    reg                           int_weights_16_write;
    reg  [0:0]                    int_weights_16_shift0;
    wire [5:0]                    int_weights_17_address0;
    wire                          int_weights_17_ce0;
    wire [31:0]                   int_weights_17_q0;
    wire [5:0]                    int_weights_17_address1;
    wire                          int_weights_17_ce1;
    wire                          int_weights_17_we1;
    wire [3:0]                    int_weights_17_be1;
    wire [31:0]                   int_weights_17_d1;
    wire [31:0]                   int_weights_17_q1;
    reg                           int_weights_17_read;
    reg                           int_weights_17_write;
    reg  [0:0]                    int_weights_17_shift0;
    wire [5:0]                    int_weights_18_address0;
    wire                          int_weights_18_ce0;
    wire [31:0]                   int_weights_18_q0;
    wire [5:0]                    int_weights_18_address1;
    wire                          int_weights_18_ce1;
    wire                          int_weights_18_we1;
    wire [3:0]                    int_weights_18_be1;
    wire [31:0]                   int_weights_18_d1;
    wire [31:0]                   int_weights_18_q1;
    reg                           int_weights_18_read;
    reg                           int_weights_18_write;
    reg  [0:0]                    int_weights_18_shift0;
    wire [5:0]                    int_weights_19_address0;
    wire                          int_weights_19_ce0;
    wire [31:0]                   int_weights_19_q0;
    wire [5:0]                    int_weights_19_address1;
    wire                          int_weights_19_ce1;
    wire                          int_weights_19_we1;
    wire [3:0]                    int_weights_19_be1;
    wire [31:0]                   int_weights_19_d1;
    wire [31:0]                   int_weights_19_q1;
    reg                           int_weights_19_read;
    reg                           int_weights_19_write;
    reg  [0:0]                    int_weights_19_shift0;
    wire [5:0]                    int_weights_20_address0;
    wire                          int_weights_20_ce0;
    wire [31:0]                   int_weights_20_q0;
    wire [5:0]                    int_weights_20_address1;
    wire                          int_weights_20_ce1;
    wire                          int_weights_20_we1;
    wire [3:0]                    int_weights_20_be1;
    wire [31:0]                   int_weights_20_d1;
    wire [31:0]                   int_weights_20_q1;
    reg                           int_weights_20_read;
    reg                           int_weights_20_write;
    reg  [0:0]                    int_weights_20_shift0;
    wire [5:0]                    int_weights_21_address0;
    wire                          int_weights_21_ce0;
    wire [31:0]                   int_weights_21_q0;
    wire [5:0]                    int_weights_21_address1;
    wire                          int_weights_21_ce1;
    wire                          int_weights_21_we1;
    wire [3:0]                    int_weights_21_be1;
    wire [31:0]                   int_weights_21_d1;
    wire [31:0]                   int_weights_21_q1;
    reg                           int_weights_21_read;
    reg                           int_weights_21_write;
    reg  [0:0]                    int_weights_21_shift0;
    wire [5:0]                    int_weights_22_address0;
    wire                          int_weights_22_ce0;
    wire [31:0]                   int_weights_22_q0;
    wire [5:0]                    int_weights_22_address1;
    wire                          int_weights_22_ce1;
    wire                          int_weights_22_we1;
    wire [3:0]                    int_weights_22_be1;
    wire [31:0]                   int_weights_22_d1;
    wire [31:0]                   int_weights_22_q1;
    reg                           int_weights_22_read;
    reg                           int_weights_22_write;
    reg  [0:0]                    int_weights_22_shift0;
    wire [5:0]                    int_weights_23_address0;
    wire                          int_weights_23_ce0;
    wire [31:0]                   int_weights_23_q0;
    wire [5:0]                    int_weights_23_address1;
    wire                          int_weights_23_ce1;
    wire                          int_weights_23_we1;
    wire [3:0]                    int_weights_23_be1;
    wire [31:0]                   int_weights_23_d1;
    wire [31:0]                   int_weights_23_q1;
    reg                           int_weights_23_read;
    reg                           int_weights_23_write;
    reg  [0:0]                    int_weights_23_shift0;
    wire [5:0]                    int_weights_24_address0;
    wire                          int_weights_24_ce0;
    wire [31:0]                   int_weights_24_q0;
    wire [5:0]                    int_weights_24_address1;
    wire                          int_weights_24_ce1;
    wire                          int_weights_24_we1;
    wire [3:0]                    int_weights_24_be1;
    wire [31:0]                   int_weights_24_d1;
    wire [31:0]                   int_weights_24_q1;
    reg                           int_weights_24_read;
    reg                           int_weights_24_write;
    reg  [0:0]                    int_weights_24_shift0;
    wire [5:0]                    int_weights_25_address0;
    wire                          int_weights_25_ce0;
    wire [31:0]                   int_weights_25_q0;
    wire [5:0]                    int_weights_25_address1;
    wire                          int_weights_25_ce1;
    wire                          int_weights_25_we1;
    wire [3:0]                    int_weights_25_be1;
    wire [31:0]                   int_weights_25_d1;
    wire [31:0]                   int_weights_25_q1;
    reg                           int_weights_25_read;
    reg                           int_weights_25_write;
    reg  [0:0]                    int_weights_25_shift0;
    wire [5:0]                    int_weights_26_address0;
    wire                          int_weights_26_ce0;
    wire [31:0]                   int_weights_26_q0;
    wire [5:0]                    int_weights_26_address1;
    wire                          int_weights_26_ce1;
    wire                          int_weights_26_we1;
    wire [3:0]                    int_weights_26_be1;
    wire [31:0]                   int_weights_26_d1;
    wire [31:0]                   int_weights_26_q1;
    reg                           int_weights_26_read;
    reg                           int_weights_26_write;
    reg  [0:0]                    int_weights_26_shift0;
    wire [5:0]                    int_weights_27_address0;
    wire                          int_weights_27_ce0;
    wire [31:0]                   int_weights_27_q0;
    wire [5:0]                    int_weights_27_address1;
    wire                          int_weights_27_ce1;
    wire                          int_weights_27_we1;
    wire [3:0]                    int_weights_27_be1;
    wire [31:0]                   int_weights_27_d1;
    wire [31:0]                   int_weights_27_q1;
    reg                           int_weights_27_read;
    reg                           int_weights_27_write;
    reg  [0:0]                    int_weights_27_shift0;
    wire [5:0]                    int_weights_28_address0;
    wire                          int_weights_28_ce0;
    wire [31:0]                   int_weights_28_q0;
    wire [5:0]                    int_weights_28_address1;
    wire                          int_weights_28_ce1;
    wire                          int_weights_28_we1;
    wire [3:0]                    int_weights_28_be1;
    wire [31:0]                   int_weights_28_d1;
    wire [31:0]                   int_weights_28_q1;
    reg                           int_weights_28_read;
    reg                           int_weights_28_write;
    reg  [0:0]                    int_weights_28_shift0;
    wire [5:0]                    int_weights_29_address0;
    wire                          int_weights_29_ce0;
    wire [31:0]                   int_weights_29_q0;
    wire [5:0]                    int_weights_29_address1;
    wire                          int_weights_29_ce1;
    wire                          int_weights_29_we1;
    wire [3:0]                    int_weights_29_be1;
    wire [31:0]                   int_weights_29_d1;
    wire [31:0]                   int_weights_29_q1;
    reg                           int_weights_29_read;
    reg                           int_weights_29_write;
    reg  [0:0]                    int_weights_29_shift0;
    wire [5:0]                    int_weights_30_address0;
    wire                          int_weights_30_ce0;
    wire [31:0]                   int_weights_30_q0;
    wire [5:0]                    int_weights_30_address1;
    wire                          int_weights_30_ce1;
    wire                          int_weights_30_we1;
    wire [3:0]                    int_weights_30_be1;
    wire [31:0]                   int_weights_30_d1;
    wire [31:0]                   int_weights_30_q1;
    reg                           int_weights_30_read;
    reg                           int_weights_30_write;
    reg  [0:0]                    int_weights_30_shift0;
    wire [5:0]                    int_weights_31_address0;
    wire                          int_weights_31_ce0;
    wire [31:0]                   int_weights_31_q0;
    wire [5:0]                    int_weights_31_address1;
    wire                          int_weights_31_ce1;
    wire                          int_weights_31_we1;
    wire [3:0]                    int_weights_31_be1;
    wire [31:0]                   int_weights_31_d1;
    wire [31:0]                   int_weights_31_q1;
    reg                           int_weights_31_read;
    reg                           int_weights_31_write;
    reg  [0:0]                    int_weights_31_shift0;
    wire [5:0]                    int_weights_32_address0;
    wire                          int_weights_32_ce0;
    wire [31:0]                   int_weights_32_q0;
    wire [5:0]                    int_weights_32_address1;
    wire                          int_weights_32_ce1;
    wire                          int_weights_32_we1;
    wire [3:0]                    int_weights_32_be1;
    wire [31:0]                   int_weights_32_d1;
    wire [31:0]                   int_weights_32_q1;
    reg                           int_weights_32_read;
    reg                           int_weights_32_write;
    reg  [0:0]                    int_weights_32_shift0;
    wire [5:0]                    int_weights_33_address0;
    wire                          int_weights_33_ce0;
    wire [31:0]                   int_weights_33_q0;
    wire [5:0]                    int_weights_33_address1;
    wire                          int_weights_33_ce1;
    wire                          int_weights_33_we1;
    wire [3:0]                    int_weights_33_be1;
    wire [31:0]                   int_weights_33_d1;
    wire [31:0]                   int_weights_33_q1;
    reg                           int_weights_33_read;
    reg                           int_weights_33_write;
    reg  [0:0]                    int_weights_33_shift0;
    wire [5:0]                    int_weights_34_address0;
    wire                          int_weights_34_ce0;
    wire [31:0]                   int_weights_34_q0;
    wire [5:0]                    int_weights_34_address1;
    wire                          int_weights_34_ce1;
    wire                          int_weights_34_we1;
    wire [3:0]                    int_weights_34_be1;
    wire [31:0]                   int_weights_34_d1;
    wire [31:0]                   int_weights_34_q1;
    reg                           int_weights_34_read;
    reg                           int_weights_34_write;
    reg  [0:0]                    int_weights_34_shift0;
    wire [5:0]                    int_weights_35_address0;
    wire                          int_weights_35_ce0;
    wire [31:0]                   int_weights_35_q0;
    wire [5:0]                    int_weights_35_address1;
    wire                          int_weights_35_ce1;
    wire                          int_weights_35_we1;
    wire [3:0]                    int_weights_35_be1;
    wire [31:0]                   int_weights_35_d1;
    wire [31:0]                   int_weights_35_q1;
    reg                           int_weights_35_read;
    reg                           int_weights_35_write;
    reg  [0:0]                    int_weights_35_shift0;
    wire [5:0]                    int_weights_36_address0;
    wire                          int_weights_36_ce0;
    wire [31:0]                   int_weights_36_q0;
    wire [5:0]                    int_weights_36_address1;
    wire                          int_weights_36_ce1;
    wire                          int_weights_36_we1;
    wire [3:0]                    int_weights_36_be1;
    wire [31:0]                   int_weights_36_d1;
    wire [31:0]                   int_weights_36_q1;
    reg                           int_weights_36_read;
    reg                           int_weights_36_write;
    reg  [0:0]                    int_weights_36_shift0;
    wire [5:0]                    int_weights_37_address0;
    wire                          int_weights_37_ce0;
    wire [31:0]                   int_weights_37_q0;
    wire [5:0]                    int_weights_37_address1;
    wire                          int_weights_37_ce1;
    wire                          int_weights_37_we1;
    wire [3:0]                    int_weights_37_be1;
    wire [31:0]                   int_weights_37_d1;
    wire [31:0]                   int_weights_37_q1;
    reg                           int_weights_37_read;
    reg                           int_weights_37_write;
    reg  [0:0]                    int_weights_37_shift0;
    wire [5:0]                    int_weights_38_address0;
    wire                          int_weights_38_ce0;
    wire [31:0]                   int_weights_38_q0;
    wire [5:0]                    int_weights_38_address1;
    wire                          int_weights_38_ce1;
    wire                          int_weights_38_we1;
    wire [3:0]                    int_weights_38_be1;
    wire [31:0]                   int_weights_38_d1;
    wire [31:0]                   int_weights_38_q1;
    reg                           int_weights_38_read;
    reg                           int_weights_38_write;
    reg  [0:0]                    int_weights_38_shift0;
    wire [5:0]                    int_weights_39_address0;
    wire                          int_weights_39_ce0;
    wire [31:0]                   int_weights_39_q0;
    wire [5:0]                    int_weights_39_address1;
    wire                          int_weights_39_ce1;
    wire                          int_weights_39_we1;
    wire [3:0]                    int_weights_39_be1;
    wire [31:0]                   int_weights_39_d1;
    wire [31:0]                   int_weights_39_q1;
    reg                           int_weights_39_read;
    reg                           int_weights_39_write;
    reg  [0:0]                    int_weights_39_shift0;
    wire [5:0]                    int_weights_40_address0;
    wire                          int_weights_40_ce0;
    wire [31:0]                   int_weights_40_q0;
    wire [5:0]                    int_weights_40_address1;
    wire                          int_weights_40_ce1;
    wire                          int_weights_40_we1;
    wire [3:0]                    int_weights_40_be1;
    wire [31:0]                   int_weights_40_d1;
    wire [31:0]                   int_weights_40_q1;
    reg                           int_weights_40_read;
    reg                           int_weights_40_write;
    reg  [0:0]                    int_weights_40_shift0;
    wire [5:0]                    int_weights_41_address0;
    wire                          int_weights_41_ce0;
    wire [31:0]                   int_weights_41_q0;
    wire [5:0]                    int_weights_41_address1;
    wire                          int_weights_41_ce1;
    wire                          int_weights_41_we1;
    wire [3:0]                    int_weights_41_be1;
    wire [31:0]                   int_weights_41_d1;
    wire [31:0]                   int_weights_41_q1;
    reg                           int_weights_41_read;
    reg                           int_weights_41_write;
    reg  [0:0]                    int_weights_41_shift0;
    wire [5:0]                    int_weights_42_address0;
    wire                          int_weights_42_ce0;
    wire [31:0]                   int_weights_42_q0;
    wire [5:0]                    int_weights_42_address1;
    wire                          int_weights_42_ce1;
    wire                          int_weights_42_we1;
    wire [3:0]                    int_weights_42_be1;
    wire [31:0]                   int_weights_42_d1;
    wire [31:0]                   int_weights_42_q1;
    reg                           int_weights_42_read;
    reg                           int_weights_42_write;
    reg  [0:0]                    int_weights_42_shift0;
    wire [5:0]                    int_weights_43_address0;
    wire                          int_weights_43_ce0;
    wire [31:0]                   int_weights_43_q0;
    wire [5:0]                    int_weights_43_address1;
    wire                          int_weights_43_ce1;
    wire                          int_weights_43_we1;
    wire [3:0]                    int_weights_43_be1;
    wire [31:0]                   int_weights_43_d1;
    wire [31:0]                   int_weights_43_q1;
    reg                           int_weights_43_read;
    reg                           int_weights_43_write;
    reg  [0:0]                    int_weights_43_shift0;
    wire [5:0]                    int_weights_44_address0;
    wire                          int_weights_44_ce0;
    wire [31:0]                   int_weights_44_q0;
    wire [5:0]                    int_weights_44_address1;
    wire                          int_weights_44_ce1;
    wire                          int_weights_44_we1;
    wire [3:0]                    int_weights_44_be1;
    wire [31:0]                   int_weights_44_d1;
    wire [31:0]                   int_weights_44_q1;
    reg                           int_weights_44_read;
    reg                           int_weights_44_write;
    reg  [0:0]                    int_weights_44_shift0;
    wire [5:0]                    int_weights_45_address0;
    wire                          int_weights_45_ce0;
    wire [31:0]                   int_weights_45_q0;
    wire [5:0]                    int_weights_45_address1;
    wire                          int_weights_45_ce1;
    wire                          int_weights_45_we1;
    wire [3:0]                    int_weights_45_be1;
    wire [31:0]                   int_weights_45_d1;
    wire [31:0]                   int_weights_45_q1;
    reg                           int_weights_45_read;
    reg                           int_weights_45_write;
    reg  [0:0]                    int_weights_45_shift0;
    wire [5:0]                    int_weights_46_address0;
    wire                          int_weights_46_ce0;
    wire [31:0]                   int_weights_46_q0;
    wire [5:0]                    int_weights_46_address1;
    wire                          int_weights_46_ce1;
    wire                          int_weights_46_we1;
    wire [3:0]                    int_weights_46_be1;
    wire [31:0]                   int_weights_46_d1;
    wire [31:0]                   int_weights_46_q1;
    reg                           int_weights_46_read;
    reg                           int_weights_46_write;
    reg  [0:0]                    int_weights_46_shift0;
    wire [5:0]                    int_weights_47_address0;
    wire                          int_weights_47_ce0;
    wire [31:0]                   int_weights_47_q0;
    wire [5:0]                    int_weights_47_address1;
    wire                          int_weights_47_ce1;
    wire                          int_weights_47_we1;
    wire [3:0]                    int_weights_47_be1;
    wire [31:0]                   int_weights_47_d1;
    wire [31:0]                   int_weights_47_q1;
    reg                           int_weights_47_read;
    reg                           int_weights_47_write;
    reg  [0:0]                    int_weights_47_shift0;
    wire [5:0]                    int_weights_48_address0;
    wire                          int_weights_48_ce0;
    wire [31:0]                   int_weights_48_q0;
    wire [5:0]                    int_weights_48_address1;
    wire                          int_weights_48_ce1;
    wire                          int_weights_48_we1;
    wire [3:0]                    int_weights_48_be1;
    wire [31:0]                   int_weights_48_d1;
    wire [31:0]                   int_weights_48_q1;
    reg                           int_weights_48_read;
    reg                           int_weights_48_write;
    reg  [0:0]                    int_weights_48_shift0;
    wire [5:0]                    int_weights_49_address0;
    wire                          int_weights_49_ce0;
    wire [31:0]                   int_weights_49_q0;
    wire [5:0]                    int_weights_49_address1;
    wire                          int_weights_49_ce1;
    wire                          int_weights_49_we1;
    wire [3:0]                    int_weights_49_be1;
    wire [31:0]                   int_weights_49_d1;
    wire [31:0]                   int_weights_49_q1;
    reg                           int_weights_49_read;
    reg                           int_weights_49_write;
    reg  [0:0]                    int_weights_49_shift0;
    wire [5:0]                    int_weights_50_address0;
    wire                          int_weights_50_ce0;
    wire [31:0]                   int_weights_50_q0;
    wire [5:0]                    int_weights_50_address1;
    wire                          int_weights_50_ce1;
    wire                          int_weights_50_we1;
    wire [3:0]                    int_weights_50_be1;
    wire [31:0]                   int_weights_50_d1;
    wire [31:0]                   int_weights_50_q1;
    reg                           int_weights_50_read;
    reg                           int_weights_50_write;
    reg  [0:0]                    int_weights_50_shift0;
    wire [5:0]                    int_weights_51_address0;
    wire                          int_weights_51_ce0;
    wire [31:0]                   int_weights_51_q0;
    wire [5:0]                    int_weights_51_address1;
    wire                          int_weights_51_ce1;
    wire                          int_weights_51_we1;
    wire [3:0]                    int_weights_51_be1;
    wire [31:0]                   int_weights_51_d1;
    wire [31:0]                   int_weights_51_q1;
    reg                           int_weights_51_read;
    reg                           int_weights_51_write;
    reg  [0:0]                    int_weights_51_shift0;
    wire [5:0]                    int_weights_52_address0;
    wire                          int_weights_52_ce0;
    wire [31:0]                   int_weights_52_q0;
    wire [5:0]                    int_weights_52_address1;
    wire                          int_weights_52_ce1;
    wire                          int_weights_52_we1;
    wire [3:0]                    int_weights_52_be1;
    wire [31:0]                   int_weights_52_d1;
    wire [31:0]                   int_weights_52_q1;
    reg                           int_weights_52_read;
    reg                           int_weights_52_write;
    reg  [0:0]                    int_weights_52_shift0;
    wire [5:0]                    int_weights_53_address0;
    wire                          int_weights_53_ce0;
    wire [31:0]                   int_weights_53_q0;
    wire [5:0]                    int_weights_53_address1;
    wire                          int_weights_53_ce1;
    wire                          int_weights_53_we1;
    wire [3:0]                    int_weights_53_be1;
    wire [31:0]                   int_weights_53_d1;
    wire [31:0]                   int_weights_53_q1;
    reg                           int_weights_53_read;
    reg                           int_weights_53_write;
    reg  [0:0]                    int_weights_53_shift0;
    wire [5:0]                    int_weights_54_address0;
    wire                          int_weights_54_ce0;
    wire [31:0]                   int_weights_54_q0;
    wire [5:0]                    int_weights_54_address1;
    wire                          int_weights_54_ce1;
    wire                          int_weights_54_we1;
    wire [3:0]                    int_weights_54_be1;
    wire [31:0]                   int_weights_54_d1;
    wire [31:0]                   int_weights_54_q1;
    reg                           int_weights_54_read;
    reg                           int_weights_54_write;
    reg  [0:0]                    int_weights_54_shift0;
    wire [5:0]                    int_weights_55_address0;
    wire                          int_weights_55_ce0;
    wire [31:0]                   int_weights_55_q0;
    wire [5:0]                    int_weights_55_address1;
    wire                          int_weights_55_ce1;
    wire                          int_weights_55_we1;
    wire [3:0]                    int_weights_55_be1;
    wire [31:0]                   int_weights_55_d1;
    wire [31:0]                   int_weights_55_q1;
    reg                           int_weights_55_read;
    reg                           int_weights_55_write;
    reg  [0:0]                    int_weights_55_shift0;
    wire [5:0]                    int_weights_56_address0;
    wire                          int_weights_56_ce0;
    wire [31:0]                   int_weights_56_q0;
    wire [5:0]                    int_weights_56_address1;
    wire                          int_weights_56_ce1;
    wire                          int_weights_56_we1;
    wire [3:0]                    int_weights_56_be1;
    wire [31:0]                   int_weights_56_d1;
    wire [31:0]                   int_weights_56_q1;
    reg                           int_weights_56_read;
    reg                           int_weights_56_write;
    reg  [0:0]                    int_weights_56_shift0;
    wire [5:0]                    int_weights_57_address0;
    wire                          int_weights_57_ce0;
    wire [31:0]                   int_weights_57_q0;
    wire [5:0]                    int_weights_57_address1;
    wire                          int_weights_57_ce1;
    wire                          int_weights_57_we1;
    wire [3:0]                    int_weights_57_be1;
    wire [31:0]                   int_weights_57_d1;
    wire [31:0]                   int_weights_57_q1;
    reg                           int_weights_57_read;
    reg                           int_weights_57_write;
    reg  [0:0]                    int_weights_57_shift0;
    wire [5:0]                    int_weights_58_address0;
    wire                          int_weights_58_ce0;
    wire [31:0]                   int_weights_58_q0;
    wire [5:0]                    int_weights_58_address1;
    wire                          int_weights_58_ce1;
    wire                          int_weights_58_we1;
    wire [3:0]                    int_weights_58_be1;
    wire [31:0]                   int_weights_58_d1;
    wire [31:0]                   int_weights_58_q1;
    reg                           int_weights_58_read;
    reg                           int_weights_58_write;
    reg  [0:0]                    int_weights_58_shift0;
    wire [5:0]                    int_weights_59_address0;
    wire                          int_weights_59_ce0;
    wire [31:0]                   int_weights_59_q0;
    wire [5:0]                    int_weights_59_address1;
    wire                          int_weights_59_ce1;
    wire                          int_weights_59_we1;
    wire [3:0]                    int_weights_59_be1;
    wire [31:0]                   int_weights_59_d1;
    wire [31:0]                   int_weights_59_q1;
    reg                           int_weights_59_read;
    reg                           int_weights_59_write;
    reg  [0:0]                    int_weights_59_shift0;
    wire [5:0]                    int_weights_60_address0;
    wire                          int_weights_60_ce0;
    wire [31:0]                   int_weights_60_q0;
    wire [5:0]                    int_weights_60_address1;
    wire                          int_weights_60_ce1;
    wire                          int_weights_60_we1;
    wire [3:0]                    int_weights_60_be1;
    wire [31:0]                   int_weights_60_d1;
    wire [31:0]                   int_weights_60_q1;
    reg                           int_weights_60_read;
    reg                           int_weights_60_write;
    reg  [0:0]                    int_weights_60_shift0;
    wire [5:0]                    int_weights_61_address0;
    wire                          int_weights_61_ce0;
    wire [31:0]                   int_weights_61_q0;
    wire [5:0]                    int_weights_61_address1;
    wire                          int_weights_61_ce1;
    wire                          int_weights_61_we1;
    wire [3:0]                    int_weights_61_be1;
    wire [31:0]                   int_weights_61_d1;
    wire [31:0]                   int_weights_61_q1;
    reg                           int_weights_61_read;
    reg                           int_weights_61_write;
    reg  [0:0]                    int_weights_61_shift0;
    wire [5:0]                    int_weights_62_address0;
    wire                          int_weights_62_ce0;
    wire [31:0]                   int_weights_62_q0;
    wire [5:0]                    int_weights_62_address1;
    wire                          int_weights_62_ce1;
    wire                          int_weights_62_we1;
    wire [3:0]                    int_weights_62_be1;
    wire [31:0]                   int_weights_62_d1;
    wire [31:0]                   int_weights_62_q1;
    reg                           int_weights_62_read;
    reg                           int_weights_62_write;
    reg  [0:0]                    int_weights_62_shift0;
    wire [5:0]                    int_weights_63_address0;
    wire                          int_weights_63_ce0;
    wire [31:0]                   int_weights_63_q0;
    wire [5:0]                    int_weights_63_address1;
    wire                          int_weights_63_ce1;
    wire                          int_weights_63_we1;
    wire [3:0]                    int_weights_63_be1;
    wire [31:0]                   int_weights_63_d1;
    wire [31:0]                   int_weights_63_q1;
    reg                           int_weights_63_read;
    reg                           int_weights_63_write;
    reg  [0:0]                    int_weights_63_shift0;
    wire [5:0]                    int_weights_64_address0;
    wire                          int_weights_64_ce0;
    wire [31:0]                   int_weights_64_q0;
    wire [5:0]                    int_weights_64_address1;
    wire                          int_weights_64_ce1;
    wire                          int_weights_64_we1;
    wire [3:0]                    int_weights_64_be1;
    wire [31:0]                   int_weights_64_d1;
    wire [31:0]                   int_weights_64_q1;
    reg                           int_weights_64_read;
    reg                           int_weights_64_write;
    reg  [0:0]                    int_weights_64_shift0;
    wire [5:0]                    int_weights_65_address0;
    wire                          int_weights_65_ce0;
    wire [31:0]                   int_weights_65_q0;
    wire [5:0]                    int_weights_65_address1;
    wire                          int_weights_65_ce1;
    wire                          int_weights_65_we1;
    wire [3:0]                    int_weights_65_be1;
    wire [31:0]                   int_weights_65_d1;
    wire [31:0]                   int_weights_65_q1;
    reg                           int_weights_65_read;
    reg                           int_weights_65_write;
    reg  [0:0]                    int_weights_65_shift0;
    wire [5:0]                    int_weights_66_address0;
    wire                          int_weights_66_ce0;
    wire [31:0]                   int_weights_66_q0;
    wire [5:0]                    int_weights_66_address1;
    wire                          int_weights_66_ce1;
    wire                          int_weights_66_we1;
    wire [3:0]                    int_weights_66_be1;
    wire [31:0]                   int_weights_66_d1;
    wire [31:0]                   int_weights_66_q1;
    reg                           int_weights_66_read;
    reg                           int_weights_66_write;
    reg  [0:0]                    int_weights_66_shift0;
    wire [5:0]                    int_weights_67_address0;
    wire                          int_weights_67_ce0;
    wire [31:0]                   int_weights_67_q0;
    wire [5:0]                    int_weights_67_address1;
    wire                          int_weights_67_ce1;
    wire                          int_weights_67_we1;
    wire [3:0]                    int_weights_67_be1;
    wire [31:0]                   int_weights_67_d1;
    wire [31:0]                   int_weights_67_q1;
    reg                           int_weights_67_read;
    reg                           int_weights_67_write;
    reg  [0:0]                    int_weights_67_shift0;
    wire [5:0]                    int_weights_68_address0;
    wire                          int_weights_68_ce0;
    wire [31:0]                   int_weights_68_q0;
    wire [5:0]                    int_weights_68_address1;
    wire                          int_weights_68_ce1;
    wire                          int_weights_68_we1;
    wire [3:0]                    int_weights_68_be1;
    wire [31:0]                   int_weights_68_d1;
    wire [31:0]                   int_weights_68_q1;
    reg                           int_weights_68_read;
    reg                           int_weights_68_write;
    reg  [0:0]                    int_weights_68_shift0;
    wire [5:0]                    int_weights_69_address0;
    wire                          int_weights_69_ce0;
    wire [31:0]                   int_weights_69_q0;
    wire [5:0]                    int_weights_69_address1;
    wire                          int_weights_69_ce1;
    wire                          int_weights_69_we1;
    wire [3:0]                    int_weights_69_be1;
    wire [31:0]                   int_weights_69_d1;
    wire [31:0]                   int_weights_69_q1;
    reg                           int_weights_69_read;
    reg                           int_weights_69_write;
    reg  [0:0]                    int_weights_69_shift0;
    wire [5:0]                    int_weights_70_address0;
    wire                          int_weights_70_ce0;
    wire [31:0]                   int_weights_70_q0;
    wire [5:0]                    int_weights_70_address1;
    wire                          int_weights_70_ce1;
    wire                          int_weights_70_we1;
    wire [3:0]                    int_weights_70_be1;
    wire [31:0]                   int_weights_70_d1;
    wire [31:0]                   int_weights_70_q1;
    reg                           int_weights_70_read;
    reg                           int_weights_70_write;
    reg  [0:0]                    int_weights_70_shift0;
    wire [5:0]                    int_weights_71_address0;
    wire                          int_weights_71_ce0;
    wire [31:0]                   int_weights_71_q0;
    wire [5:0]                    int_weights_71_address1;
    wire                          int_weights_71_ce1;
    wire                          int_weights_71_we1;
    wire [3:0]                    int_weights_71_be1;
    wire [31:0]                   int_weights_71_d1;
    wire [31:0]                   int_weights_71_q1;
    reg                           int_weights_71_read;
    reg                           int_weights_71_write;
    reg  [0:0]                    int_weights_71_shift0;
    wire [5:0]                    int_weights_72_address0;
    wire                          int_weights_72_ce0;
    wire [31:0]                   int_weights_72_q0;
    wire [5:0]                    int_weights_72_address1;
    wire                          int_weights_72_ce1;
    wire                          int_weights_72_we1;
    wire [3:0]                    int_weights_72_be1;
    wire [31:0]                   int_weights_72_d1;
    wire [31:0]                   int_weights_72_q1;
    reg                           int_weights_72_read;
    reg                           int_weights_72_write;
    reg  [0:0]                    int_weights_72_shift0;
    wire [5:0]                    int_weights_73_address0;
    wire                          int_weights_73_ce0;
    wire [31:0]                   int_weights_73_q0;
    wire [5:0]                    int_weights_73_address1;
    wire                          int_weights_73_ce1;
    wire                          int_weights_73_we1;
    wire [3:0]                    int_weights_73_be1;
    wire [31:0]                   int_weights_73_d1;
    wire [31:0]                   int_weights_73_q1;
    reg                           int_weights_73_read;
    reg                           int_weights_73_write;
    reg  [0:0]                    int_weights_73_shift0;
    wire [5:0]                    int_weights_74_address0;
    wire                          int_weights_74_ce0;
    wire [31:0]                   int_weights_74_q0;
    wire [5:0]                    int_weights_74_address1;
    wire                          int_weights_74_ce1;
    wire                          int_weights_74_we1;
    wire [3:0]                    int_weights_74_be1;
    wire [31:0]                   int_weights_74_d1;
    wire [31:0]                   int_weights_74_q1;
    reg                           int_weights_74_read;
    reg                           int_weights_74_write;
    reg  [0:0]                    int_weights_74_shift0;
    wire [5:0]                    int_weights_75_address0;
    wire                          int_weights_75_ce0;
    wire [31:0]                   int_weights_75_q0;
    wire [5:0]                    int_weights_75_address1;
    wire                          int_weights_75_ce1;
    wire                          int_weights_75_we1;
    wire [3:0]                    int_weights_75_be1;
    wire [31:0]                   int_weights_75_d1;
    wire [31:0]                   int_weights_75_q1;
    reg                           int_weights_75_read;
    reg                           int_weights_75_write;
    reg  [0:0]                    int_weights_75_shift0;
    wire [5:0]                    int_weights_76_address0;
    wire                          int_weights_76_ce0;
    wire [31:0]                   int_weights_76_q0;
    wire [5:0]                    int_weights_76_address1;
    wire                          int_weights_76_ce1;
    wire                          int_weights_76_we1;
    wire [3:0]                    int_weights_76_be1;
    wire [31:0]                   int_weights_76_d1;
    wire [31:0]                   int_weights_76_q1;
    reg                           int_weights_76_read;
    reg                           int_weights_76_write;
    reg  [0:0]                    int_weights_76_shift0;
    wire [5:0]                    int_weights_77_address0;
    wire                          int_weights_77_ce0;
    wire [31:0]                   int_weights_77_q0;
    wire [5:0]                    int_weights_77_address1;
    wire                          int_weights_77_ce1;
    wire                          int_weights_77_we1;
    wire [3:0]                    int_weights_77_be1;
    wire [31:0]                   int_weights_77_d1;
    wire [31:0]                   int_weights_77_q1;
    reg                           int_weights_77_read;
    reg                           int_weights_77_write;
    reg  [0:0]                    int_weights_77_shift0;
    wire [5:0]                    int_weights_78_address0;
    wire                          int_weights_78_ce0;
    wire [31:0]                   int_weights_78_q0;
    wire [5:0]                    int_weights_78_address1;
    wire                          int_weights_78_ce1;
    wire                          int_weights_78_we1;
    wire [3:0]                    int_weights_78_be1;
    wire [31:0]                   int_weights_78_d1;
    wire [31:0]                   int_weights_78_q1;
    reg                           int_weights_78_read;
    reg                           int_weights_78_write;
    reg  [0:0]                    int_weights_78_shift0;
    wire [5:0]                    int_weights_79_address0;
    wire                          int_weights_79_ce0;
    wire [31:0]                   int_weights_79_q0;
    wire [5:0]                    int_weights_79_address1;
    wire                          int_weights_79_ce1;
    wire                          int_weights_79_we1;
    wire [3:0]                    int_weights_79_be1;
    wire [31:0]                   int_weights_79_d1;
    wire [31:0]                   int_weights_79_q1;
    reg                           int_weights_79_read;
    reg                           int_weights_79_write;
    reg  [0:0]                    int_weights_79_shift0;
    wire [5:0]                    int_weights_80_address0;
    wire                          int_weights_80_ce0;
    wire [31:0]                   int_weights_80_q0;
    wire [5:0]                    int_weights_80_address1;
    wire                          int_weights_80_ce1;
    wire                          int_weights_80_we1;
    wire [3:0]                    int_weights_80_be1;
    wire [31:0]                   int_weights_80_d1;
    wire [31:0]                   int_weights_80_q1;
    reg                           int_weights_80_read;
    reg                           int_weights_80_write;
    reg  [0:0]                    int_weights_80_shift0;
    wire [5:0]                    int_weights_81_address0;
    wire                          int_weights_81_ce0;
    wire [31:0]                   int_weights_81_q0;
    wire [5:0]                    int_weights_81_address1;
    wire                          int_weights_81_ce1;
    wire                          int_weights_81_we1;
    wire [3:0]                    int_weights_81_be1;
    wire [31:0]                   int_weights_81_d1;
    wire [31:0]                   int_weights_81_q1;
    reg                           int_weights_81_read;
    reg                           int_weights_81_write;
    reg  [0:0]                    int_weights_81_shift0;
    wire [5:0]                    int_weights_82_address0;
    wire                          int_weights_82_ce0;
    wire [31:0]                   int_weights_82_q0;
    wire [5:0]                    int_weights_82_address1;
    wire                          int_weights_82_ce1;
    wire                          int_weights_82_we1;
    wire [3:0]                    int_weights_82_be1;
    wire [31:0]                   int_weights_82_d1;
    wire [31:0]                   int_weights_82_q1;
    reg                           int_weights_82_read;
    reg                           int_weights_82_write;
    reg  [0:0]                    int_weights_82_shift0;
    wire [5:0]                    int_weights_83_address0;
    wire                          int_weights_83_ce0;
    wire [31:0]                   int_weights_83_q0;
    wire [5:0]                    int_weights_83_address1;
    wire                          int_weights_83_ce1;
    wire                          int_weights_83_we1;
    wire [3:0]                    int_weights_83_be1;
    wire [31:0]                   int_weights_83_d1;
    wire [31:0]                   int_weights_83_q1;
    reg                           int_weights_83_read;
    reg                           int_weights_83_write;
    reg  [0:0]                    int_weights_83_shift0;
    wire [5:0]                    int_weights_84_address0;
    wire                          int_weights_84_ce0;
    wire [31:0]                   int_weights_84_q0;
    wire [5:0]                    int_weights_84_address1;
    wire                          int_weights_84_ce1;
    wire                          int_weights_84_we1;
    wire [3:0]                    int_weights_84_be1;
    wire [31:0]                   int_weights_84_d1;
    wire [31:0]                   int_weights_84_q1;
    reg                           int_weights_84_read;
    reg                           int_weights_84_write;
    reg  [0:0]                    int_weights_84_shift0;
    wire [5:0]                    int_weights_85_address0;
    wire                          int_weights_85_ce0;
    wire [31:0]                   int_weights_85_q0;
    wire [5:0]                    int_weights_85_address1;
    wire                          int_weights_85_ce1;
    wire                          int_weights_85_we1;
    wire [3:0]                    int_weights_85_be1;
    wire [31:0]                   int_weights_85_d1;
    wire [31:0]                   int_weights_85_q1;
    reg                           int_weights_85_read;
    reg                           int_weights_85_write;
    reg  [0:0]                    int_weights_85_shift0;
    wire [5:0]                    int_weights_86_address0;
    wire                          int_weights_86_ce0;
    wire [31:0]                   int_weights_86_q0;
    wire [5:0]                    int_weights_86_address1;
    wire                          int_weights_86_ce1;
    wire                          int_weights_86_we1;
    wire [3:0]                    int_weights_86_be1;
    wire [31:0]                   int_weights_86_d1;
    wire [31:0]                   int_weights_86_q1;
    reg                           int_weights_86_read;
    reg                           int_weights_86_write;
    reg  [0:0]                    int_weights_86_shift0;
    wire [5:0]                    int_weights_87_address0;
    wire                          int_weights_87_ce0;
    wire [31:0]                   int_weights_87_q0;
    wire [5:0]                    int_weights_87_address1;
    wire                          int_weights_87_ce1;
    wire                          int_weights_87_we1;
    wire [3:0]                    int_weights_87_be1;
    wire [31:0]                   int_weights_87_d1;
    wire [31:0]                   int_weights_87_q1;
    reg                           int_weights_87_read;
    reg                           int_weights_87_write;
    reg  [0:0]                    int_weights_87_shift0;
    wire [5:0]                    int_weights_88_address0;
    wire                          int_weights_88_ce0;
    wire [31:0]                   int_weights_88_q0;
    wire [5:0]                    int_weights_88_address1;
    wire                          int_weights_88_ce1;
    wire                          int_weights_88_we1;
    wire [3:0]                    int_weights_88_be1;
    wire [31:0]                   int_weights_88_d1;
    wire [31:0]                   int_weights_88_q1;
    reg                           int_weights_88_read;
    reg                           int_weights_88_write;
    reg  [0:0]                    int_weights_88_shift0;
    wire [5:0]                    int_weights_89_address0;
    wire                          int_weights_89_ce0;
    wire [31:0]                   int_weights_89_q0;
    wire [5:0]                    int_weights_89_address1;
    wire                          int_weights_89_ce1;
    wire                          int_weights_89_we1;
    wire [3:0]                    int_weights_89_be1;
    wire [31:0]                   int_weights_89_d1;
    wire [31:0]                   int_weights_89_q1;
    reg                           int_weights_89_read;
    reg                           int_weights_89_write;
    reg  [0:0]                    int_weights_89_shift0;
    wire [5:0]                    int_weights_90_address0;
    wire                          int_weights_90_ce0;
    wire [31:0]                   int_weights_90_q0;
    wire [5:0]                    int_weights_90_address1;
    wire                          int_weights_90_ce1;
    wire                          int_weights_90_we1;
    wire [3:0]                    int_weights_90_be1;
    wire [31:0]                   int_weights_90_d1;
    wire [31:0]                   int_weights_90_q1;
    reg                           int_weights_90_read;
    reg                           int_weights_90_write;
    reg  [0:0]                    int_weights_90_shift0;
    wire [5:0]                    int_weights_91_address0;
    wire                          int_weights_91_ce0;
    wire [31:0]                   int_weights_91_q0;
    wire [5:0]                    int_weights_91_address1;
    wire                          int_weights_91_ce1;
    wire                          int_weights_91_we1;
    wire [3:0]                    int_weights_91_be1;
    wire [31:0]                   int_weights_91_d1;
    wire [31:0]                   int_weights_91_q1;
    reg                           int_weights_91_read;
    reg                           int_weights_91_write;
    reg  [0:0]                    int_weights_91_shift0;
    wire [5:0]                    int_weights_92_address0;
    wire                          int_weights_92_ce0;
    wire [31:0]                   int_weights_92_q0;
    wire [5:0]                    int_weights_92_address1;
    wire                          int_weights_92_ce1;
    wire                          int_weights_92_we1;
    wire [3:0]                    int_weights_92_be1;
    wire [31:0]                   int_weights_92_d1;
    wire [31:0]                   int_weights_92_q1;
    reg                           int_weights_92_read;
    reg                           int_weights_92_write;
    reg  [0:0]                    int_weights_92_shift0;
    wire [5:0]                    int_weights_93_address0;
    wire                          int_weights_93_ce0;
    wire [31:0]                   int_weights_93_q0;
    wire [5:0]                    int_weights_93_address1;
    wire                          int_weights_93_ce1;
    wire                          int_weights_93_we1;
    wire [3:0]                    int_weights_93_be1;
    wire [31:0]                   int_weights_93_d1;
    wire [31:0]                   int_weights_93_q1;
    reg                           int_weights_93_read;
    reg                           int_weights_93_write;
    reg  [0:0]                    int_weights_93_shift0;
    wire [5:0]                    int_weights_94_address0;
    wire                          int_weights_94_ce0;
    wire [31:0]                   int_weights_94_q0;
    wire [5:0]                    int_weights_94_address1;
    wire                          int_weights_94_ce1;
    wire                          int_weights_94_we1;
    wire [3:0]                    int_weights_94_be1;
    wire [31:0]                   int_weights_94_d1;
    wire [31:0]                   int_weights_94_q1;
    reg                           int_weights_94_read;
    reg                           int_weights_94_write;
    reg  [0:0]                    int_weights_94_shift0;
    wire [5:0]                    int_weights_95_address0;
    wire                          int_weights_95_ce0;
    wire [31:0]                   int_weights_95_q0;
    wire [5:0]                    int_weights_95_address1;
    wire                          int_weights_95_ce1;
    wire                          int_weights_95_we1;
    wire [3:0]                    int_weights_95_be1;
    wire [31:0]                   int_weights_95_d1;
    wire [31:0]                   int_weights_95_q1;
    reg                           int_weights_95_read;
    reg                           int_weights_95_write;
    reg  [0:0]                    int_weights_95_shift0;
    wire [5:0]                    int_weights_96_address0;
    wire                          int_weights_96_ce0;
    wire [31:0]                   int_weights_96_q0;
    wire [5:0]                    int_weights_96_address1;
    wire                          int_weights_96_ce1;
    wire                          int_weights_96_we1;
    wire [3:0]                    int_weights_96_be1;
    wire [31:0]                   int_weights_96_d1;
    wire [31:0]                   int_weights_96_q1;
    reg                           int_weights_96_read;
    reg                           int_weights_96_write;
    reg  [0:0]                    int_weights_96_shift0;
    wire [5:0]                    int_weights_97_address0;
    wire                          int_weights_97_ce0;
    wire [31:0]                   int_weights_97_q0;
    wire [5:0]                    int_weights_97_address1;
    wire                          int_weights_97_ce1;
    wire                          int_weights_97_we1;
    wire [3:0]                    int_weights_97_be1;
    wire [31:0]                   int_weights_97_d1;
    wire [31:0]                   int_weights_97_q1;
    reg                           int_weights_97_read;
    reg                           int_weights_97_write;
    reg  [0:0]                    int_weights_97_shift0;
    wire [5:0]                    int_weights_98_address0;
    wire                          int_weights_98_ce0;
    wire [31:0]                   int_weights_98_q0;
    wire [5:0]                    int_weights_98_address1;
    wire                          int_weights_98_ce1;
    wire                          int_weights_98_we1;
    wire [3:0]                    int_weights_98_be1;
    wire [31:0]                   int_weights_98_d1;
    wire [31:0]                   int_weights_98_q1;
    reg                           int_weights_98_read;
    reg                           int_weights_98_write;
    reg  [0:0]                    int_weights_98_shift0;
    wire [5:0]                    int_weights_99_address0;
    wire                          int_weights_99_ce0;
    wire [31:0]                   int_weights_99_q0;
    wire [5:0]                    int_weights_99_address1;
    wire                          int_weights_99_ce1;
    wire                          int_weights_99_we1;
    wire [3:0]                    int_weights_99_be1;
    wire [31:0]                   int_weights_99_d1;
    wire [31:0]                   int_weights_99_q1;
    reg                           int_weights_99_read;
    reg                           int_weights_99_write;
    reg  [0:0]                    int_weights_99_shift0;
    wire [5:0]                    int_weights_100_address0;
    wire                          int_weights_100_ce0;
    wire [31:0]                   int_weights_100_q0;
    wire [5:0]                    int_weights_100_address1;
    wire                          int_weights_100_ce1;
    wire                          int_weights_100_we1;
    wire [3:0]                    int_weights_100_be1;
    wire [31:0]                   int_weights_100_d1;
    wire [31:0]                   int_weights_100_q1;
    reg                           int_weights_100_read;
    reg                           int_weights_100_write;
    reg  [0:0]                    int_weights_100_shift0;
    wire [5:0]                    int_weights_101_address0;
    wire                          int_weights_101_ce0;
    wire [31:0]                   int_weights_101_q0;
    wire [5:0]                    int_weights_101_address1;
    wire                          int_weights_101_ce1;
    wire                          int_weights_101_we1;
    wire [3:0]                    int_weights_101_be1;
    wire [31:0]                   int_weights_101_d1;
    wire [31:0]                   int_weights_101_q1;
    reg                           int_weights_101_read;
    reg                           int_weights_101_write;
    reg  [0:0]                    int_weights_101_shift0;
    wire [5:0]                    int_weights_102_address0;
    wire                          int_weights_102_ce0;
    wire [31:0]                   int_weights_102_q0;
    wire [5:0]                    int_weights_102_address1;
    wire                          int_weights_102_ce1;
    wire                          int_weights_102_we1;
    wire [3:0]                    int_weights_102_be1;
    wire [31:0]                   int_weights_102_d1;
    wire [31:0]                   int_weights_102_q1;
    reg                           int_weights_102_read;
    reg                           int_weights_102_write;
    reg  [0:0]                    int_weights_102_shift0;
    wire [5:0]                    int_weights_103_address0;
    wire                          int_weights_103_ce0;
    wire [31:0]                   int_weights_103_q0;
    wire [5:0]                    int_weights_103_address1;
    wire                          int_weights_103_ce1;
    wire                          int_weights_103_we1;
    wire [3:0]                    int_weights_103_be1;
    wire [31:0]                   int_weights_103_d1;
    wire [31:0]                   int_weights_103_q1;
    reg                           int_weights_103_read;
    reg                           int_weights_103_write;
    reg  [0:0]                    int_weights_103_shift0;
    wire [5:0]                    int_weights_104_address0;
    wire                          int_weights_104_ce0;
    wire [31:0]                   int_weights_104_q0;
    wire [5:0]                    int_weights_104_address1;
    wire                          int_weights_104_ce1;
    wire                          int_weights_104_we1;
    wire [3:0]                    int_weights_104_be1;
    wire [31:0]                   int_weights_104_d1;
    wire [31:0]                   int_weights_104_q1;
    reg                           int_weights_104_read;
    reg                           int_weights_104_write;
    reg  [0:0]                    int_weights_104_shift0;
    wire [5:0]                    int_weights_105_address0;
    wire                          int_weights_105_ce0;
    wire [31:0]                   int_weights_105_q0;
    wire [5:0]                    int_weights_105_address1;
    wire                          int_weights_105_ce1;
    wire                          int_weights_105_we1;
    wire [3:0]                    int_weights_105_be1;
    wire [31:0]                   int_weights_105_d1;
    wire [31:0]                   int_weights_105_q1;
    reg                           int_weights_105_read;
    reg                           int_weights_105_write;
    reg  [0:0]                    int_weights_105_shift0;
    wire [5:0]                    int_weights_106_address0;
    wire                          int_weights_106_ce0;
    wire [31:0]                   int_weights_106_q0;
    wire [5:0]                    int_weights_106_address1;
    wire                          int_weights_106_ce1;
    wire                          int_weights_106_we1;
    wire [3:0]                    int_weights_106_be1;
    wire [31:0]                   int_weights_106_d1;
    wire [31:0]                   int_weights_106_q1;
    reg                           int_weights_106_read;
    reg                           int_weights_106_write;
    reg  [0:0]                    int_weights_106_shift0;
    wire [5:0]                    int_weights_107_address0;
    wire                          int_weights_107_ce0;
    wire [31:0]                   int_weights_107_q0;
    wire [5:0]                    int_weights_107_address1;
    wire                          int_weights_107_ce1;
    wire                          int_weights_107_we1;
    wire [3:0]                    int_weights_107_be1;
    wire [31:0]                   int_weights_107_d1;
    wire [31:0]                   int_weights_107_q1;
    reg                           int_weights_107_read;
    reg                           int_weights_107_write;
    reg  [0:0]                    int_weights_107_shift0;
    wire [5:0]                    int_weights_108_address0;
    wire                          int_weights_108_ce0;
    wire [31:0]                   int_weights_108_q0;
    wire [5:0]                    int_weights_108_address1;
    wire                          int_weights_108_ce1;
    wire                          int_weights_108_we1;
    wire [3:0]                    int_weights_108_be1;
    wire [31:0]                   int_weights_108_d1;
    wire [31:0]                   int_weights_108_q1;
    reg                           int_weights_108_read;
    reg                           int_weights_108_write;
    reg  [0:0]                    int_weights_108_shift0;
    wire [5:0]                    int_weights_109_address0;
    wire                          int_weights_109_ce0;
    wire [31:0]                   int_weights_109_q0;
    wire [5:0]                    int_weights_109_address1;
    wire                          int_weights_109_ce1;
    wire                          int_weights_109_we1;
    wire [3:0]                    int_weights_109_be1;
    wire [31:0]                   int_weights_109_d1;
    wire [31:0]                   int_weights_109_q1;
    reg                           int_weights_109_read;
    reg                           int_weights_109_write;
    reg  [0:0]                    int_weights_109_shift0;
    wire [5:0]                    int_weights_110_address0;
    wire                          int_weights_110_ce0;
    wire [31:0]                   int_weights_110_q0;
    wire [5:0]                    int_weights_110_address1;
    wire                          int_weights_110_ce1;
    wire                          int_weights_110_we1;
    wire [3:0]                    int_weights_110_be1;
    wire [31:0]                   int_weights_110_d1;
    wire [31:0]                   int_weights_110_q1;
    reg                           int_weights_110_read;
    reg                           int_weights_110_write;
    reg  [0:0]                    int_weights_110_shift0;
    wire [5:0]                    int_weights_111_address0;
    wire                          int_weights_111_ce0;
    wire [31:0]                   int_weights_111_q0;
    wire [5:0]                    int_weights_111_address1;
    wire                          int_weights_111_ce1;
    wire                          int_weights_111_we1;
    wire [3:0]                    int_weights_111_be1;
    wire [31:0]                   int_weights_111_d1;
    wire [31:0]                   int_weights_111_q1;
    reg                           int_weights_111_read;
    reg                           int_weights_111_write;
    reg  [0:0]                    int_weights_111_shift0;
    wire [5:0]                    int_weights_112_address0;
    wire                          int_weights_112_ce0;
    wire [31:0]                   int_weights_112_q0;
    wire [5:0]                    int_weights_112_address1;
    wire                          int_weights_112_ce1;
    wire                          int_weights_112_we1;
    wire [3:0]                    int_weights_112_be1;
    wire [31:0]                   int_weights_112_d1;
    wire [31:0]                   int_weights_112_q1;
    reg                           int_weights_112_read;
    reg                           int_weights_112_write;
    reg  [0:0]                    int_weights_112_shift0;
    wire [5:0]                    int_weights_113_address0;
    wire                          int_weights_113_ce0;
    wire [31:0]                   int_weights_113_q0;
    wire [5:0]                    int_weights_113_address1;
    wire                          int_weights_113_ce1;
    wire                          int_weights_113_we1;
    wire [3:0]                    int_weights_113_be1;
    wire [31:0]                   int_weights_113_d1;
    wire [31:0]                   int_weights_113_q1;
    reg                           int_weights_113_read;
    reg                           int_weights_113_write;
    reg  [0:0]                    int_weights_113_shift0;
    wire [5:0]                    int_weights_114_address0;
    wire                          int_weights_114_ce0;
    wire [31:0]                   int_weights_114_q0;
    wire [5:0]                    int_weights_114_address1;
    wire                          int_weights_114_ce1;
    wire                          int_weights_114_we1;
    wire [3:0]                    int_weights_114_be1;
    wire [31:0]                   int_weights_114_d1;
    wire [31:0]                   int_weights_114_q1;
    reg                           int_weights_114_read;
    reg                           int_weights_114_write;
    reg  [0:0]                    int_weights_114_shift0;
    wire [5:0]                    int_weights_115_address0;
    wire                          int_weights_115_ce0;
    wire [31:0]                   int_weights_115_q0;
    wire [5:0]                    int_weights_115_address1;
    wire                          int_weights_115_ce1;
    wire                          int_weights_115_we1;
    wire [3:0]                    int_weights_115_be1;
    wire [31:0]                   int_weights_115_d1;
    wire [31:0]                   int_weights_115_q1;
    reg                           int_weights_115_read;
    reg                           int_weights_115_write;
    reg  [0:0]                    int_weights_115_shift0;
    wire [5:0]                    int_weights_116_address0;
    wire                          int_weights_116_ce0;
    wire [31:0]                   int_weights_116_q0;
    wire [5:0]                    int_weights_116_address1;
    wire                          int_weights_116_ce1;
    wire                          int_weights_116_we1;
    wire [3:0]                    int_weights_116_be1;
    wire [31:0]                   int_weights_116_d1;
    wire [31:0]                   int_weights_116_q1;
    reg                           int_weights_116_read;
    reg                           int_weights_116_write;
    reg  [0:0]                    int_weights_116_shift0;
    wire [5:0]                    int_weights_117_address0;
    wire                          int_weights_117_ce0;
    wire [31:0]                   int_weights_117_q0;
    wire [5:0]                    int_weights_117_address1;
    wire                          int_weights_117_ce1;
    wire                          int_weights_117_we1;
    wire [3:0]                    int_weights_117_be1;
    wire [31:0]                   int_weights_117_d1;
    wire [31:0]                   int_weights_117_q1;
    reg                           int_weights_117_read;
    reg                           int_weights_117_write;
    reg  [0:0]                    int_weights_117_shift0;
    wire [5:0]                    int_weights_118_address0;
    wire                          int_weights_118_ce0;
    wire [31:0]                   int_weights_118_q0;
    wire [5:0]                    int_weights_118_address1;
    wire                          int_weights_118_ce1;
    wire                          int_weights_118_we1;
    wire [3:0]                    int_weights_118_be1;
    wire [31:0]                   int_weights_118_d1;
    wire [31:0]                   int_weights_118_q1;
    reg                           int_weights_118_read;
    reg                           int_weights_118_write;
    reg  [0:0]                    int_weights_118_shift0;
    wire [5:0]                    int_weights_119_address0;
    wire                          int_weights_119_ce0;
    wire [31:0]                   int_weights_119_q0;
    wire [5:0]                    int_weights_119_address1;
    wire                          int_weights_119_ce1;
    wire                          int_weights_119_we1;
    wire [3:0]                    int_weights_119_be1;
    wire [31:0]                   int_weights_119_d1;
    wire [31:0]                   int_weights_119_q1;
    reg                           int_weights_119_read;
    reg                           int_weights_119_write;
    reg  [0:0]                    int_weights_119_shift0;
    wire [5:0]                    int_weights_120_address0;
    wire                          int_weights_120_ce0;
    wire [31:0]                   int_weights_120_q0;
    wire [5:0]                    int_weights_120_address1;
    wire                          int_weights_120_ce1;
    wire                          int_weights_120_we1;
    wire [3:0]                    int_weights_120_be1;
    wire [31:0]                   int_weights_120_d1;
    wire [31:0]                   int_weights_120_q1;
    reg                           int_weights_120_read;
    reg                           int_weights_120_write;
    reg  [0:0]                    int_weights_120_shift0;
    wire [5:0]                    int_weights_121_address0;
    wire                          int_weights_121_ce0;
    wire [31:0]                   int_weights_121_q0;
    wire [5:0]                    int_weights_121_address1;
    wire                          int_weights_121_ce1;
    wire                          int_weights_121_we1;
    wire [3:0]                    int_weights_121_be1;
    wire [31:0]                   int_weights_121_d1;
    wire [31:0]                   int_weights_121_q1;
    reg                           int_weights_121_read;
    reg                           int_weights_121_write;
    reg  [0:0]                    int_weights_121_shift0;
    wire [5:0]                    int_weights_122_address0;
    wire                          int_weights_122_ce0;
    wire [31:0]                   int_weights_122_q0;
    wire [5:0]                    int_weights_122_address1;
    wire                          int_weights_122_ce1;
    wire                          int_weights_122_we1;
    wire [3:0]                    int_weights_122_be1;
    wire [31:0]                   int_weights_122_d1;
    wire [31:0]                   int_weights_122_q1;
    reg                           int_weights_122_read;
    reg                           int_weights_122_write;
    reg  [0:0]                    int_weights_122_shift0;
    wire [5:0]                    int_weights_123_address0;
    wire                          int_weights_123_ce0;
    wire [31:0]                   int_weights_123_q0;
    wire [5:0]                    int_weights_123_address1;
    wire                          int_weights_123_ce1;
    wire                          int_weights_123_we1;
    wire [3:0]                    int_weights_123_be1;
    wire [31:0]                   int_weights_123_d1;
    wire [31:0]                   int_weights_123_q1;
    reg                           int_weights_123_read;
    reg                           int_weights_123_write;
    reg  [0:0]                    int_weights_123_shift0;
    wire [5:0]                    int_weights_124_address0;
    wire                          int_weights_124_ce0;
    wire [31:0]                   int_weights_124_q0;
    wire [5:0]                    int_weights_124_address1;
    wire                          int_weights_124_ce1;
    wire                          int_weights_124_we1;
    wire [3:0]                    int_weights_124_be1;
    wire [31:0]                   int_weights_124_d1;
    wire [31:0]                   int_weights_124_q1;
    reg                           int_weights_124_read;
    reg                           int_weights_124_write;
    reg  [0:0]                    int_weights_124_shift0;
    wire [5:0]                    int_weights_125_address0;
    wire                          int_weights_125_ce0;
    wire [31:0]                   int_weights_125_q0;
    wire [5:0]                    int_weights_125_address1;
    wire                          int_weights_125_ce1;
    wire                          int_weights_125_we1;
    wire [3:0]                    int_weights_125_be1;
    wire [31:0]                   int_weights_125_d1;
    wire [31:0]                   int_weights_125_q1;
    reg                           int_weights_125_read;
    reg                           int_weights_125_write;
    reg  [0:0]                    int_weights_125_shift0;
    wire [5:0]                    int_weights_126_address0;
    wire                          int_weights_126_ce0;
    wire [31:0]                   int_weights_126_q0;
    wire [5:0]                    int_weights_126_address1;
    wire                          int_weights_126_ce1;
    wire                          int_weights_126_we1;
    wire [3:0]                    int_weights_126_be1;
    wire [31:0]                   int_weights_126_d1;
    wire [31:0]                   int_weights_126_q1;
    reg                           int_weights_126_read;
    reg                           int_weights_126_write;
    reg  [0:0]                    int_weights_126_shift0;
    wire [5:0]                    int_weights_127_address0;
    wire                          int_weights_127_ce0;
    wire [31:0]                   int_weights_127_q0;
    wire [5:0]                    int_weights_127_address1;
    wire                          int_weights_127_ce1;
    wire                          int_weights_127_we1;
    wire [3:0]                    int_weights_127_be1;
    wire [31:0]                   int_weights_127_d1;
    wire [31:0]                   int_weights_127_q1;
    reg                           int_weights_127_read;
    reg                           int_weights_127_write;
    reg  [0:0]                    int_weights_127_shift0;

//------------------------Instantiation------------------
// int_bias
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_bias (
    .clk0      ( ACLK ),
    .address0  ( int_bias_address0 ),
    .ce0       ( int_bias_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_bias_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_bias_address1 ),
    .ce1       ( int_bias_ce1 ),
    .we1       ( int_bias_be1 ),
    .d1        ( int_bias_d1 ),
    .q1        ( int_bias_q1 )
);
// int_weights_0
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_0 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_0_address0 ),
    .ce0       ( int_weights_0_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_0_address1 ),
    .ce1       ( int_weights_0_ce1 ),
    .we1       ( int_weights_0_be1 ),
    .d1        ( int_weights_0_d1 ),
    .q1        ( int_weights_0_q1 )
);
// int_weights_1
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_1 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_1_address0 ),
    .ce0       ( int_weights_1_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_1_address1 ),
    .ce1       ( int_weights_1_ce1 ),
    .we1       ( int_weights_1_be1 ),
    .d1        ( int_weights_1_d1 ),
    .q1        ( int_weights_1_q1 )
);
// int_weights_2
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_2 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_2_address0 ),
    .ce0       ( int_weights_2_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_2_address1 ),
    .ce1       ( int_weights_2_ce1 ),
    .we1       ( int_weights_2_be1 ),
    .d1        ( int_weights_2_d1 ),
    .q1        ( int_weights_2_q1 )
);
// int_weights_3
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_3 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_3_address0 ),
    .ce0       ( int_weights_3_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_3_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_3_address1 ),
    .ce1       ( int_weights_3_ce1 ),
    .we1       ( int_weights_3_be1 ),
    .d1        ( int_weights_3_d1 ),
    .q1        ( int_weights_3_q1 )
);
// int_weights_4
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_4 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_4_address0 ),
    .ce0       ( int_weights_4_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_4_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_4_address1 ),
    .ce1       ( int_weights_4_ce1 ),
    .we1       ( int_weights_4_be1 ),
    .d1        ( int_weights_4_d1 ),
    .q1        ( int_weights_4_q1 )
);
// int_weights_5
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_5 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_5_address0 ),
    .ce0       ( int_weights_5_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_5_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_5_address1 ),
    .ce1       ( int_weights_5_ce1 ),
    .we1       ( int_weights_5_be1 ),
    .d1        ( int_weights_5_d1 ),
    .q1        ( int_weights_5_q1 )
);
// int_weights_6
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_6 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_6_address0 ),
    .ce0       ( int_weights_6_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_6_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_6_address1 ),
    .ce1       ( int_weights_6_ce1 ),
    .we1       ( int_weights_6_be1 ),
    .d1        ( int_weights_6_d1 ),
    .q1        ( int_weights_6_q1 )
);
// int_weights_7
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_7 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_7_address0 ),
    .ce0       ( int_weights_7_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_7_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_7_address1 ),
    .ce1       ( int_weights_7_ce1 ),
    .we1       ( int_weights_7_be1 ),
    .d1        ( int_weights_7_d1 ),
    .q1        ( int_weights_7_q1 )
);
// int_weights_8
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_8 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_8_address0 ),
    .ce0       ( int_weights_8_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_8_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_8_address1 ),
    .ce1       ( int_weights_8_ce1 ),
    .we1       ( int_weights_8_be1 ),
    .d1        ( int_weights_8_d1 ),
    .q1        ( int_weights_8_q1 )
);
// int_weights_9
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_9 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_9_address0 ),
    .ce0       ( int_weights_9_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_9_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_9_address1 ),
    .ce1       ( int_weights_9_ce1 ),
    .we1       ( int_weights_9_be1 ),
    .d1        ( int_weights_9_d1 ),
    .q1        ( int_weights_9_q1 )
);
// int_weights_10
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_10 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_10_address0 ),
    .ce0       ( int_weights_10_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_10_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_10_address1 ),
    .ce1       ( int_weights_10_ce1 ),
    .we1       ( int_weights_10_be1 ),
    .d1        ( int_weights_10_d1 ),
    .q1        ( int_weights_10_q1 )
);
// int_weights_11
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_11 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_11_address0 ),
    .ce0       ( int_weights_11_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_11_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_11_address1 ),
    .ce1       ( int_weights_11_ce1 ),
    .we1       ( int_weights_11_be1 ),
    .d1        ( int_weights_11_d1 ),
    .q1        ( int_weights_11_q1 )
);
// int_weights_12
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_12 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_12_address0 ),
    .ce0       ( int_weights_12_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_12_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_12_address1 ),
    .ce1       ( int_weights_12_ce1 ),
    .we1       ( int_weights_12_be1 ),
    .d1        ( int_weights_12_d1 ),
    .q1        ( int_weights_12_q1 )
);
// int_weights_13
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_13 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_13_address0 ),
    .ce0       ( int_weights_13_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_13_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_13_address1 ),
    .ce1       ( int_weights_13_ce1 ),
    .we1       ( int_weights_13_be1 ),
    .d1        ( int_weights_13_d1 ),
    .q1        ( int_weights_13_q1 )
);
// int_weights_14
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_14 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_14_address0 ),
    .ce0       ( int_weights_14_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_14_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_14_address1 ),
    .ce1       ( int_weights_14_ce1 ),
    .we1       ( int_weights_14_be1 ),
    .d1        ( int_weights_14_d1 ),
    .q1        ( int_weights_14_q1 )
);
// int_weights_15
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_15 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_15_address0 ),
    .ce0       ( int_weights_15_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_15_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_15_address1 ),
    .ce1       ( int_weights_15_ce1 ),
    .we1       ( int_weights_15_be1 ),
    .d1        ( int_weights_15_d1 ),
    .q1        ( int_weights_15_q1 )
);
// int_weights_16
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_16 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_16_address0 ),
    .ce0       ( int_weights_16_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_16_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_16_address1 ),
    .ce1       ( int_weights_16_ce1 ),
    .we1       ( int_weights_16_be1 ),
    .d1        ( int_weights_16_d1 ),
    .q1        ( int_weights_16_q1 )
);
// int_weights_17
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_17 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_17_address0 ),
    .ce0       ( int_weights_17_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_17_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_17_address1 ),
    .ce1       ( int_weights_17_ce1 ),
    .we1       ( int_weights_17_be1 ),
    .d1        ( int_weights_17_d1 ),
    .q1        ( int_weights_17_q1 )
);
// int_weights_18
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_18 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_18_address0 ),
    .ce0       ( int_weights_18_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_18_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_18_address1 ),
    .ce1       ( int_weights_18_ce1 ),
    .we1       ( int_weights_18_be1 ),
    .d1        ( int_weights_18_d1 ),
    .q1        ( int_weights_18_q1 )
);
// int_weights_19
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_19 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_19_address0 ),
    .ce0       ( int_weights_19_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_19_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_19_address1 ),
    .ce1       ( int_weights_19_ce1 ),
    .we1       ( int_weights_19_be1 ),
    .d1        ( int_weights_19_d1 ),
    .q1        ( int_weights_19_q1 )
);
// int_weights_20
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_20 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_20_address0 ),
    .ce0       ( int_weights_20_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_20_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_20_address1 ),
    .ce1       ( int_weights_20_ce1 ),
    .we1       ( int_weights_20_be1 ),
    .d1        ( int_weights_20_d1 ),
    .q1        ( int_weights_20_q1 )
);
// int_weights_21
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_21 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_21_address0 ),
    .ce0       ( int_weights_21_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_21_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_21_address1 ),
    .ce1       ( int_weights_21_ce1 ),
    .we1       ( int_weights_21_be1 ),
    .d1        ( int_weights_21_d1 ),
    .q1        ( int_weights_21_q1 )
);
// int_weights_22
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_22 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_22_address0 ),
    .ce0       ( int_weights_22_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_22_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_22_address1 ),
    .ce1       ( int_weights_22_ce1 ),
    .we1       ( int_weights_22_be1 ),
    .d1        ( int_weights_22_d1 ),
    .q1        ( int_weights_22_q1 )
);
// int_weights_23
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_23 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_23_address0 ),
    .ce0       ( int_weights_23_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_23_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_23_address1 ),
    .ce1       ( int_weights_23_ce1 ),
    .we1       ( int_weights_23_be1 ),
    .d1        ( int_weights_23_d1 ),
    .q1        ( int_weights_23_q1 )
);
// int_weights_24
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_24 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_24_address0 ),
    .ce0       ( int_weights_24_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_24_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_24_address1 ),
    .ce1       ( int_weights_24_ce1 ),
    .we1       ( int_weights_24_be1 ),
    .d1        ( int_weights_24_d1 ),
    .q1        ( int_weights_24_q1 )
);
// int_weights_25
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_25 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_25_address0 ),
    .ce0       ( int_weights_25_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_25_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_25_address1 ),
    .ce1       ( int_weights_25_ce1 ),
    .we1       ( int_weights_25_be1 ),
    .d1        ( int_weights_25_d1 ),
    .q1        ( int_weights_25_q1 )
);
// int_weights_26
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_26 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_26_address0 ),
    .ce0       ( int_weights_26_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_26_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_26_address1 ),
    .ce1       ( int_weights_26_ce1 ),
    .we1       ( int_weights_26_be1 ),
    .d1        ( int_weights_26_d1 ),
    .q1        ( int_weights_26_q1 )
);
// int_weights_27
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_27 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_27_address0 ),
    .ce0       ( int_weights_27_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_27_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_27_address1 ),
    .ce1       ( int_weights_27_ce1 ),
    .we1       ( int_weights_27_be1 ),
    .d1        ( int_weights_27_d1 ),
    .q1        ( int_weights_27_q1 )
);
// int_weights_28
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_28 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_28_address0 ),
    .ce0       ( int_weights_28_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_28_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_28_address1 ),
    .ce1       ( int_weights_28_ce1 ),
    .we1       ( int_weights_28_be1 ),
    .d1        ( int_weights_28_d1 ),
    .q1        ( int_weights_28_q1 )
);
// int_weights_29
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_29 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_29_address0 ),
    .ce0       ( int_weights_29_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_29_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_29_address1 ),
    .ce1       ( int_weights_29_ce1 ),
    .we1       ( int_weights_29_be1 ),
    .d1        ( int_weights_29_d1 ),
    .q1        ( int_weights_29_q1 )
);
// int_weights_30
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_30 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_30_address0 ),
    .ce0       ( int_weights_30_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_30_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_30_address1 ),
    .ce1       ( int_weights_30_ce1 ),
    .we1       ( int_weights_30_be1 ),
    .d1        ( int_weights_30_d1 ),
    .q1        ( int_weights_30_q1 )
);
// int_weights_31
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_31 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_31_address0 ),
    .ce0       ( int_weights_31_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_31_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_31_address1 ),
    .ce1       ( int_weights_31_ce1 ),
    .we1       ( int_weights_31_be1 ),
    .d1        ( int_weights_31_d1 ),
    .q1        ( int_weights_31_q1 )
);
// int_weights_32
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_32 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_32_address0 ),
    .ce0       ( int_weights_32_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_32_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_32_address1 ),
    .ce1       ( int_weights_32_ce1 ),
    .we1       ( int_weights_32_be1 ),
    .d1        ( int_weights_32_d1 ),
    .q1        ( int_weights_32_q1 )
);
// int_weights_33
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_33 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_33_address0 ),
    .ce0       ( int_weights_33_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_33_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_33_address1 ),
    .ce1       ( int_weights_33_ce1 ),
    .we1       ( int_weights_33_be1 ),
    .d1        ( int_weights_33_d1 ),
    .q1        ( int_weights_33_q1 )
);
// int_weights_34
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_34 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_34_address0 ),
    .ce0       ( int_weights_34_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_34_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_34_address1 ),
    .ce1       ( int_weights_34_ce1 ),
    .we1       ( int_weights_34_be1 ),
    .d1        ( int_weights_34_d1 ),
    .q1        ( int_weights_34_q1 )
);
// int_weights_35
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_35 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_35_address0 ),
    .ce0       ( int_weights_35_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_35_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_35_address1 ),
    .ce1       ( int_weights_35_ce1 ),
    .we1       ( int_weights_35_be1 ),
    .d1        ( int_weights_35_d1 ),
    .q1        ( int_weights_35_q1 )
);
// int_weights_36
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_36 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_36_address0 ),
    .ce0       ( int_weights_36_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_36_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_36_address1 ),
    .ce1       ( int_weights_36_ce1 ),
    .we1       ( int_weights_36_be1 ),
    .d1        ( int_weights_36_d1 ),
    .q1        ( int_weights_36_q1 )
);
// int_weights_37
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_37 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_37_address0 ),
    .ce0       ( int_weights_37_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_37_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_37_address1 ),
    .ce1       ( int_weights_37_ce1 ),
    .we1       ( int_weights_37_be1 ),
    .d1        ( int_weights_37_d1 ),
    .q1        ( int_weights_37_q1 )
);
// int_weights_38
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_38 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_38_address0 ),
    .ce0       ( int_weights_38_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_38_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_38_address1 ),
    .ce1       ( int_weights_38_ce1 ),
    .we1       ( int_weights_38_be1 ),
    .d1        ( int_weights_38_d1 ),
    .q1        ( int_weights_38_q1 )
);
// int_weights_39
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_39 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_39_address0 ),
    .ce0       ( int_weights_39_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_39_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_39_address1 ),
    .ce1       ( int_weights_39_ce1 ),
    .we1       ( int_weights_39_be1 ),
    .d1        ( int_weights_39_d1 ),
    .q1        ( int_weights_39_q1 )
);
// int_weights_40
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_40 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_40_address0 ),
    .ce0       ( int_weights_40_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_40_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_40_address1 ),
    .ce1       ( int_weights_40_ce1 ),
    .we1       ( int_weights_40_be1 ),
    .d1        ( int_weights_40_d1 ),
    .q1        ( int_weights_40_q1 )
);
// int_weights_41
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_41 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_41_address0 ),
    .ce0       ( int_weights_41_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_41_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_41_address1 ),
    .ce1       ( int_weights_41_ce1 ),
    .we1       ( int_weights_41_be1 ),
    .d1        ( int_weights_41_d1 ),
    .q1        ( int_weights_41_q1 )
);
// int_weights_42
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_42 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_42_address0 ),
    .ce0       ( int_weights_42_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_42_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_42_address1 ),
    .ce1       ( int_weights_42_ce1 ),
    .we1       ( int_weights_42_be1 ),
    .d1        ( int_weights_42_d1 ),
    .q1        ( int_weights_42_q1 )
);
// int_weights_43
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_43 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_43_address0 ),
    .ce0       ( int_weights_43_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_43_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_43_address1 ),
    .ce1       ( int_weights_43_ce1 ),
    .we1       ( int_weights_43_be1 ),
    .d1        ( int_weights_43_d1 ),
    .q1        ( int_weights_43_q1 )
);
// int_weights_44
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_44 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_44_address0 ),
    .ce0       ( int_weights_44_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_44_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_44_address1 ),
    .ce1       ( int_weights_44_ce1 ),
    .we1       ( int_weights_44_be1 ),
    .d1        ( int_weights_44_d1 ),
    .q1        ( int_weights_44_q1 )
);
// int_weights_45
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_45 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_45_address0 ),
    .ce0       ( int_weights_45_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_45_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_45_address1 ),
    .ce1       ( int_weights_45_ce1 ),
    .we1       ( int_weights_45_be1 ),
    .d1        ( int_weights_45_d1 ),
    .q1        ( int_weights_45_q1 )
);
// int_weights_46
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_46 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_46_address0 ),
    .ce0       ( int_weights_46_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_46_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_46_address1 ),
    .ce1       ( int_weights_46_ce1 ),
    .we1       ( int_weights_46_be1 ),
    .d1        ( int_weights_46_d1 ),
    .q1        ( int_weights_46_q1 )
);
// int_weights_47
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_47 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_47_address0 ),
    .ce0       ( int_weights_47_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_47_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_47_address1 ),
    .ce1       ( int_weights_47_ce1 ),
    .we1       ( int_weights_47_be1 ),
    .d1        ( int_weights_47_d1 ),
    .q1        ( int_weights_47_q1 )
);
// int_weights_48
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_48 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_48_address0 ),
    .ce0       ( int_weights_48_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_48_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_48_address1 ),
    .ce1       ( int_weights_48_ce1 ),
    .we1       ( int_weights_48_be1 ),
    .d1        ( int_weights_48_d1 ),
    .q1        ( int_weights_48_q1 )
);
// int_weights_49
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_49 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_49_address0 ),
    .ce0       ( int_weights_49_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_49_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_49_address1 ),
    .ce1       ( int_weights_49_ce1 ),
    .we1       ( int_weights_49_be1 ),
    .d1        ( int_weights_49_d1 ),
    .q1        ( int_weights_49_q1 )
);
// int_weights_50
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_50 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_50_address0 ),
    .ce0       ( int_weights_50_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_50_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_50_address1 ),
    .ce1       ( int_weights_50_ce1 ),
    .we1       ( int_weights_50_be1 ),
    .d1        ( int_weights_50_d1 ),
    .q1        ( int_weights_50_q1 )
);
// int_weights_51
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_51 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_51_address0 ),
    .ce0       ( int_weights_51_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_51_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_51_address1 ),
    .ce1       ( int_weights_51_ce1 ),
    .we1       ( int_weights_51_be1 ),
    .d1        ( int_weights_51_d1 ),
    .q1        ( int_weights_51_q1 )
);
// int_weights_52
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_52 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_52_address0 ),
    .ce0       ( int_weights_52_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_52_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_52_address1 ),
    .ce1       ( int_weights_52_ce1 ),
    .we1       ( int_weights_52_be1 ),
    .d1        ( int_weights_52_d1 ),
    .q1        ( int_weights_52_q1 )
);
// int_weights_53
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_53 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_53_address0 ),
    .ce0       ( int_weights_53_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_53_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_53_address1 ),
    .ce1       ( int_weights_53_ce1 ),
    .we1       ( int_weights_53_be1 ),
    .d1        ( int_weights_53_d1 ),
    .q1        ( int_weights_53_q1 )
);
// int_weights_54
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_54 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_54_address0 ),
    .ce0       ( int_weights_54_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_54_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_54_address1 ),
    .ce1       ( int_weights_54_ce1 ),
    .we1       ( int_weights_54_be1 ),
    .d1        ( int_weights_54_d1 ),
    .q1        ( int_weights_54_q1 )
);
// int_weights_55
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_55 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_55_address0 ),
    .ce0       ( int_weights_55_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_55_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_55_address1 ),
    .ce1       ( int_weights_55_ce1 ),
    .we1       ( int_weights_55_be1 ),
    .d1        ( int_weights_55_d1 ),
    .q1        ( int_weights_55_q1 )
);
// int_weights_56
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_56 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_56_address0 ),
    .ce0       ( int_weights_56_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_56_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_56_address1 ),
    .ce1       ( int_weights_56_ce1 ),
    .we1       ( int_weights_56_be1 ),
    .d1        ( int_weights_56_d1 ),
    .q1        ( int_weights_56_q1 )
);
// int_weights_57
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_57 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_57_address0 ),
    .ce0       ( int_weights_57_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_57_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_57_address1 ),
    .ce1       ( int_weights_57_ce1 ),
    .we1       ( int_weights_57_be1 ),
    .d1        ( int_weights_57_d1 ),
    .q1        ( int_weights_57_q1 )
);
// int_weights_58
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_58 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_58_address0 ),
    .ce0       ( int_weights_58_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_58_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_58_address1 ),
    .ce1       ( int_weights_58_ce1 ),
    .we1       ( int_weights_58_be1 ),
    .d1        ( int_weights_58_d1 ),
    .q1        ( int_weights_58_q1 )
);
// int_weights_59
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_59 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_59_address0 ),
    .ce0       ( int_weights_59_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_59_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_59_address1 ),
    .ce1       ( int_weights_59_ce1 ),
    .we1       ( int_weights_59_be1 ),
    .d1        ( int_weights_59_d1 ),
    .q1        ( int_weights_59_q1 )
);
// int_weights_60
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_60 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_60_address0 ),
    .ce0       ( int_weights_60_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_60_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_60_address1 ),
    .ce1       ( int_weights_60_ce1 ),
    .we1       ( int_weights_60_be1 ),
    .d1        ( int_weights_60_d1 ),
    .q1        ( int_weights_60_q1 )
);
// int_weights_61
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_61 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_61_address0 ),
    .ce0       ( int_weights_61_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_61_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_61_address1 ),
    .ce1       ( int_weights_61_ce1 ),
    .we1       ( int_weights_61_be1 ),
    .d1        ( int_weights_61_d1 ),
    .q1        ( int_weights_61_q1 )
);
// int_weights_62
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_62 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_62_address0 ),
    .ce0       ( int_weights_62_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_62_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_62_address1 ),
    .ce1       ( int_weights_62_ce1 ),
    .we1       ( int_weights_62_be1 ),
    .d1        ( int_weights_62_d1 ),
    .q1        ( int_weights_62_q1 )
);
// int_weights_63
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_63 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_63_address0 ),
    .ce0       ( int_weights_63_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_63_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_63_address1 ),
    .ce1       ( int_weights_63_ce1 ),
    .we1       ( int_weights_63_be1 ),
    .d1        ( int_weights_63_d1 ),
    .q1        ( int_weights_63_q1 )
);
// int_weights_64
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_64 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_64_address0 ),
    .ce0       ( int_weights_64_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_64_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_64_address1 ),
    .ce1       ( int_weights_64_ce1 ),
    .we1       ( int_weights_64_be1 ),
    .d1        ( int_weights_64_d1 ),
    .q1        ( int_weights_64_q1 )
);
// int_weights_65
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_65 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_65_address0 ),
    .ce0       ( int_weights_65_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_65_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_65_address1 ),
    .ce1       ( int_weights_65_ce1 ),
    .we1       ( int_weights_65_be1 ),
    .d1        ( int_weights_65_d1 ),
    .q1        ( int_weights_65_q1 )
);
// int_weights_66
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_66 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_66_address0 ),
    .ce0       ( int_weights_66_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_66_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_66_address1 ),
    .ce1       ( int_weights_66_ce1 ),
    .we1       ( int_weights_66_be1 ),
    .d1        ( int_weights_66_d1 ),
    .q1        ( int_weights_66_q1 )
);
// int_weights_67
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_67 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_67_address0 ),
    .ce0       ( int_weights_67_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_67_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_67_address1 ),
    .ce1       ( int_weights_67_ce1 ),
    .we1       ( int_weights_67_be1 ),
    .d1        ( int_weights_67_d1 ),
    .q1        ( int_weights_67_q1 )
);
// int_weights_68
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_68 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_68_address0 ),
    .ce0       ( int_weights_68_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_68_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_68_address1 ),
    .ce1       ( int_weights_68_ce1 ),
    .we1       ( int_weights_68_be1 ),
    .d1        ( int_weights_68_d1 ),
    .q1        ( int_weights_68_q1 )
);
// int_weights_69
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_69 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_69_address0 ),
    .ce0       ( int_weights_69_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_69_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_69_address1 ),
    .ce1       ( int_weights_69_ce1 ),
    .we1       ( int_weights_69_be1 ),
    .d1        ( int_weights_69_d1 ),
    .q1        ( int_weights_69_q1 )
);
// int_weights_70
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_70 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_70_address0 ),
    .ce0       ( int_weights_70_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_70_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_70_address1 ),
    .ce1       ( int_weights_70_ce1 ),
    .we1       ( int_weights_70_be1 ),
    .d1        ( int_weights_70_d1 ),
    .q1        ( int_weights_70_q1 )
);
// int_weights_71
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_71 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_71_address0 ),
    .ce0       ( int_weights_71_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_71_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_71_address1 ),
    .ce1       ( int_weights_71_ce1 ),
    .we1       ( int_weights_71_be1 ),
    .d1        ( int_weights_71_d1 ),
    .q1        ( int_weights_71_q1 )
);
// int_weights_72
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_72 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_72_address0 ),
    .ce0       ( int_weights_72_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_72_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_72_address1 ),
    .ce1       ( int_weights_72_ce1 ),
    .we1       ( int_weights_72_be1 ),
    .d1        ( int_weights_72_d1 ),
    .q1        ( int_weights_72_q1 )
);
// int_weights_73
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_73 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_73_address0 ),
    .ce0       ( int_weights_73_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_73_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_73_address1 ),
    .ce1       ( int_weights_73_ce1 ),
    .we1       ( int_weights_73_be1 ),
    .d1        ( int_weights_73_d1 ),
    .q1        ( int_weights_73_q1 )
);
// int_weights_74
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_74 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_74_address0 ),
    .ce0       ( int_weights_74_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_74_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_74_address1 ),
    .ce1       ( int_weights_74_ce1 ),
    .we1       ( int_weights_74_be1 ),
    .d1        ( int_weights_74_d1 ),
    .q1        ( int_weights_74_q1 )
);
// int_weights_75
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_75 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_75_address0 ),
    .ce0       ( int_weights_75_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_75_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_75_address1 ),
    .ce1       ( int_weights_75_ce1 ),
    .we1       ( int_weights_75_be1 ),
    .d1        ( int_weights_75_d1 ),
    .q1        ( int_weights_75_q1 )
);
// int_weights_76
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_76 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_76_address0 ),
    .ce0       ( int_weights_76_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_76_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_76_address1 ),
    .ce1       ( int_weights_76_ce1 ),
    .we1       ( int_weights_76_be1 ),
    .d1        ( int_weights_76_d1 ),
    .q1        ( int_weights_76_q1 )
);
// int_weights_77
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_77 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_77_address0 ),
    .ce0       ( int_weights_77_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_77_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_77_address1 ),
    .ce1       ( int_weights_77_ce1 ),
    .we1       ( int_weights_77_be1 ),
    .d1        ( int_weights_77_d1 ),
    .q1        ( int_weights_77_q1 )
);
// int_weights_78
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_78 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_78_address0 ),
    .ce0       ( int_weights_78_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_78_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_78_address1 ),
    .ce1       ( int_weights_78_ce1 ),
    .we1       ( int_weights_78_be1 ),
    .d1        ( int_weights_78_d1 ),
    .q1        ( int_weights_78_q1 )
);
// int_weights_79
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_79 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_79_address0 ),
    .ce0       ( int_weights_79_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_79_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_79_address1 ),
    .ce1       ( int_weights_79_ce1 ),
    .we1       ( int_weights_79_be1 ),
    .d1        ( int_weights_79_d1 ),
    .q1        ( int_weights_79_q1 )
);
// int_weights_80
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_80 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_80_address0 ),
    .ce0       ( int_weights_80_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_80_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_80_address1 ),
    .ce1       ( int_weights_80_ce1 ),
    .we1       ( int_weights_80_be1 ),
    .d1        ( int_weights_80_d1 ),
    .q1        ( int_weights_80_q1 )
);
// int_weights_81
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_81 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_81_address0 ),
    .ce0       ( int_weights_81_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_81_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_81_address1 ),
    .ce1       ( int_weights_81_ce1 ),
    .we1       ( int_weights_81_be1 ),
    .d1        ( int_weights_81_d1 ),
    .q1        ( int_weights_81_q1 )
);
// int_weights_82
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_82 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_82_address0 ),
    .ce0       ( int_weights_82_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_82_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_82_address1 ),
    .ce1       ( int_weights_82_ce1 ),
    .we1       ( int_weights_82_be1 ),
    .d1        ( int_weights_82_d1 ),
    .q1        ( int_weights_82_q1 )
);
// int_weights_83
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_83 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_83_address0 ),
    .ce0       ( int_weights_83_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_83_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_83_address1 ),
    .ce1       ( int_weights_83_ce1 ),
    .we1       ( int_weights_83_be1 ),
    .d1        ( int_weights_83_d1 ),
    .q1        ( int_weights_83_q1 )
);
// int_weights_84
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_84 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_84_address0 ),
    .ce0       ( int_weights_84_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_84_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_84_address1 ),
    .ce1       ( int_weights_84_ce1 ),
    .we1       ( int_weights_84_be1 ),
    .d1        ( int_weights_84_d1 ),
    .q1        ( int_weights_84_q1 )
);
// int_weights_85
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_85 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_85_address0 ),
    .ce0       ( int_weights_85_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_85_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_85_address1 ),
    .ce1       ( int_weights_85_ce1 ),
    .we1       ( int_weights_85_be1 ),
    .d1        ( int_weights_85_d1 ),
    .q1        ( int_weights_85_q1 )
);
// int_weights_86
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_86 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_86_address0 ),
    .ce0       ( int_weights_86_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_86_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_86_address1 ),
    .ce1       ( int_weights_86_ce1 ),
    .we1       ( int_weights_86_be1 ),
    .d1        ( int_weights_86_d1 ),
    .q1        ( int_weights_86_q1 )
);
// int_weights_87
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_87 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_87_address0 ),
    .ce0       ( int_weights_87_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_87_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_87_address1 ),
    .ce1       ( int_weights_87_ce1 ),
    .we1       ( int_weights_87_be1 ),
    .d1        ( int_weights_87_d1 ),
    .q1        ( int_weights_87_q1 )
);
// int_weights_88
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_88 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_88_address0 ),
    .ce0       ( int_weights_88_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_88_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_88_address1 ),
    .ce1       ( int_weights_88_ce1 ),
    .we1       ( int_weights_88_be1 ),
    .d1        ( int_weights_88_d1 ),
    .q1        ( int_weights_88_q1 )
);
// int_weights_89
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_89 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_89_address0 ),
    .ce0       ( int_weights_89_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_89_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_89_address1 ),
    .ce1       ( int_weights_89_ce1 ),
    .we1       ( int_weights_89_be1 ),
    .d1        ( int_weights_89_d1 ),
    .q1        ( int_weights_89_q1 )
);
// int_weights_90
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_90 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_90_address0 ),
    .ce0       ( int_weights_90_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_90_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_90_address1 ),
    .ce1       ( int_weights_90_ce1 ),
    .we1       ( int_weights_90_be1 ),
    .d1        ( int_weights_90_d1 ),
    .q1        ( int_weights_90_q1 )
);
// int_weights_91
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_91 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_91_address0 ),
    .ce0       ( int_weights_91_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_91_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_91_address1 ),
    .ce1       ( int_weights_91_ce1 ),
    .we1       ( int_weights_91_be1 ),
    .d1        ( int_weights_91_d1 ),
    .q1        ( int_weights_91_q1 )
);
// int_weights_92
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_92 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_92_address0 ),
    .ce0       ( int_weights_92_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_92_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_92_address1 ),
    .ce1       ( int_weights_92_ce1 ),
    .we1       ( int_weights_92_be1 ),
    .d1        ( int_weights_92_d1 ),
    .q1        ( int_weights_92_q1 )
);
// int_weights_93
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_93 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_93_address0 ),
    .ce0       ( int_weights_93_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_93_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_93_address1 ),
    .ce1       ( int_weights_93_ce1 ),
    .we1       ( int_weights_93_be1 ),
    .d1        ( int_weights_93_d1 ),
    .q1        ( int_weights_93_q1 )
);
// int_weights_94
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_94 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_94_address0 ),
    .ce0       ( int_weights_94_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_94_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_94_address1 ),
    .ce1       ( int_weights_94_ce1 ),
    .we1       ( int_weights_94_be1 ),
    .d1        ( int_weights_94_d1 ),
    .q1        ( int_weights_94_q1 )
);
// int_weights_95
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_95 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_95_address0 ),
    .ce0       ( int_weights_95_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_95_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_95_address1 ),
    .ce1       ( int_weights_95_ce1 ),
    .we1       ( int_weights_95_be1 ),
    .d1        ( int_weights_95_d1 ),
    .q1        ( int_weights_95_q1 )
);
// int_weights_96
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_96 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_96_address0 ),
    .ce0       ( int_weights_96_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_96_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_96_address1 ),
    .ce1       ( int_weights_96_ce1 ),
    .we1       ( int_weights_96_be1 ),
    .d1        ( int_weights_96_d1 ),
    .q1        ( int_weights_96_q1 )
);
// int_weights_97
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_97 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_97_address0 ),
    .ce0       ( int_weights_97_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_97_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_97_address1 ),
    .ce1       ( int_weights_97_ce1 ),
    .we1       ( int_weights_97_be1 ),
    .d1        ( int_weights_97_d1 ),
    .q1        ( int_weights_97_q1 )
);
// int_weights_98
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_98 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_98_address0 ),
    .ce0       ( int_weights_98_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_98_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_98_address1 ),
    .ce1       ( int_weights_98_ce1 ),
    .we1       ( int_weights_98_be1 ),
    .d1        ( int_weights_98_d1 ),
    .q1        ( int_weights_98_q1 )
);
// int_weights_99
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_99 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_99_address0 ),
    .ce0       ( int_weights_99_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_99_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_99_address1 ),
    .ce1       ( int_weights_99_ce1 ),
    .we1       ( int_weights_99_be1 ),
    .d1        ( int_weights_99_d1 ),
    .q1        ( int_weights_99_q1 )
);
// int_weights_100
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_100 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_100_address0 ),
    .ce0       ( int_weights_100_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_100_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_100_address1 ),
    .ce1       ( int_weights_100_ce1 ),
    .we1       ( int_weights_100_be1 ),
    .d1        ( int_weights_100_d1 ),
    .q1        ( int_weights_100_q1 )
);
// int_weights_101
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_101 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_101_address0 ),
    .ce0       ( int_weights_101_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_101_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_101_address1 ),
    .ce1       ( int_weights_101_ce1 ),
    .we1       ( int_weights_101_be1 ),
    .d1        ( int_weights_101_d1 ),
    .q1        ( int_weights_101_q1 )
);
// int_weights_102
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_102 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_102_address0 ),
    .ce0       ( int_weights_102_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_102_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_102_address1 ),
    .ce1       ( int_weights_102_ce1 ),
    .we1       ( int_weights_102_be1 ),
    .d1        ( int_weights_102_d1 ),
    .q1        ( int_weights_102_q1 )
);
// int_weights_103
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_103 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_103_address0 ),
    .ce0       ( int_weights_103_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_103_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_103_address1 ),
    .ce1       ( int_weights_103_ce1 ),
    .we1       ( int_weights_103_be1 ),
    .d1        ( int_weights_103_d1 ),
    .q1        ( int_weights_103_q1 )
);
// int_weights_104
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_104 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_104_address0 ),
    .ce0       ( int_weights_104_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_104_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_104_address1 ),
    .ce1       ( int_weights_104_ce1 ),
    .we1       ( int_weights_104_be1 ),
    .d1        ( int_weights_104_d1 ),
    .q1        ( int_weights_104_q1 )
);
// int_weights_105
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_105 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_105_address0 ),
    .ce0       ( int_weights_105_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_105_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_105_address1 ),
    .ce1       ( int_weights_105_ce1 ),
    .we1       ( int_weights_105_be1 ),
    .d1        ( int_weights_105_d1 ),
    .q1        ( int_weights_105_q1 )
);
// int_weights_106
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_106 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_106_address0 ),
    .ce0       ( int_weights_106_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_106_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_106_address1 ),
    .ce1       ( int_weights_106_ce1 ),
    .we1       ( int_weights_106_be1 ),
    .d1        ( int_weights_106_d1 ),
    .q1        ( int_weights_106_q1 )
);
// int_weights_107
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_107 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_107_address0 ),
    .ce0       ( int_weights_107_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_107_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_107_address1 ),
    .ce1       ( int_weights_107_ce1 ),
    .we1       ( int_weights_107_be1 ),
    .d1        ( int_weights_107_d1 ),
    .q1        ( int_weights_107_q1 )
);
// int_weights_108
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_108 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_108_address0 ),
    .ce0       ( int_weights_108_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_108_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_108_address1 ),
    .ce1       ( int_weights_108_ce1 ),
    .we1       ( int_weights_108_be1 ),
    .d1        ( int_weights_108_d1 ),
    .q1        ( int_weights_108_q1 )
);
// int_weights_109
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_109 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_109_address0 ),
    .ce0       ( int_weights_109_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_109_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_109_address1 ),
    .ce1       ( int_weights_109_ce1 ),
    .we1       ( int_weights_109_be1 ),
    .d1        ( int_weights_109_d1 ),
    .q1        ( int_weights_109_q1 )
);
// int_weights_110
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_110 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_110_address0 ),
    .ce0       ( int_weights_110_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_110_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_110_address1 ),
    .ce1       ( int_weights_110_ce1 ),
    .we1       ( int_weights_110_be1 ),
    .d1        ( int_weights_110_d1 ),
    .q1        ( int_weights_110_q1 )
);
// int_weights_111
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_111 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_111_address0 ),
    .ce0       ( int_weights_111_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_111_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_111_address1 ),
    .ce1       ( int_weights_111_ce1 ),
    .we1       ( int_weights_111_be1 ),
    .d1        ( int_weights_111_d1 ),
    .q1        ( int_weights_111_q1 )
);
// int_weights_112
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_112 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_112_address0 ),
    .ce0       ( int_weights_112_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_112_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_112_address1 ),
    .ce1       ( int_weights_112_ce1 ),
    .we1       ( int_weights_112_be1 ),
    .d1        ( int_weights_112_d1 ),
    .q1        ( int_weights_112_q1 )
);
// int_weights_113
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_113 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_113_address0 ),
    .ce0       ( int_weights_113_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_113_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_113_address1 ),
    .ce1       ( int_weights_113_ce1 ),
    .we1       ( int_weights_113_be1 ),
    .d1        ( int_weights_113_d1 ),
    .q1        ( int_weights_113_q1 )
);
// int_weights_114
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_114 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_114_address0 ),
    .ce0       ( int_weights_114_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_114_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_114_address1 ),
    .ce1       ( int_weights_114_ce1 ),
    .we1       ( int_weights_114_be1 ),
    .d1        ( int_weights_114_d1 ),
    .q1        ( int_weights_114_q1 )
);
// int_weights_115
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_115 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_115_address0 ),
    .ce0       ( int_weights_115_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_115_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_115_address1 ),
    .ce1       ( int_weights_115_ce1 ),
    .we1       ( int_weights_115_be1 ),
    .d1        ( int_weights_115_d1 ),
    .q1        ( int_weights_115_q1 )
);
// int_weights_116
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_116 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_116_address0 ),
    .ce0       ( int_weights_116_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_116_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_116_address1 ),
    .ce1       ( int_weights_116_ce1 ),
    .we1       ( int_weights_116_be1 ),
    .d1        ( int_weights_116_d1 ),
    .q1        ( int_weights_116_q1 )
);
// int_weights_117
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_117 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_117_address0 ),
    .ce0       ( int_weights_117_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_117_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_117_address1 ),
    .ce1       ( int_weights_117_ce1 ),
    .we1       ( int_weights_117_be1 ),
    .d1        ( int_weights_117_d1 ),
    .q1        ( int_weights_117_q1 )
);
// int_weights_118
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_118 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_118_address0 ),
    .ce0       ( int_weights_118_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_118_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_118_address1 ),
    .ce1       ( int_weights_118_ce1 ),
    .we1       ( int_weights_118_be1 ),
    .d1        ( int_weights_118_d1 ),
    .q1        ( int_weights_118_q1 )
);
// int_weights_119
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_119 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_119_address0 ),
    .ce0       ( int_weights_119_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_119_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_119_address1 ),
    .ce1       ( int_weights_119_ce1 ),
    .we1       ( int_weights_119_be1 ),
    .d1        ( int_weights_119_d1 ),
    .q1        ( int_weights_119_q1 )
);
// int_weights_120
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_120 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_120_address0 ),
    .ce0       ( int_weights_120_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_120_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_120_address1 ),
    .ce1       ( int_weights_120_ce1 ),
    .we1       ( int_weights_120_be1 ),
    .d1        ( int_weights_120_d1 ),
    .q1        ( int_weights_120_q1 )
);
// int_weights_121
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_121 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_121_address0 ),
    .ce0       ( int_weights_121_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_121_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_121_address1 ),
    .ce1       ( int_weights_121_ce1 ),
    .we1       ( int_weights_121_be1 ),
    .d1        ( int_weights_121_d1 ),
    .q1        ( int_weights_121_q1 )
);
// int_weights_122
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_122 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_122_address0 ),
    .ce0       ( int_weights_122_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_122_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_122_address1 ),
    .ce1       ( int_weights_122_ce1 ),
    .we1       ( int_weights_122_be1 ),
    .d1        ( int_weights_122_d1 ),
    .q1        ( int_weights_122_q1 )
);
// int_weights_123
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_123 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_123_address0 ),
    .ce0       ( int_weights_123_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_123_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_123_address1 ),
    .ce1       ( int_weights_123_ce1 ),
    .we1       ( int_weights_123_be1 ),
    .d1        ( int_weights_123_d1 ),
    .q1        ( int_weights_123_q1 )
);
// int_weights_124
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_124 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_124_address0 ),
    .ce0       ( int_weights_124_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_124_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_124_address1 ),
    .ce1       ( int_weights_124_ce1 ),
    .we1       ( int_weights_124_be1 ),
    .d1        ( int_weights_124_d1 ),
    .q1        ( int_weights_124_q1 )
);
// int_weights_125
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_125 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_125_address0 ),
    .ce0       ( int_weights_125_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_125_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_125_address1 ),
    .ce1       ( int_weights_125_ce1 ),
    .we1       ( int_weights_125_be1 ),
    .d1        ( int_weights_125_d1 ),
    .q1        ( int_weights_125_q1 )
);
// int_weights_126
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_126 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_126_address0 ),
    .ce0       ( int_weights_126_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_126_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_126_address1 ),
    .ce1       ( int_weights_126_ce1 ),
    .we1       ( int_weights_126_be1 ),
    .d1        ( int_weights_126_d1 ),
    .q1        ( int_weights_126_q1 )
);
// int_weights_127
nnlayer_multiDSP_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_weights_127 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_127_address0 ),
    .ce0       ( int_weights_127_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_weights_127_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_127_address1 ),
    .ce1       ( int_weights_127_ce1 ),
    .we1       ( int_weights_127_be1 ),
    .d1        ( int_weights_127_d1 ),
    .q1        ( int_weights_127_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_bias_read & !int_weights_0_read & !int_weights_1_read & !int_weights_2_read & !int_weights_3_read & !int_weights_4_read & !int_weights_5_read & !int_weights_6_read & !int_weights_7_read & !int_weights_8_read & !int_weights_9_read & !int_weights_10_read & !int_weights_11_read & !int_weights_12_read & !int_weights_13_read & !int_weights_14_read & !int_weights_15_read & !int_weights_16_read & !int_weights_17_read & !int_weights_18_read & !int_weights_19_read & !int_weights_20_read & !int_weights_21_read & !int_weights_22_read & !int_weights_23_read & !int_weights_24_read & !int_weights_25_read & !int_weights_26_read & !int_weights_27_read & !int_weights_28_read & !int_weights_29_read & !int_weights_30_read & !int_weights_31_read & !int_weights_32_read & !int_weights_33_read & !int_weights_34_read & !int_weights_35_read & !int_weights_36_read & !int_weights_37_read & !int_weights_38_read & !int_weights_39_read & !int_weights_40_read & !int_weights_41_read & !int_weights_42_read & !int_weights_43_read & !int_weights_44_read & !int_weights_45_read & !int_weights_46_read & !int_weights_47_read & !int_weights_48_read & !int_weights_49_read & !int_weights_50_read & !int_weights_51_read & !int_weights_52_read & !int_weights_53_read & !int_weights_54_read & !int_weights_55_read & !int_weights_56_read & !int_weights_57_read & !int_weights_58_read & !int_weights_59_read & !int_weights_60_read & !int_weights_61_read & !int_weights_62_read & !int_weights_63_read & !int_weights_64_read & !int_weights_65_read & !int_weights_66_read & !int_weights_67_read & !int_weights_68_read & !int_weights_69_read & !int_weights_70_read & !int_weights_71_read & !int_weights_72_read & !int_weights_73_read & !int_weights_74_read & !int_weights_75_read & !int_weights_76_read & !int_weights_77_read & !int_weights_78_read & !int_weights_79_read & !int_weights_80_read & !int_weights_81_read & !int_weights_82_read & !int_weights_83_read & !int_weights_84_read & !int_weights_85_read & !int_weights_86_read & !int_weights_87_read & !int_weights_88_read & !int_weights_89_read & !int_weights_90_read & !int_weights_91_read & !int_weights_92_read & !int_weights_93_read & !int_weights_94_read & !int_weights_95_read & !int_weights_96_read & !int_weights_97_read & !int_weights_98_read & !int_weights_99_read & !int_weights_100_read & !int_weights_101_read & !int_weights_102_read & !int_weights_103_read & !int_weights_104_read & !int_weights_105_read & !int_weights_106_read & !int_weights_107_read & !int_weights_108_read & !int_weights_109_read & !int_weights_110_read & !int_weights_111_read & !int_weights_112_read & !int_weights_113_read & !int_weights_114_read & !int_weights_115_read & !int_weights_116_read & !int_weights_117_read & !int_weights_118_read & !int_weights_119_read & !int_weights_120_read & !int_weights_121_read & !int_weights_122_read & !int_weights_123_read & !int_weights_124_read & !int_weights_125_read & !int_weights_126_read & !int_weights_127_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_INPUT_0_DATA_0: begin
                    rdata <= int_input_0[15:0];
                end
                ADDR_INPUT_1_DATA_0: begin
                    rdata <= int_input_1[15:0];
                end
                ADDR_INPUT_2_DATA_0: begin
                    rdata <= int_input_2[15:0];
                end
                ADDR_INPUT_3_DATA_0: begin
                    rdata <= int_input_3[15:0];
                end
                ADDR_INPUT_4_DATA_0: begin
                    rdata <= int_input_4[15:0];
                end
                ADDR_INPUT_5_DATA_0: begin
                    rdata <= int_input_5[15:0];
                end
                ADDR_INPUT_6_DATA_0: begin
                    rdata <= int_input_6[15:0];
                end
                ADDR_INPUT_7_DATA_0: begin
                    rdata <= int_input_7[15:0];
                end
                ADDR_INPUT_8_DATA_0: begin
                    rdata <= int_input_8[15:0];
                end
                ADDR_INPUT_9_DATA_0: begin
                    rdata <= int_input_9[15:0];
                end
                ADDR_INPUT_10_DATA_0: begin
                    rdata <= int_input_10[15:0];
                end
                ADDR_INPUT_11_DATA_0: begin
                    rdata <= int_input_11[15:0];
                end
                ADDR_INPUT_12_DATA_0: begin
                    rdata <= int_input_12[15:0];
                end
                ADDR_INPUT_13_DATA_0: begin
                    rdata <= int_input_13[15:0];
                end
                ADDR_INPUT_14_DATA_0: begin
                    rdata <= int_input_14[15:0];
                end
                ADDR_INPUT_15_DATA_0: begin
                    rdata <= int_input_15[15:0];
                end
                ADDR_INPUT_16_DATA_0: begin
                    rdata <= int_input_16[15:0];
                end
                ADDR_INPUT_17_DATA_0: begin
                    rdata <= int_input_17[15:0];
                end
                ADDR_INPUT_18_DATA_0: begin
                    rdata <= int_input_18[15:0];
                end
                ADDR_INPUT_19_DATA_0: begin
                    rdata <= int_input_19[15:0];
                end
                ADDR_INPUT_20_DATA_0: begin
                    rdata <= int_input_20[15:0];
                end
                ADDR_INPUT_21_DATA_0: begin
                    rdata <= int_input_21[15:0];
                end
                ADDR_INPUT_22_DATA_0: begin
                    rdata <= int_input_22[15:0];
                end
                ADDR_INPUT_23_DATA_0: begin
                    rdata <= int_input_23[15:0];
                end
                ADDR_INPUT_24_DATA_0: begin
                    rdata <= int_input_24[15:0];
                end
                ADDR_INPUT_25_DATA_0: begin
                    rdata <= int_input_25[15:0];
                end
                ADDR_INPUT_26_DATA_0: begin
                    rdata <= int_input_26[15:0];
                end
                ADDR_INPUT_27_DATA_0: begin
                    rdata <= int_input_27[15:0];
                end
                ADDR_INPUT_28_DATA_0: begin
                    rdata <= int_input_28[15:0];
                end
                ADDR_INPUT_29_DATA_0: begin
                    rdata <= int_input_29[15:0];
                end
                ADDR_INPUT_30_DATA_0: begin
                    rdata <= int_input_30[15:0];
                end
                ADDR_INPUT_31_DATA_0: begin
                    rdata <= int_input_31[15:0];
                end
                ADDR_INPUT_32_DATA_0: begin
                    rdata <= int_input_32[15:0];
                end
                ADDR_INPUT_33_DATA_0: begin
                    rdata <= int_input_33[15:0];
                end
                ADDR_INPUT_34_DATA_0: begin
                    rdata <= int_input_34[15:0];
                end
                ADDR_INPUT_35_DATA_0: begin
                    rdata <= int_input_35[15:0];
                end
                ADDR_INPUT_36_DATA_0: begin
                    rdata <= int_input_36[15:0];
                end
                ADDR_INPUT_37_DATA_0: begin
                    rdata <= int_input_37[15:0];
                end
                ADDR_INPUT_38_DATA_0: begin
                    rdata <= int_input_38[15:0];
                end
                ADDR_INPUT_39_DATA_0: begin
                    rdata <= int_input_39[15:0];
                end
                ADDR_INPUT_40_DATA_0: begin
                    rdata <= int_input_40[15:0];
                end
                ADDR_INPUT_41_DATA_0: begin
                    rdata <= int_input_41[15:0];
                end
                ADDR_INPUT_42_DATA_0: begin
                    rdata <= int_input_42[15:0];
                end
                ADDR_INPUT_43_DATA_0: begin
                    rdata <= int_input_43[15:0];
                end
                ADDR_INPUT_44_DATA_0: begin
                    rdata <= int_input_44[15:0];
                end
                ADDR_INPUT_45_DATA_0: begin
                    rdata <= int_input_45[15:0];
                end
                ADDR_INPUT_46_DATA_0: begin
                    rdata <= int_input_46[15:0];
                end
                ADDR_INPUT_47_DATA_0: begin
                    rdata <= int_input_47[15:0];
                end
                ADDR_INPUT_48_DATA_0: begin
                    rdata <= int_input_48[15:0];
                end
                ADDR_INPUT_49_DATA_0: begin
                    rdata <= int_input_49[15:0];
                end
                ADDR_INPUT_50_DATA_0: begin
                    rdata <= int_input_50[15:0];
                end
                ADDR_INPUT_51_DATA_0: begin
                    rdata <= int_input_51[15:0];
                end
                ADDR_INPUT_52_DATA_0: begin
                    rdata <= int_input_52[15:0];
                end
                ADDR_INPUT_53_DATA_0: begin
                    rdata <= int_input_53[15:0];
                end
                ADDR_INPUT_54_DATA_0: begin
                    rdata <= int_input_54[15:0];
                end
                ADDR_INPUT_55_DATA_0: begin
                    rdata <= int_input_55[15:0];
                end
                ADDR_INPUT_56_DATA_0: begin
                    rdata <= int_input_56[15:0];
                end
                ADDR_INPUT_57_DATA_0: begin
                    rdata <= int_input_57[15:0];
                end
                ADDR_INPUT_58_DATA_0: begin
                    rdata <= int_input_58[15:0];
                end
                ADDR_INPUT_59_DATA_0: begin
                    rdata <= int_input_59[15:0];
                end
                ADDR_INPUT_60_DATA_0: begin
                    rdata <= int_input_60[15:0];
                end
                ADDR_INPUT_61_DATA_0: begin
                    rdata <= int_input_61[15:0];
                end
                ADDR_INPUT_62_DATA_0: begin
                    rdata <= int_input_62[15:0];
                end
                ADDR_INPUT_63_DATA_0: begin
                    rdata <= int_input_63[15:0];
                end
                ADDR_INPUT_64_DATA_0: begin
                    rdata <= int_input_64[15:0];
                end
                ADDR_INPUT_65_DATA_0: begin
                    rdata <= int_input_65[15:0];
                end
                ADDR_INPUT_66_DATA_0: begin
                    rdata <= int_input_66[15:0];
                end
                ADDR_INPUT_67_DATA_0: begin
                    rdata <= int_input_67[15:0];
                end
                ADDR_INPUT_68_DATA_0: begin
                    rdata <= int_input_68[15:0];
                end
                ADDR_INPUT_69_DATA_0: begin
                    rdata <= int_input_69[15:0];
                end
                ADDR_INPUT_70_DATA_0: begin
                    rdata <= int_input_70[15:0];
                end
                ADDR_INPUT_71_DATA_0: begin
                    rdata <= int_input_71[15:0];
                end
                ADDR_INPUT_72_DATA_0: begin
                    rdata <= int_input_72[15:0];
                end
                ADDR_INPUT_73_DATA_0: begin
                    rdata <= int_input_73[15:0];
                end
                ADDR_INPUT_74_DATA_0: begin
                    rdata <= int_input_74[15:0];
                end
                ADDR_INPUT_75_DATA_0: begin
                    rdata <= int_input_75[15:0];
                end
                ADDR_INPUT_76_DATA_0: begin
                    rdata <= int_input_76[15:0];
                end
                ADDR_INPUT_77_DATA_0: begin
                    rdata <= int_input_77[15:0];
                end
                ADDR_INPUT_78_DATA_0: begin
                    rdata <= int_input_78[15:0];
                end
                ADDR_INPUT_79_DATA_0: begin
                    rdata <= int_input_79[15:0];
                end
                ADDR_INPUT_80_DATA_0: begin
                    rdata <= int_input_80[15:0];
                end
                ADDR_INPUT_81_DATA_0: begin
                    rdata <= int_input_81[15:0];
                end
                ADDR_INPUT_82_DATA_0: begin
                    rdata <= int_input_82[15:0];
                end
                ADDR_INPUT_83_DATA_0: begin
                    rdata <= int_input_83[15:0];
                end
                ADDR_INPUT_84_DATA_0: begin
                    rdata <= int_input_84[15:0];
                end
                ADDR_INPUT_85_DATA_0: begin
                    rdata <= int_input_85[15:0];
                end
                ADDR_INPUT_86_DATA_0: begin
                    rdata <= int_input_86[15:0];
                end
                ADDR_INPUT_87_DATA_0: begin
                    rdata <= int_input_87[15:0];
                end
                ADDR_INPUT_88_DATA_0: begin
                    rdata <= int_input_88[15:0];
                end
                ADDR_INPUT_89_DATA_0: begin
                    rdata <= int_input_89[15:0];
                end
                ADDR_INPUT_90_DATA_0: begin
                    rdata <= int_input_90[15:0];
                end
                ADDR_INPUT_91_DATA_0: begin
                    rdata <= int_input_91[15:0];
                end
                ADDR_INPUT_92_DATA_0: begin
                    rdata <= int_input_92[15:0];
                end
                ADDR_INPUT_93_DATA_0: begin
                    rdata <= int_input_93[15:0];
                end
                ADDR_INPUT_94_DATA_0: begin
                    rdata <= int_input_94[15:0];
                end
                ADDR_INPUT_95_DATA_0: begin
                    rdata <= int_input_95[15:0];
                end
                ADDR_INPUT_96_DATA_0: begin
                    rdata <= int_input_96[15:0];
                end
                ADDR_INPUT_97_DATA_0: begin
                    rdata <= int_input_97[15:0];
                end
                ADDR_INPUT_98_DATA_0: begin
                    rdata <= int_input_98[15:0];
                end
                ADDR_INPUT_99_DATA_0: begin
                    rdata <= int_input_99[15:0];
                end
                ADDR_INPUT_100_DATA_0: begin
                    rdata <= int_input_100[15:0];
                end
                ADDR_INPUT_101_DATA_0: begin
                    rdata <= int_input_101[15:0];
                end
                ADDR_INPUT_102_DATA_0: begin
                    rdata <= int_input_102[15:0];
                end
                ADDR_INPUT_103_DATA_0: begin
                    rdata <= int_input_103[15:0];
                end
                ADDR_INPUT_104_DATA_0: begin
                    rdata <= int_input_104[15:0];
                end
                ADDR_INPUT_105_DATA_0: begin
                    rdata <= int_input_105[15:0];
                end
                ADDR_INPUT_106_DATA_0: begin
                    rdata <= int_input_106[15:0];
                end
                ADDR_INPUT_107_DATA_0: begin
                    rdata <= int_input_107[15:0];
                end
                ADDR_INPUT_108_DATA_0: begin
                    rdata <= int_input_108[15:0];
                end
                ADDR_INPUT_109_DATA_0: begin
                    rdata <= int_input_109[15:0];
                end
                ADDR_INPUT_110_DATA_0: begin
                    rdata <= int_input_110[15:0];
                end
                ADDR_INPUT_111_DATA_0: begin
                    rdata <= int_input_111[15:0];
                end
                ADDR_INPUT_112_DATA_0: begin
                    rdata <= int_input_112[15:0];
                end
                ADDR_INPUT_113_DATA_0: begin
                    rdata <= int_input_113[15:0];
                end
                ADDR_INPUT_114_DATA_0: begin
                    rdata <= int_input_114[15:0];
                end
                ADDR_INPUT_115_DATA_0: begin
                    rdata <= int_input_115[15:0];
                end
                ADDR_INPUT_116_DATA_0: begin
                    rdata <= int_input_116[15:0];
                end
                ADDR_INPUT_117_DATA_0: begin
                    rdata <= int_input_117[15:0];
                end
                ADDR_INPUT_118_DATA_0: begin
                    rdata <= int_input_118[15:0];
                end
                ADDR_INPUT_119_DATA_0: begin
                    rdata <= int_input_119[15:0];
                end
                ADDR_INPUT_120_DATA_0: begin
                    rdata <= int_input_120[15:0];
                end
                ADDR_INPUT_121_DATA_0: begin
                    rdata <= int_input_121[15:0];
                end
                ADDR_INPUT_122_DATA_0: begin
                    rdata <= int_input_122[15:0];
                end
                ADDR_INPUT_123_DATA_0: begin
                    rdata <= int_input_123[15:0];
                end
                ADDR_INPUT_124_DATA_0: begin
                    rdata <= int_input_124[15:0];
                end
                ADDR_INPUT_125_DATA_0: begin
                    rdata <= int_input_125[15:0];
                end
                ADDR_INPUT_126_DATA_0: begin
                    rdata <= int_input_126[15:0];
                end
                ADDR_INPUT_127_DATA_0: begin
                    rdata <= int_input_127[15:0];
                end
                ADDR_OUTPUT_0_DATA_0: begin
                    rdata <= int_output_0[15:0];
                end
                ADDR_OUTPUT_0_CTRL: begin
                    rdata[0] <= int_output_0_ap_vld;
                end
                ADDR_OUTPUT_1_DATA_0: begin
                    rdata <= int_output_1[15:0];
                end
                ADDR_OUTPUT_1_CTRL: begin
                    rdata[0] <= int_output_1_ap_vld;
                end
                ADDR_OUTPUT_2_DATA_0: begin
                    rdata <= int_output_2[15:0];
                end
                ADDR_OUTPUT_2_CTRL: begin
                    rdata[0] <= int_output_2_ap_vld;
                end
                ADDR_OUTPUT_3_DATA_0: begin
                    rdata <= int_output_3[15:0];
                end
                ADDR_OUTPUT_3_CTRL: begin
                    rdata[0] <= int_output_3_ap_vld;
                end
                ADDR_OUTPUT_4_DATA_0: begin
                    rdata <= int_output_4[15:0];
                end
                ADDR_OUTPUT_4_CTRL: begin
                    rdata[0] <= int_output_4_ap_vld;
                end
                ADDR_OUTPUT_5_DATA_0: begin
                    rdata <= int_output_5[15:0];
                end
                ADDR_OUTPUT_5_CTRL: begin
                    rdata[0] <= int_output_5_ap_vld;
                end
                ADDR_OUTPUT_6_DATA_0: begin
                    rdata <= int_output_6[15:0];
                end
                ADDR_OUTPUT_6_CTRL: begin
                    rdata[0] <= int_output_6_ap_vld;
                end
                ADDR_OUTPUT_7_DATA_0: begin
                    rdata <= int_output_7[15:0];
                end
                ADDR_OUTPUT_7_CTRL: begin
                    rdata[0] <= int_output_7_ap_vld;
                end
                ADDR_OUTPUT_8_DATA_0: begin
                    rdata <= int_output_8[15:0];
                end
                ADDR_OUTPUT_8_CTRL: begin
                    rdata[0] <= int_output_8_ap_vld;
                end
                ADDR_OUTPUT_9_DATA_0: begin
                    rdata <= int_output_9[15:0];
                end
                ADDR_OUTPUT_9_CTRL: begin
                    rdata[0] <= int_output_9_ap_vld;
                end
                ADDR_OUTPUT_10_DATA_0: begin
                    rdata <= int_output_10[15:0];
                end
                ADDR_OUTPUT_10_CTRL: begin
                    rdata[0] <= int_output_10_ap_vld;
                end
                ADDR_OUTPUT_11_DATA_0: begin
                    rdata <= int_output_11[15:0];
                end
                ADDR_OUTPUT_11_CTRL: begin
                    rdata[0] <= int_output_11_ap_vld;
                end
                ADDR_OUTPUT_12_DATA_0: begin
                    rdata <= int_output_12[15:0];
                end
                ADDR_OUTPUT_12_CTRL: begin
                    rdata[0] <= int_output_12_ap_vld;
                end
                ADDR_OUTPUT_13_DATA_0: begin
                    rdata <= int_output_13[15:0];
                end
                ADDR_OUTPUT_13_CTRL: begin
                    rdata[0] <= int_output_13_ap_vld;
                end
                ADDR_OUTPUT_14_DATA_0: begin
                    rdata <= int_output_14[15:0];
                end
                ADDR_OUTPUT_14_CTRL: begin
                    rdata[0] <= int_output_14_ap_vld;
                end
                ADDR_OUTPUT_15_DATA_0: begin
                    rdata <= int_output_15[15:0];
                end
                ADDR_OUTPUT_15_CTRL: begin
                    rdata[0] <= int_output_15_ap_vld;
                end
                ADDR_OUTPUT_16_DATA_0: begin
                    rdata <= int_output_16[15:0];
                end
                ADDR_OUTPUT_16_CTRL: begin
                    rdata[0] <= int_output_16_ap_vld;
                end
                ADDR_OUTPUT_17_DATA_0: begin
                    rdata <= int_output_17[15:0];
                end
                ADDR_OUTPUT_17_CTRL: begin
                    rdata[0] <= int_output_17_ap_vld;
                end
                ADDR_OUTPUT_18_DATA_0: begin
                    rdata <= int_output_18[15:0];
                end
                ADDR_OUTPUT_18_CTRL: begin
                    rdata[0] <= int_output_18_ap_vld;
                end
                ADDR_OUTPUT_19_DATA_0: begin
                    rdata <= int_output_19[15:0];
                end
                ADDR_OUTPUT_19_CTRL: begin
                    rdata[0] <= int_output_19_ap_vld;
                end
                ADDR_OUTPUT_20_DATA_0: begin
                    rdata <= int_output_20[15:0];
                end
                ADDR_OUTPUT_20_CTRL: begin
                    rdata[0] <= int_output_20_ap_vld;
                end
                ADDR_OUTPUT_21_DATA_0: begin
                    rdata <= int_output_21[15:0];
                end
                ADDR_OUTPUT_21_CTRL: begin
                    rdata[0] <= int_output_21_ap_vld;
                end
                ADDR_OUTPUT_22_DATA_0: begin
                    rdata <= int_output_22[15:0];
                end
                ADDR_OUTPUT_22_CTRL: begin
                    rdata[0] <= int_output_22_ap_vld;
                end
                ADDR_OUTPUT_23_DATA_0: begin
                    rdata <= int_output_23[15:0];
                end
                ADDR_OUTPUT_23_CTRL: begin
                    rdata[0] <= int_output_23_ap_vld;
                end
                ADDR_OUTPUT_24_DATA_0: begin
                    rdata <= int_output_24[15:0];
                end
                ADDR_OUTPUT_24_CTRL: begin
                    rdata[0] <= int_output_24_ap_vld;
                end
                ADDR_OUTPUT_25_DATA_0: begin
                    rdata <= int_output_25[15:0];
                end
                ADDR_OUTPUT_25_CTRL: begin
                    rdata[0] <= int_output_25_ap_vld;
                end
                ADDR_OUTPUT_26_DATA_0: begin
                    rdata <= int_output_26[15:0];
                end
                ADDR_OUTPUT_26_CTRL: begin
                    rdata[0] <= int_output_26_ap_vld;
                end
                ADDR_OUTPUT_27_DATA_0: begin
                    rdata <= int_output_27[15:0];
                end
                ADDR_OUTPUT_27_CTRL: begin
                    rdata[0] <= int_output_27_ap_vld;
                end
                ADDR_OUTPUT_28_DATA_0: begin
                    rdata <= int_output_28[15:0];
                end
                ADDR_OUTPUT_28_CTRL: begin
                    rdata[0] <= int_output_28_ap_vld;
                end
                ADDR_OUTPUT_29_DATA_0: begin
                    rdata <= int_output_29[15:0];
                end
                ADDR_OUTPUT_29_CTRL: begin
                    rdata[0] <= int_output_29_ap_vld;
                end
                ADDR_OUTPUT_30_DATA_0: begin
                    rdata <= int_output_30[15:0];
                end
                ADDR_OUTPUT_30_CTRL: begin
                    rdata[0] <= int_output_30_ap_vld;
                end
                ADDR_OUTPUT_31_DATA_0: begin
                    rdata <= int_output_31[15:0];
                end
                ADDR_OUTPUT_31_CTRL: begin
                    rdata[0] <= int_output_31_ap_vld;
                end
                ADDR_OUTPUT_32_DATA_0: begin
                    rdata <= int_output_32[15:0];
                end
                ADDR_OUTPUT_32_CTRL: begin
                    rdata[0] <= int_output_32_ap_vld;
                end
                ADDR_OUTPUT_33_DATA_0: begin
                    rdata <= int_output_33[15:0];
                end
                ADDR_OUTPUT_33_CTRL: begin
                    rdata[0] <= int_output_33_ap_vld;
                end
                ADDR_OUTPUT_34_DATA_0: begin
                    rdata <= int_output_34[15:0];
                end
                ADDR_OUTPUT_34_CTRL: begin
                    rdata[0] <= int_output_34_ap_vld;
                end
                ADDR_OUTPUT_35_DATA_0: begin
                    rdata <= int_output_35[15:0];
                end
                ADDR_OUTPUT_35_CTRL: begin
                    rdata[0] <= int_output_35_ap_vld;
                end
                ADDR_OUTPUT_36_DATA_0: begin
                    rdata <= int_output_36[15:0];
                end
                ADDR_OUTPUT_36_CTRL: begin
                    rdata[0] <= int_output_36_ap_vld;
                end
                ADDR_OUTPUT_37_DATA_0: begin
                    rdata <= int_output_37[15:0];
                end
                ADDR_OUTPUT_37_CTRL: begin
                    rdata[0] <= int_output_37_ap_vld;
                end
                ADDR_OUTPUT_38_DATA_0: begin
                    rdata <= int_output_38[15:0];
                end
                ADDR_OUTPUT_38_CTRL: begin
                    rdata[0] <= int_output_38_ap_vld;
                end
                ADDR_OUTPUT_39_DATA_0: begin
                    rdata <= int_output_39[15:0];
                end
                ADDR_OUTPUT_39_CTRL: begin
                    rdata[0] <= int_output_39_ap_vld;
                end
                ADDR_OUTPUT_40_DATA_0: begin
                    rdata <= int_output_40[15:0];
                end
                ADDR_OUTPUT_40_CTRL: begin
                    rdata[0] <= int_output_40_ap_vld;
                end
                ADDR_OUTPUT_41_DATA_0: begin
                    rdata <= int_output_41[15:0];
                end
                ADDR_OUTPUT_41_CTRL: begin
                    rdata[0] <= int_output_41_ap_vld;
                end
                ADDR_OUTPUT_42_DATA_0: begin
                    rdata <= int_output_42[15:0];
                end
                ADDR_OUTPUT_42_CTRL: begin
                    rdata[0] <= int_output_42_ap_vld;
                end
                ADDR_OUTPUT_43_DATA_0: begin
                    rdata <= int_output_43[15:0];
                end
                ADDR_OUTPUT_43_CTRL: begin
                    rdata[0] <= int_output_43_ap_vld;
                end
                ADDR_OUTPUT_44_DATA_0: begin
                    rdata <= int_output_44[15:0];
                end
                ADDR_OUTPUT_44_CTRL: begin
                    rdata[0] <= int_output_44_ap_vld;
                end
                ADDR_OUTPUT_45_DATA_0: begin
                    rdata <= int_output_45[15:0];
                end
                ADDR_OUTPUT_45_CTRL: begin
                    rdata[0] <= int_output_45_ap_vld;
                end
                ADDR_OUTPUT_46_DATA_0: begin
                    rdata <= int_output_46[15:0];
                end
                ADDR_OUTPUT_46_CTRL: begin
                    rdata[0] <= int_output_46_ap_vld;
                end
                ADDR_OUTPUT_47_DATA_0: begin
                    rdata <= int_output_47[15:0];
                end
                ADDR_OUTPUT_47_CTRL: begin
                    rdata[0] <= int_output_47_ap_vld;
                end
                ADDR_OUTPUT_48_DATA_0: begin
                    rdata <= int_output_48[15:0];
                end
                ADDR_OUTPUT_48_CTRL: begin
                    rdata[0] <= int_output_48_ap_vld;
                end
                ADDR_OUTPUT_49_DATA_0: begin
                    rdata <= int_output_49[15:0];
                end
                ADDR_OUTPUT_49_CTRL: begin
                    rdata[0] <= int_output_49_ap_vld;
                end
                ADDR_OUTPUT_50_DATA_0: begin
                    rdata <= int_output_50[15:0];
                end
                ADDR_OUTPUT_50_CTRL: begin
                    rdata[0] <= int_output_50_ap_vld;
                end
                ADDR_OUTPUT_51_DATA_0: begin
                    rdata <= int_output_51[15:0];
                end
                ADDR_OUTPUT_51_CTRL: begin
                    rdata[0] <= int_output_51_ap_vld;
                end
                ADDR_OUTPUT_52_DATA_0: begin
                    rdata <= int_output_52[15:0];
                end
                ADDR_OUTPUT_52_CTRL: begin
                    rdata[0] <= int_output_52_ap_vld;
                end
                ADDR_OUTPUT_53_DATA_0: begin
                    rdata <= int_output_53[15:0];
                end
                ADDR_OUTPUT_53_CTRL: begin
                    rdata[0] <= int_output_53_ap_vld;
                end
                ADDR_OUTPUT_54_DATA_0: begin
                    rdata <= int_output_54[15:0];
                end
                ADDR_OUTPUT_54_CTRL: begin
                    rdata[0] <= int_output_54_ap_vld;
                end
                ADDR_OUTPUT_55_DATA_0: begin
                    rdata <= int_output_55[15:0];
                end
                ADDR_OUTPUT_55_CTRL: begin
                    rdata[0] <= int_output_55_ap_vld;
                end
                ADDR_OUTPUT_56_DATA_0: begin
                    rdata <= int_output_56[15:0];
                end
                ADDR_OUTPUT_56_CTRL: begin
                    rdata[0] <= int_output_56_ap_vld;
                end
                ADDR_OUTPUT_57_DATA_0: begin
                    rdata <= int_output_57[15:0];
                end
                ADDR_OUTPUT_57_CTRL: begin
                    rdata[0] <= int_output_57_ap_vld;
                end
                ADDR_OUTPUT_58_DATA_0: begin
                    rdata <= int_output_58[15:0];
                end
                ADDR_OUTPUT_58_CTRL: begin
                    rdata[0] <= int_output_58_ap_vld;
                end
                ADDR_OUTPUT_59_DATA_0: begin
                    rdata <= int_output_59[15:0];
                end
                ADDR_OUTPUT_59_CTRL: begin
                    rdata[0] <= int_output_59_ap_vld;
                end
                ADDR_OUTPUT_60_DATA_0: begin
                    rdata <= int_output_60[15:0];
                end
                ADDR_OUTPUT_60_CTRL: begin
                    rdata[0] <= int_output_60_ap_vld;
                end
                ADDR_OUTPUT_61_DATA_0: begin
                    rdata <= int_output_61[15:0];
                end
                ADDR_OUTPUT_61_CTRL: begin
                    rdata[0] <= int_output_61_ap_vld;
                end
                ADDR_OUTPUT_62_DATA_0: begin
                    rdata <= int_output_62[15:0];
                end
                ADDR_OUTPUT_62_CTRL: begin
                    rdata[0] <= int_output_62_ap_vld;
                end
                ADDR_OUTPUT_63_DATA_0: begin
                    rdata <= int_output_63[15:0];
                end
                ADDR_OUTPUT_63_CTRL: begin
                    rdata[0] <= int_output_63_ap_vld;
                end
                ADDR_OUTPUT_64_DATA_0: begin
                    rdata <= int_output_64[15:0];
                end
                ADDR_OUTPUT_64_CTRL: begin
                    rdata[0] <= int_output_64_ap_vld;
                end
                ADDR_OUTPUT_65_DATA_0: begin
                    rdata <= int_output_65[15:0];
                end
                ADDR_OUTPUT_65_CTRL: begin
                    rdata[0] <= int_output_65_ap_vld;
                end
                ADDR_OUTPUT_66_DATA_0: begin
                    rdata <= int_output_66[15:0];
                end
                ADDR_OUTPUT_66_CTRL: begin
                    rdata[0] <= int_output_66_ap_vld;
                end
                ADDR_OUTPUT_67_DATA_0: begin
                    rdata <= int_output_67[15:0];
                end
                ADDR_OUTPUT_67_CTRL: begin
                    rdata[0] <= int_output_67_ap_vld;
                end
                ADDR_OUTPUT_68_DATA_0: begin
                    rdata <= int_output_68[15:0];
                end
                ADDR_OUTPUT_68_CTRL: begin
                    rdata[0] <= int_output_68_ap_vld;
                end
                ADDR_OUTPUT_69_DATA_0: begin
                    rdata <= int_output_69[15:0];
                end
                ADDR_OUTPUT_69_CTRL: begin
                    rdata[0] <= int_output_69_ap_vld;
                end
                ADDR_OUTPUT_70_DATA_0: begin
                    rdata <= int_output_70[15:0];
                end
                ADDR_OUTPUT_70_CTRL: begin
                    rdata[0] <= int_output_70_ap_vld;
                end
                ADDR_OUTPUT_71_DATA_0: begin
                    rdata <= int_output_71[15:0];
                end
                ADDR_OUTPUT_71_CTRL: begin
                    rdata[0] <= int_output_71_ap_vld;
                end
                ADDR_OUTPUT_72_DATA_0: begin
                    rdata <= int_output_72[15:0];
                end
                ADDR_OUTPUT_72_CTRL: begin
                    rdata[0] <= int_output_72_ap_vld;
                end
                ADDR_OUTPUT_73_DATA_0: begin
                    rdata <= int_output_73[15:0];
                end
                ADDR_OUTPUT_73_CTRL: begin
                    rdata[0] <= int_output_73_ap_vld;
                end
                ADDR_OUTPUT_74_DATA_0: begin
                    rdata <= int_output_74[15:0];
                end
                ADDR_OUTPUT_74_CTRL: begin
                    rdata[0] <= int_output_74_ap_vld;
                end
                ADDR_OUTPUT_75_DATA_0: begin
                    rdata <= int_output_75[15:0];
                end
                ADDR_OUTPUT_75_CTRL: begin
                    rdata[0] <= int_output_75_ap_vld;
                end
                ADDR_OUTPUT_76_DATA_0: begin
                    rdata <= int_output_76[15:0];
                end
                ADDR_OUTPUT_76_CTRL: begin
                    rdata[0] <= int_output_76_ap_vld;
                end
                ADDR_OUTPUT_77_DATA_0: begin
                    rdata <= int_output_77[15:0];
                end
                ADDR_OUTPUT_77_CTRL: begin
                    rdata[0] <= int_output_77_ap_vld;
                end
                ADDR_OUTPUT_78_DATA_0: begin
                    rdata <= int_output_78[15:0];
                end
                ADDR_OUTPUT_78_CTRL: begin
                    rdata[0] <= int_output_78_ap_vld;
                end
                ADDR_OUTPUT_79_DATA_0: begin
                    rdata <= int_output_79[15:0];
                end
                ADDR_OUTPUT_79_CTRL: begin
                    rdata[0] <= int_output_79_ap_vld;
                end
                ADDR_OUTPUT_80_DATA_0: begin
                    rdata <= int_output_80[15:0];
                end
                ADDR_OUTPUT_80_CTRL: begin
                    rdata[0] <= int_output_80_ap_vld;
                end
                ADDR_OUTPUT_81_DATA_0: begin
                    rdata <= int_output_81[15:0];
                end
                ADDR_OUTPUT_81_CTRL: begin
                    rdata[0] <= int_output_81_ap_vld;
                end
                ADDR_OUTPUT_82_DATA_0: begin
                    rdata <= int_output_82[15:0];
                end
                ADDR_OUTPUT_82_CTRL: begin
                    rdata[0] <= int_output_82_ap_vld;
                end
                ADDR_OUTPUT_83_DATA_0: begin
                    rdata <= int_output_83[15:0];
                end
                ADDR_OUTPUT_83_CTRL: begin
                    rdata[0] <= int_output_83_ap_vld;
                end
                ADDR_OUTPUT_84_DATA_0: begin
                    rdata <= int_output_84[15:0];
                end
                ADDR_OUTPUT_84_CTRL: begin
                    rdata[0] <= int_output_84_ap_vld;
                end
                ADDR_OUTPUT_85_DATA_0: begin
                    rdata <= int_output_85[15:0];
                end
                ADDR_OUTPUT_85_CTRL: begin
                    rdata[0] <= int_output_85_ap_vld;
                end
                ADDR_OUTPUT_86_DATA_0: begin
                    rdata <= int_output_86[15:0];
                end
                ADDR_OUTPUT_86_CTRL: begin
                    rdata[0] <= int_output_86_ap_vld;
                end
                ADDR_OUTPUT_87_DATA_0: begin
                    rdata <= int_output_87[15:0];
                end
                ADDR_OUTPUT_87_CTRL: begin
                    rdata[0] <= int_output_87_ap_vld;
                end
                ADDR_OUTPUT_88_DATA_0: begin
                    rdata <= int_output_88[15:0];
                end
                ADDR_OUTPUT_88_CTRL: begin
                    rdata[0] <= int_output_88_ap_vld;
                end
                ADDR_OUTPUT_89_DATA_0: begin
                    rdata <= int_output_89[15:0];
                end
                ADDR_OUTPUT_89_CTRL: begin
                    rdata[0] <= int_output_89_ap_vld;
                end
                ADDR_OUTPUT_90_DATA_0: begin
                    rdata <= int_output_90[15:0];
                end
                ADDR_OUTPUT_90_CTRL: begin
                    rdata[0] <= int_output_90_ap_vld;
                end
                ADDR_OUTPUT_91_DATA_0: begin
                    rdata <= int_output_91[15:0];
                end
                ADDR_OUTPUT_91_CTRL: begin
                    rdata[0] <= int_output_91_ap_vld;
                end
                ADDR_OUTPUT_92_DATA_0: begin
                    rdata <= int_output_92[15:0];
                end
                ADDR_OUTPUT_92_CTRL: begin
                    rdata[0] <= int_output_92_ap_vld;
                end
                ADDR_OUTPUT_93_DATA_0: begin
                    rdata <= int_output_93[15:0];
                end
                ADDR_OUTPUT_93_CTRL: begin
                    rdata[0] <= int_output_93_ap_vld;
                end
                ADDR_OUTPUT_94_DATA_0: begin
                    rdata <= int_output_94[15:0];
                end
                ADDR_OUTPUT_94_CTRL: begin
                    rdata[0] <= int_output_94_ap_vld;
                end
                ADDR_OUTPUT_95_DATA_0: begin
                    rdata <= int_output_95[15:0];
                end
                ADDR_OUTPUT_95_CTRL: begin
                    rdata[0] <= int_output_95_ap_vld;
                end
                ADDR_OUTPUT_96_DATA_0: begin
                    rdata <= int_output_96[15:0];
                end
                ADDR_OUTPUT_96_CTRL: begin
                    rdata[0] <= int_output_96_ap_vld;
                end
                ADDR_OUTPUT_97_DATA_0: begin
                    rdata <= int_output_97[15:0];
                end
                ADDR_OUTPUT_97_CTRL: begin
                    rdata[0] <= int_output_97_ap_vld;
                end
                ADDR_OUTPUT_98_DATA_0: begin
                    rdata <= int_output_98[15:0];
                end
                ADDR_OUTPUT_98_CTRL: begin
                    rdata[0] <= int_output_98_ap_vld;
                end
                ADDR_OUTPUT_99_DATA_0: begin
                    rdata <= int_output_99[15:0];
                end
                ADDR_OUTPUT_99_CTRL: begin
                    rdata[0] <= int_output_99_ap_vld;
                end
                ADDR_OUTPUT_100_DATA_0: begin
                    rdata <= int_output_100[15:0];
                end
                ADDR_OUTPUT_100_CTRL: begin
                    rdata[0] <= int_output_100_ap_vld;
                end
                ADDR_OUTPUT_101_DATA_0: begin
                    rdata <= int_output_101[15:0];
                end
                ADDR_OUTPUT_101_CTRL: begin
                    rdata[0] <= int_output_101_ap_vld;
                end
                ADDR_OUTPUT_102_DATA_0: begin
                    rdata <= int_output_102[15:0];
                end
                ADDR_OUTPUT_102_CTRL: begin
                    rdata[0] <= int_output_102_ap_vld;
                end
                ADDR_OUTPUT_103_DATA_0: begin
                    rdata <= int_output_103[15:0];
                end
                ADDR_OUTPUT_103_CTRL: begin
                    rdata[0] <= int_output_103_ap_vld;
                end
                ADDR_OUTPUT_104_DATA_0: begin
                    rdata <= int_output_104[15:0];
                end
                ADDR_OUTPUT_104_CTRL: begin
                    rdata[0] <= int_output_104_ap_vld;
                end
                ADDR_OUTPUT_105_DATA_0: begin
                    rdata <= int_output_105[15:0];
                end
                ADDR_OUTPUT_105_CTRL: begin
                    rdata[0] <= int_output_105_ap_vld;
                end
                ADDR_OUTPUT_106_DATA_0: begin
                    rdata <= int_output_106[15:0];
                end
                ADDR_OUTPUT_106_CTRL: begin
                    rdata[0] <= int_output_106_ap_vld;
                end
                ADDR_OUTPUT_107_DATA_0: begin
                    rdata <= int_output_107[15:0];
                end
                ADDR_OUTPUT_107_CTRL: begin
                    rdata[0] <= int_output_107_ap_vld;
                end
                ADDR_OUTPUT_108_DATA_0: begin
                    rdata <= int_output_108[15:0];
                end
                ADDR_OUTPUT_108_CTRL: begin
                    rdata[0] <= int_output_108_ap_vld;
                end
                ADDR_OUTPUT_109_DATA_0: begin
                    rdata <= int_output_109[15:0];
                end
                ADDR_OUTPUT_109_CTRL: begin
                    rdata[0] <= int_output_109_ap_vld;
                end
                ADDR_OUTPUT_110_DATA_0: begin
                    rdata <= int_output_110[15:0];
                end
                ADDR_OUTPUT_110_CTRL: begin
                    rdata[0] <= int_output_110_ap_vld;
                end
                ADDR_OUTPUT_111_DATA_0: begin
                    rdata <= int_output_111[15:0];
                end
                ADDR_OUTPUT_111_CTRL: begin
                    rdata[0] <= int_output_111_ap_vld;
                end
                ADDR_OUTPUT_112_DATA_0: begin
                    rdata <= int_output_112[15:0];
                end
                ADDR_OUTPUT_112_CTRL: begin
                    rdata[0] <= int_output_112_ap_vld;
                end
                ADDR_OUTPUT_113_DATA_0: begin
                    rdata <= int_output_113[15:0];
                end
                ADDR_OUTPUT_113_CTRL: begin
                    rdata[0] <= int_output_113_ap_vld;
                end
                ADDR_OUTPUT_114_DATA_0: begin
                    rdata <= int_output_114[15:0];
                end
                ADDR_OUTPUT_114_CTRL: begin
                    rdata[0] <= int_output_114_ap_vld;
                end
                ADDR_OUTPUT_115_DATA_0: begin
                    rdata <= int_output_115[15:0];
                end
                ADDR_OUTPUT_115_CTRL: begin
                    rdata[0] <= int_output_115_ap_vld;
                end
                ADDR_OUTPUT_116_DATA_0: begin
                    rdata <= int_output_116[15:0];
                end
                ADDR_OUTPUT_116_CTRL: begin
                    rdata[0] <= int_output_116_ap_vld;
                end
                ADDR_OUTPUT_117_DATA_0: begin
                    rdata <= int_output_117[15:0];
                end
                ADDR_OUTPUT_117_CTRL: begin
                    rdata[0] <= int_output_117_ap_vld;
                end
                ADDR_OUTPUT_118_DATA_0: begin
                    rdata <= int_output_118[15:0];
                end
                ADDR_OUTPUT_118_CTRL: begin
                    rdata[0] <= int_output_118_ap_vld;
                end
                ADDR_OUTPUT_119_DATA_0: begin
                    rdata <= int_output_119[15:0];
                end
                ADDR_OUTPUT_119_CTRL: begin
                    rdata[0] <= int_output_119_ap_vld;
                end
                ADDR_OUTPUT_120_DATA_0: begin
                    rdata <= int_output_120[15:0];
                end
                ADDR_OUTPUT_120_CTRL: begin
                    rdata[0] <= int_output_120_ap_vld;
                end
                ADDR_OUTPUT_121_DATA_0: begin
                    rdata <= int_output_121[15:0];
                end
                ADDR_OUTPUT_121_CTRL: begin
                    rdata[0] <= int_output_121_ap_vld;
                end
                ADDR_OUTPUT_122_DATA_0: begin
                    rdata <= int_output_122[15:0];
                end
                ADDR_OUTPUT_122_CTRL: begin
                    rdata[0] <= int_output_122_ap_vld;
                end
                ADDR_OUTPUT_123_DATA_0: begin
                    rdata <= int_output_123[15:0];
                end
                ADDR_OUTPUT_123_CTRL: begin
                    rdata[0] <= int_output_123_ap_vld;
                end
                ADDR_OUTPUT_124_DATA_0: begin
                    rdata <= int_output_124[15:0];
                end
                ADDR_OUTPUT_124_CTRL: begin
                    rdata[0] <= int_output_124_ap_vld;
                end
                ADDR_OUTPUT_125_DATA_0: begin
                    rdata <= int_output_125[15:0];
                end
                ADDR_OUTPUT_125_CTRL: begin
                    rdata[0] <= int_output_125_ap_vld;
                end
                ADDR_OUTPUT_126_DATA_0: begin
                    rdata <= int_output_126[15:0];
                end
                ADDR_OUTPUT_126_CTRL: begin
                    rdata[0] <= int_output_126_ap_vld;
                end
                ADDR_OUTPUT_127_DATA_0: begin
                    rdata <= int_output_127[15:0];
                end
                ADDR_OUTPUT_127_CTRL: begin
                    rdata[0] <= int_output_127_ap_vld;
                end
                ADDR_NUMOFOUTPUTNEURONS_DATA_0: begin
                    rdata <= int_numOfOutputNeurons[15:0];
                end
                ADDR_ACTIVATION_DATA_0: begin
                    rdata <= int_activation[7:0];
                end
            endcase
        end
        else if (int_bias_read) begin
            rdata <= int_bias_q1;
        end
        else if (int_weights_0_read) begin
            rdata <= int_weights_0_q1;
        end
        else if (int_weights_1_read) begin
            rdata <= int_weights_1_q1;
        end
        else if (int_weights_2_read) begin
            rdata <= int_weights_2_q1;
        end
        else if (int_weights_3_read) begin
            rdata <= int_weights_3_q1;
        end
        else if (int_weights_4_read) begin
            rdata <= int_weights_4_q1;
        end
        else if (int_weights_5_read) begin
            rdata <= int_weights_5_q1;
        end
        else if (int_weights_6_read) begin
            rdata <= int_weights_6_q1;
        end
        else if (int_weights_7_read) begin
            rdata <= int_weights_7_q1;
        end
        else if (int_weights_8_read) begin
            rdata <= int_weights_8_q1;
        end
        else if (int_weights_9_read) begin
            rdata <= int_weights_9_q1;
        end
        else if (int_weights_10_read) begin
            rdata <= int_weights_10_q1;
        end
        else if (int_weights_11_read) begin
            rdata <= int_weights_11_q1;
        end
        else if (int_weights_12_read) begin
            rdata <= int_weights_12_q1;
        end
        else if (int_weights_13_read) begin
            rdata <= int_weights_13_q1;
        end
        else if (int_weights_14_read) begin
            rdata <= int_weights_14_q1;
        end
        else if (int_weights_15_read) begin
            rdata <= int_weights_15_q1;
        end
        else if (int_weights_16_read) begin
            rdata <= int_weights_16_q1;
        end
        else if (int_weights_17_read) begin
            rdata <= int_weights_17_q1;
        end
        else if (int_weights_18_read) begin
            rdata <= int_weights_18_q1;
        end
        else if (int_weights_19_read) begin
            rdata <= int_weights_19_q1;
        end
        else if (int_weights_20_read) begin
            rdata <= int_weights_20_q1;
        end
        else if (int_weights_21_read) begin
            rdata <= int_weights_21_q1;
        end
        else if (int_weights_22_read) begin
            rdata <= int_weights_22_q1;
        end
        else if (int_weights_23_read) begin
            rdata <= int_weights_23_q1;
        end
        else if (int_weights_24_read) begin
            rdata <= int_weights_24_q1;
        end
        else if (int_weights_25_read) begin
            rdata <= int_weights_25_q1;
        end
        else if (int_weights_26_read) begin
            rdata <= int_weights_26_q1;
        end
        else if (int_weights_27_read) begin
            rdata <= int_weights_27_q1;
        end
        else if (int_weights_28_read) begin
            rdata <= int_weights_28_q1;
        end
        else if (int_weights_29_read) begin
            rdata <= int_weights_29_q1;
        end
        else if (int_weights_30_read) begin
            rdata <= int_weights_30_q1;
        end
        else if (int_weights_31_read) begin
            rdata <= int_weights_31_q1;
        end
        else if (int_weights_32_read) begin
            rdata <= int_weights_32_q1;
        end
        else if (int_weights_33_read) begin
            rdata <= int_weights_33_q1;
        end
        else if (int_weights_34_read) begin
            rdata <= int_weights_34_q1;
        end
        else if (int_weights_35_read) begin
            rdata <= int_weights_35_q1;
        end
        else if (int_weights_36_read) begin
            rdata <= int_weights_36_q1;
        end
        else if (int_weights_37_read) begin
            rdata <= int_weights_37_q1;
        end
        else if (int_weights_38_read) begin
            rdata <= int_weights_38_q1;
        end
        else if (int_weights_39_read) begin
            rdata <= int_weights_39_q1;
        end
        else if (int_weights_40_read) begin
            rdata <= int_weights_40_q1;
        end
        else if (int_weights_41_read) begin
            rdata <= int_weights_41_q1;
        end
        else if (int_weights_42_read) begin
            rdata <= int_weights_42_q1;
        end
        else if (int_weights_43_read) begin
            rdata <= int_weights_43_q1;
        end
        else if (int_weights_44_read) begin
            rdata <= int_weights_44_q1;
        end
        else if (int_weights_45_read) begin
            rdata <= int_weights_45_q1;
        end
        else if (int_weights_46_read) begin
            rdata <= int_weights_46_q1;
        end
        else if (int_weights_47_read) begin
            rdata <= int_weights_47_q1;
        end
        else if (int_weights_48_read) begin
            rdata <= int_weights_48_q1;
        end
        else if (int_weights_49_read) begin
            rdata <= int_weights_49_q1;
        end
        else if (int_weights_50_read) begin
            rdata <= int_weights_50_q1;
        end
        else if (int_weights_51_read) begin
            rdata <= int_weights_51_q1;
        end
        else if (int_weights_52_read) begin
            rdata <= int_weights_52_q1;
        end
        else if (int_weights_53_read) begin
            rdata <= int_weights_53_q1;
        end
        else if (int_weights_54_read) begin
            rdata <= int_weights_54_q1;
        end
        else if (int_weights_55_read) begin
            rdata <= int_weights_55_q1;
        end
        else if (int_weights_56_read) begin
            rdata <= int_weights_56_q1;
        end
        else if (int_weights_57_read) begin
            rdata <= int_weights_57_q1;
        end
        else if (int_weights_58_read) begin
            rdata <= int_weights_58_q1;
        end
        else if (int_weights_59_read) begin
            rdata <= int_weights_59_q1;
        end
        else if (int_weights_60_read) begin
            rdata <= int_weights_60_q1;
        end
        else if (int_weights_61_read) begin
            rdata <= int_weights_61_q1;
        end
        else if (int_weights_62_read) begin
            rdata <= int_weights_62_q1;
        end
        else if (int_weights_63_read) begin
            rdata <= int_weights_63_q1;
        end
        else if (int_weights_64_read) begin
            rdata <= int_weights_64_q1;
        end
        else if (int_weights_65_read) begin
            rdata <= int_weights_65_q1;
        end
        else if (int_weights_66_read) begin
            rdata <= int_weights_66_q1;
        end
        else if (int_weights_67_read) begin
            rdata <= int_weights_67_q1;
        end
        else if (int_weights_68_read) begin
            rdata <= int_weights_68_q1;
        end
        else if (int_weights_69_read) begin
            rdata <= int_weights_69_q1;
        end
        else if (int_weights_70_read) begin
            rdata <= int_weights_70_q1;
        end
        else if (int_weights_71_read) begin
            rdata <= int_weights_71_q1;
        end
        else if (int_weights_72_read) begin
            rdata <= int_weights_72_q1;
        end
        else if (int_weights_73_read) begin
            rdata <= int_weights_73_q1;
        end
        else if (int_weights_74_read) begin
            rdata <= int_weights_74_q1;
        end
        else if (int_weights_75_read) begin
            rdata <= int_weights_75_q1;
        end
        else if (int_weights_76_read) begin
            rdata <= int_weights_76_q1;
        end
        else if (int_weights_77_read) begin
            rdata <= int_weights_77_q1;
        end
        else if (int_weights_78_read) begin
            rdata <= int_weights_78_q1;
        end
        else if (int_weights_79_read) begin
            rdata <= int_weights_79_q1;
        end
        else if (int_weights_80_read) begin
            rdata <= int_weights_80_q1;
        end
        else if (int_weights_81_read) begin
            rdata <= int_weights_81_q1;
        end
        else if (int_weights_82_read) begin
            rdata <= int_weights_82_q1;
        end
        else if (int_weights_83_read) begin
            rdata <= int_weights_83_q1;
        end
        else if (int_weights_84_read) begin
            rdata <= int_weights_84_q1;
        end
        else if (int_weights_85_read) begin
            rdata <= int_weights_85_q1;
        end
        else if (int_weights_86_read) begin
            rdata <= int_weights_86_q1;
        end
        else if (int_weights_87_read) begin
            rdata <= int_weights_87_q1;
        end
        else if (int_weights_88_read) begin
            rdata <= int_weights_88_q1;
        end
        else if (int_weights_89_read) begin
            rdata <= int_weights_89_q1;
        end
        else if (int_weights_90_read) begin
            rdata <= int_weights_90_q1;
        end
        else if (int_weights_91_read) begin
            rdata <= int_weights_91_q1;
        end
        else if (int_weights_92_read) begin
            rdata <= int_weights_92_q1;
        end
        else if (int_weights_93_read) begin
            rdata <= int_weights_93_q1;
        end
        else if (int_weights_94_read) begin
            rdata <= int_weights_94_q1;
        end
        else if (int_weights_95_read) begin
            rdata <= int_weights_95_q1;
        end
        else if (int_weights_96_read) begin
            rdata <= int_weights_96_q1;
        end
        else if (int_weights_97_read) begin
            rdata <= int_weights_97_q1;
        end
        else if (int_weights_98_read) begin
            rdata <= int_weights_98_q1;
        end
        else if (int_weights_99_read) begin
            rdata <= int_weights_99_q1;
        end
        else if (int_weights_100_read) begin
            rdata <= int_weights_100_q1;
        end
        else if (int_weights_101_read) begin
            rdata <= int_weights_101_q1;
        end
        else if (int_weights_102_read) begin
            rdata <= int_weights_102_q1;
        end
        else if (int_weights_103_read) begin
            rdata <= int_weights_103_q1;
        end
        else if (int_weights_104_read) begin
            rdata <= int_weights_104_q1;
        end
        else if (int_weights_105_read) begin
            rdata <= int_weights_105_q1;
        end
        else if (int_weights_106_read) begin
            rdata <= int_weights_106_q1;
        end
        else if (int_weights_107_read) begin
            rdata <= int_weights_107_q1;
        end
        else if (int_weights_108_read) begin
            rdata <= int_weights_108_q1;
        end
        else if (int_weights_109_read) begin
            rdata <= int_weights_109_q1;
        end
        else if (int_weights_110_read) begin
            rdata <= int_weights_110_q1;
        end
        else if (int_weights_111_read) begin
            rdata <= int_weights_111_q1;
        end
        else if (int_weights_112_read) begin
            rdata <= int_weights_112_q1;
        end
        else if (int_weights_113_read) begin
            rdata <= int_weights_113_q1;
        end
        else if (int_weights_114_read) begin
            rdata <= int_weights_114_q1;
        end
        else if (int_weights_115_read) begin
            rdata <= int_weights_115_q1;
        end
        else if (int_weights_116_read) begin
            rdata <= int_weights_116_q1;
        end
        else if (int_weights_117_read) begin
            rdata <= int_weights_117_q1;
        end
        else if (int_weights_118_read) begin
            rdata <= int_weights_118_q1;
        end
        else if (int_weights_119_read) begin
            rdata <= int_weights_119_q1;
        end
        else if (int_weights_120_read) begin
            rdata <= int_weights_120_q1;
        end
        else if (int_weights_121_read) begin
            rdata <= int_weights_121_q1;
        end
        else if (int_weights_122_read) begin
            rdata <= int_weights_122_q1;
        end
        else if (int_weights_123_read) begin
            rdata <= int_weights_123_q1;
        end
        else if (int_weights_124_read) begin
            rdata <= int_weights_124_q1;
        end
        else if (int_weights_125_read) begin
            rdata <= int_weights_125_q1;
        end
        else if (int_weights_126_read) begin
            rdata <= int_weights_126_q1;
        end
        else if (int_weights_127_read) begin
            rdata <= int_weights_127_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt          = int_gie & (|int_isr);
assign ap_start           = int_ap_start;
assign task_ap_done       = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready      = ap_ready && !int_auto_restart;
assign auto_restart_done  = auto_restart_status && (ap_idle && !int_ap_idle);
assign input_0            = int_input_0;
assign input_1            = int_input_1;
assign input_2            = int_input_2;
assign input_3            = int_input_3;
assign input_4            = int_input_4;
assign input_5            = int_input_5;
assign input_6            = int_input_6;
assign input_7            = int_input_7;
assign input_8            = int_input_8;
assign input_9            = int_input_9;
assign input_10           = int_input_10;
assign input_11           = int_input_11;
assign input_12           = int_input_12;
assign input_13           = int_input_13;
assign input_14           = int_input_14;
assign input_15           = int_input_15;
assign input_16           = int_input_16;
assign input_17           = int_input_17;
assign input_18           = int_input_18;
assign input_19           = int_input_19;
assign input_20           = int_input_20;
assign input_21           = int_input_21;
assign input_22           = int_input_22;
assign input_23           = int_input_23;
assign input_24           = int_input_24;
assign input_25           = int_input_25;
assign input_26           = int_input_26;
assign input_27           = int_input_27;
assign input_28           = int_input_28;
assign input_29           = int_input_29;
assign input_30           = int_input_30;
assign input_31           = int_input_31;
assign input_32           = int_input_32;
assign input_33           = int_input_33;
assign input_34           = int_input_34;
assign input_35           = int_input_35;
assign input_36           = int_input_36;
assign input_37           = int_input_37;
assign input_38           = int_input_38;
assign input_39           = int_input_39;
assign input_40           = int_input_40;
assign input_41           = int_input_41;
assign input_42           = int_input_42;
assign input_43           = int_input_43;
assign input_44           = int_input_44;
assign input_45           = int_input_45;
assign input_46           = int_input_46;
assign input_47           = int_input_47;
assign input_48           = int_input_48;
assign input_49           = int_input_49;
assign input_50           = int_input_50;
assign input_51           = int_input_51;
assign input_52           = int_input_52;
assign input_53           = int_input_53;
assign input_54           = int_input_54;
assign input_55           = int_input_55;
assign input_56           = int_input_56;
assign input_57           = int_input_57;
assign input_58           = int_input_58;
assign input_59           = int_input_59;
assign input_60           = int_input_60;
assign input_61           = int_input_61;
assign input_62           = int_input_62;
assign input_63           = int_input_63;
assign input_64           = int_input_64;
assign input_65           = int_input_65;
assign input_66           = int_input_66;
assign input_67           = int_input_67;
assign input_68           = int_input_68;
assign input_69           = int_input_69;
assign input_70           = int_input_70;
assign input_71           = int_input_71;
assign input_72           = int_input_72;
assign input_73           = int_input_73;
assign input_74           = int_input_74;
assign input_75           = int_input_75;
assign input_76           = int_input_76;
assign input_77           = int_input_77;
assign input_78           = int_input_78;
assign input_79           = int_input_79;
assign input_80           = int_input_80;
assign input_81           = int_input_81;
assign input_82           = int_input_82;
assign input_83           = int_input_83;
assign input_84           = int_input_84;
assign input_85           = int_input_85;
assign input_86           = int_input_86;
assign input_87           = int_input_87;
assign input_88           = int_input_88;
assign input_89           = int_input_89;
assign input_90           = int_input_90;
assign input_91           = int_input_91;
assign input_92           = int_input_92;
assign input_93           = int_input_93;
assign input_94           = int_input_94;
assign input_95           = int_input_95;
assign input_96           = int_input_96;
assign input_97           = int_input_97;
assign input_98           = int_input_98;
assign input_99           = int_input_99;
assign input_100          = int_input_100;
assign input_101          = int_input_101;
assign input_102          = int_input_102;
assign input_103          = int_input_103;
assign input_104          = int_input_104;
assign input_105          = int_input_105;
assign input_106          = int_input_106;
assign input_107          = int_input_107;
assign input_108          = int_input_108;
assign input_109          = int_input_109;
assign input_110          = int_input_110;
assign input_111          = int_input_111;
assign input_112          = int_input_112;
assign input_113          = int_input_113;
assign input_114          = int_input_114;
assign input_115          = int_input_115;
assign input_116          = int_input_116;
assign input_117          = int_input_117;
assign input_118          = int_input_118;
assign input_119          = int_input_119;
assign input_120          = int_input_120;
assign input_121          = int_input_121;
assign input_122          = int_input_122;
assign input_123          = int_input_123;
assign input_124          = int_input_124;
assign input_125          = int_input_125;
assign input_126          = int_input_126;
assign input_127          = int_input_127;
assign numOfOutputNeurons = int_numOfOutputNeurons;
assign activation         = int_activation;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[5:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_isr[5]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[5] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[5] & ap_local_deadlock)
            int_isr[5] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[5] <= int_isr[5] ^ WDATA[5]; // toggle on write
    end
end

// int_input_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_0_DATA_0)
            int_input_0[15:0] <= (WDATA[31:0] & wmask) | (int_input_0[15:0] & ~wmask);
    end
end

// int_input_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_1_DATA_0)
            int_input_1[15:0] <= (WDATA[31:0] & wmask) | (int_input_1[15:0] & ~wmask);
    end
end

// int_input_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_2_DATA_0)
            int_input_2[15:0] <= (WDATA[31:0] & wmask) | (int_input_2[15:0] & ~wmask);
    end
end

// int_input_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_3_DATA_0)
            int_input_3[15:0] <= (WDATA[31:0] & wmask) | (int_input_3[15:0] & ~wmask);
    end
end

// int_input_4[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_4[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_4_DATA_0)
            int_input_4[15:0] <= (WDATA[31:0] & wmask) | (int_input_4[15:0] & ~wmask);
    end
end

// int_input_5[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_5[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_5_DATA_0)
            int_input_5[15:0] <= (WDATA[31:0] & wmask) | (int_input_5[15:0] & ~wmask);
    end
end

// int_input_6[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_6[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_6_DATA_0)
            int_input_6[15:0] <= (WDATA[31:0] & wmask) | (int_input_6[15:0] & ~wmask);
    end
end

// int_input_7[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_7[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_7_DATA_0)
            int_input_7[15:0] <= (WDATA[31:0] & wmask) | (int_input_7[15:0] & ~wmask);
    end
end

// int_input_8[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_8[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_8_DATA_0)
            int_input_8[15:0] <= (WDATA[31:0] & wmask) | (int_input_8[15:0] & ~wmask);
    end
end

// int_input_9[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_9[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_9_DATA_0)
            int_input_9[15:0] <= (WDATA[31:0] & wmask) | (int_input_9[15:0] & ~wmask);
    end
end

// int_input_10[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_10[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_10_DATA_0)
            int_input_10[15:0] <= (WDATA[31:0] & wmask) | (int_input_10[15:0] & ~wmask);
    end
end

// int_input_11[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_11[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_11_DATA_0)
            int_input_11[15:0] <= (WDATA[31:0] & wmask) | (int_input_11[15:0] & ~wmask);
    end
end

// int_input_12[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_12[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_12_DATA_0)
            int_input_12[15:0] <= (WDATA[31:0] & wmask) | (int_input_12[15:0] & ~wmask);
    end
end

// int_input_13[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_13[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_13_DATA_0)
            int_input_13[15:0] <= (WDATA[31:0] & wmask) | (int_input_13[15:0] & ~wmask);
    end
end

// int_input_14[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_14[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_14_DATA_0)
            int_input_14[15:0] <= (WDATA[31:0] & wmask) | (int_input_14[15:0] & ~wmask);
    end
end

// int_input_15[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_15[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_15_DATA_0)
            int_input_15[15:0] <= (WDATA[31:0] & wmask) | (int_input_15[15:0] & ~wmask);
    end
end

// int_input_16[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_16[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_16_DATA_0)
            int_input_16[15:0] <= (WDATA[31:0] & wmask) | (int_input_16[15:0] & ~wmask);
    end
end

// int_input_17[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_17[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_17_DATA_0)
            int_input_17[15:0] <= (WDATA[31:0] & wmask) | (int_input_17[15:0] & ~wmask);
    end
end

// int_input_18[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_18[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_18_DATA_0)
            int_input_18[15:0] <= (WDATA[31:0] & wmask) | (int_input_18[15:0] & ~wmask);
    end
end

// int_input_19[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_19[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_19_DATA_0)
            int_input_19[15:0] <= (WDATA[31:0] & wmask) | (int_input_19[15:0] & ~wmask);
    end
end

// int_input_20[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_20[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_20_DATA_0)
            int_input_20[15:0] <= (WDATA[31:0] & wmask) | (int_input_20[15:0] & ~wmask);
    end
end

// int_input_21[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_21[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_21_DATA_0)
            int_input_21[15:0] <= (WDATA[31:0] & wmask) | (int_input_21[15:0] & ~wmask);
    end
end

// int_input_22[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_22[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_22_DATA_0)
            int_input_22[15:0] <= (WDATA[31:0] & wmask) | (int_input_22[15:0] & ~wmask);
    end
end

// int_input_23[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_23[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_23_DATA_0)
            int_input_23[15:0] <= (WDATA[31:0] & wmask) | (int_input_23[15:0] & ~wmask);
    end
end

// int_input_24[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_24[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_24_DATA_0)
            int_input_24[15:0] <= (WDATA[31:0] & wmask) | (int_input_24[15:0] & ~wmask);
    end
end

// int_input_25[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_25[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_25_DATA_0)
            int_input_25[15:0] <= (WDATA[31:0] & wmask) | (int_input_25[15:0] & ~wmask);
    end
end

// int_input_26[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_26[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_26_DATA_0)
            int_input_26[15:0] <= (WDATA[31:0] & wmask) | (int_input_26[15:0] & ~wmask);
    end
end

// int_input_27[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_27[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_27_DATA_0)
            int_input_27[15:0] <= (WDATA[31:0] & wmask) | (int_input_27[15:0] & ~wmask);
    end
end

// int_input_28[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_28[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_28_DATA_0)
            int_input_28[15:0] <= (WDATA[31:0] & wmask) | (int_input_28[15:0] & ~wmask);
    end
end

// int_input_29[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_29[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_29_DATA_0)
            int_input_29[15:0] <= (WDATA[31:0] & wmask) | (int_input_29[15:0] & ~wmask);
    end
end

// int_input_30[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_30[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_30_DATA_0)
            int_input_30[15:0] <= (WDATA[31:0] & wmask) | (int_input_30[15:0] & ~wmask);
    end
end

// int_input_31[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_31[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_31_DATA_0)
            int_input_31[15:0] <= (WDATA[31:0] & wmask) | (int_input_31[15:0] & ~wmask);
    end
end

// int_input_32[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_32[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_32_DATA_0)
            int_input_32[15:0] <= (WDATA[31:0] & wmask) | (int_input_32[15:0] & ~wmask);
    end
end

// int_input_33[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_33[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_33_DATA_0)
            int_input_33[15:0] <= (WDATA[31:0] & wmask) | (int_input_33[15:0] & ~wmask);
    end
end

// int_input_34[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_34[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_34_DATA_0)
            int_input_34[15:0] <= (WDATA[31:0] & wmask) | (int_input_34[15:0] & ~wmask);
    end
end

// int_input_35[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_35[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_35_DATA_0)
            int_input_35[15:0] <= (WDATA[31:0] & wmask) | (int_input_35[15:0] & ~wmask);
    end
end

// int_input_36[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_36[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_36_DATA_0)
            int_input_36[15:0] <= (WDATA[31:0] & wmask) | (int_input_36[15:0] & ~wmask);
    end
end

// int_input_37[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_37[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_37_DATA_0)
            int_input_37[15:0] <= (WDATA[31:0] & wmask) | (int_input_37[15:0] & ~wmask);
    end
end

// int_input_38[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_38[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_38_DATA_0)
            int_input_38[15:0] <= (WDATA[31:0] & wmask) | (int_input_38[15:0] & ~wmask);
    end
end

// int_input_39[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_39[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_39_DATA_0)
            int_input_39[15:0] <= (WDATA[31:0] & wmask) | (int_input_39[15:0] & ~wmask);
    end
end

// int_input_40[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_40[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_40_DATA_0)
            int_input_40[15:0] <= (WDATA[31:0] & wmask) | (int_input_40[15:0] & ~wmask);
    end
end

// int_input_41[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_41[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_41_DATA_0)
            int_input_41[15:0] <= (WDATA[31:0] & wmask) | (int_input_41[15:0] & ~wmask);
    end
end

// int_input_42[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_42[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_42_DATA_0)
            int_input_42[15:0] <= (WDATA[31:0] & wmask) | (int_input_42[15:0] & ~wmask);
    end
end

// int_input_43[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_43[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_43_DATA_0)
            int_input_43[15:0] <= (WDATA[31:0] & wmask) | (int_input_43[15:0] & ~wmask);
    end
end

// int_input_44[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_44[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_44_DATA_0)
            int_input_44[15:0] <= (WDATA[31:0] & wmask) | (int_input_44[15:0] & ~wmask);
    end
end

// int_input_45[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_45[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_45_DATA_0)
            int_input_45[15:0] <= (WDATA[31:0] & wmask) | (int_input_45[15:0] & ~wmask);
    end
end

// int_input_46[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_46[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_46_DATA_0)
            int_input_46[15:0] <= (WDATA[31:0] & wmask) | (int_input_46[15:0] & ~wmask);
    end
end

// int_input_47[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_47[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_47_DATA_0)
            int_input_47[15:0] <= (WDATA[31:0] & wmask) | (int_input_47[15:0] & ~wmask);
    end
end

// int_input_48[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_48[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_48_DATA_0)
            int_input_48[15:0] <= (WDATA[31:0] & wmask) | (int_input_48[15:0] & ~wmask);
    end
end

// int_input_49[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_49[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_49_DATA_0)
            int_input_49[15:0] <= (WDATA[31:0] & wmask) | (int_input_49[15:0] & ~wmask);
    end
end

// int_input_50[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_50[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_50_DATA_0)
            int_input_50[15:0] <= (WDATA[31:0] & wmask) | (int_input_50[15:0] & ~wmask);
    end
end

// int_input_51[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_51[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_51_DATA_0)
            int_input_51[15:0] <= (WDATA[31:0] & wmask) | (int_input_51[15:0] & ~wmask);
    end
end

// int_input_52[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_52[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_52_DATA_0)
            int_input_52[15:0] <= (WDATA[31:0] & wmask) | (int_input_52[15:0] & ~wmask);
    end
end

// int_input_53[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_53[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_53_DATA_0)
            int_input_53[15:0] <= (WDATA[31:0] & wmask) | (int_input_53[15:0] & ~wmask);
    end
end

// int_input_54[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_54[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_54_DATA_0)
            int_input_54[15:0] <= (WDATA[31:0] & wmask) | (int_input_54[15:0] & ~wmask);
    end
end

// int_input_55[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_55[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_55_DATA_0)
            int_input_55[15:0] <= (WDATA[31:0] & wmask) | (int_input_55[15:0] & ~wmask);
    end
end

// int_input_56[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_56[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_56_DATA_0)
            int_input_56[15:0] <= (WDATA[31:0] & wmask) | (int_input_56[15:0] & ~wmask);
    end
end

// int_input_57[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_57[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_57_DATA_0)
            int_input_57[15:0] <= (WDATA[31:0] & wmask) | (int_input_57[15:0] & ~wmask);
    end
end

// int_input_58[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_58[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_58_DATA_0)
            int_input_58[15:0] <= (WDATA[31:0] & wmask) | (int_input_58[15:0] & ~wmask);
    end
end

// int_input_59[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_59[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_59_DATA_0)
            int_input_59[15:0] <= (WDATA[31:0] & wmask) | (int_input_59[15:0] & ~wmask);
    end
end

// int_input_60[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_60[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_60_DATA_0)
            int_input_60[15:0] <= (WDATA[31:0] & wmask) | (int_input_60[15:0] & ~wmask);
    end
end

// int_input_61[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_61[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_61_DATA_0)
            int_input_61[15:0] <= (WDATA[31:0] & wmask) | (int_input_61[15:0] & ~wmask);
    end
end

// int_input_62[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_62[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_62_DATA_0)
            int_input_62[15:0] <= (WDATA[31:0] & wmask) | (int_input_62[15:0] & ~wmask);
    end
end

// int_input_63[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_63[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_63_DATA_0)
            int_input_63[15:0] <= (WDATA[31:0] & wmask) | (int_input_63[15:0] & ~wmask);
    end
end

// int_input_64[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_64[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_64_DATA_0)
            int_input_64[15:0] <= (WDATA[31:0] & wmask) | (int_input_64[15:0] & ~wmask);
    end
end

// int_input_65[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_65[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_65_DATA_0)
            int_input_65[15:0] <= (WDATA[31:0] & wmask) | (int_input_65[15:0] & ~wmask);
    end
end

// int_input_66[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_66[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_66_DATA_0)
            int_input_66[15:0] <= (WDATA[31:0] & wmask) | (int_input_66[15:0] & ~wmask);
    end
end

// int_input_67[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_67[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_67_DATA_0)
            int_input_67[15:0] <= (WDATA[31:0] & wmask) | (int_input_67[15:0] & ~wmask);
    end
end

// int_input_68[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_68[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_68_DATA_0)
            int_input_68[15:0] <= (WDATA[31:0] & wmask) | (int_input_68[15:0] & ~wmask);
    end
end

// int_input_69[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_69[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_69_DATA_0)
            int_input_69[15:0] <= (WDATA[31:0] & wmask) | (int_input_69[15:0] & ~wmask);
    end
end

// int_input_70[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_70[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_70_DATA_0)
            int_input_70[15:0] <= (WDATA[31:0] & wmask) | (int_input_70[15:0] & ~wmask);
    end
end

// int_input_71[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_71[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_71_DATA_0)
            int_input_71[15:0] <= (WDATA[31:0] & wmask) | (int_input_71[15:0] & ~wmask);
    end
end

// int_input_72[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_72[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_72_DATA_0)
            int_input_72[15:0] <= (WDATA[31:0] & wmask) | (int_input_72[15:0] & ~wmask);
    end
end

// int_input_73[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_73[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_73_DATA_0)
            int_input_73[15:0] <= (WDATA[31:0] & wmask) | (int_input_73[15:0] & ~wmask);
    end
end

// int_input_74[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_74[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_74_DATA_0)
            int_input_74[15:0] <= (WDATA[31:0] & wmask) | (int_input_74[15:0] & ~wmask);
    end
end

// int_input_75[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_75[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_75_DATA_0)
            int_input_75[15:0] <= (WDATA[31:0] & wmask) | (int_input_75[15:0] & ~wmask);
    end
end

// int_input_76[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_76[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_76_DATA_0)
            int_input_76[15:0] <= (WDATA[31:0] & wmask) | (int_input_76[15:0] & ~wmask);
    end
end

// int_input_77[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_77[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_77_DATA_0)
            int_input_77[15:0] <= (WDATA[31:0] & wmask) | (int_input_77[15:0] & ~wmask);
    end
end

// int_input_78[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_78[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_78_DATA_0)
            int_input_78[15:0] <= (WDATA[31:0] & wmask) | (int_input_78[15:0] & ~wmask);
    end
end

// int_input_79[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_79[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_79_DATA_0)
            int_input_79[15:0] <= (WDATA[31:0] & wmask) | (int_input_79[15:0] & ~wmask);
    end
end

// int_input_80[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_80[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_80_DATA_0)
            int_input_80[15:0] <= (WDATA[31:0] & wmask) | (int_input_80[15:0] & ~wmask);
    end
end

// int_input_81[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_81[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_81_DATA_0)
            int_input_81[15:0] <= (WDATA[31:0] & wmask) | (int_input_81[15:0] & ~wmask);
    end
end

// int_input_82[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_82[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_82_DATA_0)
            int_input_82[15:0] <= (WDATA[31:0] & wmask) | (int_input_82[15:0] & ~wmask);
    end
end

// int_input_83[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_83[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_83_DATA_0)
            int_input_83[15:0] <= (WDATA[31:0] & wmask) | (int_input_83[15:0] & ~wmask);
    end
end

// int_input_84[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_84[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_84_DATA_0)
            int_input_84[15:0] <= (WDATA[31:0] & wmask) | (int_input_84[15:0] & ~wmask);
    end
end

// int_input_85[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_85[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_85_DATA_0)
            int_input_85[15:0] <= (WDATA[31:0] & wmask) | (int_input_85[15:0] & ~wmask);
    end
end

// int_input_86[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_86[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_86_DATA_0)
            int_input_86[15:0] <= (WDATA[31:0] & wmask) | (int_input_86[15:0] & ~wmask);
    end
end

// int_input_87[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_87[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_87_DATA_0)
            int_input_87[15:0] <= (WDATA[31:0] & wmask) | (int_input_87[15:0] & ~wmask);
    end
end

// int_input_88[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_88[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_88_DATA_0)
            int_input_88[15:0] <= (WDATA[31:0] & wmask) | (int_input_88[15:0] & ~wmask);
    end
end

// int_input_89[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_89[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_89_DATA_0)
            int_input_89[15:0] <= (WDATA[31:0] & wmask) | (int_input_89[15:0] & ~wmask);
    end
end

// int_input_90[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_90[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_90_DATA_0)
            int_input_90[15:0] <= (WDATA[31:0] & wmask) | (int_input_90[15:0] & ~wmask);
    end
end

// int_input_91[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_91[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_91_DATA_0)
            int_input_91[15:0] <= (WDATA[31:0] & wmask) | (int_input_91[15:0] & ~wmask);
    end
end

// int_input_92[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_92[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_92_DATA_0)
            int_input_92[15:0] <= (WDATA[31:0] & wmask) | (int_input_92[15:0] & ~wmask);
    end
end

// int_input_93[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_93[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_93_DATA_0)
            int_input_93[15:0] <= (WDATA[31:0] & wmask) | (int_input_93[15:0] & ~wmask);
    end
end

// int_input_94[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_94[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_94_DATA_0)
            int_input_94[15:0] <= (WDATA[31:0] & wmask) | (int_input_94[15:0] & ~wmask);
    end
end

// int_input_95[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_95[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_95_DATA_0)
            int_input_95[15:0] <= (WDATA[31:0] & wmask) | (int_input_95[15:0] & ~wmask);
    end
end

// int_input_96[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_96[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_96_DATA_0)
            int_input_96[15:0] <= (WDATA[31:0] & wmask) | (int_input_96[15:0] & ~wmask);
    end
end

// int_input_97[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_97[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_97_DATA_0)
            int_input_97[15:0] <= (WDATA[31:0] & wmask) | (int_input_97[15:0] & ~wmask);
    end
end

// int_input_98[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_98[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_98_DATA_0)
            int_input_98[15:0] <= (WDATA[31:0] & wmask) | (int_input_98[15:0] & ~wmask);
    end
end

// int_input_99[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_99[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_99_DATA_0)
            int_input_99[15:0] <= (WDATA[31:0] & wmask) | (int_input_99[15:0] & ~wmask);
    end
end

// int_input_100[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_100[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_100_DATA_0)
            int_input_100[15:0] <= (WDATA[31:0] & wmask) | (int_input_100[15:0] & ~wmask);
    end
end

// int_input_101[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_101[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_101_DATA_0)
            int_input_101[15:0] <= (WDATA[31:0] & wmask) | (int_input_101[15:0] & ~wmask);
    end
end

// int_input_102[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_102[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_102_DATA_0)
            int_input_102[15:0] <= (WDATA[31:0] & wmask) | (int_input_102[15:0] & ~wmask);
    end
end

// int_input_103[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_103[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_103_DATA_0)
            int_input_103[15:0] <= (WDATA[31:0] & wmask) | (int_input_103[15:0] & ~wmask);
    end
end

// int_input_104[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_104[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_104_DATA_0)
            int_input_104[15:0] <= (WDATA[31:0] & wmask) | (int_input_104[15:0] & ~wmask);
    end
end

// int_input_105[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_105[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_105_DATA_0)
            int_input_105[15:0] <= (WDATA[31:0] & wmask) | (int_input_105[15:0] & ~wmask);
    end
end

// int_input_106[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_106[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_106_DATA_0)
            int_input_106[15:0] <= (WDATA[31:0] & wmask) | (int_input_106[15:0] & ~wmask);
    end
end

// int_input_107[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_107[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_107_DATA_0)
            int_input_107[15:0] <= (WDATA[31:0] & wmask) | (int_input_107[15:0] & ~wmask);
    end
end

// int_input_108[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_108[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_108_DATA_0)
            int_input_108[15:0] <= (WDATA[31:0] & wmask) | (int_input_108[15:0] & ~wmask);
    end
end

// int_input_109[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_109[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_109_DATA_0)
            int_input_109[15:0] <= (WDATA[31:0] & wmask) | (int_input_109[15:0] & ~wmask);
    end
end

// int_input_110[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_110[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_110_DATA_0)
            int_input_110[15:0] <= (WDATA[31:0] & wmask) | (int_input_110[15:0] & ~wmask);
    end
end

// int_input_111[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_111[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_111_DATA_0)
            int_input_111[15:0] <= (WDATA[31:0] & wmask) | (int_input_111[15:0] & ~wmask);
    end
end

// int_input_112[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_112[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_112_DATA_0)
            int_input_112[15:0] <= (WDATA[31:0] & wmask) | (int_input_112[15:0] & ~wmask);
    end
end

// int_input_113[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_113[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_113_DATA_0)
            int_input_113[15:0] <= (WDATA[31:0] & wmask) | (int_input_113[15:0] & ~wmask);
    end
end

// int_input_114[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_114[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_114_DATA_0)
            int_input_114[15:0] <= (WDATA[31:0] & wmask) | (int_input_114[15:0] & ~wmask);
    end
end

// int_input_115[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_115[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_115_DATA_0)
            int_input_115[15:0] <= (WDATA[31:0] & wmask) | (int_input_115[15:0] & ~wmask);
    end
end

// int_input_116[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_116[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_116_DATA_0)
            int_input_116[15:0] <= (WDATA[31:0] & wmask) | (int_input_116[15:0] & ~wmask);
    end
end

// int_input_117[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_117[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_117_DATA_0)
            int_input_117[15:0] <= (WDATA[31:0] & wmask) | (int_input_117[15:0] & ~wmask);
    end
end

// int_input_118[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_118[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_118_DATA_0)
            int_input_118[15:0] <= (WDATA[31:0] & wmask) | (int_input_118[15:0] & ~wmask);
    end
end

// int_input_119[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_119[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_119_DATA_0)
            int_input_119[15:0] <= (WDATA[31:0] & wmask) | (int_input_119[15:0] & ~wmask);
    end
end

// int_input_120[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_120[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_120_DATA_0)
            int_input_120[15:0] <= (WDATA[31:0] & wmask) | (int_input_120[15:0] & ~wmask);
    end
end

// int_input_121[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_121[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_121_DATA_0)
            int_input_121[15:0] <= (WDATA[31:0] & wmask) | (int_input_121[15:0] & ~wmask);
    end
end

// int_input_122[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_122[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_122_DATA_0)
            int_input_122[15:0] <= (WDATA[31:0] & wmask) | (int_input_122[15:0] & ~wmask);
    end
end

// int_input_123[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_123[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_123_DATA_0)
            int_input_123[15:0] <= (WDATA[31:0] & wmask) | (int_input_123[15:0] & ~wmask);
    end
end

// int_input_124[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_124[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_124_DATA_0)
            int_input_124[15:0] <= (WDATA[31:0] & wmask) | (int_input_124[15:0] & ~wmask);
    end
end

// int_input_125[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_125[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_125_DATA_0)
            int_input_125[15:0] <= (WDATA[31:0] & wmask) | (int_input_125[15:0] & ~wmask);
    end
end

// int_input_126[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_126[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_126_DATA_0)
            int_input_126[15:0] <= (WDATA[31:0] & wmask) | (int_input_126[15:0] & ~wmask);
    end
end

// int_input_127[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_127[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_127_DATA_0)
            int_input_127[15:0] <= (WDATA[31:0] & wmask) | (int_input_127[15:0] & ~wmask);
    end
end

// int_output_0
always @(posedge ACLK) begin
    if (ARESET)
        int_output_0 <= 0;
    else if (ACLK_EN) begin
        if (output_0_ap_vld)
            int_output_0 <= output_0;
    end
end

// int_output_0_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_0_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_0_ap_vld)
            int_output_0_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_0_CTRL)
            int_output_0_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_1
always @(posedge ACLK) begin
    if (ARESET)
        int_output_1 <= 0;
    else if (ACLK_EN) begin
        if (output_1_ap_vld)
            int_output_1 <= output_1;
    end
end

// int_output_1_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_1_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_1_ap_vld)
            int_output_1_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_1_CTRL)
            int_output_1_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_2
always @(posedge ACLK) begin
    if (ARESET)
        int_output_2 <= 0;
    else if (ACLK_EN) begin
        if (output_2_ap_vld)
            int_output_2 <= output_2;
    end
end

// int_output_2_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_2_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_2_ap_vld)
            int_output_2_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_2_CTRL)
            int_output_2_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_3
always @(posedge ACLK) begin
    if (ARESET)
        int_output_3 <= 0;
    else if (ACLK_EN) begin
        if (output_3_ap_vld)
            int_output_3 <= output_3;
    end
end

// int_output_3_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_3_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_3_ap_vld)
            int_output_3_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_3_CTRL)
            int_output_3_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_4
always @(posedge ACLK) begin
    if (ARESET)
        int_output_4 <= 0;
    else if (ACLK_EN) begin
        if (output_4_ap_vld)
            int_output_4 <= output_4;
    end
end

// int_output_4_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_4_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_4_ap_vld)
            int_output_4_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_4_CTRL)
            int_output_4_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_5
always @(posedge ACLK) begin
    if (ARESET)
        int_output_5 <= 0;
    else if (ACLK_EN) begin
        if (output_5_ap_vld)
            int_output_5 <= output_5;
    end
end

// int_output_5_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_5_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_5_ap_vld)
            int_output_5_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_5_CTRL)
            int_output_5_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_6
always @(posedge ACLK) begin
    if (ARESET)
        int_output_6 <= 0;
    else if (ACLK_EN) begin
        if (output_6_ap_vld)
            int_output_6 <= output_6;
    end
end

// int_output_6_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_6_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_6_ap_vld)
            int_output_6_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_6_CTRL)
            int_output_6_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_7
always @(posedge ACLK) begin
    if (ARESET)
        int_output_7 <= 0;
    else if (ACLK_EN) begin
        if (output_7_ap_vld)
            int_output_7 <= output_7;
    end
end

// int_output_7_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_7_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_7_ap_vld)
            int_output_7_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_7_CTRL)
            int_output_7_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_8
always @(posedge ACLK) begin
    if (ARESET)
        int_output_8 <= 0;
    else if (ACLK_EN) begin
        if (output_8_ap_vld)
            int_output_8 <= output_8;
    end
end

// int_output_8_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_8_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_8_ap_vld)
            int_output_8_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_8_CTRL)
            int_output_8_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_9
always @(posedge ACLK) begin
    if (ARESET)
        int_output_9 <= 0;
    else if (ACLK_EN) begin
        if (output_9_ap_vld)
            int_output_9 <= output_9;
    end
end

// int_output_9_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_9_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_9_ap_vld)
            int_output_9_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_9_CTRL)
            int_output_9_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_10
always @(posedge ACLK) begin
    if (ARESET)
        int_output_10 <= 0;
    else if (ACLK_EN) begin
        if (output_10_ap_vld)
            int_output_10 <= output_10;
    end
end

// int_output_10_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_10_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_10_ap_vld)
            int_output_10_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_10_CTRL)
            int_output_10_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_11
always @(posedge ACLK) begin
    if (ARESET)
        int_output_11 <= 0;
    else if (ACLK_EN) begin
        if (output_11_ap_vld)
            int_output_11 <= output_11;
    end
end

// int_output_11_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_11_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_11_ap_vld)
            int_output_11_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_11_CTRL)
            int_output_11_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_12
always @(posedge ACLK) begin
    if (ARESET)
        int_output_12 <= 0;
    else if (ACLK_EN) begin
        if (output_12_ap_vld)
            int_output_12 <= output_12;
    end
end

// int_output_12_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_12_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_12_ap_vld)
            int_output_12_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_12_CTRL)
            int_output_12_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_13
always @(posedge ACLK) begin
    if (ARESET)
        int_output_13 <= 0;
    else if (ACLK_EN) begin
        if (output_13_ap_vld)
            int_output_13 <= output_13;
    end
end

// int_output_13_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_13_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_13_ap_vld)
            int_output_13_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_13_CTRL)
            int_output_13_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_14
always @(posedge ACLK) begin
    if (ARESET)
        int_output_14 <= 0;
    else if (ACLK_EN) begin
        if (output_14_ap_vld)
            int_output_14 <= output_14;
    end
end

// int_output_14_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_14_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_14_ap_vld)
            int_output_14_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_14_CTRL)
            int_output_14_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_15
always @(posedge ACLK) begin
    if (ARESET)
        int_output_15 <= 0;
    else if (ACLK_EN) begin
        if (output_15_ap_vld)
            int_output_15 <= output_15;
    end
end

// int_output_15_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_15_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_15_ap_vld)
            int_output_15_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_15_CTRL)
            int_output_15_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_16
always @(posedge ACLK) begin
    if (ARESET)
        int_output_16 <= 0;
    else if (ACLK_EN) begin
        if (output_16_ap_vld)
            int_output_16 <= output_16;
    end
end

// int_output_16_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_16_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_16_ap_vld)
            int_output_16_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_16_CTRL)
            int_output_16_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_17
always @(posedge ACLK) begin
    if (ARESET)
        int_output_17 <= 0;
    else if (ACLK_EN) begin
        if (output_17_ap_vld)
            int_output_17 <= output_17;
    end
end

// int_output_17_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_17_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_17_ap_vld)
            int_output_17_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_17_CTRL)
            int_output_17_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_18
always @(posedge ACLK) begin
    if (ARESET)
        int_output_18 <= 0;
    else if (ACLK_EN) begin
        if (output_18_ap_vld)
            int_output_18 <= output_18;
    end
end

// int_output_18_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_18_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_18_ap_vld)
            int_output_18_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_18_CTRL)
            int_output_18_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_19
always @(posedge ACLK) begin
    if (ARESET)
        int_output_19 <= 0;
    else if (ACLK_EN) begin
        if (output_19_ap_vld)
            int_output_19 <= output_19;
    end
end

// int_output_19_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_19_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_19_ap_vld)
            int_output_19_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_19_CTRL)
            int_output_19_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_20
always @(posedge ACLK) begin
    if (ARESET)
        int_output_20 <= 0;
    else if (ACLK_EN) begin
        if (output_20_ap_vld)
            int_output_20 <= output_20;
    end
end

// int_output_20_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_20_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_20_ap_vld)
            int_output_20_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_20_CTRL)
            int_output_20_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_21
always @(posedge ACLK) begin
    if (ARESET)
        int_output_21 <= 0;
    else if (ACLK_EN) begin
        if (output_21_ap_vld)
            int_output_21 <= output_21;
    end
end

// int_output_21_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_21_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_21_ap_vld)
            int_output_21_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_21_CTRL)
            int_output_21_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_22
always @(posedge ACLK) begin
    if (ARESET)
        int_output_22 <= 0;
    else if (ACLK_EN) begin
        if (output_22_ap_vld)
            int_output_22 <= output_22;
    end
end

// int_output_22_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_22_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_22_ap_vld)
            int_output_22_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_22_CTRL)
            int_output_22_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_23
always @(posedge ACLK) begin
    if (ARESET)
        int_output_23 <= 0;
    else if (ACLK_EN) begin
        if (output_23_ap_vld)
            int_output_23 <= output_23;
    end
end

// int_output_23_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_23_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_23_ap_vld)
            int_output_23_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_23_CTRL)
            int_output_23_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_24
always @(posedge ACLK) begin
    if (ARESET)
        int_output_24 <= 0;
    else if (ACLK_EN) begin
        if (output_24_ap_vld)
            int_output_24 <= output_24;
    end
end

// int_output_24_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_24_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_24_ap_vld)
            int_output_24_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_24_CTRL)
            int_output_24_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_25
always @(posedge ACLK) begin
    if (ARESET)
        int_output_25 <= 0;
    else if (ACLK_EN) begin
        if (output_25_ap_vld)
            int_output_25 <= output_25;
    end
end

// int_output_25_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_25_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_25_ap_vld)
            int_output_25_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_25_CTRL)
            int_output_25_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_26
always @(posedge ACLK) begin
    if (ARESET)
        int_output_26 <= 0;
    else if (ACLK_EN) begin
        if (output_26_ap_vld)
            int_output_26 <= output_26;
    end
end

// int_output_26_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_26_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_26_ap_vld)
            int_output_26_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_26_CTRL)
            int_output_26_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_27
always @(posedge ACLK) begin
    if (ARESET)
        int_output_27 <= 0;
    else if (ACLK_EN) begin
        if (output_27_ap_vld)
            int_output_27 <= output_27;
    end
end

// int_output_27_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_27_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_27_ap_vld)
            int_output_27_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_27_CTRL)
            int_output_27_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_28
always @(posedge ACLK) begin
    if (ARESET)
        int_output_28 <= 0;
    else if (ACLK_EN) begin
        if (output_28_ap_vld)
            int_output_28 <= output_28;
    end
end

// int_output_28_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_28_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_28_ap_vld)
            int_output_28_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_28_CTRL)
            int_output_28_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_29
always @(posedge ACLK) begin
    if (ARESET)
        int_output_29 <= 0;
    else if (ACLK_EN) begin
        if (output_29_ap_vld)
            int_output_29 <= output_29;
    end
end

// int_output_29_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_29_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_29_ap_vld)
            int_output_29_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_29_CTRL)
            int_output_29_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_30
always @(posedge ACLK) begin
    if (ARESET)
        int_output_30 <= 0;
    else if (ACLK_EN) begin
        if (output_30_ap_vld)
            int_output_30 <= output_30;
    end
end

// int_output_30_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_30_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_30_ap_vld)
            int_output_30_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_30_CTRL)
            int_output_30_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_31
always @(posedge ACLK) begin
    if (ARESET)
        int_output_31 <= 0;
    else if (ACLK_EN) begin
        if (output_31_ap_vld)
            int_output_31 <= output_31;
    end
end

// int_output_31_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_31_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_31_ap_vld)
            int_output_31_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_31_CTRL)
            int_output_31_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_32
always @(posedge ACLK) begin
    if (ARESET)
        int_output_32 <= 0;
    else if (ACLK_EN) begin
        if (output_32_ap_vld)
            int_output_32 <= output_32;
    end
end

// int_output_32_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_32_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_32_ap_vld)
            int_output_32_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_32_CTRL)
            int_output_32_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_33
always @(posedge ACLK) begin
    if (ARESET)
        int_output_33 <= 0;
    else if (ACLK_EN) begin
        if (output_33_ap_vld)
            int_output_33 <= output_33;
    end
end

// int_output_33_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_33_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_33_ap_vld)
            int_output_33_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_33_CTRL)
            int_output_33_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_34
always @(posedge ACLK) begin
    if (ARESET)
        int_output_34 <= 0;
    else if (ACLK_EN) begin
        if (output_34_ap_vld)
            int_output_34 <= output_34;
    end
end

// int_output_34_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_34_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_34_ap_vld)
            int_output_34_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_34_CTRL)
            int_output_34_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_35
always @(posedge ACLK) begin
    if (ARESET)
        int_output_35 <= 0;
    else if (ACLK_EN) begin
        if (output_35_ap_vld)
            int_output_35 <= output_35;
    end
end

// int_output_35_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_35_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_35_ap_vld)
            int_output_35_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_35_CTRL)
            int_output_35_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_36
always @(posedge ACLK) begin
    if (ARESET)
        int_output_36 <= 0;
    else if (ACLK_EN) begin
        if (output_36_ap_vld)
            int_output_36 <= output_36;
    end
end

// int_output_36_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_36_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_36_ap_vld)
            int_output_36_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_36_CTRL)
            int_output_36_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_37
always @(posedge ACLK) begin
    if (ARESET)
        int_output_37 <= 0;
    else if (ACLK_EN) begin
        if (output_37_ap_vld)
            int_output_37 <= output_37;
    end
end

// int_output_37_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_37_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_37_ap_vld)
            int_output_37_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_37_CTRL)
            int_output_37_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_38
always @(posedge ACLK) begin
    if (ARESET)
        int_output_38 <= 0;
    else if (ACLK_EN) begin
        if (output_38_ap_vld)
            int_output_38 <= output_38;
    end
end

// int_output_38_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_38_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_38_ap_vld)
            int_output_38_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_38_CTRL)
            int_output_38_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_39
always @(posedge ACLK) begin
    if (ARESET)
        int_output_39 <= 0;
    else if (ACLK_EN) begin
        if (output_39_ap_vld)
            int_output_39 <= output_39;
    end
end

// int_output_39_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_39_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_39_ap_vld)
            int_output_39_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_39_CTRL)
            int_output_39_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_40
always @(posedge ACLK) begin
    if (ARESET)
        int_output_40 <= 0;
    else if (ACLK_EN) begin
        if (output_40_ap_vld)
            int_output_40 <= output_40;
    end
end

// int_output_40_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_40_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_40_ap_vld)
            int_output_40_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_40_CTRL)
            int_output_40_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_41
always @(posedge ACLK) begin
    if (ARESET)
        int_output_41 <= 0;
    else if (ACLK_EN) begin
        if (output_41_ap_vld)
            int_output_41 <= output_41;
    end
end

// int_output_41_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_41_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_41_ap_vld)
            int_output_41_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_41_CTRL)
            int_output_41_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_42
always @(posedge ACLK) begin
    if (ARESET)
        int_output_42 <= 0;
    else if (ACLK_EN) begin
        if (output_42_ap_vld)
            int_output_42 <= output_42;
    end
end

// int_output_42_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_42_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_42_ap_vld)
            int_output_42_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_42_CTRL)
            int_output_42_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_43
always @(posedge ACLK) begin
    if (ARESET)
        int_output_43 <= 0;
    else if (ACLK_EN) begin
        if (output_43_ap_vld)
            int_output_43 <= output_43;
    end
end

// int_output_43_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_43_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_43_ap_vld)
            int_output_43_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_43_CTRL)
            int_output_43_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_44
always @(posedge ACLK) begin
    if (ARESET)
        int_output_44 <= 0;
    else if (ACLK_EN) begin
        if (output_44_ap_vld)
            int_output_44 <= output_44;
    end
end

// int_output_44_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_44_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_44_ap_vld)
            int_output_44_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_44_CTRL)
            int_output_44_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_45
always @(posedge ACLK) begin
    if (ARESET)
        int_output_45 <= 0;
    else if (ACLK_EN) begin
        if (output_45_ap_vld)
            int_output_45 <= output_45;
    end
end

// int_output_45_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_45_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_45_ap_vld)
            int_output_45_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_45_CTRL)
            int_output_45_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_46
always @(posedge ACLK) begin
    if (ARESET)
        int_output_46 <= 0;
    else if (ACLK_EN) begin
        if (output_46_ap_vld)
            int_output_46 <= output_46;
    end
end

// int_output_46_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_46_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_46_ap_vld)
            int_output_46_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_46_CTRL)
            int_output_46_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_47
always @(posedge ACLK) begin
    if (ARESET)
        int_output_47 <= 0;
    else if (ACLK_EN) begin
        if (output_47_ap_vld)
            int_output_47 <= output_47;
    end
end

// int_output_47_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_47_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_47_ap_vld)
            int_output_47_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_47_CTRL)
            int_output_47_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_48
always @(posedge ACLK) begin
    if (ARESET)
        int_output_48 <= 0;
    else if (ACLK_EN) begin
        if (output_48_ap_vld)
            int_output_48 <= output_48;
    end
end

// int_output_48_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_48_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_48_ap_vld)
            int_output_48_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_48_CTRL)
            int_output_48_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_49
always @(posedge ACLK) begin
    if (ARESET)
        int_output_49 <= 0;
    else if (ACLK_EN) begin
        if (output_49_ap_vld)
            int_output_49 <= output_49;
    end
end

// int_output_49_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_49_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_49_ap_vld)
            int_output_49_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_49_CTRL)
            int_output_49_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_50
always @(posedge ACLK) begin
    if (ARESET)
        int_output_50 <= 0;
    else if (ACLK_EN) begin
        if (output_50_ap_vld)
            int_output_50 <= output_50;
    end
end

// int_output_50_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_50_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_50_ap_vld)
            int_output_50_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_50_CTRL)
            int_output_50_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_51
always @(posedge ACLK) begin
    if (ARESET)
        int_output_51 <= 0;
    else if (ACLK_EN) begin
        if (output_51_ap_vld)
            int_output_51 <= output_51;
    end
end

// int_output_51_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_51_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_51_ap_vld)
            int_output_51_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_51_CTRL)
            int_output_51_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_52
always @(posedge ACLK) begin
    if (ARESET)
        int_output_52 <= 0;
    else if (ACLK_EN) begin
        if (output_52_ap_vld)
            int_output_52 <= output_52;
    end
end

// int_output_52_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_52_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_52_ap_vld)
            int_output_52_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_52_CTRL)
            int_output_52_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_53
always @(posedge ACLK) begin
    if (ARESET)
        int_output_53 <= 0;
    else if (ACLK_EN) begin
        if (output_53_ap_vld)
            int_output_53 <= output_53;
    end
end

// int_output_53_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_53_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_53_ap_vld)
            int_output_53_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_53_CTRL)
            int_output_53_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_54
always @(posedge ACLK) begin
    if (ARESET)
        int_output_54 <= 0;
    else if (ACLK_EN) begin
        if (output_54_ap_vld)
            int_output_54 <= output_54;
    end
end

// int_output_54_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_54_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_54_ap_vld)
            int_output_54_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_54_CTRL)
            int_output_54_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_55
always @(posedge ACLK) begin
    if (ARESET)
        int_output_55 <= 0;
    else if (ACLK_EN) begin
        if (output_55_ap_vld)
            int_output_55 <= output_55;
    end
end

// int_output_55_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_55_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_55_ap_vld)
            int_output_55_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_55_CTRL)
            int_output_55_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_56
always @(posedge ACLK) begin
    if (ARESET)
        int_output_56 <= 0;
    else if (ACLK_EN) begin
        if (output_56_ap_vld)
            int_output_56 <= output_56;
    end
end

// int_output_56_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_56_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_56_ap_vld)
            int_output_56_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_56_CTRL)
            int_output_56_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_57
always @(posedge ACLK) begin
    if (ARESET)
        int_output_57 <= 0;
    else if (ACLK_EN) begin
        if (output_57_ap_vld)
            int_output_57 <= output_57;
    end
end

// int_output_57_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_57_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_57_ap_vld)
            int_output_57_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_57_CTRL)
            int_output_57_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_58
always @(posedge ACLK) begin
    if (ARESET)
        int_output_58 <= 0;
    else if (ACLK_EN) begin
        if (output_58_ap_vld)
            int_output_58 <= output_58;
    end
end

// int_output_58_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_58_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_58_ap_vld)
            int_output_58_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_58_CTRL)
            int_output_58_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_59
always @(posedge ACLK) begin
    if (ARESET)
        int_output_59 <= 0;
    else if (ACLK_EN) begin
        if (output_59_ap_vld)
            int_output_59 <= output_59;
    end
end

// int_output_59_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_59_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_59_ap_vld)
            int_output_59_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_59_CTRL)
            int_output_59_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_60
always @(posedge ACLK) begin
    if (ARESET)
        int_output_60 <= 0;
    else if (ACLK_EN) begin
        if (output_60_ap_vld)
            int_output_60 <= output_60;
    end
end

// int_output_60_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_60_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_60_ap_vld)
            int_output_60_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_60_CTRL)
            int_output_60_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_61
always @(posedge ACLK) begin
    if (ARESET)
        int_output_61 <= 0;
    else if (ACLK_EN) begin
        if (output_61_ap_vld)
            int_output_61 <= output_61;
    end
end

// int_output_61_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_61_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_61_ap_vld)
            int_output_61_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_61_CTRL)
            int_output_61_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_62
always @(posedge ACLK) begin
    if (ARESET)
        int_output_62 <= 0;
    else if (ACLK_EN) begin
        if (output_62_ap_vld)
            int_output_62 <= output_62;
    end
end

// int_output_62_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_62_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_62_ap_vld)
            int_output_62_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_62_CTRL)
            int_output_62_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_63
always @(posedge ACLK) begin
    if (ARESET)
        int_output_63 <= 0;
    else if (ACLK_EN) begin
        if (output_63_ap_vld)
            int_output_63 <= output_63;
    end
end

// int_output_63_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_63_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_63_ap_vld)
            int_output_63_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_63_CTRL)
            int_output_63_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_64
always @(posedge ACLK) begin
    if (ARESET)
        int_output_64 <= 0;
    else if (ACLK_EN) begin
        if (output_64_ap_vld)
            int_output_64 <= output_64;
    end
end

// int_output_64_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_64_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_64_ap_vld)
            int_output_64_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_64_CTRL)
            int_output_64_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_65
always @(posedge ACLK) begin
    if (ARESET)
        int_output_65 <= 0;
    else if (ACLK_EN) begin
        if (output_65_ap_vld)
            int_output_65 <= output_65;
    end
end

// int_output_65_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_65_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_65_ap_vld)
            int_output_65_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_65_CTRL)
            int_output_65_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_66
always @(posedge ACLK) begin
    if (ARESET)
        int_output_66 <= 0;
    else if (ACLK_EN) begin
        if (output_66_ap_vld)
            int_output_66 <= output_66;
    end
end

// int_output_66_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_66_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_66_ap_vld)
            int_output_66_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_66_CTRL)
            int_output_66_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_67
always @(posedge ACLK) begin
    if (ARESET)
        int_output_67 <= 0;
    else if (ACLK_EN) begin
        if (output_67_ap_vld)
            int_output_67 <= output_67;
    end
end

// int_output_67_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_67_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_67_ap_vld)
            int_output_67_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_67_CTRL)
            int_output_67_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_68
always @(posedge ACLK) begin
    if (ARESET)
        int_output_68 <= 0;
    else if (ACLK_EN) begin
        if (output_68_ap_vld)
            int_output_68 <= output_68;
    end
end

// int_output_68_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_68_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_68_ap_vld)
            int_output_68_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_68_CTRL)
            int_output_68_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_69
always @(posedge ACLK) begin
    if (ARESET)
        int_output_69 <= 0;
    else if (ACLK_EN) begin
        if (output_69_ap_vld)
            int_output_69 <= output_69;
    end
end

// int_output_69_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_69_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_69_ap_vld)
            int_output_69_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_69_CTRL)
            int_output_69_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_70
always @(posedge ACLK) begin
    if (ARESET)
        int_output_70 <= 0;
    else if (ACLK_EN) begin
        if (output_70_ap_vld)
            int_output_70 <= output_70;
    end
end

// int_output_70_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_70_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_70_ap_vld)
            int_output_70_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_70_CTRL)
            int_output_70_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_71
always @(posedge ACLK) begin
    if (ARESET)
        int_output_71 <= 0;
    else if (ACLK_EN) begin
        if (output_71_ap_vld)
            int_output_71 <= output_71;
    end
end

// int_output_71_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_71_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_71_ap_vld)
            int_output_71_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_71_CTRL)
            int_output_71_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_72
always @(posedge ACLK) begin
    if (ARESET)
        int_output_72 <= 0;
    else if (ACLK_EN) begin
        if (output_72_ap_vld)
            int_output_72 <= output_72;
    end
end

// int_output_72_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_72_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_72_ap_vld)
            int_output_72_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_72_CTRL)
            int_output_72_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_73
always @(posedge ACLK) begin
    if (ARESET)
        int_output_73 <= 0;
    else if (ACLK_EN) begin
        if (output_73_ap_vld)
            int_output_73 <= output_73;
    end
end

// int_output_73_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_73_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_73_ap_vld)
            int_output_73_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_73_CTRL)
            int_output_73_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_74
always @(posedge ACLK) begin
    if (ARESET)
        int_output_74 <= 0;
    else if (ACLK_EN) begin
        if (output_74_ap_vld)
            int_output_74 <= output_74;
    end
end

// int_output_74_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_74_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_74_ap_vld)
            int_output_74_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_74_CTRL)
            int_output_74_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_75
always @(posedge ACLK) begin
    if (ARESET)
        int_output_75 <= 0;
    else if (ACLK_EN) begin
        if (output_75_ap_vld)
            int_output_75 <= output_75;
    end
end

// int_output_75_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_75_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_75_ap_vld)
            int_output_75_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_75_CTRL)
            int_output_75_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_76
always @(posedge ACLK) begin
    if (ARESET)
        int_output_76 <= 0;
    else if (ACLK_EN) begin
        if (output_76_ap_vld)
            int_output_76 <= output_76;
    end
end

// int_output_76_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_76_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_76_ap_vld)
            int_output_76_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_76_CTRL)
            int_output_76_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_77
always @(posedge ACLK) begin
    if (ARESET)
        int_output_77 <= 0;
    else if (ACLK_EN) begin
        if (output_77_ap_vld)
            int_output_77 <= output_77;
    end
end

// int_output_77_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_77_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_77_ap_vld)
            int_output_77_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_77_CTRL)
            int_output_77_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_78
always @(posedge ACLK) begin
    if (ARESET)
        int_output_78 <= 0;
    else if (ACLK_EN) begin
        if (output_78_ap_vld)
            int_output_78 <= output_78;
    end
end

// int_output_78_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_78_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_78_ap_vld)
            int_output_78_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_78_CTRL)
            int_output_78_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_79
always @(posedge ACLK) begin
    if (ARESET)
        int_output_79 <= 0;
    else if (ACLK_EN) begin
        if (output_79_ap_vld)
            int_output_79 <= output_79;
    end
end

// int_output_79_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_79_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_79_ap_vld)
            int_output_79_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_79_CTRL)
            int_output_79_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_80
always @(posedge ACLK) begin
    if (ARESET)
        int_output_80 <= 0;
    else if (ACLK_EN) begin
        if (output_80_ap_vld)
            int_output_80 <= output_80;
    end
end

// int_output_80_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_80_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_80_ap_vld)
            int_output_80_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_80_CTRL)
            int_output_80_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_81
always @(posedge ACLK) begin
    if (ARESET)
        int_output_81 <= 0;
    else if (ACLK_EN) begin
        if (output_81_ap_vld)
            int_output_81 <= output_81;
    end
end

// int_output_81_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_81_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_81_ap_vld)
            int_output_81_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_81_CTRL)
            int_output_81_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_82
always @(posedge ACLK) begin
    if (ARESET)
        int_output_82 <= 0;
    else if (ACLK_EN) begin
        if (output_82_ap_vld)
            int_output_82 <= output_82;
    end
end

// int_output_82_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_82_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_82_ap_vld)
            int_output_82_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_82_CTRL)
            int_output_82_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_83
always @(posedge ACLK) begin
    if (ARESET)
        int_output_83 <= 0;
    else if (ACLK_EN) begin
        if (output_83_ap_vld)
            int_output_83 <= output_83;
    end
end

// int_output_83_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_83_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_83_ap_vld)
            int_output_83_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_83_CTRL)
            int_output_83_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_84
always @(posedge ACLK) begin
    if (ARESET)
        int_output_84 <= 0;
    else if (ACLK_EN) begin
        if (output_84_ap_vld)
            int_output_84 <= output_84;
    end
end

// int_output_84_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_84_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_84_ap_vld)
            int_output_84_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_84_CTRL)
            int_output_84_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_85
always @(posedge ACLK) begin
    if (ARESET)
        int_output_85 <= 0;
    else if (ACLK_EN) begin
        if (output_85_ap_vld)
            int_output_85 <= output_85;
    end
end

// int_output_85_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_85_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_85_ap_vld)
            int_output_85_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_85_CTRL)
            int_output_85_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_86
always @(posedge ACLK) begin
    if (ARESET)
        int_output_86 <= 0;
    else if (ACLK_EN) begin
        if (output_86_ap_vld)
            int_output_86 <= output_86;
    end
end

// int_output_86_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_86_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_86_ap_vld)
            int_output_86_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_86_CTRL)
            int_output_86_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_87
always @(posedge ACLK) begin
    if (ARESET)
        int_output_87 <= 0;
    else if (ACLK_EN) begin
        if (output_87_ap_vld)
            int_output_87 <= output_87;
    end
end

// int_output_87_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_87_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_87_ap_vld)
            int_output_87_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_87_CTRL)
            int_output_87_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_88
always @(posedge ACLK) begin
    if (ARESET)
        int_output_88 <= 0;
    else if (ACLK_EN) begin
        if (output_88_ap_vld)
            int_output_88 <= output_88;
    end
end

// int_output_88_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_88_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_88_ap_vld)
            int_output_88_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_88_CTRL)
            int_output_88_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_89
always @(posedge ACLK) begin
    if (ARESET)
        int_output_89 <= 0;
    else if (ACLK_EN) begin
        if (output_89_ap_vld)
            int_output_89 <= output_89;
    end
end

// int_output_89_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_89_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_89_ap_vld)
            int_output_89_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_89_CTRL)
            int_output_89_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_90
always @(posedge ACLK) begin
    if (ARESET)
        int_output_90 <= 0;
    else if (ACLK_EN) begin
        if (output_90_ap_vld)
            int_output_90 <= output_90;
    end
end

// int_output_90_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_90_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_90_ap_vld)
            int_output_90_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_90_CTRL)
            int_output_90_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_91
always @(posedge ACLK) begin
    if (ARESET)
        int_output_91 <= 0;
    else if (ACLK_EN) begin
        if (output_91_ap_vld)
            int_output_91 <= output_91;
    end
end

// int_output_91_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_91_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_91_ap_vld)
            int_output_91_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_91_CTRL)
            int_output_91_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_92
always @(posedge ACLK) begin
    if (ARESET)
        int_output_92 <= 0;
    else if (ACLK_EN) begin
        if (output_92_ap_vld)
            int_output_92 <= output_92;
    end
end

// int_output_92_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_92_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_92_ap_vld)
            int_output_92_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_92_CTRL)
            int_output_92_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_93
always @(posedge ACLK) begin
    if (ARESET)
        int_output_93 <= 0;
    else if (ACLK_EN) begin
        if (output_93_ap_vld)
            int_output_93 <= output_93;
    end
end

// int_output_93_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_93_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_93_ap_vld)
            int_output_93_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_93_CTRL)
            int_output_93_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_94
always @(posedge ACLK) begin
    if (ARESET)
        int_output_94 <= 0;
    else if (ACLK_EN) begin
        if (output_94_ap_vld)
            int_output_94 <= output_94;
    end
end

// int_output_94_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_94_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_94_ap_vld)
            int_output_94_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_94_CTRL)
            int_output_94_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_95
always @(posedge ACLK) begin
    if (ARESET)
        int_output_95 <= 0;
    else if (ACLK_EN) begin
        if (output_95_ap_vld)
            int_output_95 <= output_95;
    end
end

// int_output_95_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_95_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_95_ap_vld)
            int_output_95_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_95_CTRL)
            int_output_95_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_96
always @(posedge ACLK) begin
    if (ARESET)
        int_output_96 <= 0;
    else if (ACLK_EN) begin
        if (output_96_ap_vld)
            int_output_96 <= output_96;
    end
end

// int_output_96_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_96_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_96_ap_vld)
            int_output_96_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_96_CTRL)
            int_output_96_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_97
always @(posedge ACLK) begin
    if (ARESET)
        int_output_97 <= 0;
    else if (ACLK_EN) begin
        if (output_97_ap_vld)
            int_output_97 <= output_97;
    end
end

// int_output_97_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_97_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_97_ap_vld)
            int_output_97_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_97_CTRL)
            int_output_97_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_98
always @(posedge ACLK) begin
    if (ARESET)
        int_output_98 <= 0;
    else if (ACLK_EN) begin
        if (output_98_ap_vld)
            int_output_98 <= output_98;
    end
end

// int_output_98_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_98_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_98_ap_vld)
            int_output_98_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_98_CTRL)
            int_output_98_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_99
always @(posedge ACLK) begin
    if (ARESET)
        int_output_99 <= 0;
    else if (ACLK_EN) begin
        if (output_99_ap_vld)
            int_output_99 <= output_99;
    end
end

// int_output_99_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_99_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_99_ap_vld)
            int_output_99_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_99_CTRL)
            int_output_99_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_100
always @(posedge ACLK) begin
    if (ARESET)
        int_output_100 <= 0;
    else if (ACLK_EN) begin
        if (output_100_ap_vld)
            int_output_100 <= output_100;
    end
end

// int_output_100_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_100_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_100_ap_vld)
            int_output_100_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_100_CTRL)
            int_output_100_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_101
always @(posedge ACLK) begin
    if (ARESET)
        int_output_101 <= 0;
    else if (ACLK_EN) begin
        if (output_101_ap_vld)
            int_output_101 <= output_101;
    end
end

// int_output_101_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_101_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_101_ap_vld)
            int_output_101_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_101_CTRL)
            int_output_101_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_102
always @(posedge ACLK) begin
    if (ARESET)
        int_output_102 <= 0;
    else if (ACLK_EN) begin
        if (output_102_ap_vld)
            int_output_102 <= output_102;
    end
end

// int_output_102_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_102_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_102_ap_vld)
            int_output_102_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_102_CTRL)
            int_output_102_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_103
always @(posedge ACLK) begin
    if (ARESET)
        int_output_103 <= 0;
    else if (ACLK_EN) begin
        if (output_103_ap_vld)
            int_output_103 <= output_103;
    end
end

// int_output_103_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_103_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_103_ap_vld)
            int_output_103_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_103_CTRL)
            int_output_103_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_104
always @(posedge ACLK) begin
    if (ARESET)
        int_output_104 <= 0;
    else if (ACLK_EN) begin
        if (output_104_ap_vld)
            int_output_104 <= output_104;
    end
end

// int_output_104_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_104_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_104_ap_vld)
            int_output_104_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_104_CTRL)
            int_output_104_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_105
always @(posedge ACLK) begin
    if (ARESET)
        int_output_105 <= 0;
    else if (ACLK_EN) begin
        if (output_105_ap_vld)
            int_output_105 <= output_105;
    end
end

// int_output_105_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_105_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_105_ap_vld)
            int_output_105_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_105_CTRL)
            int_output_105_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_106
always @(posedge ACLK) begin
    if (ARESET)
        int_output_106 <= 0;
    else if (ACLK_EN) begin
        if (output_106_ap_vld)
            int_output_106 <= output_106;
    end
end

// int_output_106_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_106_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_106_ap_vld)
            int_output_106_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_106_CTRL)
            int_output_106_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_107
always @(posedge ACLK) begin
    if (ARESET)
        int_output_107 <= 0;
    else if (ACLK_EN) begin
        if (output_107_ap_vld)
            int_output_107 <= output_107;
    end
end

// int_output_107_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_107_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_107_ap_vld)
            int_output_107_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_107_CTRL)
            int_output_107_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_108
always @(posedge ACLK) begin
    if (ARESET)
        int_output_108 <= 0;
    else if (ACLK_EN) begin
        if (output_108_ap_vld)
            int_output_108 <= output_108;
    end
end

// int_output_108_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_108_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_108_ap_vld)
            int_output_108_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_108_CTRL)
            int_output_108_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_109
always @(posedge ACLK) begin
    if (ARESET)
        int_output_109 <= 0;
    else if (ACLK_EN) begin
        if (output_109_ap_vld)
            int_output_109 <= output_109;
    end
end

// int_output_109_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_109_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_109_ap_vld)
            int_output_109_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_109_CTRL)
            int_output_109_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_110
always @(posedge ACLK) begin
    if (ARESET)
        int_output_110 <= 0;
    else if (ACLK_EN) begin
        if (output_110_ap_vld)
            int_output_110 <= output_110;
    end
end

// int_output_110_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_110_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_110_ap_vld)
            int_output_110_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_110_CTRL)
            int_output_110_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_111
always @(posedge ACLK) begin
    if (ARESET)
        int_output_111 <= 0;
    else if (ACLK_EN) begin
        if (output_111_ap_vld)
            int_output_111 <= output_111;
    end
end

// int_output_111_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_111_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_111_ap_vld)
            int_output_111_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_111_CTRL)
            int_output_111_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_112
always @(posedge ACLK) begin
    if (ARESET)
        int_output_112 <= 0;
    else if (ACLK_EN) begin
        if (output_112_ap_vld)
            int_output_112 <= output_112;
    end
end

// int_output_112_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_112_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_112_ap_vld)
            int_output_112_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_112_CTRL)
            int_output_112_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_113
always @(posedge ACLK) begin
    if (ARESET)
        int_output_113 <= 0;
    else if (ACLK_EN) begin
        if (output_113_ap_vld)
            int_output_113 <= output_113;
    end
end

// int_output_113_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_113_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_113_ap_vld)
            int_output_113_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_113_CTRL)
            int_output_113_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_114
always @(posedge ACLK) begin
    if (ARESET)
        int_output_114 <= 0;
    else if (ACLK_EN) begin
        if (output_114_ap_vld)
            int_output_114 <= output_114;
    end
end

// int_output_114_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_114_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_114_ap_vld)
            int_output_114_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_114_CTRL)
            int_output_114_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_115
always @(posedge ACLK) begin
    if (ARESET)
        int_output_115 <= 0;
    else if (ACLK_EN) begin
        if (output_115_ap_vld)
            int_output_115 <= output_115;
    end
end

// int_output_115_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_115_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_115_ap_vld)
            int_output_115_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_115_CTRL)
            int_output_115_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_116
always @(posedge ACLK) begin
    if (ARESET)
        int_output_116 <= 0;
    else if (ACLK_EN) begin
        if (output_116_ap_vld)
            int_output_116 <= output_116;
    end
end

// int_output_116_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_116_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_116_ap_vld)
            int_output_116_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_116_CTRL)
            int_output_116_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_117
always @(posedge ACLK) begin
    if (ARESET)
        int_output_117 <= 0;
    else if (ACLK_EN) begin
        if (output_117_ap_vld)
            int_output_117 <= output_117;
    end
end

// int_output_117_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_117_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_117_ap_vld)
            int_output_117_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_117_CTRL)
            int_output_117_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_118
always @(posedge ACLK) begin
    if (ARESET)
        int_output_118 <= 0;
    else if (ACLK_EN) begin
        if (output_118_ap_vld)
            int_output_118 <= output_118;
    end
end

// int_output_118_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_118_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_118_ap_vld)
            int_output_118_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_118_CTRL)
            int_output_118_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_119
always @(posedge ACLK) begin
    if (ARESET)
        int_output_119 <= 0;
    else if (ACLK_EN) begin
        if (output_119_ap_vld)
            int_output_119 <= output_119;
    end
end

// int_output_119_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_119_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_119_ap_vld)
            int_output_119_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_119_CTRL)
            int_output_119_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_120
always @(posedge ACLK) begin
    if (ARESET)
        int_output_120 <= 0;
    else if (ACLK_EN) begin
        if (output_120_ap_vld)
            int_output_120 <= output_120;
    end
end

// int_output_120_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_120_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_120_ap_vld)
            int_output_120_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_120_CTRL)
            int_output_120_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_121
always @(posedge ACLK) begin
    if (ARESET)
        int_output_121 <= 0;
    else if (ACLK_EN) begin
        if (output_121_ap_vld)
            int_output_121 <= output_121;
    end
end

// int_output_121_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_121_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_121_ap_vld)
            int_output_121_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_121_CTRL)
            int_output_121_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_122
always @(posedge ACLK) begin
    if (ARESET)
        int_output_122 <= 0;
    else if (ACLK_EN) begin
        if (output_122_ap_vld)
            int_output_122 <= output_122;
    end
end

// int_output_122_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_122_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_122_ap_vld)
            int_output_122_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_122_CTRL)
            int_output_122_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_123
always @(posedge ACLK) begin
    if (ARESET)
        int_output_123 <= 0;
    else if (ACLK_EN) begin
        if (output_123_ap_vld)
            int_output_123 <= output_123;
    end
end

// int_output_123_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_123_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_123_ap_vld)
            int_output_123_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_123_CTRL)
            int_output_123_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_124
always @(posedge ACLK) begin
    if (ARESET)
        int_output_124 <= 0;
    else if (ACLK_EN) begin
        if (output_124_ap_vld)
            int_output_124 <= output_124;
    end
end

// int_output_124_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_124_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_124_ap_vld)
            int_output_124_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_124_CTRL)
            int_output_124_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_125
always @(posedge ACLK) begin
    if (ARESET)
        int_output_125 <= 0;
    else if (ACLK_EN) begin
        if (output_125_ap_vld)
            int_output_125 <= output_125;
    end
end

// int_output_125_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_125_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_125_ap_vld)
            int_output_125_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_125_CTRL)
            int_output_125_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_126
always @(posedge ACLK) begin
    if (ARESET)
        int_output_126 <= 0;
    else if (ACLK_EN) begin
        if (output_126_ap_vld)
            int_output_126 <= output_126;
    end
end

// int_output_126_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_126_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_126_ap_vld)
            int_output_126_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_126_CTRL)
            int_output_126_ap_vld <= 1'b0; // clear on read
    end
end

// int_output_127
always @(posedge ACLK) begin
    if (ARESET)
        int_output_127 <= 0;
    else if (ACLK_EN) begin
        if (output_127_ap_vld)
            int_output_127 <= output_127;
    end
end

// int_output_127_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_output_127_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (output_127_ap_vld)
            int_output_127_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_OUTPUT_127_CTRL)
            int_output_127_ap_vld <= 1'b0; // clear on read
    end
end

// int_numOfOutputNeurons[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_numOfOutputNeurons[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NUMOFOUTPUTNEURONS_DATA_0)
            int_numOfOutputNeurons[15:0] <= (WDATA[31:0] & wmask) | (int_numOfOutputNeurons[15:0] & ~wmask);
    end
end

// int_activation[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_activation[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ACTIVATION_DATA_0)
            int_activation[7:0] <= (WDATA[31:0] & wmask) | (int_activation[7:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// bias
assign int_bias_address0        = bias_address0 >> 1;
assign int_bias_ce0             = bias_ce0;
assign bias_q0                  = int_bias_q0 >> (int_bias_shift0 * 16);
assign int_bias_address1        = ar_hs? raddr[7:2] : waddr[7:2];
assign int_bias_ce1             = ar_hs | (int_bias_write & WVALID);
assign int_bias_we1             = int_bias_write & w_hs;
assign int_bias_be1             = int_bias_we1 ? WSTRB : 'b0;
assign int_bias_d1              = WDATA;
// weights_0
assign int_weights_0_address0   = weights_0_address0 >> 1;
assign int_weights_0_ce0        = weights_0_ce0;
assign weights_0_q0             = int_weights_0_q0 >> (int_weights_0_shift0 * 16);
assign int_weights_0_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_0_ce1        = ar_hs | (int_weights_0_write & WVALID);
assign int_weights_0_we1        = int_weights_0_write & w_hs;
assign int_weights_0_be1        = int_weights_0_we1 ? WSTRB : 'b0;
assign int_weights_0_d1         = WDATA;
// weights_1
assign int_weights_1_address0   = weights_1_address0 >> 1;
assign int_weights_1_ce0        = weights_1_ce0;
assign weights_1_q0             = int_weights_1_q0 >> (int_weights_1_shift0 * 16);
assign int_weights_1_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_1_ce1        = ar_hs | (int_weights_1_write & WVALID);
assign int_weights_1_we1        = int_weights_1_write & w_hs;
assign int_weights_1_be1        = int_weights_1_we1 ? WSTRB : 'b0;
assign int_weights_1_d1         = WDATA;
// weights_2
assign int_weights_2_address0   = weights_2_address0 >> 1;
assign int_weights_2_ce0        = weights_2_ce0;
assign weights_2_q0             = int_weights_2_q0 >> (int_weights_2_shift0 * 16);
assign int_weights_2_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_2_ce1        = ar_hs | (int_weights_2_write & WVALID);
assign int_weights_2_we1        = int_weights_2_write & w_hs;
assign int_weights_2_be1        = int_weights_2_we1 ? WSTRB : 'b0;
assign int_weights_2_d1         = WDATA;
// weights_3
assign int_weights_3_address0   = weights_3_address0 >> 1;
assign int_weights_3_ce0        = weights_3_ce0;
assign weights_3_q0             = int_weights_3_q0 >> (int_weights_3_shift0 * 16);
assign int_weights_3_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_3_ce1        = ar_hs | (int_weights_3_write & WVALID);
assign int_weights_3_we1        = int_weights_3_write & w_hs;
assign int_weights_3_be1        = int_weights_3_we1 ? WSTRB : 'b0;
assign int_weights_3_d1         = WDATA;
// weights_4
assign int_weights_4_address0   = weights_4_address0 >> 1;
assign int_weights_4_ce0        = weights_4_ce0;
assign weights_4_q0             = int_weights_4_q0 >> (int_weights_4_shift0 * 16);
assign int_weights_4_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_4_ce1        = ar_hs | (int_weights_4_write & WVALID);
assign int_weights_4_we1        = int_weights_4_write & w_hs;
assign int_weights_4_be1        = int_weights_4_we1 ? WSTRB : 'b0;
assign int_weights_4_d1         = WDATA;
// weights_5
assign int_weights_5_address0   = weights_5_address0 >> 1;
assign int_weights_5_ce0        = weights_5_ce0;
assign weights_5_q0             = int_weights_5_q0 >> (int_weights_5_shift0 * 16);
assign int_weights_5_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_5_ce1        = ar_hs | (int_weights_5_write & WVALID);
assign int_weights_5_we1        = int_weights_5_write & w_hs;
assign int_weights_5_be1        = int_weights_5_we1 ? WSTRB : 'b0;
assign int_weights_5_d1         = WDATA;
// weights_6
assign int_weights_6_address0   = weights_6_address0 >> 1;
assign int_weights_6_ce0        = weights_6_ce0;
assign weights_6_q0             = int_weights_6_q0 >> (int_weights_6_shift0 * 16);
assign int_weights_6_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_6_ce1        = ar_hs | (int_weights_6_write & WVALID);
assign int_weights_6_we1        = int_weights_6_write & w_hs;
assign int_weights_6_be1        = int_weights_6_we1 ? WSTRB : 'b0;
assign int_weights_6_d1         = WDATA;
// weights_7
assign int_weights_7_address0   = weights_7_address0 >> 1;
assign int_weights_7_ce0        = weights_7_ce0;
assign weights_7_q0             = int_weights_7_q0 >> (int_weights_7_shift0 * 16);
assign int_weights_7_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_7_ce1        = ar_hs | (int_weights_7_write & WVALID);
assign int_weights_7_we1        = int_weights_7_write & w_hs;
assign int_weights_7_be1        = int_weights_7_we1 ? WSTRB : 'b0;
assign int_weights_7_d1         = WDATA;
// weights_8
assign int_weights_8_address0   = weights_8_address0 >> 1;
assign int_weights_8_ce0        = weights_8_ce0;
assign weights_8_q0             = int_weights_8_q0 >> (int_weights_8_shift0 * 16);
assign int_weights_8_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_8_ce1        = ar_hs | (int_weights_8_write & WVALID);
assign int_weights_8_we1        = int_weights_8_write & w_hs;
assign int_weights_8_be1        = int_weights_8_we1 ? WSTRB : 'b0;
assign int_weights_8_d1         = WDATA;
// weights_9
assign int_weights_9_address0   = weights_9_address0 >> 1;
assign int_weights_9_ce0        = weights_9_ce0;
assign weights_9_q0             = int_weights_9_q0 >> (int_weights_9_shift0 * 16);
assign int_weights_9_address1   = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_9_ce1        = ar_hs | (int_weights_9_write & WVALID);
assign int_weights_9_we1        = int_weights_9_write & w_hs;
assign int_weights_9_be1        = int_weights_9_we1 ? WSTRB : 'b0;
assign int_weights_9_d1         = WDATA;
// weights_10
assign int_weights_10_address0  = weights_10_address0 >> 1;
assign int_weights_10_ce0       = weights_10_ce0;
assign weights_10_q0            = int_weights_10_q0 >> (int_weights_10_shift0 * 16);
assign int_weights_10_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_10_ce1       = ar_hs | (int_weights_10_write & WVALID);
assign int_weights_10_we1       = int_weights_10_write & w_hs;
assign int_weights_10_be1       = int_weights_10_we1 ? WSTRB : 'b0;
assign int_weights_10_d1        = WDATA;
// weights_11
assign int_weights_11_address0  = weights_11_address0 >> 1;
assign int_weights_11_ce0       = weights_11_ce0;
assign weights_11_q0            = int_weights_11_q0 >> (int_weights_11_shift0 * 16);
assign int_weights_11_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_11_ce1       = ar_hs | (int_weights_11_write & WVALID);
assign int_weights_11_we1       = int_weights_11_write & w_hs;
assign int_weights_11_be1       = int_weights_11_we1 ? WSTRB : 'b0;
assign int_weights_11_d1        = WDATA;
// weights_12
assign int_weights_12_address0  = weights_12_address0 >> 1;
assign int_weights_12_ce0       = weights_12_ce0;
assign weights_12_q0            = int_weights_12_q0 >> (int_weights_12_shift0 * 16);
assign int_weights_12_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_12_ce1       = ar_hs | (int_weights_12_write & WVALID);
assign int_weights_12_we1       = int_weights_12_write & w_hs;
assign int_weights_12_be1       = int_weights_12_we1 ? WSTRB : 'b0;
assign int_weights_12_d1        = WDATA;
// weights_13
assign int_weights_13_address0  = weights_13_address0 >> 1;
assign int_weights_13_ce0       = weights_13_ce0;
assign weights_13_q0            = int_weights_13_q0 >> (int_weights_13_shift0 * 16);
assign int_weights_13_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_13_ce1       = ar_hs | (int_weights_13_write & WVALID);
assign int_weights_13_we1       = int_weights_13_write & w_hs;
assign int_weights_13_be1       = int_weights_13_we1 ? WSTRB : 'b0;
assign int_weights_13_d1        = WDATA;
// weights_14
assign int_weights_14_address0  = weights_14_address0 >> 1;
assign int_weights_14_ce0       = weights_14_ce0;
assign weights_14_q0            = int_weights_14_q0 >> (int_weights_14_shift0 * 16);
assign int_weights_14_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_14_ce1       = ar_hs | (int_weights_14_write & WVALID);
assign int_weights_14_we1       = int_weights_14_write & w_hs;
assign int_weights_14_be1       = int_weights_14_we1 ? WSTRB : 'b0;
assign int_weights_14_d1        = WDATA;
// weights_15
assign int_weights_15_address0  = weights_15_address0 >> 1;
assign int_weights_15_ce0       = weights_15_ce0;
assign weights_15_q0            = int_weights_15_q0 >> (int_weights_15_shift0 * 16);
assign int_weights_15_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_15_ce1       = ar_hs | (int_weights_15_write & WVALID);
assign int_weights_15_we1       = int_weights_15_write & w_hs;
assign int_weights_15_be1       = int_weights_15_we1 ? WSTRB : 'b0;
assign int_weights_15_d1        = WDATA;
// weights_16
assign int_weights_16_address0  = weights_16_address0 >> 1;
assign int_weights_16_ce0       = weights_16_ce0;
assign weights_16_q0            = int_weights_16_q0 >> (int_weights_16_shift0 * 16);
assign int_weights_16_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_16_ce1       = ar_hs | (int_weights_16_write & WVALID);
assign int_weights_16_we1       = int_weights_16_write & w_hs;
assign int_weights_16_be1       = int_weights_16_we1 ? WSTRB : 'b0;
assign int_weights_16_d1        = WDATA;
// weights_17
assign int_weights_17_address0  = weights_17_address0 >> 1;
assign int_weights_17_ce0       = weights_17_ce0;
assign weights_17_q0            = int_weights_17_q0 >> (int_weights_17_shift0 * 16);
assign int_weights_17_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_17_ce1       = ar_hs | (int_weights_17_write & WVALID);
assign int_weights_17_we1       = int_weights_17_write & w_hs;
assign int_weights_17_be1       = int_weights_17_we1 ? WSTRB : 'b0;
assign int_weights_17_d1        = WDATA;
// weights_18
assign int_weights_18_address0  = weights_18_address0 >> 1;
assign int_weights_18_ce0       = weights_18_ce0;
assign weights_18_q0            = int_weights_18_q0 >> (int_weights_18_shift0 * 16);
assign int_weights_18_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_18_ce1       = ar_hs | (int_weights_18_write & WVALID);
assign int_weights_18_we1       = int_weights_18_write & w_hs;
assign int_weights_18_be1       = int_weights_18_we1 ? WSTRB : 'b0;
assign int_weights_18_d1        = WDATA;
// weights_19
assign int_weights_19_address0  = weights_19_address0 >> 1;
assign int_weights_19_ce0       = weights_19_ce0;
assign weights_19_q0            = int_weights_19_q0 >> (int_weights_19_shift0 * 16);
assign int_weights_19_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_19_ce1       = ar_hs | (int_weights_19_write & WVALID);
assign int_weights_19_we1       = int_weights_19_write & w_hs;
assign int_weights_19_be1       = int_weights_19_we1 ? WSTRB : 'b0;
assign int_weights_19_d1        = WDATA;
// weights_20
assign int_weights_20_address0  = weights_20_address0 >> 1;
assign int_weights_20_ce0       = weights_20_ce0;
assign weights_20_q0            = int_weights_20_q0 >> (int_weights_20_shift0 * 16);
assign int_weights_20_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_20_ce1       = ar_hs | (int_weights_20_write & WVALID);
assign int_weights_20_we1       = int_weights_20_write & w_hs;
assign int_weights_20_be1       = int_weights_20_we1 ? WSTRB : 'b0;
assign int_weights_20_d1        = WDATA;
// weights_21
assign int_weights_21_address0  = weights_21_address0 >> 1;
assign int_weights_21_ce0       = weights_21_ce0;
assign weights_21_q0            = int_weights_21_q0 >> (int_weights_21_shift0 * 16);
assign int_weights_21_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_21_ce1       = ar_hs | (int_weights_21_write & WVALID);
assign int_weights_21_we1       = int_weights_21_write & w_hs;
assign int_weights_21_be1       = int_weights_21_we1 ? WSTRB : 'b0;
assign int_weights_21_d1        = WDATA;
// weights_22
assign int_weights_22_address0  = weights_22_address0 >> 1;
assign int_weights_22_ce0       = weights_22_ce0;
assign weights_22_q0            = int_weights_22_q0 >> (int_weights_22_shift0 * 16);
assign int_weights_22_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_22_ce1       = ar_hs | (int_weights_22_write & WVALID);
assign int_weights_22_we1       = int_weights_22_write & w_hs;
assign int_weights_22_be1       = int_weights_22_we1 ? WSTRB : 'b0;
assign int_weights_22_d1        = WDATA;
// weights_23
assign int_weights_23_address0  = weights_23_address0 >> 1;
assign int_weights_23_ce0       = weights_23_ce0;
assign weights_23_q0            = int_weights_23_q0 >> (int_weights_23_shift0 * 16);
assign int_weights_23_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_23_ce1       = ar_hs | (int_weights_23_write & WVALID);
assign int_weights_23_we1       = int_weights_23_write & w_hs;
assign int_weights_23_be1       = int_weights_23_we1 ? WSTRB : 'b0;
assign int_weights_23_d1        = WDATA;
// weights_24
assign int_weights_24_address0  = weights_24_address0 >> 1;
assign int_weights_24_ce0       = weights_24_ce0;
assign weights_24_q0            = int_weights_24_q0 >> (int_weights_24_shift0 * 16);
assign int_weights_24_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_24_ce1       = ar_hs | (int_weights_24_write & WVALID);
assign int_weights_24_we1       = int_weights_24_write & w_hs;
assign int_weights_24_be1       = int_weights_24_we1 ? WSTRB : 'b0;
assign int_weights_24_d1        = WDATA;
// weights_25
assign int_weights_25_address0  = weights_25_address0 >> 1;
assign int_weights_25_ce0       = weights_25_ce0;
assign weights_25_q0            = int_weights_25_q0 >> (int_weights_25_shift0 * 16);
assign int_weights_25_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_25_ce1       = ar_hs | (int_weights_25_write & WVALID);
assign int_weights_25_we1       = int_weights_25_write & w_hs;
assign int_weights_25_be1       = int_weights_25_we1 ? WSTRB : 'b0;
assign int_weights_25_d1        = WDATA;
// weights_26
assign int_weights_26_address0  = weights_26_address0 >> 1;
assign int_weights_26_ce0       = weights_26_ce0;
assign weights_26_q0            = int_weights_26_q0 >> (int_weights_26_shift0 * 16);
assign int_weights_26_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_26_ce1       = ar_hs | (int_weights_26_write & WVALID);
assign int_weights_26_we1       = int_weights_26_write & w_hs;
assign int_weights_26_be1       = int_weights_26_we1 ? WSTRB : 'b0;
assign int_weights_26_d1        = WDATA;
// weights_27
assign int_weights_27_address0  = weights_27_address0 >> 1;
assign int_weights_27_ce0       = weights_27_ce0;
assign weights_27_q0            = int_weights_27_q0 >> (int_weights_27_shift0 * 16);
assign int_weights_27_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_27_ce1       = ar_hs | (int_weights_27_write & WVALID);
assign int_weights_27_we1       = int_weights_27_write & w_hs;
assign int_weights_27_be1       = int_weights_27_we1 ? WSTRB : 'b0;
assign int_weights_27_d1        = WDATA;
// weights_28
assign int_weights_28_address0  = weights_28_address0 >> 1;
assign int_weights_28_ce0       = weights_28_ce0;
assign weights_28_q0            = int_weights_28_q0 >> (int_weights_28_shift0 * 16);
assign int_weights_28_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_28_ce1       = ar_hs | (int_weights_28_write & WVALID);
assign int_weights_28_we1       = int_weights_28_write & w_hs;
assign int_weights_28_be1       = int_weights_28_we1 ? WSTRB : 'b0;
assign int_weights_28_d1        = WDATA;
// weights_29
assign int_weights_29_address0  = weights_29_address0 >> 1;
assign int_weights_29_ce0       = weights_29_ce0;
assign weights_29_q0            = int_weights_29_q0 >> (int_weights_29_shift0 * 16);
assign int_weights_29_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_29_ce1       = ar_hs | (int_weights_29_write & WVALID);
assign int_weights_29_we1       = int_weights_29_write & w_hs;
assign int_weights_29_be1       = int_weights_29_we1 ? WSTRB : 'b0;
assign int_weights_29_d1        = WDATA;
// weights_30
assign int_weights_30_address0  = weights_30_address0 >> 1;
assign int_weights_30_ce0       = weights_30_ce0;
assign weights_30_q0            = int_weights_30_q0 >> (int_weights_30_shift0 * 16);
assign int_weights_30_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_30_ce1       = ar_hs | (int_weights_30_write & WVALID);
assign int_weights_30_we1       = int_weights_30_write & w_hs;
assign int_weights_30_be1       = int_weights_30_we1 ? WSTRB : 'b0;
assign int_weights_30_d1        = WDATA;
// weights_31
assign int_weights_31_address0  = weights_31_address0 >> 1;
assign int_weights_31_ce0       = weights_31_ce0;
assign weights_31_q0            = int_weights_31_q0 >> (int_weights_31_shift0 * 16);
assign int_weights_31_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_31_ce1       = ar_hs | (int_weights_31_write & WVALID);
assign int_weights_31_we1       = int_weights_31_write & w_hs;
assign int_weights_31_be1       = int_weights_31_we1 ? WSTRB : 'b0;
assign int_weights_31_d1        = WDATA;
// weights_32
assign int_weights_32_address0  = weights_32_address0 >> 1;
assign int_weights_32_ce0       = weights_32_ce0;
assign weights_32_q0            = int_weights_32_q0 >> (int_weights_32_shift0 * 16);
assign int_weights_32_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_32_ce1       = ar_hs | (int_weights_32_write & WVALID);
assign int_weights_32_we1       = int_weights_32_write & w_hs;
assign int_weights_32_be1       = int_weights_32_we1 ? WSTRB : 'b0;
assign int_weights_32_d1        = WDATA;
// weights_33
assign int_weights_33_address0  = weights_33_address0 >> 1;
assign int_weights_33_ce0       = weights_33_ce0;
assign weights_33_q0            = int_weights_33_q0 >> (int_weights_33_shift0 * 16);
assign int_weights_33_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_33_ce1       = ar_hs | (int_weights_33_write & WVALID);
assign int_weights_33_we1       = int_weights_33_write & w_hs;
assign int_weights_33_be1       = int_weights_33_we1 ? WSTRB : 'b0;
assign int_weights_33_d1        = WDATA;
// weights_34
assign int_weights_34_address0  = weights_34_address0 >> 1;
assign int_weights_34_ce0       = weights_34_ce0;
assign weights_34_q0            = int_weights_34_q0 >> (int_weights_34_shift0 * 16);
assign int_weights_34_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_34_ce1       = ar_hs | (int_weights_34_write & WVALID);
assign int_weights_34_we1       = int_weights_34_write & w_hs;
assign int_weights_34_be1       = int_weights_34_we1 ? WSTRB : 'b0;
assign int_weights_34_d1        = WDATA;
// weights_35
assign int_weights_35_address0  = weights_35_address0 >> 1;
assign int_weights_35_ce0       = weights_35_ce0;
assign weights_35_q0            = int_weights_35_q0 >> (int_weights_35_shift0 * 16);
assign int_weights_35_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_35_ce1       = ar_hs | (int_weights_35_write & WVALID);
assign int_weights_35_we1       = int_weights_35_write & w_hs;
assign int_weights_35_be1       = int_weights_35_we1 ? WSTRB : 'b0;
assign int_weights_35_d1        = WDATA;
// weights_36
assign int_weights_36_address0  = weights_36_address0 >> 1;
assign int_weights_36_ce0       = weights_36_ce0;
assign weights_36_q0            = int_weights_36_q0 >> (int_weights_36_shift0 * 16);
assign int_weights_36_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_36_ce1       = ar_hs | (int_weights_36_write & WVALID);
assign int_weights_36_we1       = int_weights_36_write & w_hs;
assign int_weights_36_be1       = int_weights_36_we1 ? WSTRB : 'b0;
assign int_weights_36_d1        = WDATA;
// weights_37
assign int_weights_37_address0  = weights_37_address0 >> 1;
assign int_weights_37_ce0       = weights_37_ce0;
assign weights_37_q0            = int_weights_37_q0 >> (int_weights_37_shift0 * 16);
assign int_weights_37_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_37_ce1       = ar_hs | (int_weights_37_write & WVALID);
assign int_weights_37_we1       = int_weights_37_write & w_hs;
assign int_weights_37_be1       = int_weights_37_we1 ? WSTRB : 'b0;
assign int_weights_37_d1        = WDATA;
// weights_38
assign int_weights_38_address0  = weights_38_address0 >> 1;
assign int_weights_38_ce0       = weights_38_ce0;
assign weights_38_q0            = int_weights_38_q0 >> (int_weights_38_shift0 * 16);
assign int_weights_38_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_38_ce1       = ar_hs | (int_weights_38_write & WVALID);
assign int_weights_38_we1       = int_weights_38_write & w_hs;
assign int_weights_38_be1       = int_weights_38_we1 ? WSTRB : 'b0;
assign int_weights_38_d1        = WDATA;
// weights_39
assign int_weights_39_address0  = weights_39_address0 >> 1;
assign int_weights_39_ce0       = weights_39_ce0;
assign weights_39_q0            = int_weights_39_q0 >> (int_weights_39_shift0 * 16);
assign int_weights_39_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_39_ce1       = ar_hs | (int_weights_39_write & WVALID);
assign int_weights_39_we1       = int_weights_39_write & w_hs;
assign int_weights_39_be1       = int_weights_39_we1 ? WSTRB : 'b0;
assign int_weights_39_d1        = WDATA;
// weights_40
assign int_weights_40_address0  = weights_40_address0 >> 1;
assign int_weights_40_ce0       = weights_40_ce0;
assign weights_40_q0            = int_weights_40_q0 >> (int_weights_40_shift0 * 16);
assign int_weights_40_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_40_ce1       = ar_hs | (int_weights_40_write & WVALID);
assign int_weights_40_we1       = int_weights_40_write & w_hs;
assign int_weights_40_be1       = int_weights_40_we1 ? WSTRB : 'b0;
assign int_weights_40_d1        = WDATA;
// weights_41
assign int_weights_41_address0  = weights_41_address0 >> 1;
assign int_weights_41_ce0       = weights_41_ce0;
assign weights_41_q0            = int_weights_41_q0 >> (int_weights_41_shift0 * 16);
assign int_weights_41_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_41_ce1       = ar_hs | (int_weights_41_write & WVALID);
assign int_weights_41_we1       = int_weights_41_write & w_hs;
assign int_weights_41_be1       = int_weights_41_we1 ? WSTRB : 'b0;
assign int_weights_41_d1        = WDATA;
// weights_42
assign int_weights_42_address0  = weights_42_address0 >> 1;
assign int_weights_42_ce0       = weights_42_ce0;
assign weights_42_q0            = int_weights_42_q0 >> (int_weights_42_shift0 * 16);
assign int_weights_42_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_42_ce1       = ar_hs | (int_weights_42_write & WVALID);
assign int_weights_42_we1       = int_weights_42_write & w_hs;
assign int_weights_42_be1       = int_weights_42_we1 ? WSTRB : 'b0;
assign int_weights_42_d1        = WDATA;
// weights_43
assign int_weights_43_address0  = weights_43_address0 >> 1;
assign int_weights_43_ce0       = weights_43_ce0;
assign weights_43_q0            = int_weights_43_q0 >> (int_weights_43_shift0 * 16);
assign int_weights_43_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_43_ce1       = ar_hs | (int_weights_43_write & WVALID);
assign int_weights_43_we1       = int_weights_43_write & w_hs;
assign int_weights_43_be1       = int_weights_43_we1 ? WSTRB : 'b0;
assign int_weights_43_d1        = WDATA;
// weights_44
assign int_weights_44_address0  = weights_44_address0 >> 1;
assign int_weights_44_ce0       = weights_44_ce0;
assign weights_44_q0            = int_weights_44_q0 >> (int_weights_44_shift0 * 16);
assign int_weights_44_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_44_ce1       = ar_hs | (int_weights_44_write & WVALID);
assign int_weights_44_we1       = int_weights_44_write & w_hs;
assign int_weights_44_be1       = int_weights_44_we1 ? WSTRB : 'b0;
assign int_weights_44_d1        = WDATA;
// weights_45
assign int_weights_45_address0  = weights_45_address0 >> 1;
assign int_weights_45_ce0       = weights_45_ce0;
assign weights_45_q0            = int_weights_45_q0 >> (int_weights_45_shift0 * 16);
assign int_weights_45_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_45_ce1       = ar_hs | (int_weights_45_write & WVALID);
assign int_weights_45_we1       = int_weights_45_write & w_hs;
assign int_weights_45_be1       = int_weights_45_we1 ? WSTRB : 'b0;
assign int_weights_45_d1        = WDATA;
// weights_46
assign int_weights_46_address0  = weights_46_address0 >> 1;
assign int_weights_46_ce0       = weights_46_ce0;
assign weights_46_q0            = int_weights_46_q0 >> (int_weights_46_shift0 * 16);
assign int_weights_46_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_46_ce1       = ar_hs | (int_weights_46_write & WVALID);
assign int_weights_46_we1       = int_weights_46_write & w_hs;
assign int_weights_46_be1       = int_weights_46_we1 ? WSTRB : 'b0;
assign int_weights_46_d1        = WDATA;
// weights_47
assign int_weights_47_address0  = weights_47_address0 >> 1;
assign int_weights_47_ce0       = weights_47_ce0;
assign weights_47_q0            = int_weights_47_q0 >> (int_weights_47_shift0 * 16);
assign int_weights_47_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_47_ce1       = ar_hs | (int_weights_47_write & WVALID);
assign int_weights_47_we1       = int_weights_47_write & w_hs;
assign int_weights_47_be1       = int_weights_47_we1 ? WSTRB : 'b0;
assign int_weights_47_d1        = WDATA;
// weights_48
assign int_weights_48_address0  = weights_48_address0 >> 1;
assign int_weights_48_ce0       = weights_48_ce0;
assign weights_48_q0            = int_weights_48_q0 >> (int_weights_48_shift0 * 16);
assign int_weights_48_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_48_ce1       = ar_hs | (int_weights_48_write & WVALID);
assign int_weights_48_we1       = int_weights_48_write & w_hs;
assign int_weights_48_be1       = int_weights_48_we1 ? WSTRB : 'b0;
assign int_weights_48_d1        = WDATA;
// weights_49
assign int_weights_49_address0  = weights_49_address0 >> 1;
assign int_weights_49_ce0       = weights_49_ce0;
assign weights_49_q0            = int_weights_49_q0 >> (int_weights_49_shift0 * 16);
assign int_weights_49_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_49_ce1       = ar_hs | (int_weights_49_write & WVALID);
assign int_weights_49_we1       = int_weights_49_write & w_hs;
assign int_weights_49_be1       = int_weights_49_we1 ? WSTRB : 'b0;
assign int_weights_49_d1        = WDATA;
// weights_50
assign int_weights_50_address0  = weights_50_address0 >> 1;
assign int_weights_50_ce0       = weights_50_ce0;
assign weights_50_q0            = int_weights_50_q0 >> (int_weights_50_shift0 * 16);
assign int_weights_50_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_50_ce1       = ar_hs | (int_weights_50_write & WVALID);
assign int_weights_50_we1       = int_weights_50_write & w_hs;
assign int_weights_50_be1       = int_weights_50_we1 ? WSTRB : 'b0;
assign int_weights_50_d1        = WDATA;
// weights_51
assign int_weights_51_address0  = weights_51_address0 >> 1;
assign int_weights_51_ce0       = weights_51_ce0;
assign weights_51_q0            = int_weights_51_q0 >> (int_weights_51_shift0 * 16);
assign int_weights_51_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_51_ce1       = ar_hs | (int_weights_51_write & WVALID);
assign int_weights_51_we1       = int_weights_51_write & w_hs;
assign int_weights_51_be1       = int_weights_51_we1 ? WSTRB : 'b0;
assign int_weights_51_d1        = WDATA;
// weights_52
assign int_weights_52_address0  = weights_52_address0 >> 1;
assign int_weights_52_ce0       = weights_52_ce0;
assign weights_52_q0            = int_weights_52_q0 >> (int_weights_52_shift0 * 16);
assign int_weights_52_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_52_ce1       = ar_hs | (int_weights_52_write & WVALID);
assign int_weights_52_we1       = int_weights_52_write & w_hs;
assign int_weights_52_be1       = int_weights_52_we1 ? WSTRB : 'b0;
assign int_weights_52_d1        = WDATA;
// weights_53
assign int_weights_53_address0  = weights_53_address0 >> 1;
assign int_weights_53_ce0       = weights_53_ce0;
assign weights_53_q0            = int_weights_53_q0 >> (int_weights_53_shift0 * 16);
assign int_weights_53_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_53_ce1       = ar_hs | (int_weights_53_write & WVALID);
assign int_weights_53_we1       = int_weights_53_write & w_hs;
assign int_weights_53_be1       = int_weights_53_we1 ? WSTRB : 'b0;
assign int_weights_53_d1        = WDATA;
// weights_54
assign int_weights_54_address0  = weights_54_address0 >> 1;
assign int_weights_54_ce0       = weights_54_ce0;
assign weights_54_q0            = int_weights_54_q0 >> (int_weights_54_shift0 * 16);
assign int_weights_54_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_54_ce1       = ar_hs | (int_weights_54_write & WVALID);
assign int_weights_54_we1       = int_weights_54_write & w_hs;
assign int_weights_54_be1       = int_weights_54_we1 ? WSTRB : 'b0;
assign int_weights_54_d1        = WDATA;
// weights_55
assign int_weights_55_address0  = weights_55_address0 >> 1;
assign int_weights_55_ce0       = weights_55_ce0;
assign weights_55_q0            = int_weights_55_q0 >> (int_weights_55_shift0 * 16);
assign int_weights_55_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_55_ce1       = ar_hs | (int_weights_55_write & WVALID);
assign int_weights_55_we1       = int_weights_55_write & w_hs;
assign int_weights_55_be1       = int_weights_55_we1 ? WSTRB : 'b0;
assign int_weights_55_d1        = WDATA;
// weights_56
assign int_weights_56_address0  = weights_56_address0 >> 1;
assign int_weights_56_ce0       = weights_56_ce0;
assign weights_56_q0            = int_weights_56_q0 >> (int_weights_56_shift0 * 16);
assign int_weights_56_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_56_ce1       = ar_hs | (int_weights_56_write & WVALID);
assign int_weights_56_we1       = int_weights_56_write & w_hs;
assign int_weights_56_be1       = int_weights_56_we1 ? WSTRB : 'b0;
assign int_weights_56_d1        = WDATA;
// weights_57
assign int_weights_57_address0  = weights_57_address0 >> 1;
assign int_weights_57_ce0       = weights_57_ce0;
assign weights_57_q0            = int_weights_57_q0 >> (int_weights_57_shift0 * 16);
assign int_weights_57_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_57_ce1       = ar_hs | (int_weights_57_write & WVALID);
assign int_weights_57_we1       = int_weights_57_write & w_hs;
assign int_weights_57_be1       = int_weights_57_we1 ? WSTRB : 'b0;
assign int_weights_57_d1        = WDATA;
// weights_58
assign int_weights_58_address0  = weights_58_address0 >> 1;
assign int_weights_58_ce0       = weights_58_ce0;
assign weights_58_q0            = int_weights_58_q0 >> (int_weights_58_shift0 * 16);
assign int_weights_58_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_58_ce1       = ar_hs | (int_weights_58_write & WVALID);
assign int_weights_58_we1       = int_weights_58_write & w_hs;
assign int_weights_58_be1       = int_weights_58_we1 ? WSTRB : 'b0;
assign int_weights_58_d1        = WDATA;
// weights_59
assign int_weights_59_address0  = weights_59_address0 >> 1;
assign int_weights_59_ce0       = weights_59_ce0;
assign weights_59_q0            = int_weights_59_q0 >> (int_weights_59_shift0 * 16);
assign int_weights_59_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_59_ce1       = ar_hs | (int_weights_59_write & WVALID);
assign int_weights_59_we1       = int_weights_59_write & w_hs;
assign int_weights_59_be1       = int_weights_59_we1 ? WSTRB : 'b0;
assign int_weights_59_d1        = WDATA;
// weights_60
assign int_weights_60_address0  = weights_60_address0 >> 1;
assign int_weights_60_ce0       = weights_60_ce0;
assign weights_60_q0            = int_weights_60_q0 >> (int_weights_60_shift0 * 16);
assign int_weights_60_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_60_ce1       = ar_hs | (int_weights_60_write & WVALID);
assign int_weights_60_we1       = int_weights_60_write & w_hs;
assign int_weights_60_be1       = int_weights_60_we1 ? WSTRB : 'b0;
assign int_weights_60_d1        = WDATA;
// weights_61
assign int_weights_61_address0  = weights_61_address0 >> 1;
assign int_weights_61_ce0       = weights_61_ce0;
assign weights_61_q0            = int_weights_61_q0 >> (int_weights_61_shift0 * 16);
assign int_weights_61_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_61_ce1       = ar_hs | (int_weights_61_write & WVALID);
assign int_weights_61_we1       = int_weights_61_write & w_hs;
assign int_weights_61_be1       = int_weights_61_we1 ? WSTRB : 'b0;
assign int_weights_61_d1        = WDATA;
// weights_62
assign int_weights_62_address0  = weights_62_address0 >> 1;
assign int_weights_62_ce0       = weights_62_ce0;
assign weights_62_q0            = int_weights_62_q0 >> (int_weights_62_shift0 * 16);
assign int_weights_62_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_62_ce1       = ar_hs | (int_weights_62_write & WVALID);
assign int_weights_62_we1       = int_weights_62_write & w_hs;
assign int_weights_62_be1       = int_weights_62_we1 ? WSTRB : 'b0;
assign int_weights_62_d1        = WDATA;
// weights_63
assign int_weights_63_address0  = weights_63_address0 >> 1;
assign int_weights_63_ce0       = weights_63_ce0;
assign weights_63_q0            = int_weights_63_q0 >> (int_weights_63_shift0 * 16);
assign int_weights_63_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_63_ce1       = ar_hs | (int_weights_63_write & WVALID);
assign int_weights_63_we1       = int_weights_63_write & w_hs;
assign int_weights_63_be1       = int_weights_63_we1 ? WSTRB : 'b0;
assign int_weights_63_d1        = WDATA;
// weights_64
assign int_weights_64_address0  = weights_64_address0 >> 1;
assign int_weights_64_ce0       = weights_64_ce0;
assign weights_64_q0            = int_weights_64_q0 >> (int_weights_64_shift0 * 16);
assign int_weights_64_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_64_ce1       = ar_hs | (int_weights_64_write & WVALID);
assign int_weights_64_we1       = int_weights_64_write & w_hs;
assign int_weights_64_be1       = int_weights_64_we1 ? WSTRB : 'b0;
assign int_weights_64_d1        = WDATA;
// weights_65
assign int_weights_65_address0  = weights_65_address0 >> 1;
assign int_weights_65_ce0       = weights_65_ce0;
assign weights_65_q0            = int_weights_65_q0 >> (int_weights_65_shift0 * 16);
assign int_weights_65_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_65_ce1       = ar_hs | (int_weights_65_write & WVALID);
assign int_weights_65_we1       = int_weights_65_write & w_hs;
assign int_weights_65_be1       = int_weights_65_we1 ? WSTRB : 'b0;
assign int_weights_65_d1        = WDATA;
// weights_66
assign int_weights_66_address0  = weights_66_address0 >> 1;
assign int_weights_66_ce0       = weights_66_ce0;
assign weights_66_q0            = int_weights_66_q0 >> (int_weights_66_shift0 * 16);
assign int_weights_66_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_66_ce1       = ar_hs | (int_weights_66_write & WVALID);
assign int_weights_66_we1       = int_weights_66_write & w_hs;
assign int_weights_66_be1       = int_weights_66_we1 ? WSTRB : 'b0;
assign int_weights_66_d1        = WDATA;
// weights_67
assign int_weights_67_address0  = weights_67_address0 >> 1;
assign int_weights_67_ce0       = weights_67_ce0;
assign weights_67_q0            = int_weights_67_q0 >> (int_weights_67_shift0 * 16);
assign int_weights_67_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_67_ce1       = ar_hs | (int_weights_67_write & WVALID);
assign int_weights_67_we1       = int_weights_67_write & w_hs;
assign int_weights_67_be1       = int_weights_67_we1 ? WSTRB : 'b0;
assign int_weights_67_d1        = WDATA;
// weights_68
assign int_weights_68_address0  = weights_68_address0 >> 1;
assign int_weights_68_ce0       = weights_68_ce0;
assign weights_68_q0            = int_weights_68_q0 >> (int_weights_68_shift0 * 16);
assign int_weights_68_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_68_ce1       = ar_hs | (int_weights_68_write & WVALID);
assign int_weights_68_we1       = int_weights_68_write & w_hs;
assign int_weights_68_be1       = int_weights_68_we1 ? WSTRB : 'b0;
assign int_weights_68_d1        = WDATA;
// weights_69
assign int_weights_69_address0  = weights_69_address0 >> 1;
assign int_weights_69_ce0       = weights_69_ce0;
assign weights_69_q0            = int_weights_69_q0 >> (int_weights_69_shift0 * 16);
assign int_weights_69_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_69_ce1       = ar_hs | (int_weights_69_write & WVALID);
assign int_weights_69_we1       = int_weights_69_write & w_hs;
assign int_weights_69_be1       = int_weights_69_we1 ? WSTRB : 'b0;
assign int_weights_69_d1        = WDATA;
// weights_70
assign int_weights_70_address0  = weights_70_address0 >> 1;
assign int_weights_70_ce0       = weights_70_ce0;
assign weights_70_q0            = int_weights_70_q0 >> (int_weights_70_shift0 * 16);
assign int_weights_70_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_70_ce1       = ar_hs | (int_weights_70_write & WVALID);
assign int_weights_70_we1       = int_weights_70_write & w_hs;
assign int_weights_70_be1       = int_weights_70_we1 ? WSTRB : 'b0;
assign int_weights_70_d1        = WDATA;
// weights_71
assign int_weights_71_address0  = weights_71_address0 >> 1;
assign int_weights_71_ce0       = weights_71_ce0;
assign weights_71_q0            = int_weights_71_q0 >> (int_weights_71_shift0 * 16);
assign int_weights_71_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_71_ce1       = ar_hs | (int_weights_71_write & WVALID);
assign int_weights_71_we1       = int_weights_71_write & w_hs;
assign int_weights_71_be1       = int_weights_71_we1 ? WSTRB : 'b0;
assign int_weights_71_d1        = WDATA;
// weights_72
assign int_weights_72_address0  = weights_72_address0 >> 1;
assign int_weights_72_ce0       = weights_72_ce0;
assign weights_72_q0            = int_weights_72_q0 >> (int_weights_72_shift0 * 16);
assign int_weights_72_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_72_ce1       = ar_hs | (int_weights_72_write & WVALID);
assign int_weights_72_we1       = int_weights_72_write & w_hs;
assign int_weights_72_be1       = int_weights_72_we1 ? WSTRB : 'b0;
assign int_weights_72_d1        = WDATA;
// weights_73
assign int_weights_73_address0  = weights_73_address0 >> 1;
assign int_weights_73_ce0       = weights_73_ce0;
assign weights_73_q0            = int_weights_73_q0 >> (int_weights_73_shift0 * 16);
assign int_weights_73_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_73_ce1       = ar_hs | (int_weights_73_write & WVALID);
assign int_weights_73_we1       = int_weights_73_write & w_hs;
assign int_weights_73_be1       = int_weights_73_we1 ? WSTRB : 'b0;
assign int_weights_73_d1        = WDATA;
// weights_74
assign int_weights_74_address0  = weights_74_address0 >> 1;
assign int_weights_74_ce0       = weights_74_ce0;
assign weights_74_q0            = int_weights_74_q0 >> (int_weights_74_shift0 * 16);
assign int_weights_74_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_74_ce1       = ar_hs | (int_weights_74_write & WVALID);
assign int_weights_74_we1       = int_weights_74_write & w_hs;
assign int_weights_74_be1       = int_weights_74_we1 ? WSTRB : 'b0;
assign int_weights_74_d1        = WDATA;
// weights_75
assign int_weights_75_address0  = weights_75_address0 >> 1;
assign int_weights_75_ce0       = weights_75_ce0;
assign weights_75_q0            = int_weights_75_q0 >> (int_weights_75_shift0 * 16);
assign int_weights_75_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_75_ce1       = ar_hs | (int_weights_75_write & WVALID);
assign int_weights_75_we1       = int_weights_75_write & w_hs;
assign int_weights_75_be1       = int_weights_75_we1 ? WSTRB : 'b0;
assign int_weights_75_d1        = WDATA;
// weights_76
assign int_weights_76_address0  = weights_76_address0 >> 1;
assign int_weights_76_ce0       = weights_76_ce0;
assign weights_76_q0            = int_weights_76_q0 >> (int_weights_76_shift0 * 16);
assign int_weights_76_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_76_ce1       = ar_hs | (int_weights_76_write & WVALID);
assign int_weights_76_we1       = int_weights_76_write & w_hs;
assign int_weights_76_be1       = int_weights_76_we1 ? WSTRB : 'b0;
assign int_weights_76_d1        = WDATA;
// weights_77
assign int_weights_77_address0  = weights_77_address0 >> 1;
assign int_weights_77_ce0       = weights_77_ce0;
assign weights_77_q0            = int_weights_77_q0 >> (int_weights_77_shift0 * 16);
assign int_weights_77_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_77_ce1       = ar_hs | (int_weights_77_write & WVALID);
assign int_weights_77_we1       = int_weights_77_write & w_hs;
assign int_weights_77_be1       = int_weights_77_we1 ? WSTRB : 'b0;
assign int_weights_77_d1        = WDATA;
// weights_78
assign int_weights_78_address0  = weights_78_address0 >> 1;
assign int_weights_78_ce0       = weights_78_ce0;
assign weights_78_q0            = int_weights_78_q0 >> (int_weights_78_shift0 * 16);
assign int_weights_78_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_78_ce1       = ar_hs | (int_weights_78_write & WVALID);
assign int_weights_78_we1       = int_weights_78_write & w_hs;
assign int_weights_78_be1       = int_weights_78_we1 ? WSTRB : 'b0;
assign int_weights_78_d1        = WDATA;
// weights_79
assign int_weights_79_address0  = weights_79_address0 >> 1;
assign int_weights_79_ce0       = weights_79_ce0;
assign weights_79_q0            = int_weights_79_q0 >> (int_weights_79_shift0 * 16);
assign int_weights_79_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_79_ce1       = ar_hs | (int_weights_79_write & WVALID);
assign int_weights_79_we1       = int_weights_79_write & w_hs;
assign int_weights_79_be1       = int_weights_79_we1 ? WSTRB : 'b0;
assign int_weights_79_d1        = WDATA;
// weights_80
assign int_weights_80_address0  = weights_80_address0 >> 1;
assign int_weights_80_ce0       = weights_80_ce0;
assign weights_80_q0            = int_weights_80_q0 >> (int_weights_80_shift0 * 16);
assign int_weights_80_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_80_ce1       = ar_hs | (int_weights_80_write & WVALID);
assign int_weights_80_we1       = int_weights_80_write & w_hs;
assign int_weights_80_be1       = int_weights_80_we1 ? WSTRB : 'b0;
assign int_weights_80_d1        = WDATA;
// weights_81
assign int_weights_81_address0  = weights_81_address0 >> 1;
assign int_weights_81_ce0       = weights_81_ce0;
assign weights_81_q0            = int_weights_81_q0 >> (int_weights_81_shift0 * 16);
assign int_weights_81_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_81_ce1       = ar_hs | (int_weights_81_write & WVALID);
assign int_weights_81_we1       = int_weights_81_write & w_hs;
assign int_weights_81_be1       = int_weights_81_we1 ? WSTRB : 'b0;
assign int_weights_81_d1        = WDATA;
// weights_82
assign int_weights_82_address0  = weights_82_address0 >> 1;
assign int_weights_82_ce0       = weights_82_ce0;
assign weights_82_q0            = int_weights_82_q0 >> (int_weights_82_shift0 * 16);
assign int_weights_82_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_82_ce1       = ar_hs | (int_weights_82_write & WVALID);
assign int_weights_82_we1       = int_weights_82_write & w_hs;
assign int_weights_82_be1       = int_weights_82_we1 ? WSTRB : 'b0;
assign int_weights_82_d1        = WDATA;
// weights_83
assign int_weights_83_address0  = weights_83_address0 >> 1;
assign int_weights_83_ce0       = weights_83_ce0;
assign weights_83_q0            = int_weights_83_q0 >> (int_weights_83_shift0 * 16);
assign int_weights_83_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_83_ce1       = ar_hs | (int_weights_83_write & WVALID);
assign int_weights_83_we1       = int_weights_83_write & w_hs;
assign int_weights_83_be1       = int_weights_83_we1 ? WSTRB : 'b0;
assign int_weights_83_d1        = WDATA;
// weights_84
assign int_weights_84_address0  = weights_84_address0 >> 1;
assign int_weights_84_ce0       = weights_84_ce0;
assign weights_84_q0            = int_weights_84_q0 >> (int_weights_84_shift0 * 16);
assign int_weights_84_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_84_ce1       = ar_hs | (int_weights_84_write & WVALID);
assign int_weights_84_we1       = int_weights_84_write & w_hs;
assign int_weights_84_be1       = int_weights_84_we1 ? WSTRB : 'b0;
assign int_weights_84_d1        = WDATA;
// weights_85
assign int_weights_85_address0  = weights_85_address0 >> 1;
assign int_weights_85_ce0       = weights_85_ce0;
assign weights_85_q0            = int_weights_85_q0 >> (int_weights_85_shift0 * 16);
assign int_weights_85_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_85_ce1       = ar_hs | (int_weights_85_write & WVALID);
assign int_weights_85_we1       = int_weights_85_write & w_hs;
assign int_weights_85_be1       = int_weights_85_we1 ? WSTRB : 'b0;
assign int_weights_85_d1        = WDATA;
// weights_86
assign int_weights_86_address0  = weights_86_address0 >> 1;
assign int_weights_86_ce0       = weights_86_ce0;
assign weights_86_q0            = int_weights_86_q0 >> (int_weights_86_shift0 * 16);
assign int_weights_86_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_86_ce1       = ar_hs | (int_weights_86_write & WVALID);
assign int_weights_86_we1       = int_weights_86_write & w_hs;
assign int_weights_86_be1       = int_weights_86_we1 ? WSTRB : 'b0;
assign int_weights_86_d1        = WDATA;
// weights_87
assign int_weights_87_address0  = weights_87_address0 >> 1;
assign int_weights_87_ce0       = weights_87_ce0;
assign weights_87_q0            = int_weights_87_q0 >> (int_weights_87_shift0 * 16);
assign int_weights_87_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_87_ce1       = ar_hs | (int_weights_87_write & WVALID);
assign int_weights_87_we1       = int_weights_87_write & w_hs;
assign int_weights_87_be1       = int_weights_87_we1 ? WSTRB : 'b0;
assign int_weights_87_d1        = WDATA;
// weights_88
assign int_weights_88_address0  = weights_88_address0 >> 1;
assign int_weights_88_ce0       = weights_88_ce0;
assign weights_88_q0            = int_weights_88_q0 >> (int_weights_88_shift0 * 16);
assign int_weights_88_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_88_ce1       = ar_hs | (int_weights_88_write & WVALID);
assign int_weights_88_we1       = int_weights_88_write & w_hs;
assign int_weights_88_be1       = int_weights_88_we1 ? WSTRB : 'b0;
assign int_weights_88_d1        = WDATA;
// weights_89
assign int_weights_89_address0  = weights_89_address0 >> 1;
assign int_weights_89_ce0       = weights_89_ce0;
assign weights_89_q0            = int_weights_89_q0 >> (int_weights_89_shift0 * 16);
assign int_weights_89_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_89_ce1       = ar_hs | (int_weights_89_write & WVALID);
assign int_weights_89_we1       = int_weights_89_write & w_hs;
assign int_weights_89_be1       = int_weights_89_we1 ? WSTRB : 'b0;
assign int_weights_89_d1        = WDATA;
// weights_90
assign int_weights_90_address0  = weights_90_address0 >> 1;
assign int_weights_90_ce0       = weights_90_ce0;
assign weights_90_q0            = int_weights_90_q0 >> (int_weights_90_shift0 * 16);
assign int_weights_90_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_90_ce1       = ar_hs | (int_weights_90_write & WVALID);
assign int_weights_90_we1       = int_weights_90_write & w_hs;
assign int_weights_90_be1       = int_weights_90_we1 ? WSTRB : 'b0;
assign int_weights_90_d1        = WDATA;
// weights_91
assign int_weights_91_address0  = weights_91_address0 >> 1;
assign int_weights_91_ce0       = weights_91_ce0;
assign weights_91_q0            = int_weights_91_q0 >> (int_weights_91_shift0 * 16);
assign int_weights_91_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_91_ce1       = ar_hs | (int_weights_91_write & WVALID);
assign int_weights_91_we1       = int_weights_91_write & w_hs;
assign int_weights_91_be1       = int_weights_91_we1 ? WSTRB : 'b0;
assign int_weights_91_d1        = WDATA;
// weights_92
assign int_weights_92_address0  = weights_92_address0 >> 1;
assign int_weights_92_ce0       = weights_92_ce0;
assign weights_92_q0            = int_weights_92_q0 >> (int_weights_92_shift0 * 16);
assign int_weights_92_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_92_ce1       = ar_hs | (int_weights_92_write & WVALID);
assign int_weights_92_we1       = int_weights_92_write & w_hs;
assign int_weights_92_be1       = int_weights_92_we1 ? WSTRB : 'b0;
assign int_weights_92_d1        = WDATA;
// weights_93
assign int_weights_93_address0  = weights_93_address0 >> 1;
assign int_weights_93_ce0       = weights_93_ce0;
assign weights_93_q0            = int_weights_93_q0 >> (int_weights_93_shift0 * 16);
assign int_weights_93_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_93_ce1       = ar_hs | (int_weights_93_write & WVALID);
assign int_weights_93_we1       = int_weights_93_write & w_hs;
assign int_weights_93_be1       = int_weights_93_we1 ? WSTRB : 'b0;
assign int_weights_93_d1        = WDATA;
// weights_94
assign int_weights_94_address0  = weights_94_address0 >> 1;
assign int_weights_94_ce0       = weights_94_ce0;
assign weights_94_q0            = int_weights_94_q0 >> (int_weights_94_shift0 * 16);
assign int_weights_94_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_94_ce1       = ar_hs | (int_weights_94_write & WVALID);
assign int_weights_94_we1       = int_weights_94_write & w_hs;
assign int_weights_94_be1       = int_weights_94_we1 ? WSTRB : 'b0;
assign int_weights_94_d1        = WDATA;
// weights_95
assign int_weights_95_address0  = weights_95_address0 >> 1;
assign int_weights_95_ce0       = weights_95_ce0;
assign weights_95_q0            = int_weights_95_q0 >> (int_weights_95_shift0 * 16);
assign int_weights_95_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_95_ce1       = ar_hs | (int_weights_95_write & WVALID);
assign int_weights_95_we1       = int_weights_95_write & w_hs;
assign int_weights_95_be1       = int_weights_95_we1 ? WSTRB : 'b0;
assign int_weights_95_d1        = WDATA;
// weights_96
assign int_weights_96_address0  = weights_96_address0 >> 1;
assign int_weights_96_ce0       = weights_96_ce0;
assign weights_96_q0            = int_weights_96_q0 >> (int_weights_96_shift0 * 16);
assign int_weights_96_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_96_ce1       = ar_hs | (int_weights_96_write & WVALID);
assign int_weights_96_we1       = int_weights_96_write & w_hs;
assign int_weights_96_be1       = int_weights_96_we1 ? WSTRB : 'b0;
assign int_weights_96_d1        = WDATA;
// weights_97
assign int_weights_97_address0  = weights_97_address0 >> 1;
assign int_weights_97_ce0       = weights_97_ce0;
assign weights_97_q0            = int_weights_97_q0 >> (int_weights_97_shift0 * 16);
assign int_weights_97_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_97_ce1       = ar_hs | (int_weights_97_write & WVALID);
assign int_weights_97_we1       = int_weights_97_write & w_hs;
assign int_weights_97_be1       = int_weights_97_we1 ? WSTRB : 'b0;
assign int_weights_97_d1        = WDATA;
// weights_98
assign int_weights_98_address0  = weights_98_address0 >> 1;
assign int_weights_98_ce0       = weights_98_ce0;
assign weights_98_q0            = int_weights_98_q0 >> (int_weights_98_shift0 * 16);
assign int_weights_98_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_98_ce1       = ar_hs | (int_weights_98_write & WVALID);
assign int_weights_98_we1       = int_weights_98_write & w_hs;
assign int_weights_98_be1       = int_weights_98_we1 ? WSTRB : 'b0;
assign int_weights_98_d1        = WDATA;
// weights_99
assign int_weights_99_address0  = weights_99_address0 >> 1;
assign int_weights_99_ce0       = weights_99_ce0;
assign weights_99_q0            = int_weights_99_q0 >> (int_weights_99_shift0 * 16);
assign int_weights_99_address1  = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_99_ce1       = ar_hs | (int_weights_99_write & WVALID);
assign int_weights_99_we1       = int_weights_99_write & w_hs;
assign int_weights_99_be1       = int_weights_99_we1 ? WSTRB : 'b0;
assign int_weights_99_d1        = WDATA;
// weights_100
assign int_weights_100_address0 = weights_100_address0 >> 1;
assign int_weights_100_ce0      = weights_100_ce0;
assign weights_100_q0           = int_weights_100_q0 >> (int_weights_100_shift0 * 16);
assign int_weights_100_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_100_ce1      = ar_hs | (int_weights_100_write & WVALID);
assign int_weights_100_we1      = int_weights_100_write & w_hs;
assign int_weights_100_be1      = int_weights_100_we1 ? WSTRB : 'b0;
assign int_weights_100_d1       = WDATA;
// weights_101
assign int_weights_101_address0 = weights_101_address0 >> 1;
assign int_weights_101_ce0      = weights_101_ce0;
assign weights_101_q0           = int_weights_101_q0 >> (int_weights_101_shift0 * 16);
assign int_weights_101_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_101_ce1      = ar_hs | (int_weights_101_write & WVALID);
assign int_weights_101_we1      = int_weights_101_write & w_hs;
assign int_weights_101_be1      = int_weights_101_we1 ? WSTRB : 'b0;
assign int_weights_101_d1       = WDATA;
// weights_102
assign int_weights_102_address0 = weights_102_address0 >> 1;
assign int_weights_102_ce0      = weights_102_ce0;
assign weights_102_q0           = int_weights_102_q0 >> (int_weights_102_shift0 * 16);
assign int_weights_102_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_102_ce1      = ar_hs | (int_weights_102_write & WVALID);
assign int_weights_102_we1      = int_weights_102_write & w_hs;
assign int_weights_102_be1      = int_weights_102_we1 ? WSTRB : 'b0;
assign int_weights_102_d1       = WDATA;
// weights_103
assign int_weights_103_address0 = weights_103_address0 >> 1;
assign int_weights_103_ce0      = weights_103_ce0;
assign weights_103_q0           = int_weights_103_q0 >> (int_weights_103_shift0 * 16);
assign int_weights_103_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_103_ce1      = ar_hs | (int_weights_103_write & WVALID);
assign int_weights_103_we1      = int_weights_103_write & w_hs;
assign int_weights_103_be1      = int_weights_103_we1 ? WSTRB : 'b0;
assign int_weights_103_d1       = WDATA;
// weights_104
assign int_weights_104_address0 = weights_104_address0 >> 1;
assign int_weights_104_ce0      = weights_104_ce0;
assign weights_104_q0           = int_weights_104_q0 >> (int_weights_104_shift0 * 16);
assign int_weights_104_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_104_ce1      = ar_hs | (int_weights_104_write & WVALID);
assign int_weights_104_we1      = int_weights_104_write & w_hs;
assign int_weights_104_be1      = int_weights_104_we1 ? WSTRB : 'b0;
assign int_weights_104_d1       = WDATA;
// weights_105
assign int_weights_105_address0 = weights_105_address0 >> 1;
assign int_weights_105_ce0      = weights_105_ce0;
assign weights_105_q0           = int_weights_105_q0 >> (int_weights_105_shift0 * 16);
assign int_weights_105_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_105_ce1      = ar_hs | (int_weights_105_write & WVALID);
assign int_weights_105_we1      = int_weights_105_write & w_hs;
assign int_weights_105_be1      = int_weights_105_we1 ? WSTRB : 'b0;
assign int_weights_105_d1       = WDATA;
// weights_106
assign int_weights_106_address0 = weights_106_address0 >> 1;
assign int_weights_106_ce0      = weights_106_ce0;
assign weights_106_q0           = int_weights_106_q0 >> (int_weights_106_shift0 * 16);
assign int_weights_106_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_106_ce1      = ar_hs | (int_weights_106_write & WVALID);
assign int_weights_106_we1      = int_weights_106_write & w_hs;
assign int_weights_106_be1      = int_weights_106_we1 ? WSTRB : 'b0;
assign int_weights_106_d1       = WDATA;
// weights_107
assign int_weights_107_address0 = weights_107_address0 >> 1;
assign int_weights_107_ce0      = weights_107_ce0;
assign weights_107_q0           = int_weights_107_q0 >> (int_weights_107_shift0 * 16);
assign int_weights_107_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_107_ce1      = ar_hs | (int_weights_107_write & WVALID);
assign int_weights_107_we1      = int_weights_107_write & w_hs;
assign int_weights_107_be1      = int_weights_107_we1 ? WSTRB : 'b0;
assign int_weights_107_d1       = WDATA;
// weights_108
assign int_weights_108_address0 = weights_108_address0 >> 1;
assign int_weights_108_ce0      = weights_108_ce0;
assign weights_108_q0           = int_weights_108_q0 >> (int_weights_108_shift0 * 16);
assign int_weights_108_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_108_ce1      = ar_hs | (int_weights_108_write & WVALID);
assign int_weights_108_we1      = int_weights_108_write & w_hs;
assign int_weights_108_be1      = int_weights_108_we1 ? WSTRB : 'b0;
assign int_weights_108_d1       = WDATA;
// weights_109
assign int_weights_109_address0 = weights_109_address0 >> 1;
assign int_weights_109_ce0      = weights_109_ce0;
assign weights_109_q0           = int_weights_109_q0 >> (int_weights_109_shift0 * 16);
assign int_weights_109_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_109_ce1      = ar_hs | (int_weights_109_write & WVALID);
assign int_weights_109_we1      = int_weights_109_write & w_hs;
assign int_weights_109_be1      = int_weights_109_we1 ? WSTRB : 'b0;
assign int_weights_109_d1       = WDATA;
// weights_110
assign int_weights_110_address0 = weights_110_address0 >> 1;
assign int_weights_110_ce0      = weights_110_ce0;
assign weights_110_q0           = int_weights_110_q0 >> (int_weights_110_shift0 * 16);
assign int_weights_110_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_110_ce1      = ar_hs | (int_weights_110_write & WVALID);
assign int_weights_110_we1      = int_weights_110_write & w_hs;
assign int_weights_110_be1      = int_weights_110_we1 ? WSTRB : 'b0;
assign int_weights_110_d1       = WDATA;
// weights_111
assign int_weights_111_address0 = weights_111_address0 >> 1;
assign int_weights_111_ce0      = weights_111_ce0;
assign weights_111_q0           = int_weights_111_q0 >> (int_weights_111_shift0 * 16);
assign int_weights_111_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_111_ce1      = ar_hs | (int_weights_111_write & WVALID);
assign int_weights_111_we1      = int_weights_111_write & w_hs;
assign int_weights_111_be1      = int_weights_111_we1 ? WSTRB : 'b0;
assign int_weights_111_d1       = WDATA;
// weights_112
assign int_weights_112_address0 = weights_112_address0 >> 1;
assign int_weights_112_ce0      = weights_112_ce0;
assign weights_112_q0           = int_weights_112_q0 >> (int_weights_112_shift0 * 16);
assign int_weights_112_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_112_ce1      = ar_hs | (int_weights_112_write & WVALID);
assign int_weights_112_we1      = int_weights_112_write & w_hs;
assign int_weights_112_be1      = int_weights_112_we1 ? WSTRB : 'b0;
assign int_weights_112_d1       = WDATA;
// weights_113
assign int_weights_113_address0 = weights_113_address0 >> 1;
assign int_weights_113_ce0      = weights_113_ce0;
assign weights_113_q0           = int_weights_113_q0 >> (int_weights_113_shift0 * 16);
assign int_weights_113_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_113_ce1      = ar_hs | (int_weights_113_write & WVALID);
assign int_weights_113_we1      = int_weights_113_write & w_hs;
assign int_weights_113_be1      = int_weights_113_we1 ? WSTRB : 'b0;
assign int_weights_113_d1       = WDATA;
// weights_114
assign int_weights_114_address0 = weights_114_address0 >> 1;
assign int_weights_114_ce0      = weights_114_ce0;
assign weights_114_q0           = int_weights_114_q0 >> (int_weights_114_shift0 * 16);
assign int_weights_114_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_114_ce1      = ar_hs | (int_weights_114_write & WVALID);
assign int_weights_114_we1      = int_weights_114_write & w_hs;
assign int_weights_114_be1      = int_weights_114_we1 ? WSTRB : 'b0;
assign int_weights_114_d1       = WDATA;
// weights_115
assign int_weights_115_address0 = weights_115_address0 >> 1;
assign int_weights_115_ce0      = weights_115_ce0;
assign weights_115_q0           = int_weights_115_q0 >> (int_weights_115_shift0 * 16);
assign int_weights_115_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_115_ce1      = ar_hs | (int_weights_115_write & WVALID);
assign int_weights_115_we1      = int_weights_115_write & w_hs;
assign int_weights_115_be1      = int_weights_115_we1 ? WSTRB : 'b0;
assign int_weights_115_d1       = WDATA;
// weights_116
assign int_weights_116_address0 = weights_116_address0 >> 1;
assign int_weights_116_ce0      = weights_116_ce0;
assign weights_116_q0           = int_weights_116_q0 >> (int_weights_116_shift0 * 16);
assign int_weights_116_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_116_ce1      = ar_hs | (int_weights_116_write & WVALID);
assign int_weights_116_we1      = int_weights_116_write & w_hs;
assign int_weights_116_be1      = int_weights_116_we1 ? WSTRB : 'b0;
assign int_weights_116_d1       = WDATA;
// weights_117
assign int_weights_117_address0 = weights_117_address0 >> 1;
assign int_weights_117_ce0      = weights_117_ce0;
assign weights_117_q0           = int_weights_117_q0 >> (int_weights_117_shift0 * 16);
assign int_weights_117_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_117_ce1      = ar_hs | (int_weights_117_write & WVALID);
assign int_weights_117_we1      = int_weights_117_write & w_hs;
assign int_weights_117_be1      = int_weights_117_we1 ? WSTRB : 'b0;
assign int_weights_117_d1       = WDATA;
// weights_118
assign int_weights_118_address0 = weights_118_address0 >> 1;
assign int_weights_118_ce0      = weights_118_ce0;
assign weights_118_q0           = int_weights_118_q0 >> (int_weights_118_shift0 * 16);
assign int_weights_118_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_118_ce1      = ar_hs | (int_weights_118_write & WVALID);
assign int_weights_118_we1      = int_weights_118_write & w_hs;
assign int_weights_118_be1      = int_weights_118_we1 ? WSTRB : 'b0;
assign int_weights_118_d1       = WDATA;
// weights_119
assign int_weights_119_address0 = weights_119_address0 >> 1;
assign int_weights_119_ce0      = weights_119_ce0;
assign weights_119_q0           = int_weights_119_q0 >> (int_weights_119_shift0 * 16);
assign int_weights_119_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_119_ce1      = ar_hs | (int_weights_119_write & WVALID);
assign int_weights_119_we1      = int_weights_119_write & w_hs;
assign int_weights_119_be1      = int_weights_119_we1 ? WSTRB : 'b0;
assign int_weights_119_d1       = WDATA;
// weights_120
assign int_weights_120_address0 = weights_120_address0 >> 1;
assign int_weights_120_ce0      = weights_120_ce0;
assign weights_120_q0           = int_weights_120_q0 >> (int_weights_120_shift0 * 16);
assign int_weights_120_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_120_ce1      = ar_hs | (int_weights_120_write & WVALID);
assign int_weights_120_we1      = int_weights_120_write & w_hs;
assign int_weights_120_be1      = int_weights_120_we1 ? WSTRB : 'b0;
assign int_weights_120_d1       = WDATA;
// weights_121
assign int_weights_121_address0 = weights_121_address0 >> 1;
assign int_weights_121_ce0      = weights_121_ce0;
assign weights_121_q0           = int_weights_121_q0 >> (int_weights_121_shift0 * 16);
assign int_weights_121_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_121_ce1      = ar_hs | (int_weights_121_write & WVALID);
assign int_weights_121_we1      = int_weights_121_write & w_hs;
assign int_weights_121_be1      = int_weights_121_we1 ? WSTRB : 'b0;
assign int_weights_121_d1       = WDATA;
// weights_122
assign int_weights_122_address0 = weights_122_address0 >> 1;
assign int_weights_122_ce0      = weights_122_ce0;
assign weights_122_q0           = int_weights_122_q0 >> (int_weights_122_shift0 * 16);
assign int_weights_122_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_122_ce1      = ar_hs | (int_weights_122_write & WVALID);
assign int_weights_122_we1      = int_weights_122_write & w_hs;
assign int_weights_122_be1      = int_weights_122_we1 ? WSTRB : 'b0;
assign int_weights_122_d1       = WDATA;
// weights_123
assign int_weights_123_address0 = weights_123_address0 >> 1;
assign int_weights_123_ce0      = weights_123_ce0;
assign weights_123_q0           = int_weights_123_q0 >> (int_weights_123_shift0 * 16);
assign int_weights_123_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_123_ce1      = ar_hs | (int_weights_123_write & WVALID);
assign int_weights_123_we1      = int_weights_123_write & w_hs;
assign int_weights_123_be1      = int_weights_123_we1 ? WSTRB : 'b0;
assign int_weights_123_d1       = WDATA;
// weights_124
assign int_weights_124_address0 = weights_124_address0 >> 1;
assign int_weights_124_ce0      = weights_124_ce0;
assign weights_124_q0           = int_weights_124_q0 >> (int_weights_124_shift0 * 16);
assign int_weights_124_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_124_ce1      = ar_hs | (int_weights_124_write & WVALID);
assign int_weights_124_we1      = int_weights_124_write & w_hs;
assign int_weights_124_be1      = int_weights_124_we1 ? WSTRB : 'b0;
assign int_weights_124_d1       = WDATA;
// weights_125
assign int_weights_125_address0 = weights_125_address0 >> 1;
assign int_weights_125_ce0      = weights_125_ce0;
assign weights_125_q0           = int_weights_125_q0 >> (int_weights_125_shift0 * 16);
assign int_weights_125_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_125_ce1      = ar_hs | (int_weights_125_write & WVALID);
assign int_weights_125_we1      = int_weights_125_write & w_hs;
assign int_weights_125_be1      = int_weights_125_we1 ? WSTRB : 'b0;
assign int_weights_125_d1       = WDATA;
// weights_126
assign int_weights_126_address0 = weights_126_address0 >> 1;
assign int_weights_126_ce0      = weights_126_ce0;
assign weights_126_q0           = int_weights_126_q0 >> (int_weights_126_shift0 * 16);
assign int_weights_126_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_126_ce1      = ar_hs | (int_weights_126_write & WVALID);
assign int_weights_126_we1      = int_weights_126_write & w_hs;
assign int_weights_126_be1      = int_weights_126_we1 ? WSTRB : 'b0;
assign int_weights_126_d1       = WDATA;
// weights_127
assign int_weights_127_address0 = weights_127_address0 >> 1;
assign int_weights_127_ce0      = weights_127_ce0;
assign weights_127_q0           = int_weights_127_q0 >> (int_weights_127_shift0 * 16);
assign int_weights_127_address1 = ar_hs? raddr[7:2] : waddr[7:2];
assign int_weights_127_ce1      = ar_hs | (int_weights_127_write & WVALID);
assign int_weights_127_we1      = int_weights_127_write & w_hs;
assign int_weights_127_be1      = int_weights_127_we1 ? WSTRB : 'b0;
assign int_weights_127_d1       = WDATA;
// int_bias_read
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BIAS_BASE && raddr <= ADDR_BIAS_HIGH)
            int_bias_read <= 1'b1;
        else
            int_bias_read <= 1'b0;
    end
end

// int_bias_write
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BIAS_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BIAS_HIGH)
            int_bias_write <= 1'b1;
        else if (w_hs)
            int_bias_write <= 1'b0;
    end
end

// int_bias_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_bias_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (bias_ce0)
            int_bias_shift0 <= bias_address0[0];
    end
end

// int_weights_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_0_BASE && raddr <= ADDR_WEIGHTS_0_HIGH)
            int_weights_0_read <= 1'b1;
        else
            int_weights_0_read <= 1'b0;
    end
end

// int_weights_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_0_HIGH)
            int_weights_0_write <= 1'b1;
        else if (w_hs)
            int_weights_0_write <= 1'b0;
    end
end

// int_weights_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_0_ce0)
            int_weights_0_shift0 <= weights_0_address0[0];
    end
end

// int_weights_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_1_BASE && raddr <= ADDR_WEIGHTS_1_HIGH)
            int_weights_1_read <= 1'b1;
        else
            int_weights_1_read <= 1'b0;
    end
end

// int_weights_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_1_HIGH)
            int_weights_1_write <= 1'b1;
        else if (w_hs)
            int_weights_1_write <= 1'b0;
    end
end

// int_weights_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_1_ce0)
            int_weights_1_shift0 <= weights_1_address0[0];
    end
end

// int_weights_2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_2_BASE && raddr <= ADDR_WEIGHTS_2_HIGH)
            int_weights_2_read <= 1'b1;
        else
            int_weights_2_read <= 1'b0;
    end
end

// int_weights_2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_2_HIGH)
            int_weights_2_write <= 1'b1;
        else if (w_hs)
            int_weights_2_write <= 1'b0;
    end
end

// int_weights_2_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_2_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_2_ce0)
            int_weights_2_shift0 <= weights_2_address0[0];
    end
end

// int_weights_3_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_3_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_3_BASE && raddr <= ADDR_WEIGHTS_3_HIGH)
            int_weights_3_read <= 1'b1;
        else
            int_weights_3_read <= 1'b0;
    end
end

// int_weights_3_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_3_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_3_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_3_HIGH)
            int_weights_3_write <= 1'b1;
        else if (w_hs)
            int_weights_3_write <= 1'b0;
    end
end

// int_weights_3_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_3_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_3_ce0)
            int_weights_3_shift0 <= weights_3_address0[0];
    end
end

// int_weights_4_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_4_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_4_BASE && raddr <= ADDR_WEIGHTS_4_HIGH)
            int_weights_4_read <= 1'b1;
        else
            int_weights_4_read <= 1'b0;
    end
end

// int_weights_4_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_4_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_4_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_4_HIGH)
            int_weights_4_write <= 1'b1;
        else if (w_hs)
            int_weights_4_write <= 1'b0;
    end
end

// int_weights_4_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_4_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_4_ce0)
            int_weights_4_shift0 <= weights_4_address0[0];
    end
end

// int_weights_5_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_5_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_5_BASE && raddr <= ADDR_WEIGHTS_5_HIGH)
            int_weights_5_read <= 1'b1;
        else
            int_weights_5_read <= 1'b0;
    end
end

// int_weights_5_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_5_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_5_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_5_HIGH)
            int_weights_5_write <= 1'b1;
        else if (w_hs)
            int_weights_5_write <= 1'b0;
    end
end

// int_weights_5_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_5_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_5_ce0)
            int_weights_5_shift0 <= weights_5_address0[0];
    end
end

// int_weights_6_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_6_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_6_BASE && raddr <= ADDR_WEIGHTS_6_HIGH)
            int_weights_6_read <= 1'b1;
        else
            int_weights_6_read <= 1'b0;
    end
end

// int_weights_6_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_6_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_6_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_6_HIGH)
            int_weights_6_write <= 1'b1;
        else if (w_hs)
            int_weights_6_write <= 1'b0;
    end
end

// int_weights_6_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_6_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_6_ce0)
            int_weights_6_shift0 <= weights_6_address0[0];
    end
end

// int_weights_7_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_7_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_7_BASE && raddr <= ADDR_WEIGHTS_7_HIGH)
            int_weights_7_read <= 1'b1;
        else
            int_weights_7_read <= 1'b0;
    end
end

// int_weights_7_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_7_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_7_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_7_HIGH)
            int_weights_7_write <= 1'b1;
        else if (w_hs)
            int_weights_7_write <= 1'b0;
    end
end

// int_weights_7_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_7_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_7_ce0)
            int_weights_7_shift0 <= weights_7_address0[0];
    end
end

// int_weights_8_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_8_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_8_BASE && raddr <= ADDR_WEIGHTS_8_HIGH)
            int_weights_8_read <= 1'b1;
        else
            int_weights_8_read <= 1'b0;
    end
end

// int_weights_8_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_8_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_8_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_8_HIGH)
            int_weights_8_write <= 1'b1;
        else if (w_hs)
            int_weights_8_write <= 1'b0;
    end
end

// int_weights_8_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_8_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_8_ce0)
            int_weights_8_shift0 <= weights_8_address0[0];
    end
end

// int_weights_9_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_9_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_9_BASE && raddr <= ADDR_WEIGHTS_9_HIGH)
            int_weights_9_read <= 1'b1;
        else
            int_weights_9_read <= 1'b0;
    end
end

// int_weights_9_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_9_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_9_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_9_HIGH)
            int_weights_9_write <= 1'b1;
        else if (w_hs)
            int_weights_9_write <= 1'b0;
    end
end

// int_weights_9_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_9_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_9_ce0)
            int_weights_9_shift0 <= weights_9_address0[0];
    end
end

// int_weights_10_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_10_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_10_BASE && raddr <= ADDR_WEIGHTS_10_HIGH)
            int_weights_10_read <= 1'b1;
        else
            int_weights_10_read <= 1'b0;
    end
end

// int_weights_10_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_10_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_10_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_10_HIGH)
            int_weights_10_write <= 1'b1;
        else if (w_hs)
            int_weights_10_write <= 1'b0;
    end
end

// int_weights_10_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_10_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_10_ce0)
            int_weights_10_shift0 <= weights_10_address0[0];
    end
end

// int_weights_11_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_11_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_11_BASE && raddr <= ADDR_WEIGHTS_11_HIGH)
            int_weights_11_read <= 1'b1;
        else
            int_weights_11_read <= 1'b0;
    end
end

// int_weights_11_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_11_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_11_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_11_HIGH)
            int_weights_11_write <= 1'b1;
        else if (w_hs)
            int_weights_11_write <= 1'b0;
    end
end

// int_weights_11_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_11_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_11_ce0)
            int_weights_11_shift0 <= weights_11_address0[0];
    end
end

// int_weights_12_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_12_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_12_BASE && raddr <= ADDR_WEIGHTS_12_HIGH)
            int_weights_12_read <= 1'b1;
        else
            int_weights_12_read <= 1'b0;
    end
end

// int_weights_12_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_12_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_12_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_12_HIGH)
            int_weights_12_write <= 1'b1;
        else if (w_hs)
            int_weights_12_write <= 1'b0;
    end
end

// int_weights_12_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_12_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_12_ce0)
            int_weights_12_shift0 <= weights_12_address0[0];
    end
end

// int_weights_13_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_13_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_13_BASE && raddr <= ADDR_WEIGHTS_13_HIGH)
            int_weights_13_read <= 1'b1;
        else
            int_weights_13_read <= 1'b0;
    end
end

// int_weights_13_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_13_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_13_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_13_HIGH)
            int_weights_13_write <= 1'b1;
        else if (w_hs)
            int_weights_13_write <= 1'b0;
    end
end

// int_weights_13_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_13_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_13_ce0)
            int_weights_13_shift0 <= weights_13_address0[0];
    end
end

// int_weights_14_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_14_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_14_BASE && raddr <= ADDR_WEIGHTS_14_HIGH)
            int_weights_14_read <= 1'b1;
        else
            int_weights_14_read <= 1'b0;
    end
end

// int_weights_14_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_14_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_14_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_14_HIGH)
            int_weights_14_write <= 1'b1;
        else if (w_hs)
            int_weights_14_write <= 1'b0;
    end
end

// int_weights_14_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_14_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_14_ce0)
            int_weights_14_shift0 <= weights_14_address0[0];
    end
end

// int_weights_15_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_15_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_15_BASE && raddr <= ADDR_WEIGHTS_15_HIGH)
            int_weights_15_read <= 1'b1;
        else
            int_weights_15_read <= 1'b0;
    end
end

// int_weights_15_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_15_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_15_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_15_HIGH)
            int_weights_15_write <= 1'b1;
        else if (w_hs)
            int_weights_15_write <= 1'b0;
    end
end

// int_weights_15_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_15_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_15_ce0)
            int_weights_15_shift0 <= weights_15_address0[0];
    end
end

// int_weights_16_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_16_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_16_BASE && raddr <= ADDR_WEIGHTS_16_HIGH)
            int_weights_16_read <= 1'b1;
        else
            int_weights_16_read <= 1'b0;
    end
end

// int_weights_16_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_16_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_16_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_16_HIGH)
            int_weights_16_write <= 1'b1;
        else if (w_hs)
            int_weights_16_write <= 1'b0;
    end
end

// int_weights_16_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_16_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_16_ce0)
            int_weights_16_shift0 <= weights_16_address0[0];
    end
end

// int_weights_17_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_17_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_17_BASE && raddr <= ADDR_WEIGHTS_17_HIGH)
            int_weights_17_read <= 1'b1;
        else
            int_weights_17_read <= 1'b0;
    end
end

// int_weights_17_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_17_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_17_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_17_HIGH)
            int_weights_17_write <= 1'b1;
        else if (w_hs)
            int_weights_17_write <= 1'b0;
    end
end

// int_weights_17_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_17_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_17_ce0)
            int_weights_17_shift0 <= weights_17_address0[0];
    end
end

// int_weights_18_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_18_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_18_BASE && raddr <= ADDR_WEIGHTS_18_HIGH)
            int_weights_18_read <= 1'b1;
        else
            int_weights_18_read <= 1'b0;
    end
end

// int_weights_18_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_18_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_18_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_18_HIGH)
            int_weights_18_write <= 1'b1;
        else if (w_hs)
            int_weights_18_write <= 1'b0;
    end
end

// int_weights_18_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_18_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_18_ce0)
            int_weights_18_shift0 <= weights_18_address0[0];
    end
end

// int_weights_19_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_19_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_19_BASE && raddr <= ADDR_WEIGHTS_19_HIGH)
            int_weights_19_read <= 1'b1;
        else
            int_weights_19_read <= 1'b0;
    end
end

// int_weights_19_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_19_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_19_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_19_HIGH)
            int_weights_19_write <= 1'b1;
        else if (w_hs)
            int_weights_19_write <= 1'b0;
    end
end

// int_weights_19_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_19_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_19_ce0)
            int_weights_19_shift0 <= weights_19_address0[0];
    end
end

// int_weights_20_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_20_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_20_BASE && raddr <= ADDR_WEIGHTS_20_HIGH)
            int_weights_20_read <= 1'b1;
        else
            int_weights_20_read <= 1'b0;
    end
end

// int_weights_20_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_20_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_20_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_20_HIGH)
            int_weights_20_write <= 1'b1;
        else if (w_hs)
            int_weights_20_write <= 1'b0;
    end
end

// int_weights_20_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_20_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_20_ce0)
            int_weights_20_shift0 <= weights_20_address0[0];
    end
end

// int_weights_21_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_21_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_21_BASE && raddr <= ADDR_WEIGHTS_21_HIGH)
            int_weights_21_read <= 1'b1;
        else
            int_weights_21_read <= 1'b0;
    end
end

// int_weights_21_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_21_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_21_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_21_HIGH)
            int_weights_21_write <= 1'b1;
        else if (w_hs)
            int_weights_21_write <= 1'b0;
    end
end

// int_weights_21_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_21_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_21_ce0)
            int_weights_21_shift0 <= weights_21_address0[0];
    end
end

// int_weights_22_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_22_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_22_BASE && raddr <= ADDR_WEIGHTS_22_HIGH)
            int_weights_22_read <= 1'b1;
        else
            int_weights_22_read <= 1'b0;
    end
end

// int_weights_22_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_22_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_22_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_22_HIGH)
            int_weights_22_write <= 1'b1;
        else if (w_hs)
            int_weights_22_write <= 1'b0;
    end
end

// int_weights_22_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_22_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_22_ce0)
            int_weights_22_shift0 <= weights_22_address0[0];
    end
end

// int_weights_23_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_23_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_23_BASE && raddr <= ADDR_WEIGHTS_23_HIGH)
            int_weights_23_read <= 1'b1;
        else
            int_weights_23_read <= 1'b0;
    end
end

// int_weights_23_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_23_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_23_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_23_HIGH)
            int_weights_23_write <= 1'b1;
        else if (w_hs)
            int_weights_23_write <= 1'b0;
    end
end

// int_weights_23_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_23_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_23_ce0)
            int_weights_23_shift0 <= weights_23_address0[0];
    end
end

// int_weights_24_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_24_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_24_BASE && raddr <= ADDR_WEIGHTS_24_HIGH)
            int_weights_24_read <= 1'b1;
        else
            int_weights_24_read <= 1'b0;
    end
end

// int_weights_24_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_24_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_24_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_24_HIGH)
            int_weights_24_write <= 1'b1;
        else if (w_hs)
            int_weights_24_write <= 1'b0;
    end
end

// int_weights_24_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_24_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_24_ce0)
            int_weights_24_shift0 <= weights_24_address0[0];
    end
end

// int_weights_25_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_25_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_25_BASE && raddr <= ADDR_WEIGHTS_25_HIGH)
            int_weights_25_read <= 1'b1;
        else
            int_weights_25_read <= 1'b0;
    end
end

// int_weights_25_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_25_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_25_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_25_HIGH)
            int_weights_25_write <= 1'b1;
        else if (w_hs)
            int_weights_25_write <= 1'b0;
    end
end

// int_weights_25_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_25_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_25_ce0)
            int_weights_25_shift0 <= weights_25_address0[0];
    end
end

// int_weights_26_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_26_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_26_BASE && raddr <= ADDR_WEIGHTS_26_HIGH)
            int_weights_26_read <= 1'b1;
        else
            int_weights_26_read <= 1'b0;
    end
end

// int_weights_26_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_26_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_26_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_26_HIGH)
            int_weights_26_write <= 1'b1;
        else if (w_hs)
            int_weights_26_write <= 1'b0;
    end
end

// int_weights_26_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_26_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_26_ce0)
            int_weights_26_shift0 <= weights_26_address0[0];
    end
end

// int_weights_27_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_27_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_27_BASE && raddr <= ADDR_WEIGHTS_27_HIGH)
            int_weights_27_read <= 1'b1;
        else
            int_weights_27_read <= 1'b0;
    end
end

// int_weights_27_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_27_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_27_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_27_HIGH)
            int_weights_27_write <= 1'b1;
        else if (w_hs)
            int_weights_27_write <= 1'b0;
    end
end

// int_weights_27_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_27_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_27_ce0)
            int_weights_27_shift0 <= weights_27_address0[0];
    end
end

// int_weights_28_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_28_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_28_BASE && raddr <= ADDR_WEIGHTS_28_HIGH)
            int_weights_28_read <= 1'b1;
        else
            int_weights_28_read <= 1'b0;
    end
end

// int_weights_28_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_28_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_28_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_28_HIGH)
            int_weights_28_write <= 1'b1;
        else if (w_hs)
            int_weights_28_write <= 1'b0;
    end
end

// int_weights_28_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_28_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_28_ce0)
            int_weights_28_shift0 <= weights_28_address0[0];
    end
end

// int_weights_29_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_29_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_29_BASE && raddr <= ADDR_WEIGHTS_29_HIGH)
            int_weights_29_read <= 1'b1;
        else
            int_weights_29_read <= 1'b0;
    end
end

// int_weights_29_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_29_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_29_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_29_HIGH)
            int_weights_29_write <= 1'b1;
        else if (w_hs)
            int_weights_29_write <= 1'b0;
    end
end

// int_weights_29_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_29_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_29_ce0)
            int_weights_29_shift0 <= weights_29_address0[0];
    end
end

// int_weights_30_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_30_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_30_BASE && raddr <= ADDR_WEIGHTS_30_HIGH)
            int_weights_30_read <= 1'b1;
        else
            int_weights_30_read <= 1'b0;
    end
end

// int_weights_30_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_30_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_30_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_30_HIGH)
            int_weights_30_write <= 1'b1;
        else if (w_hs)
            int_weights_30_write <= 1'b0;
    end
end

// int_weights_30_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_30_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_30_ce0)
            int_weights_30_shift0 <= weights_30_address0[0];
    end
end

// int_weights_31_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_31_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_31_BASE && raddr <= ADDR_WEIGHTS_31_HIGH)
            int_weights_31_read <= 1'b1;
        else
            int_weights_31_read <= 1'b0;
    end
end

// int_weights_31_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_31_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_31_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_31_HIGH)
            int_weights_31_write <= 1'b1;
        else if (w_hs)
            int_weights_31_write <= 1'b0;
    end
end

// int_weights_31_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_31_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_31_ce0)
            int_weights_31_shift0 <= weights_31_address0[0];
    end
end

// int_weights_32_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_32_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_32_BASE && raddr <= ADDR_WEIGHTS_32_HIGH)
            int_weights_32_read <= 1'b1;
        else
            int_weights_32_read <= 1'b0;
    end
end

// int_weights_32_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_32_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_32_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_32_HIGH)
            int_weights_32_write <= 1'b1;
        else if (w_hs)
            int_weights_32_write <= 1'b0;
    end
end

// int_weights_32_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_32_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_32_ce0)
            int_weights_32_shift0 <= weights_32_address0[0];
    end
end

// int_weights_33_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_33_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_33_BASE && raddr <= ADDR_WEIGHTS_33_HIGH)
            int_weights_33_read <= 1'b1;
        else
            int_weights_33_read <= 1'b0;
    end
end

// int_weights_33_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_33_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_33_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_33_HIGH)
            int_weights_33_write <= 1'b1;
        else if (w_hs)
            int_weights_33_write <= 1'b0;
    end
end

// int_weights_33_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_33_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_33_ce0)
            int_weights_33_shift0 <= weights_33_address0[0];
    end
end

// int_weights_34_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_34_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_34_BASE && raddr <= ADDR_WEIGHTS_34_HIGH)
            int_weights_34_read <= 1'b1;
        else
            int_weights_34_read <= 1'b0;
    end
end

// int_weights_34_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_34_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_34_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_34_HIGH)
            int_weights_34_write <= 1'b1;
        else if (w_hs)
            int_weights_34_write <= 1'b0;
    end
end

// int_weights_34_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_34_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_34_ce0)
            int_weights_34_shift0 <= weights_34_address0[0];
    end
end

// int_weights_35_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_35_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_35_BASE && raddr <= ADDR_WEIGHTS_35_HIGH)
            int_weights_35_read <= 1'b1;
        else
            int_weights_35_read <= 1'b0;
    end
end

// int_weights_35_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_35_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_35_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_35_HIGH)
            int_weights_35_write <= 1'b1;
        else if (w_hs)
            int_weights_35_write <= 1'b0;
    end
end

// int_weights_35_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_35_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_35_ce0)
            int_weights_35_shift0 <= weights_35_address0[0];
    end
end

// int_weights_36_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_36_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_36_BASE && raddr <= ADDR_WEIGHTS_36_HIGH)
            int_weights_36_read <= 1'b1;
        else
            int_weights_36_read <= 1'b0;
    end
end

// int_weights_36_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_36_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_36_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_36_HIGH)
            int_weights_36_write <= 1'b1;
        else if (w_hs)
            int_weights_36_write <= 1'b0;
    end
end

// int_weights_36_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_36_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_36_ce0)
            int_weights_36_shift0 <= weights_36_address0[0];
    end
end

// int_weights_37_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_37_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_37_BASE && raddr <= ADDR_WEIGHTS_37_HIGH)
            int_weights_37_read <= 1'b1;
        else
            int_weights_37_read <= 1'b0;
    end
end

// int_weights_37_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_37_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_37_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_37_HIGH)
            int_weights_37_write <= 1'b1;
        else if (w_hs)
            int_weights_37_write <= 1'b0;
    end
end

// int_weights_37_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_37_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_37_ce0)
            int_weights_37_shift0 <= weights_37_address0[0];
    end
end

// int_weights_38_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_38_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_38_BASE && raddr <= ADDR_WEIGHTS_38_HIGH)
            int_weights_38_read <= 1'b1;
        else
            int_weights_38_read <= 1'b0;
    end
end

// int_weights_38_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_38_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_38_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_38_HIGH)
            int_weights_38_write <= 1'b1;
        else if (w_hs)
            int_weights_38_write <= 1'b0;
    end
end

// int_weights_38_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_38_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_38_ce0)
            int_weights_38_shift0 <= weights_38_address0[0];
    end
end

// int_weights_39_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_39_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_39_BASE && raddr <= ADDR_WEIGHTS_39_HIGH)
            int_weights_39_read <= 1'b1;
        else
            int_weights_39_read <= 1'b0;
    end
end

// int_weights_39_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_39_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_39_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_39_HIGH)
            int_weights_39_write <= 1'b1;
        else if (w_hs)
            int_weights_39_write <= 1'b0;
    end
end

// int_weights_39_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_39_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_39_ce0)
            int_weights_39_shift0 <= weights_39_address0[0];
    end
end

// int_weights_40_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_40_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_40_BASE && raddr <= ADDR_WEIGHTS_40_HIGH)
            int_weights_40_read <= 1'b1;
        else
            int_weights_40_read <= 1'b0;
    end
end

// int_weights_40_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_40_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_40_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_40_HIGH)
            int_weights_40_write <= 1'b1;
        else if (w_hs)
            int_weights_40_write <= 1'b0;
    end
end

// int_weights_40_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_40_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_40_ce0)
            int_weights_40_shift0 <= weights_40_address0[0];
    end
end

// int_weights_41_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_41_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_41_BASE && raddr <= ADDR_WEIGHTS_41_HIGH)
            int_weights_41_read <= 1'b1;
        else
            int_weights_41_read <= 1'b0;
    end
end

// int_weights_41_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_41_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_41_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_41_HIGH)
            int_weights_41_write <= 1'b1;
        else if (w_hs)
            int_weights_41_write <= 1'b0;
    end
end

// int_weights_41_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_41_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_41_ce0)
            int_weights_41_shift0 <= weights_41_address0[0];
    end
end

// int_weights_42_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_42_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_42_BASE && raddr <= ADDR_WEIGHTS_42_HIGH)
            int_weights_42_read <= 1'b1;
        else
            int_weights_42_read <= 1'b0;
    end
end

// int_weights_42_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_42_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_42_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_42_HIGH)
            int_weights_42_write <= 1'b1;
        else if (w_hs)
            int_weights_42_write <= 1'b0;
    end
end

// int_weights_42_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_42_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_42_ce0)
            int_weights_42_shift0 <= weights_42_address0[0];
    end
end

// int_weights_43_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_43_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_43_BASE && raddr <= ADDR_WEIGHTS_43_HIGH)
            int_weights_43_read <= 1'b1;
        else
            int_weights_43_read <= 1'b0;
    end
end

// int_weights_43_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_43_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_43_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_43_HIGH)
            int_weights_43_write <= 1'b1;
        else if (w_hs)
            int_weights_43_write <= 1'b0;
    end
end

// int_weights_43_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_43_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_43_ce0)
            int_weights_43_shift0 <= weights_43_address0[0];
    end
end

// int_weights_44_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_44_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_44_BASE && raddr <= ADDR_WEIGHTS_44_HIGH)
            int_weights_44_read <= 1'b1;
        else
            int_weights_44_read <= 1'b0;
    end
end

// int_weights_44_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_44_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_44_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_44_HIGH)
            int_weights_44_write <= 1'b1;
        else if (w_hs)
            int_weights_44_write <= 1'b0;
    end
end

// int_weights_44_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_44_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_44_ce0)
            int_weights_44_shift0 <= weights_44_address0[0];
    end
end

// int_weights_45_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_45_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_45_BASE && raddr <= ADDR_WEIGHTS_45_HIGH)
            int_weights_45_read <= 1'b1;
        else
            int_weights_45_read <= 1'b0;
    end
end

// int_weights_45_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_45_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_45_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_45_HIGH)
            int_weights_45_write <= 1'b1;
        else if (w_hs)
            int_weights_45_write <= 1'b0;
    end
end

// int_weights_45_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_45_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_45_ce0)
            int_weights_45_shift0 <= weights_45_address0[0];
    end
end

// int_weights_46_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_46_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_46_BASE && raddr <= ADDR_WEIGHTS_46_HIGH)
            int_weights_46_read <= 1'b1;
        else
            int_weights_46_read <= 1'b0;
    end
end

// int_weights_46_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_46_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_46_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_46_HIGH)
            int_weights_46_write <= 1'b1;
        else if (w_hs)
            int_weights_46_write <= 1'b0;
    end
end

// int_weights_46_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_46_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_46_ce0)
            int_weights_46_shift0 <= weights_46_address0[0];
    end
end

// int_weights_47_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_47_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_47_BASE && raddr <= ADDR_WEIGHTS_47_HIGH)
            int_weights_47_read <= 1'b1;
        else
            int_weights_47_read <= 1'b0;
    end
end

// int_weights_47_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_47_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_47_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_47_HIGH)
            int_weights_47_write <= 1'b1;
        else if (w_hs)
            int_weights_47_write <= 1'b0;
    end
end

// int_weights_47_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_47_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_47_ce0)
            int_weights_47_shift0 <= weights_47_address0[0];
    end
end

// int_weights_48_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_48_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_48_BASE && raddr <= ADDR_WEIGHTS_48_HIGH)
            int_weights_48_read <= 1'b1;
        else
            int_weights_48_read <= 1'b0;
    end
end

// int_weights_48_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_48_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_48_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_48_HIGH)
            int_weights_48_write <= 1'b1;
        else if (w_hs)
            int_weights_48_write <= 1'b0;
    end
end

// int_weights_48_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_48_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_48_ce0)
            int_weights_48_shift0 <= weights_48_address0[0];
    end
end

// int_weights_49_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_49_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_49_BASE && raddr <= ADDR_WEIGHTS_49_HIGH)
            int_weights_49_read <= 1'b1;
        else
            int_weights_49_read <= 1'b0;
    end
end

// int_weights_49_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_49_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_49_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_49_HIGH)
            int_weights_49_write <= 1'b1;
        else if (w_hs)
            int_weights_49_write <= 1'b0;
    end
end

// int_weights_49_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_49_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_49_ce0)
            int_weights_49_shift0 <= weights_49_address0[0];
    end
end

// int_weights_50_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_50_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_50_BASE && raddr <= ADDR_WEIGHTS_50_HIGH)
            int_weights_50_read <= 1'b1;
        else
            int_weights_50_read <= 1'b0;
    end
end

// int_weights_50_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_50_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_50_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_50_HIGH)
            int_weights_50_write <= 1'b1;
        else if (w_hs)
            int_weights_50_write <= 1'b0;
    end
end

// int_weights_50_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_50_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_50_ce0)
            int_weights_50_shift0 <= weights_50_address0[0];
    end
end

// int_weights_51_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_51_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_51_BASE && raddr <= ADDR_WEIGHTS_51_HIGH)
            int_weights_51_read <= 1'b1;
        else
            int_weights_51_read <= 1'b0;
    end
end

// int_weights_51_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_51_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_51_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_51_HIGH)
            int_weights_51_write <= 1'b1;
        else if (w_hs)
            int_weights_51_write <= 1'b0;
    end
end

// int_weights_51_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_51_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_51_ce0)
            int_weights_51_shift0 <= weights_51_address0[0];
    end
end

// int_weights_52_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_52_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_52_BASE && raddr <= ADDR_WEIGHTS_52_HIGH)
            int_weights_52_read <= 1'b1;
        else
            int_weights_52_read <= 1'b0;
    end
end

// int_weights_52_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_52_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_52_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_52_HIGH)
            int_weights_52_write <= 1'b1;
        else if (w_hs)
            int_weights_52_write <= 1'b0;
    end
end

// int_weights_52_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_52_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_52_ce0)
            int_weights_52_shift0 <= weights_52_address0[0];
    end
end

// int_weights_53_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_53_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_53_BASE && raddr <= ADDR_WEIGHTS_53_HIGH)
            int_weights_53_read <= 1'b1;
        else
            int_weights_53_read <= 1'b0;
    end
end

// int_weights_53_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_53_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_53_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_53_HIGH)
            int_weights_53_write <= 1'b1;
        else if (w_hs)
            int_weights_53_write <= 1'b0;
    end
end

// int_weights_53_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_53_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_53_ce0)
            int_weights_53_shift0 <= weights_53_address0[0];
    end
end

// int_weights_54_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_54_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_54_BASE && raddr <= ADDR_WEIGHTS_54_HIGH)
            int_weights_54_read <= 1'b1;
        else
            int_weights_54_read <= 1'b0;
    end
end

// int_weights_54_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_54_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_54_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_54_HIGH)
            int_weights_54_write <= 1'b1;
        else if (w_hs)
            int_weights_54_write <= 1'b0;
    end
end

// int_weights_54_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_54_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_54_ce0)
            int_weights_54_shift0 <= weights_54_address0[0];
    end
end

// int_weights_55_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_55_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_55_BASE && raddr <= ADDR_WEIGHTS_55_HIGH)
            int_weights_55_read <= 1'b1;
        else
            int_weights_55_read <= 1'b0;
    end
end

// int_weights_55_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_55_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_55_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_55_HIGH)
            int_weights_55_write <= 1'b1;
        else if (w_hs)
            int_weights_55_write <= 1'b0;
    end
end

// int_weights_55_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_55_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_55_ce0)
            int_weights_55_shift0 <= weights_55_address0[0];
    end
end

// int_weights_56_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_56_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_56_BASE && raddr <= ADDR_WEIGHTS_56_HIGH)
            int_weights_56_read <= 1'b1;
        else
            int_weights_56_read <= 1'b0;
    end
end

// int_weights_56_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_56_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_56_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_56_HIGH)
            int_weights_56_write <= 1'b1;
        else if (w_hs)
            int_weights_56_write <= 1'b0;
    end
end

// int_weights_56_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_56_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_56_ce0)
            int_weights_56_shift0 <= weights_56_address0[0];
    end
end

// int_weights_57_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_57_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_57_BASE && raddr <= ADDR_WEIGHTS_57_HIGH)
            int_weights_57_read <= 1'b1;
        else
            int_weights_57_read <= 1'b0;
    end
end

// int_weights_57_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_57_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_57_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_57_HIGH)
            int_weights_57_write <= 1'b1;
        else if (w_hs)
            int_weights_57_write <= 1'b0;
    end
end

// int_weights_57_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_57_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_57_ce0)
            int_weights_57_shift0 <= weights_57_address0[0];
    end
end

// int_weights_58_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_58_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_58_BASE && raddr <= ADDR_WEIGHTS_58_HIGH)
            int_weights_58_read <= 1'b1;
        else
            int_weights_58_read <= 1'b0;
    end
end

// int_weights_58_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_58_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_58_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_58_HIGH)
            int_weights_58_write <= 1'b1;
        else if (w_hs)
            int_weights_58_write <= 1'b0;
    end
end

// int_weights_58_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_58_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_58_ce0)
            int_weights_58_shift0 <= weights_58_address0[0];
    end
end

// int_weights_59_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_59_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_59_BASE && raddr <= ADDR_WEIGHTS_59_HIGH)
            int_weights_59_read <= 1'b1;
        else
            int_weights_59_read <= 1'b0;
    end
end

// int_weights_59_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_59_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_59_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_59_HIGH)
            int_weights_59_write <= 1'b1;
        else if (w_hs)
            int_weights_59_write <= 1'b0;
    end
end

// int_weights_59_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_59_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_59_ce0)
            int_weights_59_shift0 <= weights_59_address0[0];
    end
end

// int_weights_60_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_60_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_60_BASE && raddr <= ADDR_WEIGHTS_60_HIGH)
            int_weights_60_read <= 1'b1;
        else
            int_weights_60_read <= 1'b0;
    end
end

// int_weights_60_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_60_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_60_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_60_HIGH)
            int_weights_60_write <= 1'b1;
        else if (w_hs)
            int_weights_60_write <= 1'b0;
    end
end

// int_weights_60_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_60_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_60_ce0)
            int_weights_60_shift0 <= weights_60_address0[0];
    end
end

// int_weights_61_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_61_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_61_BASE && raddr <= ADDR_WEIGHTS_61_HIGH)
            int_weights_61_read <= 1'b1;
        else
            int_weights_61_read <= 1'b0;
    end
end

// int_weights_61_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_61_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_61_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_61_HIGH)
            int_weights_61_write <= 1'b1;
        else if (w_hs)
            int_weights_61_write <= 1'b0;
    end
end

// int_weights_61_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_61_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_61_ce0)
            int_weights_61_shift0 <= weights_61_address0[0];
    end
end

// int_weights_62_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_62_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_62_BASE && raddr <= ADDR_WEIGHTS_62_HIGH)
            int_weights_62_read <= 1'b1;
        else
            int_weights_62_read <= 1'b0;
    end
end

// int_weights_62_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_62_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_62_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_62_HIGH)
            int_weights_62_write <= 1'b1;
        else if (w_hs)
            int_weights_62_write <= 1'b0;
    end
end

// int_weights_62_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_62_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_62_ce0)
            int_weights_62_shift0 <= weights_62_address0[0];
    end
end

// int_weights_63_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_63_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_63_BASE && raddr <= ADDR_WEIGHTS_63_HIGH)
            int_weights_63_read <= 1'b1;
        else
            int_weights_63_read <= 1'b0;
    end
end

// int_weights_63_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_63_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_63_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_63_HIGH)
            int_weights_63_write <= 1'b1;
        else if (w_hs)
            int_weights_63_write <= 1'b0;
    end
end

// int_weights_63_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_63_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_63_ce0)
            int_weights_63_shift0 <= weights_63_address0[0];
    end
end

// int_weights_64_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_64_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_64_BASE && raddr <= ADDR_WEIGHTS_64_HIGH)
            int_weights_64_read <= 1'b1;
        else
            int_weights_64_read <= 1'b0;
    end
end

// int_weights_64_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_64_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_64_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_64_HIGH)
            int_weights_64_write <= 1'b1;
        else if (w_hs)
            int_weights_64_write <= 1'b0;
    end
end

// int_weights_64_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_64_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_64_ce0)
            int_weights_64_shift0 <= weights_64_address0[0];
    end
end

// int_weights_65_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_65_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_65_BASE && raddr <= ADDR_WEIGHTS_65_HIGH)
            int_weights_65_read <= 1'b1;
        else
            int_weights_65_read <= 1'b0;
    end
end

// int_weights_65_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_65_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_65_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_65_HIGH)
            int_weights_65_write <= 1'b1;
        else if (w_hs)
            int_weights_65_write <= 1'b0;
    end
end

// int_weights_65_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_65_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_65_ce0)
            int_weights_65_shift0 <= weights_65_address0[0];
    end
end

// int_weights_66_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_66_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_66_BASE && raddr <= ADDR_WEIGHTS_66_HIGH)
            int_weights_66_read <= 1'b1;
        else
            int_weights_66_read <= 1'b0;
    end
end

// int_weights_66_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_66_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_66_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_66_HIGH)
            int_weights_66_write <= 1'b1;
        else if (w_hs)
            int_weights_66_write <= 1'b0;
    end
end

// int_weights_66_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_66_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_66_ce0)
            int_weights_66_shift0 <= weights_66_address0[0];
    end
end

// int_weights_67_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_67_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_67_BASE && raddr <= ADDR_WEIGHTS_67_HIGH)
            int_weights_67_read <= 1'b1;
        else
            int_weights_67_read <= 1'b0;
    end
end

// int_weights_67_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_67_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_67_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_67_HIGH)
            int_weights_67_write <= 1'b1;
        else if (w_hs)
            int_weights_67_write <= 1'b0;
    end
end

// int_weights_67_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_67_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_67_ce0)
            int_weights_67_shift0 <= weights_67_address0[0];
    end
end

// int_weights_68_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_68_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_68_BASE && raddr <= ADDR_WEIGHTS_68_HIGH)
            int_weights_68_read <= 1'b1;
        else
            int_weights_68_read <= 1'b0;
    end
end

// int_weights_68_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_68_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_68_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_68_HIGH)
            int_weights_68_write <= 1'b1;
        else if (w_hs)
            int_weights_68_write <= 1'b0;
    end
end

// int_weights_68_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_68_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_68_ce0)
            int_weights_68_shift0 <= weights_68_address0[0];
    end
end

// int_weights_69_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_69_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_69_BASE && raddr <= ADDR_WEIGHTS_69_HIGH)
            int_weights_69_read <= 1'b1;
        else
            int_weights_69_read <= 1'b0;
    end
end

// int_weights_69_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_69_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_69_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_69_HIGH)
            int_weights_69_write <= 1'b1;
        else if (w_hs)
            int_weights_69_write <= 1'b0;
    end
end

// int_weights_69_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_69_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_69_ce0)
            int_weights_69_shift0 <= weights_69_address0[0];
    end
end

// int_weights_70_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_70_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_70_BASE && raddr <= ADDR_WEIGHTS_70_HIGH)
            int_weights_70_read <= 1'b1;
        else
            int_weights_70_read <= 1'b0;
    end
end

// int_weights_70_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_70_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_70_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_70_HIGH)
            int_weights_70_write <= 1'b1;
        else if (w_hs)
            int_weights_70_write <= 1'b0;
    end
end

// int_weights_70_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_70_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_70_ce0)
            int_weights_70_shift0 <= weights_70_address0[0];
    end
end

// int_weights_71_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_71_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_71_BASE && raddr <= ADDR_WEIGHTS_71_HIGH)
            int_weights_71_read <= 1'b1;
        else
            int_weights_71_read <= 1'b0;
    end
end

// int_weights_71_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_71_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_71_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_71_HIGH)
            int_weights_71_write <= 1'b1;
        else if (w_hs)
            int_weights_71_write <= 1'b0;
    end
end

// int_weights_71_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_71_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_71_ce0)
            int_weights_71_shift0 <= weights_71_address0[0];
    end
end

// int_weights_72_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_72_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_72_BASE && raddr <= ADDR_WEIGHTS_72_HIGH)
            int_weights_72_read <= 1'b1;
        else
            int_weights_72_read <= 1'b0;
    end
end

// int_weights_72_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_72_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_72_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_72_HIGH)
            int_weights_72_write <= 1'b1;
        else if (w_hs)
            int_weights_72_write <= 1'b0;
    end
end

// int_weights_72_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_72_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_72_ce0)
            int_weights_72_shift0 <= weights_72_address0[0];
    end
end

// int_weights_73_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_73_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_73_BASE && raddr <= ADDR_WEIGHTS_73_HIGH)
            int_weights_73_read <= 1'b1;
        else
            int_weights_73_read <= 1'b0;
    end
end

// int_weights_73_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_73_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_73_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_73_HIGH)
            int_weights_73_write <= 1'b1;
        else if (w_hs)
            int_weights_73_write <= 1'b0;
    end
end

// int_weights_73_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_73_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_73_ce0)
            int_weights_73_shift0 <= weights_73_address0[0];
    end
end

// int_weights_74_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_74_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_74_BASE && raddr <= ADDR_WEIGHTS_74_HIGH)
            int_weights_74_read <= 1'b1;
        else
            int_weights_74_read <= 1'b0;
    end
end

// int_weights_74_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_74_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_74_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_74_HIGH)
            int_weights_74_write <= 1'b1;
        else if (w_hs)
            int_weights_74_write <= 1'b0;
    end
end

// int_weights_74_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_74_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_74_ce0)
            int_weights_74_shift0 <= weights_74_address0[0];
    end
end

// int_weights_75_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_75_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_75_BASE && raddr <= ADDR_WEIGHTS_75_HIGH)
            int_weights_75_read <= 1'b1;
        else
            int_weights_75_read <= 1'b0;
    end
end

// int_weights_75_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_75_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_75_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_75_HIGH)
            int_weights_75_write <= 1'b1;
        else if (w_hs)
            int_weights_75_write <= 1'b0;
    end
end

// int_weights_75_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_75_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_75_ce0)
            int_weights_75_shift0 <= weights_75_address0[0];
    end
end

// int_weights_76_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_76_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_76_BASE && raddr <= ADDR_WEIGHTS_76_HIGH)
            int_weights_76_read <= 1'b1;
        else
            int_weights_76_read <= 1'b0;
    end
end

// int_weights_76_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_76_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_76_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_76_HIGH)
            int_weights_76_write <= 1'b1;
        else if (w_hs)
            int_weights_76_write <= 1'b0;
    end
end

// int_weights_76_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_76_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_76_ce0)
            int_weights_76_shift0 <= weights_76_address0[0];
    end
end

// int_weights_77_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_77_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_77_BASE && raddr <= ADDR_WEIGHTS_77_HIGH)
            int_weights_77_read <= 1'b1;
        else
            int_weights_77_read <= 1'b0;
    end
end

// int_weights_77_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_77_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_77_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_77_HIGH)
            int_weights_77_write <= 1'b1;
        else if (w_hs)
            int_weights_77_write <= 1'b0;
    end
end

// int_weights_77_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_77_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_77_ce0)
            int_weights_77_shift0 <= weights_77_address0[0];
    end
end

// int_weights_78_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_78_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_78_BASE && raddr <= ADDR_WEIGHTS_78_HIGH)
            int_weights_78_read <= 1'b1;
        else
            int_weights_78_read <= 1'b0;
    end
end

// int_weights_78_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_78_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_78_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_78_HIGH)
            int_weights_78_write <= 1'b1;
        else if (w_hs)
            int_weights_78_write <= 1'b0;
    end
end

// int_weights_78_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_78_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_78_ce0)
            int_weights_78_shift0 <= weights_78_address0[0];
    end
end

// int_weights_79_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_79_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_79_BASE && raddr <= ADDR_WEIGHTS_79_HIGH)
            int_weights_79_read <= 1'b1;
        else
            int_weights_79_read <= 1'b0;
    end
end

// int_weights_79_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_79_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_79_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_79_HIGH)
            int_weights_79_write <= 1'b1;
        else if (w_hs)
            int_weights_79_write <= 1'b0;
    end
end

// int_weights_79_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_79_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_79_ce0)
            int_weights_79_shift0 <= weights_79_address0[0];
    end
end

// int_weights_80_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_80_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_80_BASE && raddr <= ADDR_WEIGHTS_80_HIGH)
            int_weights_80_read <= 1'b1;
        else
            int_weights_80_read <= 1'b0;
    end
end

// int_weights_80_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_80_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_80_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_80_HIGH)
            int_weights_80_write <= 1'b1;
        else if (w_hs)
            int_weights_80_write <= 1'b0;
    end
end

// int_weights_80_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_80_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_80_ce0)
            int_weights_80_shift0 <= weights_80_address0[0];
    end
end

// int_weights_81_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_81_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_81_BASE && raddr <= ADDR_WEIGHTS_81_HIGH)
            int_weights_81_read <= 1'b1;
        else
            int_weights_81_read <= 1'b0;
    end
end

// int_weights_81_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_81_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_81_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_81_HIGH)
            int_weights_81_write <= 1'b1;
        else if (w_hs)
            int_weights_81_write <= 1'b0;
    end
end

// int_weights_81_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_81_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_81_ce0)
            int_weights_81_shift0 <= weights_81_address0[0];
    end
end

// int_weights_82_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_82_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_82_BASE && raddr <= ADDR_WEIGHTS_82_HIGH)
            int_weights_82_read <= 1'b1;
        else
            int_weights_82_read <= 1'b0;
    end
end

// int_weights_82_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_82_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_82_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_82_HIGH)
            int_weights_82_write <= 1'b1;
        else if (w_hs)
            int_weights_82_write <= 1'b0;
    end
end

// int_weights_82_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_82_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_82_ce0)
            int_weights_82_shift0 <= weights_82_address0[0];
    end
end

// int_weights_83_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_83_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_83_BASE && raddr <= ADDR_WEIGHTS_83_HIGH)
            int_weights_83_read <= 1'b1;
        else
            int_weights_83_read <= 1'b0;
    end
end

// int_weights_83_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_83_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_83_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_83_HIGH)
            int_weights_83_write <= 1'b1;
        else if (w_hs)
            int_weights_83_write <= 1'b0;
    end
end

// int_weights_83_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_83_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_83_ce0)
            int_weights_83_shift0 <= weights_83_address0[0];
    end
end

// int_weights_84_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_84_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_84_BASE && raddr <= ADDR_WEIGHTS_84_HIGH)
            int_weights_84_read <= 1'b1;
        else
            int_weights_84_read <= 1'b0;
    end
end

// int_weights_84_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_84_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_84_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_84_HIGH)
            int_weights_84_write <= 1'b1;
        else if (w_hs)
            int_weights_84_write <= 1'b0;
    end
end

// int_weights_84_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_84_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_84_ce0)
            int_weights_84_shift0 <= weights_84_address0[0];
    end
end

// int_weights_85_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_85_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_85_BASE && raddr <= ADDR_WEIGHTS_85_HIGH)
            int_weights_85_read <= 1'b1;
        else
            int_weights_85_read <= 1'b0;
    end
end

// int_weights_85_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_85_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_85_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_85_HIGH)
            int_weights_85_write <= 1'b1;
        else if (w_hs)
            int_weights_85_write <= 1'b0;
    end
end

// int_weights_85_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_85_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_85_ce0)
            int_weights_85_shift0 <= weights_85_address0[0];
    end
end

// int_weights_86_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_86_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_86_BASE && raddr <= ADDR_WEIGHTS_86_HIGH)
            int_weights_86_read <= 1'b1;
        else
            int_weights_86_read <= 1'b0;
    end
end

// int_weights_86_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_86_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_86_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_86_HIGH)
            int_weights_86_write <= 1'b1;
        else if (w_hs)
            int_weights_86_write <= 1'b0;
    end
end

// int_weights_86_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_86_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_86_ce0)
            int_weights_86_shift0 <= weights_86_address0[0];
    end
end

// int_weights_87_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_87_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_87_BASE && raddr <= ADDR_WEIGHTS_87_HIGH)
            int_weights_87_read <= 1'b1;
        else
            int_weights_87_read <= 1'b0;
    end
end

// int_weights_87_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_87_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_87_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_87_HIGH)
            int_weights_87_write <= 1'b1;
        else if (w_hs)
            int_weights_87_write <= 1'b0;
    end
end

// int_weights_87_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_87_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_87_ce0)
            int_weights_87_shift0 <= weights_87_address0[0];
    end
end

// int_weights_88_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_88_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_88_BASE && raddr <= ADDR_WEIGHTS_88_HIGH)
            int_weights_88_read <= 1'b1;
        else
            int_weights_88_read <= 1'b0;
    end
end

// int_weights_88_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_88_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_88_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_88_HIGH)
            int_weights_88_write <= 1'b1;
        else if (w_hs)
            int_weights_88_write <= 1'b0;
    end
end

// int_weights_88_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_88_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_88_ce0)
            int_weights_88_shift0 <= weights_88_address0[0];
    end
end

// int_weights_89_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_89_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_89_BASE && raddr <= ADDR_WEIGHTS_89_HIGH)
            int_weights_89_read <= 1'b1;
        else
            int_weights_89_read <= 1'b0;
    end
end

// int_weights_89_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_89_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_89_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_89_HIGH)
            int_weights_89_write <= 1'b1;
        else if (w_hs)
            int_weights_89_write <= 1'b0;
    end
end

// int_weights_89_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_89_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_89_ce0)
            int_weights_89_shift0 <= weights_89_address0[0];
    end
end

// int_weights_90_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_90_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_90_BASE && raddr <= ADDR_WEIGHTS_90_HIGH)
            int_weights_90_read <= 1'b1;
        else
            int_weights_90_read <= 1'b0;
    end
end

// int_weights_90_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_90_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_90_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_90_HIGH)
            int_weights_90_write <= 1'b1;
        else if (w_hs)
            int_weights_90_write <= 1'b0;
    end
end

// int_weights_90_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_90_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_90_ce0)
            int_weights_90_shift0 <= weights_90_address0[0];
    end
end

// int_weights_91_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_91_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_91_BASE && raddr <= ADDR_WEIGHTS_91_HIGH)
            int_weights_91_read <= 1'b1;
        else
            int_weights_91_read <= 1'b0;
    end
end

// int_weights_91_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_91_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_91_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_91_HIGH)
            int_weights_91_write <= 1'b1;
        else if (w_hs)
            int_weights_91_write <= 1'b0;
    end
end

// int_weights_91_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_91_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_91_ce0)
            int_weights_91_shift0 <= weights_91_address0[0];
    end
end

// int_weights_92_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_92_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_92_BASE && raddr <= ADDR_WEIGHTS_92_HIGH)
            int_weights_92_read <= 1'b1;
        else
            int_weights_92_read <= 1'b0;
    end
end

// int_weights_92_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_92_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_92_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_92_HIGH)
            int_weights_92_write <= 1'b1;
        else if (w_hs)
            int_weights_92_write <= 1'b0;
    end
end

// int_weights_92_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_92_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_92_ce0)
            int_weights_92_shift0 <= weights_92_address0[0];
    end
end

// int_weights_93_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_93_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_93_BASE && raddr <= ADDR_WEIGHTS_93_HIGH)
            int_weights_93_read <= 1'b1;
        else
            int_weights_93_read <= 1'b0;
    end
end

// int_weights_93_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_93_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_93_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_93_HIGH)
            int_weights_93_write <= 1'b1;
        else if (w_hs)
            int_weights_93_write <= 1'b0;
    end
end

// int_weights_93_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_93_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_93_ce0)
            int_weights_93_shift0 <= weights_93_address0[0];
    end
end

// int_weights_94_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_94_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_94_BASE && raddr <= ADDR_WEIGHTS_94_HIGH)
            int_weights_94_read <= 1'b1;
        else
            int_weights_94_read <= 1'b0;
    end
end

// int_weights_94_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_94_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_94_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_94_HIGH)
            int_weights_94_write <= 1'b1;
        else if (w_hs)
            int_weights_94_write <= 1'b0;
    end
end

// int_weights_94_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_94_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_94_ce0)
            int_weights_94_shift0 <= weights_94_address0[0];
    end
end

// int_weights_95_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_95_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_95_BASE && raddr <= ADDR_WEIGHTS_95_HIGH)
            int_weights_95_read <= 1'b1;
        else
            int_weights_95_read <= 1'b0;
    end
end

// int_weights_95_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_95_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_95_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_95_HIGH)
            int_weights_95_write <= 1'b1;
        else if (w_hs)
            int_weights_95_write <= 1'b0;
    end
end

// int_weights_95_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_95_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_95_ce0)
            int_weights_95_shift0 <= weights_95_address0[0];
    end
end

// int_weights_96_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_96_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_96_BASE && raddr <= ADDR_WEIGHTS_96_HIGH)
            int_weights_96_read <= 1'b1;
        else
            int_weights_96_read <= 1'b0;
    end
end

// int_weights_96_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_96_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_96_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_96_HIGH)
            int_weights_96_write <= 1'b1;
        else if (w_hs)
            int_weights_96_write <= 1'b0;
    end
end

// int_weights_96_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_96_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_96_ce0)
            int_weights_96_shift0 <= weights_96_address0[0];
    end
end

// int_weights_97_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_97_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_97_BASE && raddr <= ADDR_WEIGHTS_97_HIGH)
            int_weights_97_read <= 1'b1;
        else
            int_weights_97_read <= 1'b0;
    end
end

// int_weights_97_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_97_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_97_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_97_HIGH)
            int_weights_97_write <= 1'b1;
        else if (w_hs)
            int_weights_97_write <= 1'b0;
    end
end

// int_weights_97_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_97_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_97_ce0)
            int_weights_97_shift0 <= weights_97_address0[0];
    end
end

// int_weights_98_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_98_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_98_BASE && raddr <= ADDR_WEIGHTS_98_HIGH)
            int_weights_98_read <= 1'b1;
        else
            int_weights_98_read <= 1'b0;
    end
end

// int_weights_98_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_98_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_98_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_98_HIGH)
            int_weights_98_write <= 1'b1;
        else if (w_hs)
            int_weights_98_write <= 1'b0;
    end
end

// int_weights_98_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_98_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_98_ce0)
            int_weights_98_shift0 <= weights_98_address0[0];
    end
end

// int_weights_99_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_99_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_99_BASE && raddr <= ADDR_WEIGHTS_99_HIGH)
            int_weights_99_read <= 1'b1;
        else
            int_weights_99_read <= 1'b0;
    end
end

// int_weights_99_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_99_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_99_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_99_HIGH)
            int_weights_99_write <= 1'b1;
        else if (w_hs)
            int_weights_99_write <= 1'b0;
    end
end

// int_weights_99_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_99_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_99_ce0)
            int_weights_99_shift0 <= weights_99_address0[0];
    end
end

// int_weights_100_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_100_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_100_BASE && raddr <= ADDR_WEIGHTS_100_HIGH)
            int_weights_100_read <= 1'b1;
        else
            int_weights_100_read <= 1'b0;
    end
end

// int_weights_100_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_100_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_100_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_100_HIGH)
            int_weights_100_write <= 1'b1;
        else if (w_hs)
            int_weights_100_write <= 1'b0;
    end
end

// int_weights_100_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_100_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_100_ce0)
            int_weights_100_shift0 <= weights_100_address0[0];
    end
end

// int_weights_101_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_101_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_101_BASE && raddr <= ADDR_WEIGHTS_101_HIGH)
            int_weights_101_read <= 1'b1;
        else
            int_weights_101_read <= 1'b0;
    end
end

// int_weights_101_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_101_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_101_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_101_HIGH)
            int_weights_101_write <= 1'b1;
        else if (w_hs)
            int_weights_101_write <= 1'b0;
    end
end

// int_weights_101_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_101_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_101_ce0)
            int_weights_101_shift0 <= weights_101_address0[0];
    end
end

// int_weights_102_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_102_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_102_BASE && raddr <= ADDR_WEIGHTS_102_HIGH)
            int_weights_102_read <= 1'b1;
        else
            int_weights_102_read <= 1'b0;
    end
end

// int_weights_102_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_102_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_102_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_102_HIGH)
            int_weights_102_write <= 1'b1;
        else if (w_hs)
            int_weights_102_write <= 1'b0;
    end
end

// int_weights_102_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_102_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_102_ce0)
            int_weights_102_shift0 <= weights_102_address0[0];
    end
end

// int_weights_103_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_103_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_103_BASE && raddr <= ADDR_WEIGHTS_103_HIGH)
            int_weights_103_read <= 1'b1;
        else
            int_weights_103_read <= 1'b0;
    end
end

// int_weights_103_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_103_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_103_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_103_HIGH)
            int_weights_103_write <= 1'b1;
        else if (w_hs)
            int_weights_103_write <= 1'b0;
    end
end

// int_weights_103_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_103_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_103_ce0)
            int_weights_103_shift0 <= weights_103_address0[0];
    end
end

// int_weights_104_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_104_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_104_BASE && raddr <= ADDR_WEIGHTS_104_HIGH)
            int_weights_104_read <= 1'b1;
        else
            int_weights_104_read <= 1'b0;
    end
end

// int_weights_104_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_104_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_104_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_104_HIGH)
            int_weights_104_write <= 1'b1;
        else if (w_hs)
            int_weights_104_write <= 1'b0;
    end
end

// int_weights_104_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_104_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_104_ce0)
            int_weights_104_shift0 <= weights_104_address0[0];
    end
end

// int_weights_105_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_105_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_105_BASE && raddr <= ADDR_WEIGHTS_105_HIGH)
            int_weights_105_read <= 1'b1;
        else
            int_weights_105_read <= 1'b0;
    end
end

// int_weights_105_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_105_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_105_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_105_HIGH)
            int_weights_105_write <= 1'b1;
        else if (w_hs)
            int_weights_105_write <= 1'b0;
    end
end

// int_weights_105_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_105_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_105_ce0)
            int_weights_105_shift0 <= weights_105_address0[0];
    end
end

// int_weights_106_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_106_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_106_BASE && raddr <= ADDR_WEIGHTS_106_HIGH)
            int_weights_106_read <= 1'b1;
        else
            int_weights_106_read <= 1'b0;
    end
end

// int_weights_106_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_106_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_106_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_106_HIGH)
            int_weights_106_write <= 1'b1;
        else if (w_hs)
            int_weights_106_write <= 1'b0;
    end
end

// int_weights_106_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_106_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_106_ce0)
            int_weights_106_shift0 <= weights_106_address0[0];
    end
end

// int_weights_107_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_107_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_107_BASE && raddr <= ADDR_WEIGHTS_107_HIGH)
            int_weights_107_read <= 1'b1;
        else
            int_weights_107_read <= 1'b0;
    end
end

// int_weights_107_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_107_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_107_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_107_HIGH)
            int_weights_107_write <= 1'b1;
        else if (w_hs)
            int_weights_107_write <= 1'b0;
    end
end

// int_weights_107_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_107_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_107_ce0)
            int_weights_107_shift0 <= weights_107_address0[0];
    end
end

// int_weights_108_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_108_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_108_BASE && raddr <= ADDR_WEIGHTS_108_HIGH)
            int_weights_108_read <= 1'b1;
        else
            int_weights_108_read <= 1'b0;
    end
end

// int_weights_108_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_108_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_108_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_108_HIGH)
            int_weights_108_write <= 1'b1;
        else if (w_hs)
            int_weights_108_write <= 1'b0;
    end
end

// int_weights_108_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_108_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_108_ce0)
            int_weights_108_shift0 <= weights_108_address0[0];
    end
end

// int_weights_109_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_109_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_109_BASE && raddr <= ADDR_WEIGHTS_109_HIGH)
            int_weights_109_read <= 1'b1;
        else
            int_weights_109_read <= 1'b0;
    end
end

// int_weights_109_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_109_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_109_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_109_HIGH)
            int_weights_109_write <= 1'b1;
        else if (w_hs)
            int_weights_109_write <= 1'b0;
    end
end

// int_weights_109_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_109_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_109_ce0)
            int_weights_109_shift0 <= weights_109_address0[0];
    end
end

// int_weights_110_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_110_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_110_BASE && raddr <= ADDR_WEIGHTS_110_HIGH)
            int_weights_110_read <= 1'b1;
        else
            int_weights_110_read <= 1'b0;
    end
end

// int_weights_110_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_110_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_110_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_110_HIGH)
            int_weights_110_write <= 1'b1;
        else if (w_hs)
            int_weights_110_write <= 1'b0;
    end
end

// int_weights_110_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_110_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_110_ce0)
            int_weights_110_shift0 <= weights_110_address0[0];
    end
end

// int_weights_111_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_111_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_111_BASE && raddr <= ADDR_WEIGHTS_111_HIGH)
            int_weights_111_read <= 1'b1;
        else
            int_weights_111_read <= 1'b0;
    end
end

// int_weights_111_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_111_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_111_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_111_HIGH)
            int_weights_111_write <= 1'b1;
        else if (w_hs)
            int_weights_111_write <= 1'b0;
    end
end

// int_weights_111_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_111_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_111_ce0)
            int_weights_111_shift0 <= weights_111_address0[0];
    end
end

// int_weights_112_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_112_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_112_BASE && raddr <= ADDR_WEIGHTS_112_HIGH)
            int_weights_112_read <= 1'b1;
        else
            int_weights_112_read <= 1'b0;
    end
end

// int_weights_112_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_112_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_112_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_112_HIGH)
            int_weights_112_write <= 1'b1;
        else if (w_hs)
            int_weights_112_write <= 1'b0;
    end
end

// int_weights_112_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_112_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_112_ce0)
            int_weights_112_shift0 <= weights_112_address0[0];
    end
end

// int_weights_113_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_113_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_113_BASE && raddr <= ADDR_WEIGHTS_113_HIGH)
            int_weights_113_read <= 1'b1;
        else
            int_weights_113_read <= 1'b0;
    end
end

// int_weights_113_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_113_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_113_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_113_HIGH)
            int_weights_113_write <= 1'b1;
        else if (w_hs)
            int_weights_113_write <= 1'b0;
    end
end

// int_weights_113_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_113_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_113_ce0)
            int_weights_113_shift0 <= weights_113_address0[0];
    end
end

// int_weights_114_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_114_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_114_BASE && raddr <= ADDR_WEIGHTS_114_HIGH)
            int_weights_114_read <= 1'b1;
        else
            int_weights_114_read <= 1'b0;
    end
end

// int_weights_114_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_114_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_114_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_114_HIGH)
            int_weights_114_write <= 1'b1;
        else if (w_hs)
            int_weights_114_write <= 1'b0;
    end
end

// int_weights_114_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_114_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_114_ce0)
            int_weights_114_shift0 <= weights_114_address0[0];
    end
end

// int_weights_115_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_115_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_115_BASE && raddr <= ADDR_WEIGHTS_115_HIGH)
            int_weights_115_read <= 1'b1;
        else
            int_weights_115_read <= 1'b0;
    end
end

// int_weights_115_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_115_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_115_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_115_HIGH)
            int_weights_115_write <= 1'b1;
        else if (w_hs)
            int_weights_115_write <= 1'b0;
    end
end

// int_weights_115_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_115_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_115_ce0)
            int_weights_115_shift0 <= weights_115_address0[0];
    end
end

// int_weights_116_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_116_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_116_BASE && raddr <= ADDR_WEIGHTS_116_HIGH)
            int_weights_116_read <= 1'b1;
        else
            int_weights_116_read <= 1'b0;
    end
end

// int_weights_116_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_116_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_116_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_116_HIGH)
            int_weights_116_write <= 1'b1;
        else if (w_hs)
            int_weights_116_write <= 1'b0;
    end
end

// int_weights_116_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_116_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_116_ce0)
            int_weights_116_shift0 <= weights_116_address0[0];
    end
end

// int_weights_117_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_117_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_117_BASE && raddr <= ADDR_WEIGHTS_117_HIGH)
            int_weights_117_read <= 1'b1;
        else
            int_weights_117_read <= 1'b0;
    end
end

// int_weights_117_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_117_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_117_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_117_HIGH)
            int_weights_117_write <= 1'b1;
        else if (w_hs)
            int_weights_117_write <= 1'b0;
    end
end

// int_weights_117_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_117_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_117_ce0)
            int_weights_117_shift0 <= weights_117_address0[0];
    end
end

// int_weights_118_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_118_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_118_BASE && raddr <= ADDR_WEIGHTS_118_HIGH)
            int_weights_118_read <= 1'b1;
        else
            int_weights_118_read <= 1'b0;
    end
end

// int_weights_118_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_118_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_118_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_118_HIGH)
            int_weights_118_write <= 1'b1;
        else if (w_hs)
            int_weights_118_write <= 1'b0;
    end
end

// int_weights_118_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_118_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_118_ce0)
            int_weights_118_shift0 <= weights_118_address0[0];
    end
end

// int_weights_119_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_119_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_119_BASE && raddr <= ADDR_WEIGHTS_119_HIGH)
            int_weights_119_read <= 1'b1;
        else
            int_weights_119_read <= 1'b0;
    end
end

// int_weights_119_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_119_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_119_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_119_HIGH)
            int_weights_119_write <= 1'b1;
        else if (w_hs)
            int_weights_119_write <= 1'b0;
    end
end

// int_weights_119_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_119_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_119_ce0)
            int_weights_119_shift0 <= weights_119_address0[0];
    end
end

// int_weights_120_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_120_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_120_BASE && raddr <= ADDR_WEIGHTS_120_HIGH)
            int_weights_120_read <= 1'b1;
        else
            int_weights_120_read <= 1'b0;
    end
end

// int_weights_120_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_120_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_120_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_120_HIGH)
            int_weights_120_write <= 1'b1;
        else if (w_hs)
            int_weights_120_write <= 1'b0;
    end
end

// int_weights_120_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_120_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_120_ce0)
            int_weights_120_shift0 <= weights_120_address0[0];
    end
end

// int_weights_121_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_121_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_121_BASE && raddr <= ADDR_WEIGHTS_121_HIGH)
            int_weights_121_read <= 1'b1;
        else
            int_weights_121_read <= 1'b0;
    end
end

// int_weights_121_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_121_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_121_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_121_HIGH)
            int_weights_121_write <= 1'b1;
        else if (w_hs)
            int_weights_121_write <= 1'b0;
    end
end

// int_weights_121_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_121_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_121_ce0)
            int_weights_121_shift0 <= weights_121_address0[0];
    end
end

// int_weights_122_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_122_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_122_BASE && raddr <= ADDR_WEIGHTS_122_HIGH)
            int_weights_122_read <= 1'b1;
        else
            int_weights_122_read <= 1'b0;
    end
end

// int_weights_122_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_122_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_122_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_122_HIGH)
            int_weights_122_write <= 1'b1;
        else if (w_hs)
            int_weights_122_write <= 1'b0;
    end
end

// int_weights_122_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_122_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_122_ce0)
            int_weights_122_shift0 <= weights_122_address0[0];
    end
end

// int_weights_123_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_123_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_123_BASE && raddr <= ADDR_WEIGHTS_123_HIGH)
            int_weights_123_read <= 1'b1;
        else
            int_weights_123_read <= 1'b0;
    end
end

// int_weights_123_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_123_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_123_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_123_HIGH)
            int_weights_123_write <= 1'b1;
        else if (w_hs)
            int_weights_123_write <= 1'b0;
    end
end

// int_weights_123_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_123_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_123_ce0)
            int_weights_123_shift0 <= weights_123_address0[0];
    end
end

// int_weights_124_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_124_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_124_BASE && raddr <= ADDR_WEIGHTS_124_HIGH)
            int_weights_124_read <= 1'b1;
        else
            int_weights_124_read <= 1'b0;
    end
end

// int_weights_124_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_124_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_124_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_124_HIGH)
            int_weights_124_write <= 1'b1;
        else if (w_hs)
            int_weights_124_write <= 1'b0;
    end
end

// int_weights_124_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_124_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_124_ce0)
            int_weights_124_shift0 <= weights_124_address0[0];
    end
end

// int_weights_125_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_125_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_125_BASE && raddr <= ADDR_WEIGHTS_125_HIGH)
            int_weights_125_read <= 1'b1;
        else
            int_weights_125_read <= 1'b0;
    end
end

// int_weights_125_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_125_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_125_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_125_HIGH)
            int_weights_125_write <= 1'b1;
        else if (w_hs)
            int_weights_125_write <= 1'b0;
    end
end

// int_weights_125_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_125_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_125_ce0)
            int_weights_125_shift0 <= weights_125_address0[0];
    end
end

// int_weights_126_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_126_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_126_BASE && raddr <= ADDR_WEIGHTS_126_HIGH)
            int_weights_126_read <= 1'b1;
        else
            int_weights_126_read <= 1'b0;
    end
end

// int_weights_126_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_126_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_126_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_126_HIGH)
            int_weights_126_write <= 1'b1;
        else if (w_hs)
            int_weights_126_write <= 1'b0;
    end
end

// int_weights_126_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_126_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_126_ce0)
            int_weights_126_shift0 <= weights_126_address0[0];
    end
end

// int_weights_127_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_127_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_127_BASE && raddr <= ADDR_WEIGHTS_127_HIGH)
            int_weights_127_read <= 1'b1;
        else
            int_weights_127_read <= 1'b0;
    end
end

// int_weights_127_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_127_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_127_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_127_HIGH)
            int_weights_127_write <= 1'b1;
        else if (w_hs)
            int_weights_127_write <= 1'b0;
    end
end

// int_weights_127_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_127_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_127_ce0)
            int_weights_127_shift0 <= weights_127_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module nnlayer_multiDSP_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

