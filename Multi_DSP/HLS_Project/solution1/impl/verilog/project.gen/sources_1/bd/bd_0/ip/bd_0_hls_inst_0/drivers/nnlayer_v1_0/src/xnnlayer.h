// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XNNLAYER_H
#define XNNLAYER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xnnlayer_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XNnlayer_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XNnlayer;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNnlayer_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNnlayer_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNnlayer_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNnlayer_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XNnlayer_Initialize(XNnlayer *InstancePtr, u16 DeviceId);
XNnlayer_Config* XNnlayer_LookupConfig(u16 DeviceId);
int XNnlayer_CfgInitialize(XNnlayer *InstancePtr, XNnlayer_Config *ConfigPtr);
#else
int XNnlayer_Initialize(XNnlayer *InstancePtr, const char* InstanceName);
int XNnlayer_Release(XNnlayer *InstancePtr);
#endif

void XNnlayer_Start(XNnlayer *InstancePtr);
u32 XNnlayer_IsDone(XNnlayer *InstancePtr);
u32 XNnlayer_IsIdle(XNnlayer *InstancePtr);
u32 XNnlayer_IsReady(XNnlayer *InstancePtr);
void XNnlayer_EnableAutoRestart(XNnlayer *InstancePtr);
void XNnlayer_DisableAutoRestart(XNnlayer *InstancePtr);

void XNnlayer_Set_input_0(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_0(XNnlayer *InstancePtr);
void XNnlayer_Set_input_1(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_1(XNnlayer *InstancePtr);
void XNnlayer_Set_input_2(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_2(XNnlayer *InstancePtr);
void XNnlayer_Set_input_3(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_3(XNnlayer *InstancePtr);
void XNnlayer_Set_input_4(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_4(XNnlayer *InstancePtr);
void XNnlayer_Set_input_5(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_5(XNnlayer *InstancePtr);
void XNnlayer_Set_input_6(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_6(XNnlayer *InstancePtr);
void XNnlayer_Set_input_7(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_7(XNnlayer *InstancePtr);
void XNnlayer_Set_input_8(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_8(XNnlayer *InstancePtr);
void XNnlayer_Set_input_9(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_9(XNnlayer *InstancePtr);
void XNnlayer_Set_input_10(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_10(XNnlayer *InstancePtr);
void XNnlayer_Set_input_11(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_11(XNnlayer *InstancePtr);
void XNnlayer_Set_input_12(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_12(XNnlayer *InstancePtr);
void XNnlayer_Set_input_13(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_13(XNnlayer *InstancePtr);
void XNnlayer_Set_input_14(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_14(XNnlayer *InstancePtr);
void XNnlayer_Set_input_15(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_input_15(XNnlayer *InstancePtr);
void XNnlayer_Set_numOfInNeurons(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_numOfInNeurons(XNnlayer *InstancePtr);
void XNnlayer_Set_numOfOutNeurons(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_numOfOutNeurons(XNnlayer *InstancePtr);
void XNnlayer_Set_activation(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_activation(XNnlayer *InstancePtr);
u32 XNnlayer_Get_output_r_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_output_r_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_output_r_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_output_r_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_output_r_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_output_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_output_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_output_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_output_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_bias_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_bias_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_bias_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_bias_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_bias_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_bias_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_bias_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_bias_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_bias_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_0_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_0_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_0_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_0_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_0_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_0_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_0_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_0_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_0_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_1_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_1_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_1_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_1_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_1_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_1_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_1_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_1_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_1_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_2_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_2_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_2_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_2_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_2_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_2_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_2_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_2_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_2_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_3_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_3_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_3_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_3_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_3_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_3_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_3_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_3_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_3_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_4_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_4_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_4_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_4_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_4_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_4_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_4_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_4_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_4_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_5_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_5_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_5_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_5_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_5_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_5_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_5_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_5_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_5_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_6_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_6_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_6_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_6_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_6_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_6_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_6_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_6_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_6_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_7_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_7_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_7_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_7_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_7_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_7_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_7_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_7_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_7_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_8_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_8_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_8_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_8_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_8_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_8_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_8_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_8_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_8_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_9_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_9_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_9_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_9_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_9_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_9_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_9_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_9_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_9_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_10_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_10_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_10_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_10_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_10_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_10_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_10_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_10_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_10_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_11_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_11_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_11_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_11_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_11_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_11_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_11_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_11_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_11_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_12_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_12_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_12_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_12_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_12_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_12_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_12_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_12_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_12_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_13_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_13_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_13_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_13_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_13_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_13_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_13_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_13_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_13_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_14_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_14_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_14_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_14_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_14_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_14_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_14_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_14_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_14_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Get_weights_15_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_15_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_15_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_15_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_15_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_15_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_15_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_15_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_15_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);

void XNnlayer_InterruptGlobalEnable(XNnlayer *InstancePtr);
void XNnlayer_InterruptGlobalDisable(XNnlayer *InstancePtr);
void XNnlayer_InterruptEnable(XNnlayer *InstancePtr, u32 Mask);
void XNnlayer_InterruptDisable(XNnlayer *InstancePtr, u32 Mask);
void XNnlayer_InterruptClear(XNnlayer *InstancePtr, u32 Mask);
u32 XNnlayer_InterruptGetEnabled(XNnlayer *InstancePtr);
u32 XNnlayer_InterruptGetStatus(XNnlayer *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
