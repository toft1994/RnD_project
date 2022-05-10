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
// 0x0010 : Data signal of numOfInputNeurons
//          bit 15~0 - numOfInputNeurons[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of numOfOutputNeurons
//          bit 15~0 - numOfOutputNeurons[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of activation
//          bit 7~0 - activation[7:0] (Read/Write)
//          others  - reserved
// 0x0024 : reserved
// 0x0100 ~
// 0x01ff : Memory 'input_r' (128 * 16b)
//          Word n : bit [15: 0] - input_r[2n]
//                   bit [31:16] - input_r[2n+1]
// 0x0200 ~
// 0x02ff : Memory 'output_r' (128 * 16b)
//          Word n : bit [15: 0] - output_r[2n]
//                   bit [31:16] - output_r[2n+1]
// 0x0300 ~
// 0x03ff : Memory 'bias' (128 * 16b)
//          Word n : bit [15: 0] - bias[2n]
//                   bit [31:16] - bias[2n+1]
// 0x8000 ~
// 0xffff : Memory 'weights' (16384 * 16b)
//          Word n : bit [15: 0] - weights[2n]
//                   bit [31:16] - weights[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                 0x0000
#define CONTROL_ADDR_GIE                     0x0004
#define CONTROL_ADDR_IER                     0x0008
#define CONTROL_ADDR_ISR                     0x000c
#define CONTROL_ADDR_NUMOFINPUTNEURONS_DATA  0x0010
#define CONTROL_BITS_NUMOFINPUTNEURONS_DATA  16
#define CONTROL_ADDR_NUMOFOUTPUTNEURONS_DATA 0x0018
#define CONTROL_BITS_NUMOFOUTPUTNEURONS_DATA 16
#define CONTROL_ADDR_ACTIVATION_DATA         0x0020
#define CONTROL_BITS_ACTIVATION_DATA         8
#define CONTROL_ADDR_INPUT_R_BASE            0x0100
#define CONTROL_ADDR_INPUT_R_HIGH            0x01ff
#define CONTROL_WIDTH_INPUT_R                16
#define CONTROL_DEPTH_INPUT_R                128
#define CONTROL_ADDR_OUTPUT_R_BASE           0x0200
#define CONTROL_ADDR_OUTPUT_R_HIGH           0x02ff
#define CONTROL_WIDTH_OUTPUT_R               16
#define CONTROL_DEPTH_OUTPUT_R               128
#define CONTROL_ADDR_BIAS_BASE               0x0300
#define CONTROL_ADDR_BIAS_HIGH               0x03ff
#define CONTROL_WIDTH_BIAS                   16
#define CONTROL_DEPTH_BIAS                   128
#define CONTROL_ADDR_WEIGHTS_BASE            0x8000
#define CONTROL_ADDR_WEIGHTS_HIGH            0xffff
#define CONTROL_WIDTH_WEIGHTS                16
#define CONTROL_DEPTH_WEIGHTS                16384
