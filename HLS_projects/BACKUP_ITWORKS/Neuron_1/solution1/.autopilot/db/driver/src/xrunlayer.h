// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XRUNLAYER_H
#define XRUNLAYER_H

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
#include "xrunlayer_hw.h"

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
} XRunlayer_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XRunlayer;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRunlayer_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRunlayer_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRunlayer_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRunlayer_ReadReg(BaseAddress, RegOffset) \
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
int XRunlayer_Initialize(XRunlayer *InstancePtr, u16 DeviceId);
XRunlayer_Config* XRunlayer_LookupConfig(u16 DeviceId);
int XRunlayer_CfgInitialize(XRunlayer *InstancePtr, XRunlayer_Config *ConfigPtr);
#else
int XRunlayer_Initialize(XRunlayer *InstancePtr, const char* InstanceName);
int XRunlayer_Release(XRunlayer *InstancePtr);
#endif

void XRunlayer_Start(XRunlayer *InstancePtr);
u32 XRunlayer_IsDone(XRunlayer *InstancePtr);
u32 XRunlayer_IsIdle(XRunlayer *InstancePtr);
u32 XRunlayer_IsReady(XRunlayer *InstancePtr);
void XRunlayer_EnableAutoRestart(XRunlayer *InstancePtr);
void XRunlayer_DisableAutoRestart(XRunlayer *InstancePtr);

void XRunlayer_Set_numOfInNeurons(XRunlayer *InstancePtr, u32 Data);
u32 XRunlayer_Get_numOfInNeurons(XRunlayer *InstancePtr);
u32 XRunlayer_Get_output_r_BaseAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_output_r_HighAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_output_r_TotalBytes(XRunlayer *InstancePtr);
u32 XRunlayer_Get_output_r_BitWidth(XRunlayer *InstancePtr);
u32 XRunlayer_Get_output_r_Depth(XRunlayer *InstancePtr);
u32 XRunlayer_Write_output_r_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Read_output_r_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Write_output_r_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Read_output_r_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Get_bias_BaseAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_bias_HighAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_bias_TotalBytes(XRunlayer *InstancePtr);
u32 XRunlayer_Get_bias_BitWidth(XRunlayer *InstancePtr);
u32 XRunlayer_Get_bias_Depth(XRunlayer *InstancePtr);
u32 XRunlayer_Write_bias_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Read_bias_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Write_bias_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Read_bias_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Get_input_r_BaseAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_input_r_HighAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_input_r_TotalBytes(XRunlayer *InstancePtr);
u32 XRunlayer_Get_input_r_BitWidth(XRunlayer *InstancePtr);
u32 XRunlayer_Get_input_r_Depth(XRunlayer *InstancePtr);
u32 XRunlayer_Write_input_r_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Read_input_r_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Write_input_r_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Read_input_r_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Get_weights_BaseAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_weights_HighAddress(XRunlayer *InstancePtr);
u32 XRunlayer_Get_weights_TotalBytes(XRunlayer *InstancePtr);
u32 XRunlayer_Get_weights_BitWidth(XRunlayer *InstancePtr);
u32 XRunlayer_Get_weights_Depth(XRunlayer *InstancePtr);
u32 XRunlayer_Write_weights_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Read_weights_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length);
u32 XRunlayer_Write_weights_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);
u32 XRunlayer_Read_weights_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length);

void XRunlayer_InterruptGlobalEnable(XRunlayer *InstancePtr);
void XRunlayer_InterruptGlobalDisable(XRunlayer *InstancePtr);
void XRunlayer_InterruptEnable(XRunlayer *InstancePtr, u32 Mask);
void XRunlayer_InterruptDisable(XRunlayer *InstancePtr, u32 Mask);
void XRunlayer_InterruptClear(XRunlayer *InstancePtr, u32 Mask);
u32 XRunlayer_InterruptGetEnabled(XRunlayer *InstancePtr);
u32 XRunlayer_InterruptGetStatus(XRunlayer *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
