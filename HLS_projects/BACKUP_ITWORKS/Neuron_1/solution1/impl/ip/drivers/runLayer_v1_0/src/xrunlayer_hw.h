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
// 0x010 : Data signal of input_r
//         bit 31~0 - input_r[31:0] (Read/Write)
// 0x014 : Data signal of input_r
//         bit 31~0 - input_r[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of weights
//         bit 31~0 - weights[31:0] (Read/Write)
// 0x020 : Data signal of weights
//         bit 31~0 - weights[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of bias
//         bit 31~0 - bias[31:0] (Read/Write)
// 0x02c : Data signal of bias
//         bit 31~0 - bias[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of numOfInNeurons
//         bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x038 : reserved
// 0x100 ~
// 0x1ff : Memory 'output_r' (128 * 16b)
//         Word n : bit [15: 0] - output_r[2n]
//                  bit [31:16] - output_r[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRUNLAYER_CONTROL_ADDR_AP_CTRL             0x000
#define XRUNLAYER_CONTROL_ADDR_GIE                 0x004
#define XRUNLAYER_CONTROL_ADDR_IER                 0x008
#define XRUNLAYER_CONTROL_ADDR_ISR                 0x00c
#define XRUNLAYER_CONTROL_ADDR_INPUT_R_DATA        0x010
#define XRUNLAYER_CONTROL_BITS_INPUT_R_DATA        64
#define XRUNLAYER_CONTROL_ADDR_WEIGHTS_DATA        0x01c
#define XRUNLAYER_CONTROL_BITS_WEIGHTS_DATA        64
#define XRUNLAYER_CONTROL_ADDR_BIAS_DATA           0x028
#define XRUNLAYER_CONTROL_BITS_BIAS_DATA           64
#define XRUNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA 0x034
#define XRUNLAYER_CONTROL_BITS_NUMOFINNEURONS_DATA 16
#define XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE       0x100
#define XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH       0x1ff
#define XRUNLAYER_CONTROL_WIDTH_OUTPUT_R           16
#define XRUNLAYER_CONTROL_DEPTH_OUTPUT_R           128

