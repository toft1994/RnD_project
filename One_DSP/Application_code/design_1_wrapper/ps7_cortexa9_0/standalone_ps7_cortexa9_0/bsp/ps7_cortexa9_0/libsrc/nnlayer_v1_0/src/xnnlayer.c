// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xnnlayer.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNnlayer_CfgInitialize(XNnlayer *InstancePtr, XNnlayer_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNnlayer_Start(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNnlayer_IsDone(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNnlayer_IsIdle(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNnlayer_IsReady(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNnlayer_EnableAutoRestart(XNnlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XNnlayer_DisableAutoRestart(XNnlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_AP_CTRL, 0);
}

void XNnlayer_Set_numOfInNeurons(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA, Data);
}

u32 XNnlayer_Get_numOfInNeurons(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_NUMOFINNEURONS_DATA);
    return Data;
}

void XNnlayer_Set_numOfOutputNeurons(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_NUMOFOUTPUTNEURONS_DATA, Data);
}

u32 XNnlayer_Get_numOfOutputNeurons(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_NUMOFOUTPUTNEURONS_DATA);
    return Data;
}

void XNnlayer_Set_activation(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_ACTIVATION_DATA, Data);
}

u32 XNnlayer_Get_activation(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_ACTIVATION_DATA);
    return Data;
}

u32 XNnlayer_Get_input_r_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_INPUT_R_BASE);
}

u32 XNnlayer_Get_input_r_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH);
}

u32 XNnlayer_Get_input_r_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + 1);
}

u32 XNnlayer_Get_input_r_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_INPUT_R;
}

u32 XNnlayer_Get_input_r_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_INPUT_R;
}

u32 XNnlayer_Write_input_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_input_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_input_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_input_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_INPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_INPUT_R_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_output_r_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE);
}

u32 XNnlayer_Get_output_r_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH);
}

u32 XNnlayer_Get_output_r_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1);
}

u32 XNnlayer_Get_output_r_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_OUTPUT_R;
}

u32 XNnlayer_Get_output_r_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_OUTPUT_R;
}

u32 XNnlayer_Write_output_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_output_r_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_output_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_output_r_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_OUTPUT_R_HIGH - XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_OUTPUT_R_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_bias_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_BIAS_BASE);
}

u32 XNnlayer_Get_bias_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_BIAS_HIGH);
}

u32 XNnlayer_Get_bias_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_BIAS_HIGH - XNNLAYER_CONTROL_ADDR_BIAS_BASE + 1);
}

u32 XNnlayer_Get_bias_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_BIAS;
}

u32 XNnlayer_Get_bias_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_BIAS;
}

u32 XNnlayer_Write_bias_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_BIAS_HIGH - XNNLAYER_CONTROL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_BIAS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_bias_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_BIAS_HIGH - XNNLAYER_CONTROL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_BIAS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_bias_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_BIAS_HIGH - XNNLAYER_CONTROL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_BIAS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_bias_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_BIAS_HIGH - XNNLAYER_CONTROL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_BIAS_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE);
}

u32 XNnlayer_Get_weights_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH);
}

u32 XNnlayer_Get_weights_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + 1);
}

u32 XNnlayer_Get_weights_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS;
}

u32 XNnlayer_Get_weights_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS;
}

u32 XNnlayer_Write_weights_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_BASE + offset + i);
    }
    return length;
}

void XNnlayer_InterruptGlobalEnable(XNnlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_GIE, 1);
}

void XNnlayer_InterruptGlobalDisable(XNnlayer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_GIE, 0);
}

void XNnlayer_InterruptEnable(XNnlayer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_IER);
    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_IER, Register | Mask);
}

void XNnlayer_InterruptDisable(XNnlayer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_IER);
    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XNnlayer_InterruptClear(XNnlayer *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_ISR, Mask);
}

u32 XNnlayer_InterruptGetEnabled(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_IER);
}

u32 XNnlayer_InterruptGetStatus(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_ISR);
}

