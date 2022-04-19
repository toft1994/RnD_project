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

void XNnlayer_Set_input_0(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_0_DATA, Data);
}

u32 XNnlayer_Get_input_0(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_0_DATA);
    return Data;
}

void XNnlayer_Set_input_1(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_1_DATA, Data);
}

u32 XNnlayer_Get_input_1(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_1_DATA);
    return Data;
}

void XNnlayer_Set_input_2(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_2_DATA, Data);
}

u32 XNnlayer_Get_input_2(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_2_DATA);
    return Data;
}

void XNnlayer_Set_input_3(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_3_DATA, Data);
}

u32 XNnlayer_Get_input_3(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_3_DATA);
    return Data;
}

void XNnlayer_Set_input_4(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_4_DATA, Data);
}

u32 XNnlayer_Get_input_4(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_4_DATA);
    return Data;
}

void XNnlayer_Set_input_5(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_5_DATA, Data);
}

u32 XNnlayer_Get_input_5(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_5_DATA);
    return Data;
}

void XNnlayer_Set_input_6(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_6_DATA, Data);
}

u32 XNnlayer_Get_input_6(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_6_DATA);
    return Data;
}

void XNnlayer_Set_input_7(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_7_DATA, Data);
}

u32 XNnlayer_Get_input_7(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_7_DATA);
    return Data;
}

void XNnlayer_Set_input_8(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_8_DATA, Data);
}

u32 XNnlayer_Get_input_8(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_8_DATA);
    return Data;
}

void XNnlayer_Set_input_9(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_9_DATA, Data);
}

u32 XNnlayer_Get_input_9(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_9_DATA);
    return Data;
}

void XNnlayer_Set_input_10(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_10_DATA, Data);
}

u32 XNnlayer_Get_input_10(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_10_DATA);
    return Data;
}

void XNnlayer_Set_input_11(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_11_DATA, Data);
}

u32 XNnlayer_Get_input_11(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_11_DATA);
    return Data;
}

void XNnlayer_Set_input_12(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_12_DATA, Data);
}

u32 XNnlayer_Get_input_12(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_12_DATA);
    return Data;
}

void XNnlayer_Set_input_13(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_13_DATA, Data);
}

u32 XNnlayer_Get_input_13(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_13_DATA);
    return Data;
}

void XNnlayer_Set_input_14(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_14_DATA, Data);
}

u32 XNnlayer_Get_input_14(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_14_DATA);
    return Data;
}

void XNnlayer_Set_input_15(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_15_DATA, Data);
}

u32 XNnlayer_Get_input_15(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_15_DATA);
    return Data;
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

void XNnlayer_Set_numOfOutNeurons(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_NUMOFOUTNEURONS_DATA, Data);
}

u32 XNnlayer_Get_numOfOutNeurons(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_NUMOFOUTNEURONS_DATA);
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

u32 XNnlayer_Get_weights_0_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE);
}

u32 XNnlayer_Get_weights_0_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH);
}

u32 XNnlayer_Get_weights_0_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + 1);
}

u32 XNnlayer_Get_weights_0_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_0;
}

u32 XNnlayer_Get_weights_0_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_0;
}

u32 XNnlayer_Write_weights_0_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_0_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_0_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_0_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_0_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_1_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE);
}

u32 XNnlayer_Get_weights_1_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH);
}

u32 XNnlayer_Get_weights_1_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + 1);
}

u32 XNnlayer_Get_weights_1_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_1;
}

u32 XNnlayer_Get_weights_1_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_1;
}

u32 XNnlayer_Write_weights_1_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_1_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_1_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_1_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_1_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_1_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_2_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE);
}

u32 XNnlayer_Get_weights_2_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH);
}

u32 XNnlayer_Get_weights_2_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + 1);
}

u32 XNnlayer_Get_weights_2_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_2;
}

u32 XNnlayer_Get_weights_2_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_2;
}

u32 XNnlayer_Write_weights_2_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_2_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_2_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_2_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_2_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_2_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_3_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE);
}

u32 XNnlayer_Get_weights_3_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH);
}

u32 XNnlayer_Get_weights_3_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + 1);
}

u32 XNnlayer_Get_weights_3_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_3;
}

u32 XNnlayer_Get_weights_3_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_3;
}

u32 XNnlayer_Write_weights_3_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_3_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_3_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_3_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_3_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_3_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_4_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE);
}

u32 XNnlayer_Get_weights_4_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH);
}

