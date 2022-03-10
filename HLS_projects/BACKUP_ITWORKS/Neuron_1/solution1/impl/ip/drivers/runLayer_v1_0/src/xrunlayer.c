// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xrunlayer.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRunlayer_CfgInitialize(XRunlayer *InstancePtr, XRunlayer_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRunlayer_Start(XRunlayer *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRunlayer_IsDone(XRunlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRunlayer_IsIdle(XRunlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRunlayer_IsReady(XRunlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRunlayer_EnableAutoRestart(XRunlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRunlayer_DisableAutoRestart(XRunlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_AP_CTRL, 0);
}

void XRunlayer_Set_input_r(XRunlayer *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XRunlayer_Get_input_r(XRunlayer *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XRunlayer_Set_weights(XRunlayer *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_WEIGHTS_DATA, (u32)(Data));
    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XRunlayer_Get_weights(XRunlayer *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_WEIGHTS_DATA);
    Data += (u64)XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XRunlayer_Set_bias(XRunlayer *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_BIAS_DATA, (u32)(Data));
    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XRunlayer_Get_bias(XRunlayer *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_BIAS_DATA);
    Data += (u64)XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_BIAS_DATA + 4) << 32;
    return Data;
}

void XRunlayer_Set_numOfInNeurons(XRunlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA, Data);
}

u32 XRunlayer_Get_numOfInNeurons(XRunlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA);
    return Data;
}

u32 XRunlayer_Get_output_r_BaseAddress(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE);
}

u32 XRunlayer_Get_output_r_HighAddress(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH);
}

u32 XRunlayer_Get_output_r_TotalBytes(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1);
}

u32 XRunlayer_Get_output_r_BitWidth(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRUNLAYER_CONTROL_WIDTH_OUTPUT_R;
}

u32 XRunlayer_Get_output_r_Depth(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRUNLAYER_CONTROL_DEPTH_OUTPUT_R;
}

u32 XRunlayer_Write_output_r_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XRunlayer_Read_output_r_Words(XRunlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XRunlayer_Write_output_r_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XRunlayer_Read_output_r_Bytes(XRunlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XRUNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XRUNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + offset + i);
    }
    return length;
}

void XRunlayer_InterruptGlobalEnable(XRunlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_GIE, 1);
}

void XRunlayer_InterruptGlobalDisable(XRunlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_GIE, 0);
}

void XRunlayer_InterruptEnable(XRunlayer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_IER);
    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_IER, Register | Mask);
}

void XRunlayer_InterruptDisable(XRunlayer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_IER);
    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRunlayer_InterruptClear(XRunlayer *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunlayer_WriteReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_ISR, Mask);
}

u32 XRunlayer_InterruptGetEnabled(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_IER);
}

u32 XRunlayer_InterruptGetStatus(XRunlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRunlayer_ReadReg(InstancePtr->Control_BaseAddress, XRUNLAYER_CONTROL_ADDR_ISR);
}

