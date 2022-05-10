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

void XNnlayer_Set_numOfInputNeurons(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_numOfInputNeurons(XNnlayer *InstancePtr);
void XNnlayer_Set_numOfOutputNeurons(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_numOfOutputNeurons(XNnlayer *InstancePtr);
void XNnlayer_Set_activation(XNnlayer *InstancePtr, u32 Data);
u32 XNnlayer_Get_activation(XNnlayer *InstancePtr);
u32 XNnlayer_Get_input_r_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_input_r_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_input_r_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_input_r_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_input_r_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_input_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_input_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_input_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_input_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
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
u32 XNnlayer_Get_weights_BaseAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_HighAddress(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_TotalBytes(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_BitWidth(XNnlayer *InstancePtr);
u32 XNnlayer_Get_weights_Depth(XNnlayer *InstancePtr);
u32 XNnlayer_Write_weights_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Read_weights_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length);
u32 XNnlayer_Write_weights_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);
u32 XNnlayer_Read_weights_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length);

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