u32 XNnlayer_Get_weights_4_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + 1);
}

u32 XNnlayer_Get_weights_4_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_4;
}

u32 XNnlayer_Get_weights_4_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_4;
}

u32 XNnlayer_Write_weights_4_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_4_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_4_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_4_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_4_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_4_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_5_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE);
}

u32 XNnlayer_Get_weights_5_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH);
}

u32 XNnlayer_Get_weights_5_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + 1);
}

u32 XNnlayer_Get_weights_5_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_5;
}

u32 XNnlayer_Get_weights_5_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_5;
}

u32 XNnlayer_Write_weights_5_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_5_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_5_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_5_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_5_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_5_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_6_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE);
}

u32 XNnlayer_Get_weights_6_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH);
}

u32 XNnlayer_Get_weights_6_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + 1);
}

u32 XNnlayer_Get_weights_6_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_6;
}

u32 XNnlayer_Get_weights_6_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_6;
}

u32 XNnlayer_Write_weights_6_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_6_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_6_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_6_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_6_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_6_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_7_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE);
}

u32 XNnlayer_Get_weights_7_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH);
}

u32 XNnlayer_Get_weights_7_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + 1);
}

u32 XNnlayer_Get_weights_7_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_7;
}

u32 XNnlayer_Get_weights_7_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_7;
}

u32 XNnlayer_Write_weights_7_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_7_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_7_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_7_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_7_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_7_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_8_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE);
}

u32 XNnlayer_Get_weights_8_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH);
}

u32 XNnlayer_Get_weights_8_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + 1);
}

u32 XNnlayer_Get_weights_8_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_8;
}

u32 XNnlayer_Get_weights_8_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_8;
}

u32 XNnlayer_Write_weights_8_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_8_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_8_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_8_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_8_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_8_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_9_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE);
}

u32 XNnlayer_Get_weights_9_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH);
}

u32 XNnlayer_Get_weights_9_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + 1);
}

u32 XNnlayer_Get_weights_9_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_9;
}

u32 XNnlayer_Get_weights_9_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_9;
}

u32 XNnlayer_Write_weights_9_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_9_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_9_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_9_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_9_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_9_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_10_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE);
}

u32 XNnlayer_Get_weights_10_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH);
}

u32 XNnlayer_Get_weights_10_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + 1);
}

u32 XNnlayer_Get_weights_10_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_10;
}

u32 XNnlayer_Get_weights_10_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_10;
}

u32 XNnlayer_Write_weights_10_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_10_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_10_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_10_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_10_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_10_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_11_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE);
}

u32 XNnlayer_Get_weights_11_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH);
}

u32 XNnlayer_Get_weights_11_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + 1);
}

u32 XNnlayer_Get_weights_11_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_11;
}

u32 XNnlayer_Get_weights_11_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_11;
}

u32 XNnlayer_Write_weights_11_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_11_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_11_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_11_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_11_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_11_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_12_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE);
}

u32 XNnlayer_Get_weights_12_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH);
}

u32 XNnlayer_Get_weights_12_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + 1);
}

u32 XNnlayer_Get_weights_12_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_12;
}

u32 XNnlayer_Get_weights_12_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_12;
}

u32 XNnlayer_Write_weights_12_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_12_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_12_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_12_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_12_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_12_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_13_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE);
}

u32 XNnlayer_Get_weights_13_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH);
}

u32 XNnlayer_Get_weights_13_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + 1);
}

u32 XNnlayer_Get_weights_13_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_13;
}

u32 XNnlayer_Get_weights_13_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_13;
}

u32 XNnlayer_Write_weights_13_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_13_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_13_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_13_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_13_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_13_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_14_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE);
}

u32 XNnlayer_Get_weights_14_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH);
}

u32 XNnlayer_Get_weights_14_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + 1);
}

u32 XNnlayer_Get_weights_14_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_14;
}

u32 XNnlayer_Get_weights_14_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_14;
}

u32 XNnlayer_Write_weights_14_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_14_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_14_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_14_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_14_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_14_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_15_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE);
}

u32 XNnlayer_Get_weights_15_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH);
}

u32 XNnlayer_Get_weights_15_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + 1);
}

u32 XNnlayer_Get_weights_15_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_15;
}

u32 XNnlayer_Get_weights_15_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_15;
}

u32 XNnlayer_Write_weights_15_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_15_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_15_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_15_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_15_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_15_BASE + offset + i);
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

