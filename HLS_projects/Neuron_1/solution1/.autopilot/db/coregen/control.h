// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read/COR)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 7  - auto_restart (Read/Write)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/TOW)
//           bit 0 - ap_done (COR/TOW)
//           bit 1 - ap_ready (COR/TOW)
//           bit 5 - ap_local_deadlock (COR/TOW)
//           others - reserved
// 0x00010 : Data signal of numOfInNeurons
//           bit 15~0 - numOfInNeurons[15:0] (Read/Write)
//           others   - reserved
// 0x00014 : reserved
// 0x00018 : Data signal of numOfOutNeurons
//           bit 15~0 - numOfOutNeurons[15:0] (Read/Write)
//           others   - reserved
// 0x0001c : reserved
// 0x00020 : Data signal of activation
//           bit 7~0 - activation[7:0] (Read/Write)
//           others  - reserved
// 0x00024 : reserved
// 0x00200 ~
// 0x003ff : Memory 'input_s' (256 * 16b)
//           Word n : bit [15: 0] - input_s[2n]
//                    bit [31:16] - input_s[2n+1]
// 0x00400 ~
// 0x005ff : Memory 'output_r' (256 * 16b)
//           Word n : bit [15: 0] - output_r[2n]
//                    bit [31:16] - output_r[2n+1]
// 0x00600 ~
// 0x007ff : Memory 'bias_s' (256 * 16b)
//           Word n : bit [15: 0] - bias_s[2n]
//                    bit [31:16] - bias_s[2n+1]
// 0x20000 ~
// 0x3ffff : Memory 'weights_s' (65536 * 16b)
//           Word n : bit [15: 0] - weights_s[2n]
//                    bit [31:16] - weights_s[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL              0x00000
#define CONTROL_ADDR_GIE                  0x00004
#define CONTROL_ADDR_IER                  0x00008
#define CONTROL_ADDR_ISR                  0x0000c
#define CONTROL_ADDR_NUMOFINNEURONS_DATA  0x00010
#define CONTROL_BITS_NUMOFINNEURONS_DATA  16
#define CONTROL_ADDR_NUMOFOUTNEURONS_DATA 0x00018
#define CONTROL_BITS_NUMOFOUTNEURONS_DATA 16
#define CONTROL_ADDR_ACTIVATION_DATA      0x00020
#define CONTROL_BITS_ACTIVATION_DATA      8
#define CONTROL_ADDR_INPUT_S_BASE         0x00200
#define CONTROL_ADDR_INPUT_S_HIGH         0x003ff
#define CONTROL_WIDTH_INPUT_S             16
#define CONTROL_DEPTH_INPUT_S             256
#define CONTROL_ADDR_OUTPUT_R_BASE        0x00400
#define CONTROL_ADDR_OUTPUT_R_HIGH        0x005ff
#define CONTROL_WIDTH_OUTPUT_R            16
#define CONTROL_DEPTH_OUTPUT_R            256
#define CONTROL_ADDR_BIAS_S_BASE          0x00600
#define CONTROL_ADDR_BIAS_S_HIGH          0x007ff
#define CONTROL_WIDTH_BIAS_S              16
#define CONTROL_DEPTH_BIAS_S              256
#define CONTROL_ADDR_WEIGHTS_S_BASE       0x20000
#define CONTROL_ADDR_WEIGHTS_S_HIGH       0x3ffff
#define CONTROL_WIDTH_WEIGHTS_S           16
#define CONTROL_DEPTH_WEIGHTS_S           65536