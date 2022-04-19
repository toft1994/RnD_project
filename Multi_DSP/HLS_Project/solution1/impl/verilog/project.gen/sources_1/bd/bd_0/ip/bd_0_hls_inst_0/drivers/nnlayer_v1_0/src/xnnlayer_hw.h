// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (COR/TOW)
//         bit 1 - ap_ready (COR/TOW)
//         bit 5 - ap_local_deadlock (COR/TOW)
//         others - reserved
// 0x010 : Data signal of input_0
//         bit 15~0 - input_0[15:0] (Read/Write)
//         others   - reserved
// 0x014 : reserved
// 0x018 : Data signal of input_1
//         bit 15~0 - input_1[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x020 : Data signal of input_2
//         bit 15~0 - input_2[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x028 : Data signal of input_3
//         bit 15~0 - input_3[15:0] (Read/Write)
//         others   - reserved
// 0x02c : reserved
// 0x030 : Data signal of input_4
//         bit 15~0 - input_4[15:0] (Read/Write)
//         others   - reserved
// 0x034 : reserved
// 0x038 : Data signal of input_5
//         bit 15~0 - input_5[15:0] (Read/Write)
//         others   - reserved
// 0x03c : reserved
// 0x040 : Data signal of input_6
//         bit 15~0 - input_6[15:0] (Read/Write)
//         others   - reserved
// 0x044 : reserved
// 0x048 : Data signal of input_7
//         bit 15~0 - input_7[15:0] (Read/Write)
//         others   - reserved
// 0x04c : reserved
// 0x050 : Data signal of input_8
//         bit 15~0 - input_8[15:0] (Read/Write)
//         others   - reserved
// 0x054 : reserved
// 0x058 : Data signal of input_9
//         bit 15~0 - input_9[15:0] (Read/Write)
//         others   - reserved
// 0x05c : reserved
// 0x060 : Data signal of input_10
//         bit 15~0 - input_10[15:0] (Read/Write)
//         others   - reserved
// 0x064 : reserved
// 0x068 : Data signal of input_11
//         bit 15~0 - input_11[15:0] (Read/Write)
//         others   - reserved
// 0x06c : reserved
// 0x070 : Data signal of input_12
//         bit 15~0 - input_12[15:0] (Read/Write)
//         others   - reserved
// 0x074 : reserved
// 0x078 : Data signal of input_13
//         bit 15~0 - input_13[15:0] (Read/Write)
//         others   - reserved
// 0x07c : reserved
// 0x080 : Data signal of input_14
//         bit 15~0 - input_14[15:0] (Read/Write)
//         others   - reserved
// 0x084 : reserved
// 0x088 : Data signal of input_15
//         bit 15~0 - input_15[15:0] (Read/Write)
//         others   - reserved
// 0x08c : reserved
// 0x090 : Data signal of numOfInNeurons
//         bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x094 : reserved
// 0x098 : Data signal of numOfOutNeurons
//         bit 15~0 - numOfOutNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x09c : reserved
// 0x2e0 : Data signal of activation
//         bit 7~0 - activation[7:0] (Read/Write)
//         others  - reserved
// 0x2e4 : reserved
// 0x0a0 ~
// 0x0bf : Memory 'output_r' (16 * 16b)
//         Word n : bit [15: 0] - output_r[2n]
//                  bit [31:16] - output_r[2n+1]
// 0x0c0 ~
// 0x0df : Memory 'bias' (16 * 16b)
//         Word n : bit [15: 0] - bias[2n]
//                  bit [31:16] - bias[2n+1]
// 0x0e0 ~
// 0x0ff : Memory 'weights_0' (16 * 16b)
//         Word n : bit [15: 0] - weights_0[2n]
//                  bit [31:16] - weights_0[2n+1]
// 0x100 ~
// 0x11f : Memory 'weights_1' (16 * 16b)
//         Word n : bit [15: 0] - weights_1[2n]
//                  bit [31:16] - weights_1[2n+1]
// 0x120 ~
// 0x13f : Memory 'weights_2' (16 * 16b)
//         Word n : bit [15: 0] - weights_2[2n]
//                  bit [31:16] - weights_2[2n+1]
// 0x140 ~
// 0x15f : Memory 'weights_3' (16 * 16b)
//         Word n : bit [15: 0] - weights_3[2n]
//                  bit [31:16] - weights_3[2n+1]
// 0x160 ~
// 0x17f : Memory 'weights_4' (16 * 16b)
//         Word n : bit [15: 0] - weights_4[2n]
//                  bit [31:16] - weights_4[2n+1]
// 0x180 ~
// 0x19f : Memory 'weights_5' (16 * 16b)
//         Word n : bit [15: 0] - weights_5[2n]
//                  bit [31:16] - weights_5[2n+1]
// 0x1a0 ~
// 0x1bf : Memory 'weights_6' (16 * 16b)
//         Word n : bit [15: 0] - weights_6[2n]
//                  bit [31:16] - weights_6[2n+1]
// 0x1c0 ~
// 0x1df : Memory 'weights_7' (16 * 16b)
//         Word n : bit [15: 0] - weights_7[2n]
//                  bit [31:16] - weights_7[2n+1]
// 0x1e0 ~
// 0x1ff : Memory 'weights_8' (16 * 16b)
//         Word n : bit [15: 0] - weights_8[2n]
//                  bit [31:16] - weights_8[2n+1]
// 0x200 ~
// 0x21f : Memory 'weights_9' (16 * 16b)
//         Word n : bit [15: 0] - weights_9[2n]
//                  bit [31:16] - weights_9[2n+1]
// 0x220 ~
// 0x23f : Memory 'weights_10' (16 * 16b)
//         Word n : bit [15: 0] - weights_10[2n]
//                  bit [31:16] - weights_10[2n+1]
// 0x240 ~
// 0x25f : Memory 'weights_11' (16 * 16b)
//         Word n : bit [15: 0] - weights_11[2n]
//                  bit [31:16] - weights_11[2n+1]
// 0x260 ~
// 0x27f : Memory 'weights_12' (16 * 16b)
//         Word n : bit [15: 0] - weights_12[2n]
//                  bit [31:16] - weights_12[2n+1]
// 0x280 ~
// 0x29f : Memory 'weights_13' (16 * 16b)
//         Word n : bit [15: 0] - weights_13[2n]
//                  bit [31:16] - weights_13[2n+1]
// 0x2a0 ~
// 0x2bf : Memory 'weights_14' (16 * 16b)
//         Word n : bit [15: 0] - weights_14[2n]
//                  bit [31:16] - weights_14[2n+1]
// 0x2c0 ~
// 0x2df : Memory 'weights_15' (16 * 16b)
//         Word n : bit [15: 0] - weights_15[2n]
//                  bit [31:16] - weights_15[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNNLAYER_CONTROL_ADDR_AP_CTRL              0x000
#define XNNLAYER_CONTROL_ADDR_GIE                  0x004
#define XNNLAYER_CONTROL_ADDR_IER                  0x008
#define XNNLAYER_CONTROL_ADDR_ISR                  0x00c
#define XNNLAYER_CONTROL_ADDR_INPUT_0_DATA         0x010
#define XNNLAYER_CONTROL_BITS_INPUT_0_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_1_DATA         0x018
#define XNNLAYER_CONTROL_BITS_INPUT_1_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_2_DATA         0x020
#define XNNLAYER_CONTROL_BITS_INPUT_2_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_3_DATA         0x028
#define XNNLAYER_CONTROL_BITS_INPUT_3_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_4_DATA         0x030
#define XNNLAYER_CONTROL_BITS_INPUT_4_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_5_DATA         0x038
#define XNNLAYER_CONTROL_BITS_INPUT_5_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_6_DATA         0x040
#define XNNLAYER_CONTROL_BITS_INPUT_6_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_7_DATA         0x048
#define XNNLAYER_CONTROL_BITS_INPUT_7_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_8_DATA         0x050
#define XNNLAYER_CONTROL_BITS_INPUT_8_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_9_DATA         0x058
#define XNNLAYER_CONTROL_BITS_INPUT_9_DATA         16
#define XNNLAYER_CONTROL_ADDR_INPUT_10_DATA        0x060
#define XNNLAYER_CONTROL_BITS_INPUT_10_DATA        16
#define XNNLAYER_CONTROL_ADDR_INPUT_11_DATA        0x068
#define XNNLAYER_CONTROL_BITS_INPUT_11_DATA        16
#define XNNLAYER_CONTROL_ADDR_INPUT_12_DATA        0x070
#define XNNLAYER_CONTROL_BITS_INPUT_12_DATA        16
#define XNNLAYER_CONTROL_ADDR_INPUT_13_DATA        0x078
#define XNNLAYER_CONTROL_BITS_INPUT_13_DATA        16
#define XNNLAYER_CONTROL_ADDR_INPUT_14_DATA        0x080
#define XNNLAYER_CONTROL_BITS_INPUT_14_DATA        16
#define XNNLAYER_CONTROL_ADDR_INPUT_15_DATA        0x088
#define XNNLAYER_CONTROL_BITS_INPUT_15_DATA        16
#define XNNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA  0x090
#define XNNLAYER_CONTROL_BITS_NUMOFINNEURONS_DATA  16
#define XNNLAYER_CONTROL_ADDR_NUMOFOUTNEURONS_DATA 0x098
#define XNNLAYER_CONTROL_BITS_NUMOFOUTNEURONS_DATA 16
#define XNNLAYER_CONTROL_ADDR_ACTIVATION_DATA      0x2e0
#define XNNLAYER_CONTROL_BITS_ACTIVATION_DATA      8
#define XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE        0x0a0
#define XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH        0x0bf
#define XNNLAYER_CONTROL_WIDTH_OUTPUT_R            16
#define XNNLAYER_CONTROL_DEPTH_OUTPUT_R            16
#define XNNLAYER_CONTROL_ADDR_BIAS_BASE            0x0c0
#define XNNLAYER_CONTROL_ADDR_BIAS_HIGH            0x0df
#define XNNLAYER_CONTROL_WIDTH_BIAS                16
#define XNNLAYER_CONTROL_DEPTH_BIAS                16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE       0x0e0
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH       0x0ff
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_0           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_0           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE       0x100
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH       0x11f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_1           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_1           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE       0x120
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH       0x13f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_2           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_2           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE       0x140
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH       0x15f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_3           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_3           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE       0x160
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH       0x17f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_4           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_4           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE       0x180
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH       0x19f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_5           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_5           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE       0x1a0
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH       0x1bf
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_6           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_6           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE       0x1c0
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH       0x1df
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_7           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_7           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE       0x1e0
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH       0x1ff
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_8           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_8           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE       0x200
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH       0x21f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_9           16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_9           16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE      0x220
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH      0x23f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_10          16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_10          16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE      0x240
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH      0x25f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_11          16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_11          16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE      0x260
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH      0x27f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_12          16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_12          16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE      0x280
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH      0x29f
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_13          16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_13          16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE      0x2a0
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH      0x2bf
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_14          16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_14          16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE      0x2c0
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH      0x2df
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS_15          16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS_15          16

