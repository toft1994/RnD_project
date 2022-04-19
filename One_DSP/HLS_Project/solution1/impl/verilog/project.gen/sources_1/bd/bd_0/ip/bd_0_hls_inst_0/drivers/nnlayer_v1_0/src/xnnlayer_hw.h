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
// 0x010 : Data signal of numOfInNeurons
//         bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x014 : reserved
// 0x018 : Data signal of numOfOutNeurons
//         bit 15~0 - numOfOutNeurons[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x080 : Data signal of activation
//         bit 7~0 - activation[7:0] (Read/Write)
//         others  - reserved
// 0x084 : reserved
// 0x020 ~
// 0x03f : Memory 'input_r' (16 * 16b)
//         Word n : bit [15: 0] - input_r[2n]
//                  bit [31:16] - input_r[2n+1]
// 0x040 ~
// 0x05f : Memory 'output_r' (16 * 16b)
//         Word n : bit [15: 0] - output_r[2n]
//                  bit [31:16] - output_r[2n+1]
// 0x060 ~
// 0x07f : Memory 'bias' (16 * 16b)
//         Word n : bit [15: 0] - bias[2n]
//                  bit [31:16] - bias[2n+1]
// 0x200 ~
// 0x3ff : Memory 'weights' (256 * 16b)
//         Word n : bit [15: 0] - weights[2n]
//                  bit [31:16] - weights[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNNLAYER_CONTROL_ADDR_AP_CTRL              0x000
#define XNNLAYER_CONTROL_ADDR_GIE                  0x004
#define XNNLAYER_CONTROL_ADDR_IER                  0x008
#define XNNLAYER_CONTROL_ADDR_ISR                  0x00c
#define XNNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA  0x010
#define XNNLAYER_CONTROL_BITS_NUMOFINNEURONS_DATA  16
#define XNNLAYER_CONTROL_ADDR_NUMOFOUTNEURONS_DATA 0x018
#define XNNLAYER_CONTROL_BITS_NUMOFOUTNEURONS_DATA 16
#define XNNLAYER_CONTROL_ADDR_ACTIVATION_DATA      0x080
#define XNNLAYER_CONTROL_BITS_ACTIVATION_DATA      8
#define XNNLAYER_CONTROL_ADDR_INPUT_R_BASE         0x020
#define XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH         0x03f
#define XNNLAYER_CONTROL_WIDTH_INPUT_R             16
#define XNNLAYER_CONTROL_DEPTH_INPUT_R             16
#define XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE        0x040
#define XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH        0x05f
#define XNNLAYER_CONTROL_WIDTH_OUTPUT_R            16
#define XNNLAYER_CONTROL_DEPTH_OUTPUT_R            16
#define XNNLAYER_CONTROL_ADDR_BIAS_BASE            0x060
#define XNNLAYER_CONTROL_ADDR_BIAS_HIGH            0x07f
#define XNNLAYER_CONTROL_WIDTH_BIAS                16
#define XNNLAYER_CONTROL_DEPTH_BIAS                16
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE         0x200
#define XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH         0x3ff
#define XNNLAYER_CONTROL_WIDTH_WEIGHTS             16
#define XNNLAYER_CONTROL_DEPTH_WEIGHTS             256

