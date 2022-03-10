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
// 0x020 : Data signal of numOfInNeurons
//         bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x010 ~
// 0x017 : Memory 'output_r' (3 * 16b)
//         Word n : bit [15: 0] - output_r[2n]
//                  bit [31:16] - output_r[2n+1]
// 0x018 ~
// 0x01f : Memory 'bias' (3 * 16b)
//         Word n : bit [15: 0] - bias[2n]
//                  bit [31:16] - bias[2n+1]
// 0x100 ~
// 0x1ff : Memory 'input_r' (128 * 16b)
//         Word n : bit [15: 0] - input_r[2n]
//                  bit [31:16] - input_r[2n+1]
// 0x400 ~
// 0x7ff : Memory 'weights' (384 * 16b)
//         Word n : bit [15: 0] - weights[2n]
//                  bit [31:16] - weights[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRUNLAYER_CONTROL_ADDR_AP_CTRL             0x000
#define XRUNLAYER_CONTROL_ADDR_GIE                 0x004
#define XRUNLAYER_CONTROL_ADDR_IER                 0x008
#define XRUNLAYER_CONTROL_ADDR_ISR                 0x00c
#define XRUNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA 0x020
#define XRUNLAYER_CONTROL_BITS_NUMOFINNEURONS_DATA 16
#define XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE       0x010
#define XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH       0x017
#define XRUNLAYER_CONTROL_WIDTH_OUTPUT_R           16
#define XRUNLAYER_CONTROL_DEPTH_OUTPUT_R           3
#define XRUNLAYER_CONTROL_ADDR_BIAS_BASE           0x018
#define XRUNLAYER_CONTROL_ADDR_BIAS_HIGH           0x01f
#define XRUNLAYER_CONTROL_WIDTH_BIAS               16
#define XRUNLAYER_CONTROL_DEPTH_BIAS               3
#define XRUNLAYER_CONTROL_ADDR_INPUT_R_BASE        0x100
#define XRUNLAYER_CONTROL_ADDR_INPUT_R_HIGH        0x1ff
#define XRUNLAYER_CONTROL_WIDTH_INPUT_R            16
#define XRUNLAYER_CONTROL_DEPTH_INPUT_R            128
#define XRUNLAYER_CONTROL_ADDR_WEIGHTS_BASE        0x400
#define XRUNLAYER_CONTROL_ADDR_WEIGHTS_HIGH        0x7ff
#define XRUNLAYER_CONTROL_WIDTH_WEIGHTS            16
#define XRUNLAYER_CONTROL_DEPTH_WEIGHTS            384

