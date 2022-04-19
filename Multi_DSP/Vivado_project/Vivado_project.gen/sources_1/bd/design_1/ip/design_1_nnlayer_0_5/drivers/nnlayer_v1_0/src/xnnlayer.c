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

void XNnlayer_Set_input_16(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_16_DATA, Data);
}

u32 XNnlayer_Get_input_16(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_16_DATA);
    return Data;
}

void XNnlayer_Set_input_17(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_17_DATA, Data);
}

u32 XNnlayer_Get_input_17(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_17_DATA);
    return Data;
}

void XNnlayer_Set_input_18(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_18_DATA, Data);
}

u32 XNnlayer_Get_input_18(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_18_DATA);
    return Data;
}

void XNnlayer_Set_input_19(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_19_DATA, Data);
}

u32 XNnlayer_Get_input_19(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_19_DATA);
    return Data;
}

void XNnlayer_Set_input_20(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_20_DATA, Data);
}

u32 XNnlayer_Get_input_20(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_20_DATA);
    return Data;
}

void XNnlayer_Set_input_21(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_21_DATA, Data);
}

u32 XNnlayer_Get_input_21(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_21_DATA);
    return Data;
}

void XNnlayer_Set_input_22(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_22_DATA, Data);
}

u32 XNnlayer_Get_input_22(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_22_DATA);
    return Data;
}

void XNnlayer_Set_input_23(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_23_DATA, Data);
}

u32 XNnlayer_Get_input_23(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_23_DATA);
    return Data;
}

void XNnlayer_Set_input_24(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_24_DATA, Data);
}

u32 XNnlayer_Get_input_24(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_24_DATA);
    return Data;
}

void XNnlayer_Set_input_25(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_25_DATA, Data);
}

u32 XNnlayer_Get_input_25(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_25_DATA);
    return Data;
}

void XNnlayer_Set_input_26(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_26_DATA, Data);
}

u32 XNnlayer_Get_input_26(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_26_DATA);
    return Data;
}

void XNnlayer_Set_input_27(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_27_DATA, Data);
}

u32 XNnlayer_Get_input_27(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_27_DATA);
    return Data;
}

void XNnlayer_Set_input_28(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_28_DATA, Data);
}

u32 XNnlayer_Get_input_28(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_28_DATA);
    return Data;
}

void XNnlayer_Set_input_29(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_29_DATA, Data);
}

u32 XNnlayer_Get_input_29(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_29_DATA);
    return Data;
}

void XNnlayer_Set_input_30(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_30_DATA, Data);
}

u32 XNnlayer_Get_input_30(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_30_DATA);
    return Data;
}

void XNnlayer_Set_input_31(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_31_DATA, Data);
}

u32 XNnlayer_Get_input_31(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_31_DATA);
    return Data;
}

void XNnlayer_Set_input_32(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_32_DATA, Data);
}

u32 XNnlayer_Get_input_32(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_32_DATA);
    return Data;
}

void XNnlayer_Set_input_33(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_33_DATA, Data);
}

u32 XNnlayer_Get_input_33(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_33_DATA);
    return Data;
}

void XNnlayer_Set_input_34(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_34_DATA, Data);
}

u32 XNnlayer_Get_input_34(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_34_DATA);
    return Data;
}

void XNnlayer_Set_input_35(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_35_DATA, Data);
}

u32 XNnlayer_Get_input_35(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_35_DATA);
    return Data;
}

void XNnlayer_Set_input_36(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_36_DATA, Data);
}

u32 XNnlayer_Get_input_36(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_36_DATA);
    return Data;
}

void XNnlayer_Set_input_37(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_37_DATA, Data);
}

u32 XNnlayer_Get_input_37(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_37_DATA);
    return Data;
}

void XNnlayer_Set_input_38(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_38_DATA, Data);
}

u32 XNnlayer_Get_input_38(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_38_DATA);
    return Data;
}

void XNnlayer_Set_input_39(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_39_DATA, Data);
}

u32 XNnlayer_Get_input_39(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_39_DATA);
    return Data;
}

void XNnlayer_Set_input_40(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_40_DATA, Data);
}

u32 XNnlayer_Get_input_40(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_40_DATA);
    return Data;
}

void XNnlayer_Set_input_41(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_41_DATA, Data);
}

u32 XNnlayer_Get_input_41(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_41_DATA);
    return Data;
}

void XNnlayer_Set_input_42(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_42_DATA, Data);
}

u32 XNnlayer_Get_input_42(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_42_DATA);
    return Data;
}

void XNnlayer_Set_input_43(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_43_DATA, Data);
}

u32 XNnlayer_Get_input_43(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_43_DATA);
    return Data;
}

void XNnlayer_Set_input_44(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_44_DATA, Data);
}

u32 XNnlayer_Get_input_44(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_44_DATA);
    return Data;
}

void XNnlayer_Set_input_45(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_45_DATA, Data);
}

u32 XNnlayer_Get_input_45(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_45_DATA);
    return Data;
}

void XNnlayer_Set_input_46(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_46_DATA, Data);
}

u32 XNnlayer_Get_input_46(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_46_DATA);
    return Data;
}

void XNnlayer_Set_input_47(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_47_DATA, Data);
}

u32 XNnlayer_Get_input_47(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_47_DATA);
    return Data;
}

void XNnlayer_Set_input_48(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_48_DATA, Data);
}

u32 XNnlayer_Get_input_48(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_48_DATA);
    return Data;
}

void XNnlayer_Set_input_49(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_49_DATA, Data);
}

u32 XNnlayer_Get_input_49(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_49_DATA);
    return Data;
}

void XNnlayer_Set_input_50(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_50_DATA, Data);
}

u32 XNnlayer_Get_input_50(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_50_DATA);
    return Data;
}

void XNnlayer_Set_input_51(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_51_DATA, Data);
}

u32 XNnlayer_Get_input_51(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_51_DATA);
    return Data;
}

void XNnlayer_Set_input_52(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_52_DATA, Data);
}

u32 XNnlayer_Get_input_52(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_52_DATA);
    return Data;
}

void XNnlayer_Set_input_53(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_53_DATA, Data);
}

u32 XNnlayer_Get_input_53(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_53_DATA);
    return Data;
}

void XNnlayer_Set_input_54(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_54_DATA, Data);
}

u32 XNnlayer_Get_input_54(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_54_DATA);
    return Data;
}

void XNnlayer_Set_input_55(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_55_DATA, Data);
}

u32 XNnlayer_Get_input_55(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_55_DATA);
    return Data;
}

void XNnlayer_Set_input_56(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_56_DATA, Data);
}

u32 XNnlayer_Get_input_56(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_56_DATA);
    return Data;
}

void XNnlayer_Set_input_57(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_57_DATA, Data);
}

u32 XNnlayer_Get_input_57(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_57_DATA);
    return Data;
}

void XNnlayer_Set_input_58(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_58_DATA, Data);
}

u32 XNnlayer_Get_input_58(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_58_DATA);
    return Data;
}

void XNnlayer_Set_input_59(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_59_DATA, Data);
}

u32 XNnlayer_Get_input_59(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_59_DATA);
    return Data;
}

void XNnlayer_Set_input_60(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_60_DATA, Data);
}

u32 XNnlayer_Get_input_60(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_60_DATA);
    return Data;
}

void XNnlayer_Set_input_61(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_61_DATA, Data);
}

u32 XNnlayer_Get_input_61(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_61_DATA);
    return Data;
}

void XNnlayer_Set_input_62(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_62_DATA, Data);
}

u32 XNnlayer_Get_input_62(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_62_DATA);
    return Data;
}

void XNnlayer_Set_input_63(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_63_DATA, Data);
}

u32 XNnlayer_Get_input_63(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_63_DATA);
    return Data;
}

void XNnlayer_Set_input_64(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_64_DATA, Data);
}

u32 XNnlayer_Get_input_64(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_64_DATA);
    return Data;
}

void XNnlayer_Set_input_65(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_65_DATA, Data);
}

u32 XNnlayer_Get_input_65(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_65_DATA);
    return Data;
}

void XNnlayer_Set_input_66(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_66_DATA, Data);
}

u32 XNnlayer_Get_input_66(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_66_DATA);
    return Data;
}

void XNnlayer_Set_input_67(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_67_DATA, Data);
}

u32 XNnlayer_Get_input_67(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_67_DATA);
    return Data;
}

void XNnlayer_Set_input_68(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_68_DATA, Data);
}

u32 XNnlayer_Get_input_68(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_68_DATA);
    return Data;
}

void XNnlayer_Set_input_69(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_69_DATA, Data);
}

u32 XNnlayer_Get_input_69(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_69_DATA);
    return Data;
}

void XNnlayer_Set_input_70(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_70_DATA, Data);
}

u32 XNnlayer_Get_input_70(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_70_DATA);
    return Data;
}

void XNnlayer_Set_input_71(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_71_DATA, Data);
}

u32 XNnlayer_Get_input_71(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_71_DATA);
    return Data;
}

void XNnlayer_Set_input_72(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_72_DATA, Data);
}

u32 XNnlayer_Get_input_72(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_72_DATA);
    return Data;
}

void XNnlayer_Set_input_73(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_73_DATA, Data);
}

u32 XNnlayer_Get_input_73(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_73_DATA);
    return Data;
}

void XNnlayer_Set_input_74(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_74_DATA, Data);
}

u32 XNnlayer_Get_input_74(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_74_DATA);
    return Data;
}

void XNnlayer_Set_input_75(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_75_DATA, Data);
}

u32 XNnlayer_Get_input_75(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_75_DATA);
    return Data;
}

void XNnlayer_Set_input_76(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_76_DATA, Data);
}

u32 XNnlayer_Get_input_76(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_76_DATA);
    return Data;
}

void XNnlayer_Set_input_77(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_77_DATA, Data);
}

u32 XNnlayer_Get_input_77(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_77_DATA);
    return Data;
}

void XNnlayer_Set_input_78(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_78_DATA, Data);
}

u32 XNnlayer_Get_input_78(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_78_DATA);
    return Data;
}

void XNnlayer_Set_input_79(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_79_DATA, Data);
}

u32 XNnlayer_Get_input_79(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_79_DATA);
    return Data;
}

void XNnlayer_Set_input_80(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_80_DATA, Data);
}

u32 XNnlayer_Get_input_80(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_80_DATA);
    return Data;
}

void XNnlayer_Set_input_81(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_81_DATA, Data);
}

u32 XNnlayer_Get_input_81(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_81_DATA);
    return Data;
}

void XNnlayer_Set_input_82(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_82_DATA, Data);
}

u32 XNnlayer_Get_input_82(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_82_DATA);
    return Data;
}

void XNnlayer_Set_input_83(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_83_DATA, Data);
}

u32 XNnlayer_Get_input_83(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_83_DATA);
    return Data;
}

void XNnlayer_Set_input_84(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_84_DATA, Data);
}

u32 XNnlayer_Get_input_84(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_84_DATA);
    return Data;
}

void XNnlayer_Set_input_85(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_85_DATA, Data);
}

u32 XNnlayer_Get_input_85(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_85_DATA);
    return Data;
}

void XNnlayer_Set_input_86(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_86_DATA, Data);
}

u32 XNnlayer_Get_input_86(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_86_DATA);
    return Data;
}

void XNnlayer_Set_input_87(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_87_DATA, Data);
}

u32 XNnlayer_Get_input_87(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_87_DATA);
    return Data;
}

void XNnlayer_Set_input_88(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_88_DATA, Data);
}

u32 XNnlayer_Get_input_88(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_88_DATA);
    return Data;
}

void XNnlayer_Set_input_89(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_89_DATA, Data);
}

u32 XNnlayer_Get_input_89(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_89_DATA);
    return Data;
}

void XNnlayer_Set_input_90(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_90_DATA, Data);
}

u32 XNnlayer_Get_input_90(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_90_DATA);
    return Data;
}

void XNnlayer_Set_input_91(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_91_DATA, Data);
}

u32 XNnlayer_Get_input_91(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_91_DATA);
    return Data;
}

void XNnlayer_Set_input_92(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_92_DATA, Data);
}

u32 XNnlayer_Get_input_92(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_92_DATA);
    return Data;
}

void XNnlayer_Set_input_93(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_93_DATA, Data);
}

u32 XNnlayer_Get_input_93(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_93_DATA);
    return Data;
}

void XNnlayer_Set_input_94(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_94_DATA, Data);
}

u32 XNnlayer_Get_input_94(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_94_DATA);
    return Data;
}

void XNnlayer_Set_input_95(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_95_DATA, Data);
}

u32 XNnlayer_Get_input_95(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_95_DATA);
    return Data;
}

void XNnlayer_Set_input_96(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_96_DATA, Data);
}

u32 XNnlayer_Get_input_96(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_96_DATA);
    return Data;
}

void XNnlayer_Set_input_97(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_97_DATA, Data);
}

u32 XNnlayer_Get_input_97(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_97_DATA);
    return Data;
}

void XNnlayer_Set_input_98(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_98_DATA, Data);
}

u32 XNnlayer_Get_input_98(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_98_DATA);
    return Data;
}

void XNnlayer_Set_input_99(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_99_DATA, Data);
}

u32 XNnlayer_Get_input_99(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_99_DATA);
    return Data;
}

void XNnlayer_Set_input_100(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_100_DATA, Data);
}

u32 XNnlayer_Get_input_100(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_100_DATA);
    return Data;
}

void XNnlayer_Set_input_101(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_101_DATA, Data);
}

u32 XNnlayer_Get_input_101(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_101_DATA);
    return Data;
}

void XNnlayer_Set_input_102(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_102_DATA, Data);
}

u32 XNnlayer_Get_input_102(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_102_DATA);
    return Data;
}

void XNnlayer_Set_input_103(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_103_DATA, Data);
}

u32 XNnlayer_Get_input_103(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_103_DATA);
    return Data;
}

void XNnlayer_Set_input_104(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_104_DATA, Data);
}

u32 XNnlayer_Get_input_104(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_104_DATA);
    return Data;
}

void XNnlayer_Set_input_105(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_105_DATA, Data);
}

u32 XNnlayer_Get_input_105(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_105_DATA);
    return Data;
}

void XNnlayer_Set_input_106(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_106_DATA, Data);
}

u32 XNnlayer_Get_input_106(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_106_DATA);
    return Data;
}

void XNnlayer_Set_input_107(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_107_DATA, Data);
}

u32 XNnlayer_Get_input_107(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_107_DATA);
    return Data;
}

void XNnlayer_Set_input_108(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_108_DATA, Data);
}

u32 XNnlayer_Get_input_108(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_108_DATA);
    return Data;
}

void XNnlayer_Set_input_109(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_109_DATA, Data);
}

u32 XNnlayer_Get_input_109(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_109_DATA);
    return Data;
}

void XNnlayer_Set_input_110(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_110_DATA, Data);
}

u32 XNnlayer_Get_input_110(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_110_DATA);
    return Data;
}

void XNnlayer_Set_input_111(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_111_DATA, Data);
}

u32 XNnlayer_Get_input_111(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_111_DATA);
    return Data;
}

void XNnlayer_Set_input_112(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_112_DATA, Data);
}

u32 XNnlayer_Get_input_112(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_112_DATA);
    return Data;
}

void XNnlayer_Set_input_113(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_113_DATA, Data);
}

u32 XNnlayer_Get_input_113(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_113_DATA);
    return Data;
}

void XNnlayer_Set_input_114(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_114_DATA, Data);
}

u32 XNnlayer_Get_input_114(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_114_DATA);
    return Data;
}

void XNnlayer_Set_input_115(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_115_DATA, Data);
}

u32 XNnlayer_Get_input_115(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_115_DATA);
    return Data;
}

void XNnlayer_Set_input_116(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_116_DATA, Data);
}

u32 XNnlayer_Get_input_116(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_116_DATA);
    return Data;
}

void XNnlayer_Set_input_117(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_117_DATA, Data);
}

u32 XNnlayer_Get_input_117(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_117_DATA);
    return Data;
}

void XNnlayer_Set_input_118(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_118_DATA, Data);
}

u32 XNnlayer_Get_input_118(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_118_DATA);
    return Data;
}

void XNnlayer_Set_input_119(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_119_DATA, Data);
}

u32 XNnlayer_Get_input_119(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_119_DATA);
    return Data;
}

void XNnlayer_Set_input_120(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_120_DATA, Data);
}

u32 XNnlayer_Get_input_120(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_120_DATA);
    return Data;
}

void XNnlayer_Set_input_121(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_121_DATA, Data);
}

u32 XNnlayer_Get_input_121(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_121_DATA);
    return Data;
}

void XNnlayer_Set_input_122(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_122_DATA, Data);
}

u32 XNnlayer_Get_input_122(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_122_DATA);
    return Data;
}

void XNnlayer_Set_input_123(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_123_DATA, Data);
}

u32 XNnlayer_Get_input_123(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_123_DATA);
    return Data;
}

void XNnlayer_Set_input_124(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_124_DATA, Data);
}

u32 XNnlayer_Get_input_124(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_124_DATA);
    return Data;
}

void XNnlayer_Set_input_125(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_125_DATA, Data);
}

u32 XNnlayer_Get_input_125(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_125_DATA);
    return Data;
}

void XNnlayer_Set_input_126(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_126_DATA, Data);
}

u32 XNnlayer_Get_input_126(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_126_DATA);
    return Data;
}

void XNnlayer_Set_input_127(XNnlayer *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNnlayer_WriteReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_127_DATA, Data);
}

u32 XNnlayer_Get_input_127(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_INPUT_127_DATA);
    return Data;
}

u32 XNnlayer_Get_output_0(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_0_DATA);
    return Data;
}

u32 XNnlayer_Get_output_0_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_0_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_1(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_1_DATA);
    return Data;
}

u32 XNnlayer_Get_output_1_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_1_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_2(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_2_DATA);
    return Data;
}

u32 XNnlayer_Get_output_2_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_2_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_3(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_3_DATA);
    return Data;
}

u32 XNnlayer_Get_output_3_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_3_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_4(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_4_DATA);
    return Data;
}

u32 XNnlayer_Get_output_4_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_4_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_5(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_5_DATA);
    return Data;
}

u32 XNnlayer_Get_output_5_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_5_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_6(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_6_DATA);
    return Data;
}

u32 XNnlayer_Get_output_6_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_6_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_7(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_7_DATA);
    return Data;
}

u32 XNnlayer_Get_output_7_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_7_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_8(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_8_DATA);
    return Data;
}

u32 XNnlayer_Get_output_8_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_8_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_9(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_9_DATA);
    return Data;
}

u32 XNnlayer_Get_output_9_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_9_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_10(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_10_DATA);
    return Data;
}

u32 XNnlayer_Get_output_10_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_10_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_11(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_11_DATA);
    return Data;
}

u32 XNnlayer_Get_output_11_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_11_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_12(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_12_DATA);
    return Data;
}

u32 XNnlayer_Get_output_12_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_12_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_13(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_13_DATA);
    return Data;
}

u32 XNnlayer_Get_output_13_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_13_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_14(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_14_DATA);
    return Data;
}

u32 XNnlayer_Get_output_14_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_14_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_15(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_15_DATA);
    return Data;
}

u32 XNnlayer_Get_output_15_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_15_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_16(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_16_DATA);
    return Data;
}

u32 XNnlayer_Get_output_16_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_16_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_17(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_17_DATA);
    return Data;
}

u32 XNnlayer_Get_output_17_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_17_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_18(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_18_DATA);
    return Data;
}

u32 XNnlayer_Get_output_18_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_18_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_19(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_19_DATA);
    return Data;
}

u32 XNnlayer_Get_output_19_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_19_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_20(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_20_DATA);
    return Data;
}

u32 XNnlayer_Get_output_20_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_20_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_21(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_21_DATA);
    return Data;
}

u32 XNnlayer_Get_output_21_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_21_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_22(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_22_DATA);
    return Data;
}

u32 XNnlayer_Get_output_22_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_22_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_23(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_23_DATA);
    return Data;
}

u32 XNnlayer_Get_output_23_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_23_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_24(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_24_DATA);
    return Data;
}

u32 XNnlayer_Get_output_24_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_24_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_25(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_25_DATA);
    return Data;
}

u32 XNnlayer_Get_output_25_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_25_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_26(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_26_DATA);
    return Data;
}

u32 XNnlayer_Get_output_26_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_26_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_27(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_27_DATA);
    return Data;
}

u32 XNnlayer_Get_output_27_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_27_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_28(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_28_DATA);
    return Data;
}

u32 XNnlayer_Get_output_28_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_28_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_29(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_29_DATA);
    return Data;
}

u32 XNnlayer_Get_output_29_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_29_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_30(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_30_DATA);
    return Data;
}

u32 XNnlayer_Get_output_30_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_30_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_31(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_31_DATA);
    return Data;
}

u32 XNnlayer_Get_output_31_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_31_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_32(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_32_DATA);
    return Data;
}

u32 XNnlayer_Get_output_32_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_32_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_33(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_33_DATA);
    return Data;
}

u32 XNnlayer_Get_output_33_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_33_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_34(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_34_DATA);
    return Data;
}

u32 XNnlayer_Get_output_34_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_34_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_35(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_35_DATA);
    return Data;
}

u32 XNnlayer_Get_output_35_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_35_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_36(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_36_DATA);
    return Data;
}

u32 XNnlayer_Get_output_36_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_36_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_37(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_37_DATA);
    return Data;
}

u32 XNnlayer_Get_output_37_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_37_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_38(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_38_DATA);
    return Data;
}

u32 XNnlayer_Get_output_38_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_38_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_39(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_39_DATA);
    return Data;
}

u32 XNnlayer_Get_output_39_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_39_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_40(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_40_DATA);
    return Data;
}

u32 XNnlayer_Get_output_40_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_40_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_41(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_41_DATA);
    return Data;
}

u32 XNnlayer_Get_output_41_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_41_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_42(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_42_DATA);
    return Data;
}

u32 XNnlayer_Get_output_42_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_42_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_43(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_43_DATA);
    return Data;
}

u32 XNnlayer_Get_output_43_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_43_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_44(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_44_DATA);
    return Data;
}

u32 XNnlayer_Get_output_44_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_44_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_45(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_45_DATA);
    return Data;
}

u32 XNnlayer_Get_output_45_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_45_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_46(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_46_DATA);
    return Data;
}

u32 XNnlayer_Get_output_46_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_46_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_47(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_47_DATA);
    return Data;
}

u32 XNnlayer_Get_output_47_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_47_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_48(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_48_DATA);
    return Data;
}

u32 XNnlayer_Get_output_48_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_48_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_49(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_49_DATA);
    return Data;
}

u32 XNnlayer_Get_output_49_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_49_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_50(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_50_DATA);
    return Data;
}

u32 XNnlayer_Get_output_50_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_50_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_51(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_51_DATA);
    return Data;
}

u32 XNnlayer_Get_output_51_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_51_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_52(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_52_DATA);
    return Data;
}

u32 XNnlayer_Get_output_52_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_52_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_53(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_53_DATA);
    return Data;
}

u32 XNnlayer_Get_output_53_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_53_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_54(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_54_DATA);
    return Data;
}

u32 XNnlayer_Get_output_54_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_54_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_55(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_55_DATA);
    return Data;
}

u32 XNnlayer_Get_output_55_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_55_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_56(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_56_DATA);
    return Data;
}

u32 XNnlayer_Get_output_56_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_56_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_57(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_57_DATA);
    return Data;
}

u32 XNnlayer_Get_output_57_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_57_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_58(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_58_DATA);
    return Data;
}

u32 XNnlayer_Get_output_58_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_58_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_59(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_59_DATA);
    return Data;
}

u32 XNnlayer_Get_output_59_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_59_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_60(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_60_DATA);
    return Data;
}

u32 XNnlayer_Get_output_60_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_60_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_61(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_61_DATA);
    return Data;
}

u32 XNnlayer_Get_output_61_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_61_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_62(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_62_DATA);
    return Data;
}

u32 XNnlayer_Get_output_62_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_62_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_63(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_63_DATA);
    return Data;
}

u32 XNnlayer_Get_output_63_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_63_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_64(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_64_DATA);
    return Data;
}

u32 XNnlayer_Get_output_64_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_64_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_65(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_65_DATA);
    return Data;
}

u32 XNnlayer_Get_output_65_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_65_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_66(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_66_DATA);
    return Data;
}

u32 XNnlayer_Get_output_66_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_66_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_67(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_67_DATA);
    return Data;
}

u32 XNnlayer_Get_output_67_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_67_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_68(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_68_DATA);
    return Data;
}

u32 XNnlayer_Get_output_68_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_68_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_69(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_69_DATA);
    return Data;
}

u32 XNnlayer_Get_output_69_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_69_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_70(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_70_DATA);
    return Data;
}

u32 XNnlayer_Get_output_70_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_70_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_71(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_71_DATA);
    return Data;
}

u32 XNnlayer_Get_output_71_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_71_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_72(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_72_DATA);
    return Data;
}

u32 XNnlayer_Get_output_72_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_72_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_73(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_73_DATA);
    return Data;
}

u32 XNnlayer_Get_output_73_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_73_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_74(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_74_DATA);
    return Data;
}

u32 XNnlayer_Get_output_74_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_74_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_75(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_75_DATA);
    return Data;
}

u32 XNnlayer_Get_output_75_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_75_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_76(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_76_DATA);
    return Data;
}

u32 XNnlayer_Get_output_76_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_76_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_77(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_77_DATA);
    return Data;
}

u32 XNnlayer_Get_output_77_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_77_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_78(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_78_DATA);
    return Data;
}

u32 XNnlayer_Get_output_78_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_78_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_79(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_79_DATA);
    return Data;
}

u32 XNnlayer_Get_output_79_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_79_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_80(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_80_DATA);
    return Data;
}

u32 XNnlayer_Get_output_80_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_80_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_81(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_81_DATA);
    return Data;
}

u32 XNnlayer_Get_output_81_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_81_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_82(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_82_DATA);
    return Data;
}

u32 XNnlayer_Get_output_82_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_82_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_83(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_83_DATA);
    return Data;
}

u32 XNnlayer_Get_output_83_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_83_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_84(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_84_DATA);
    return Data;
}

u32 XNnlayer_Get_output_84_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_84_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_85(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_85_DATA);
    return Data;
}

u32 XNnlayer_Get_output_85_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_85_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_86(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_86_DATA);
    return Data;
}

u32 XNnlayer_Get_output_86_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_86_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_87(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_87_DATA);
    return Data;
}

u32 XNnlayer_Get_output_87_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_87_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_88(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_88_DATA);
    return Data;
}

u32 XNnlayer_Get_output_88_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_88_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_89(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_89_DATA);
    return Data;
}

u32 XNnlayer_Get_output_89_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_89_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_90(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_90_DATA);
    return Data;
}

u32 XNnlayer_Get_output_90_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_90_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_91(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_91_DATA);
    return Data;
}

u32 XNnlayer_Get_output_91_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_91_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_92(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_92_DATA);
    return Data;
}

u32 XNnlayer_Get_output_92_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_92_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_93(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_93_DATA);
    return Data;
}

u32 XNnlayer_Get_output_93_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_93_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_94(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_94_DATA);
    return Data;
}

u32 XNnlayer_Get_output_94_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_94_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_95(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_95_DATA);
    return Data;
}

u32 XNnlayer_Get_output_95_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_95_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_96(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_96_DATA);
    return Data;
}

u32 XNnlayer_Get_output_96_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_96_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_97(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_97_DATA);
    return Data;
}

u32 XNnlayer_Get_output_97_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_97_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_98(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_98_DATA);
    return Data;
}

u32 XNnlayer_Get_output_98_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_98_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_99(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_99_DATA);
    return Data;
}

u32 XNnlayer_Get_output_99_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_99_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_100(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_100_DATA);
    return Data;
}

u32 XNnlayer_Get_output_100_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_100_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_101(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_101_DATA);
    return Data;
}

u32 XNnlayer_Get_output_101_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_101_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_102(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_102_DATA);
    return Data;
}

u32 XNnlayer_Get_output_102_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_102_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_103(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_103_DATA);
    return Data;
}

u32 XNnlayer_Get_output_103_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_103_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_104(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_104_DATA);
    return Data;
}

u32 XNnlayer_Get_output_104_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_104_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_105(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_105_DATA);
    return Data;
}

u32 XNnlayer_Get_output_105_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_105_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_106(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_106_DATA);
    return Data;
}

u32 XNnlayer_Get_output_106_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_106_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_107(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_107_DATA);
    return Data;
}

u32 XNnlayer_Get_output_107_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_107_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_108(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_108_DATA);
    return Data;
}

u32 XNnlayer_Get_output_108_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_108_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_109(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_109_DATA);
    return Data;
}

u32 XNnlayer_Get_output_109_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_109_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_110(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_110_DATA);
    return Data;
}

u32 XNnlayer_Get_output_110_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_110_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_111(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_111_DATA);
    return Data;
}

u32 XNnlayer_Get_output_111_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_111_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_112(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_112_DATA);
    return Data;
}

u32 XNnlayer_Get_output_112_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_112_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_113(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_113_DATA);
    return Data;
}

u32 XNnlayer_Get_output_113_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_113_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_114(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_114_DATA);
    return Data;
}

u32 XNnlayer_Get_output_114_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_114_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_115(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_115_DATA);
    return Data;
}

u32 XNnlayer_Get_output_115_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_115_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_116(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_116_DATA);
    return Data;
}

u32 XNnlayer_Get_output_116_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_116_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_117(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_117_DATA);
    return Data;
}

u32 XNnlayer_Get_output_117_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_117_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_118(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_118_DATA);
    return Data;
}

u32 XNnlayer_Get_output_118_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_118_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_119(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_119_DATA);
    return Data;
}

u32 XNnlayer_Get_output_119_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_119_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_120(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_120_DATA);
    return Data;
}

u32 XNnlayer_Get_output_120_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_120_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_121(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_121_DATA);
    return Data;
}

u32 XNnlayer_Get_output_121_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_121_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_122(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_122_DATA);
    return Data;
}

u32 XNnlayer_Get_output_122_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_122_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_123(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_123_DATA);
    return Data;
}

u32 XNnlayer_Get_output_123_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_123_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_124(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_124_DATA);
    return Data;
}

u32 XNnlayer_Get_output_124_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_124_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_125(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_125_DATA);
    return Data;
}

u32 XNnlayer_Get_output_125_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_125_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_126(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_126_DATA);
    return Data;
}

u32 XNnlayer_Get_output_126_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_126_CTRL);
    return Data & 0x1;
}

u32 XNnlayer_Get_output_127(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_127_DATA);
    return Data;
}

u32 XNnlayer_Get_output_127_vld(XNnlayer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNnlayer_ReadReg(InstancePtr->Control_BaseAddress, XNNLAYER_CONTROL_ADDR_OUTPUT_127_CTRL);
    return Data & 0x1;
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

u32 XNnlayer_Get_weights_16_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE);
}

u32 XNnlayer_Get_weights_16_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_16_HIGH);
}

u32 XNnlayer_Get_weights_16_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_16_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + 1);
}

u32 XNnlayer_Get_weights_16_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_16;
}

u32 XNnlayer_Get_weights_16_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_16;
}

u32 XNnlayer_Write_weights_16_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_16_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_16_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_16_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_16_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_16_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_16_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_16_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_16_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_17_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE);
}

u32 XNnlayer_Get_weights_17_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_17_HIGH);
}

u32 XNnlayer_Get_weights_17_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_17_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + 1);
}

u32 XNnlayer_Get_weights_17_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_17;
}

u32 XNnlayer_Get_weights_17_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_17;
}

u32 XNnlayer_Write_weights_17_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_17_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_17_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_17_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_17_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_17_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_17_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_17_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_17_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_18_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE);
}

u32 XNnlayer_Get_weights_18_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_18_HIGH);
}

u32 XNnlayer_Get_weights_18_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_18_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + 1);
}

u32 XNnlayer_Get_weights_18_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_18;
}

u32 XNnlayer_Get_weights_18_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_18;
}

u32 XNnlayer_Write_weights_18_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_18_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_18_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_18_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_18_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_18_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_18_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_18_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_18_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_19_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE);
}

u32 XNnlayer_Get_weights_19_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_19_HIGH);
}

u32 XNnlayer_Get_weights_19_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_19_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + 1);
}

u32 XNnlayer_Get_weights_19_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_19;
}

u32 XNnlayer_Get_weights_19_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_19;
}

u32 XNnlayer_Write_weights_19_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_19_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_19_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_19_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_19_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_19_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_19_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_19_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_19_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_20_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE);
}

u32 XNnlayer_Get_weights_20_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_20_HIGH);
}

u32 XNnlayer_Get_weights_20_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_20_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + 1);
}

u32 XNnlayer_Get_weights_20_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_20;
}

u32 XNnlayer_Get_weights_20_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_20;
}

u32 XNnlayer_Write_weights_20_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_20_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_20_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_20_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_20_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_20_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_20_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_20_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_20_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_21_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE);
}

u32 XNnlayer_Get_weights_21_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_21_HIGH);
}

u32 XNnlayer_Get_weights_21_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_21_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + 1);
}

u32 XNnlayer_Get_weights_21_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_21;
}

u32 XNnlayer_Get_weights_21_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_21;
}

u32 XNnlayer_Write_weights_21_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_21_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_21_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_21_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_21_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_21_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_21_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_21_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_21_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_22_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE);
}

u32 XNnlayer_Get_weights_22_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_22_HIGH);
}

u32 XNnlayer_Get_weights_22_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_22_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + 1);
}

u32 XNnlayer_Get_weights_22_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_22;
}

u32 XNnlayer_Get_weights_22_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_22;
}

u32 XNnlayer_Write_weights_22_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_22_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_22_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_22_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_22_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_22_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_22_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_22_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_22_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_23_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE);
}

u32 XNnlayer_Get_weights_23_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_23_HIGH);
}

u32 XNnlayer_Get_weights_23_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_23_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + 1);
}

u32 XNnlayer_Get_weights_23_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_23;
}

u32 XNnlayer_Get_weights_23_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_23;
}

u32 XNnlayer_Write_weights_23_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_23_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_23_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_23_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_23_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_23_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_23_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_23_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_23_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_24_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE);
}

u32 XNnlayer_Get_weights_24_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_24_HIGH);
}

u32 XNnlayer_Get_weights_24_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_24_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + 1);
}

u32 XNnlayer_Get_weights_24_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_24;
}

u32 XNnlayer_Get_weights_24_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_24;
}

u32 XNnlayer_Write_weights_24_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_24_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_24_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_24_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_24_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_24_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_24_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_24_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_24_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_25_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE);
}

u32 XNnlayer_Get_weights_25_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_25_HIGH);
}

u32 XNnlayer_Get_weights_25_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_25_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + 1);
}

u32 XNnlayer_Get_weights_25_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_25;
}

u32 XNnlayer_Get_weights_25_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_25;
}

u32 XNnlayer_Write_weights_25_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_25_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_25_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_25_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_25_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_25_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_25_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_25_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_25_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_26_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE);
}

u32 XNnlayer_Get_weights_26_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_26_HIGH);
}

u32 XNnlayer_Get_weights_26_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_26_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + 1);
}

u32 XNnlayer_Get_weights_26_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_26;
}

u32 XNnlayer_Get_weights_26_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_26;
}

u32 XNnlayer_Write_weights_26_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_26_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_26_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_26_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_26_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_26_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_26_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_26_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_26_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_27_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE);
}

u32 XNnlayer_Get_weights_27_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_27_HIGH);
}

u32 XNnlayer_Get_weights_27_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_27_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + 1);
}

u32 XNnlayer_Get_weights_27_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_27;
}

u32 XNnlayer_Get_weights_27_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_27;
}

u32 XNnlayer_Write_weights_27_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_27_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_27_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_27_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_27_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_27_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_27_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_27_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_27_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_28_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE);
}

u32 XNnlayer_Get_weights_28_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_28_HIGH);
}

u32 XNnlayer_Get_weights_28_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_28_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + 1);
}

u32 XNnlayer_Get_weights_28_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_28;
}

u32 XNnlayer_Get_weights_28_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_28;
}

u32 XNnlayer_Write_weights_28_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_28_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_28_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_28_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_28_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_28_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_28_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_28_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_28_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_29_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE);
}

u32 XNnlayer_Get_weights_29_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_29_HIGH);
}

u32 XNnlayer_Get_weights_29_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_29_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + 1);
}

u32 XNnlayer_Get_weights_29_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_29;
}

u32 XNnlayer_Get_weights_29_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_29;
}

u32 XNnlayer_Write_weights_29_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_29_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_29_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_29_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_29_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_29_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_29_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_29_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_29_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_30_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE);
}

u32 XNnlayer_Get_weights_30_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_30_HIGH);
}

u32 XNnlayer_Get_weights_30_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_30_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + 1);
}

u32 XNnlayer_Get_weights_30_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_30;
}

u32 XNnlayer_Get_weights_30_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_30;
}

u32 XNnlayer_Write_weights_30_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_30_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_30_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_30_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_30_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_30_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_30_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_30_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_30_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_31_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE);
}

u32 XNnlayer_Get_weights_31_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_31_HIGH);
}

u32 XNnlayer_Get_weights_31_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_31_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + 1);
}

u32 XNnlayer_Get_weights_31_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_31;
}

u32 XNnlayer_Get_weights_31_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_31;
}

u32 XNnlayer_Write_weights_31_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_31_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_31_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_31_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_31_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_31_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_31_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_31_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_31_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_32_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE);
}

u32 XNnlayer_Get_weights_32_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_32_HIGH);
}

u32 XNnlayer_Get_weights_32_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_32_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + 1);
}

u32 XNnlayer_Get_weights_32_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_32;
}

u32 XNnlayer_Get_weights_32_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_32;
}

u32 XNnlayer_Write_weights_32_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_32_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_32_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_32_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_32_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_32_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_32_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_32_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_32_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_33_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE);
}

u32 XNnlayer_Get_weights_33_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_33_HIGH);
}

u32 XNnlayer_Get_weights_33_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_33_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + 1);
}

u32 XNnlayer_Get_weights_33_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_33;
}

u32 XNnlayer_Get_weights_33_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_33;
}

u32 XNnlayer_Write_weights_33_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_33_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_33_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_33_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_33_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_33_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_33_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_33_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_33_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_34_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE);
}

u32 XNnlayer_Get_weights_34_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_34_HIGH);
}

u32 XNnlayer_Get_weights_34_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_34_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + 1);
}

u32 XNnlayer_Get_weights_34_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_34;
}

u32 XNnlayer_Get_weights_34_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_34;
}

u32 XNnlayer_Write_weights_34_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_34_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_34_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_34_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_34_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_34_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_34_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_34_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_34_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_35_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE);
}

u32 XNnlayer_Get_weights_35_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_35_HIGH);
}

u32 XNnlayer_Get_weights_35_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_35_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + 1);
}

u32 XNnlayer_Get_weights_35_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_35;
}

u32 XNnlayer_Get_weights_35_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_35;
}

u32 XNnlayer_Write_weights_35_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_35_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_35_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_35_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_35_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_35_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_35_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_35_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_35_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_36_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE);
}

u32 XNnlayer_Get_weights_36_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_36_HIGH);
}

u32 XNnlayer_Get_weights_36_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_36_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + 1);
}

u32 XNnlayer_Get_weights_36_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_36;
}

u32 XNnlayer_Get_weights_36_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_36;
}

u32 XNnlayer_Write_weights_36_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_36_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_36_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_36_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_36_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_36_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_36_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_36_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_36_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_37_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE);
}

u32 XNnlayer_Get_weights_37_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_37_HIGH);
}

u32 XNnlayer_Get_weights_37_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_37_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + 1);
}

u32 XNnlayer_Get_weights_37_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_37;
}

u32 XNnlayer_Get_weights_37_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_37;
}

u32 XNnlayer_Write_weights_37_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_37_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_37_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_37_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_37_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_37_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_37_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_37_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_37_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_38_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE);
}

u32 XNnlayer_Get_weights_38_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_38_HIGH);
}

u32 XNnlayer_Get_weights_38_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_38_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + 1);
}

u32 XNnlayer_Get_weights_38_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_38;
}

u32 XNnlayer_Get_weights_38_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_38;
}

u32 XNnlayer_Write_weights_38_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_38_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_38_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_38_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_38_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_38_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_38_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_38_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_38_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_39_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE);
}

u32 XNnlayer_Get_weights_39_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_39_HIGH);
}

u32 XNnlayer_Get_weights_39_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_39_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + 1);
}

u32 XNnlayer_Get_weights_39_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_39;
}

u32 XNnlayer_Get_weights_39_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_39;
}

u32 XNnlayer_Write_weights_39_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_39_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_39_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_39_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_39_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_39_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_39_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_39_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_39_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_40_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE);
}

u32 XNnlayer_Get_weights_40_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_40_HIGH);
}

u32 XNnlayer_Get_weights_40_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_40_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + 1);
}

u32 XNnlayer_Get_weights_40_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_40;
}

u32 XNnlayer_Get_weights_40_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_40;
}

u32 XNnlayer_Write_weights_40_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_40_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_40_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_40_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_40_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_40_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_40_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_40_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_40_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_41_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE);
}

u32 XNnlayer_Get_weights_41_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_41_HIGH);
}

u32 XNnlayer_Get_weights_41_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_41_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + 1);
}

u32 XNnlayer_Get_weights_41_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_41;
}

u32 XNnlayer_Get_weights_41_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_41;
}

u32 XNnlayer_Write_weights_41_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_41_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_41_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_41_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_41_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_41_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_41_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_41_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_41_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_42_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE);
}

u32 XNnlayer_Get_weights_42_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_42_HIGH);
}

u32 XNnlayer_Get_weights_42_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_42_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + 1);
}

u32 XNnlayer_Get_weights_42_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_42;
}

u32 XNnlayer_Get_weights_42_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_42;
}

u32 XNnlayer_Write_weights_42_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_42_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_42_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_42_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_42_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_42_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_42_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_42_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_42_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_43_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE);
}

u32 XNnlayer_Get_weights_43_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_43_HIGH);
}

u32 XNnlayer_Get_weights_43_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_43_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + 1);
}

u32 XNnlayer_Get_weights_43_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_43;
}

u32 XNnlayer_Get_weights_43_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_43;
}

u32 XNnlayer_Write_weights_43_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_43_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_43_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_43_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_43_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_43_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_43_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_43_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_43_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_44_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE);
}

u32 XNnlayer_Get_weights_44_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_44_HIGH);
}

u32 XNnlayer_Get_weights_44_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_44_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + 1);
}

u32 XNnlayer_Get_weights_44_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_44;
}

u32 XNnlayer_Get_weights_44_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_44;
}

u32 XNnlayer_Write_weights_44_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_44_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_44_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_44_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_44_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_44_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_44_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_44_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_44_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_45_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE);
}

u32 XNnlayer_Get_weights_45_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_45_HIGH);
}

u32 XNnlayer_Get_weights_45_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_45_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + 1);
}

u32 XNnlayer_Get_weights_45_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_45;
}

u32 XNnlayer_Get_weights_45_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_45;
}

u32 XNnlayer_Write_weights_45_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_45_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_45_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_45_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_45_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_45_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_45_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_45_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_45_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_46_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE);
}

u32 XNnlayer_Get_weights_46_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_46_HIGH);
}

u32 XNnlayer_Get_weights_46_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_46_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + 1);
}

u32 XNnlayer_Get_weights_46_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_46;
}

u32 XNnlayer_Get_weights_46_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_46;
}

u32 XNnlayer_Write_weights_46_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_46_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_46_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_46_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_46_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_46_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_46_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_46_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_46_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_47_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE);
}

u32 XNnlayer_Get_weights_47_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_47_HIGH);
}

u32 XNnlayer_Get_weights_47_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_47_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + 1);
}

u32 XNnlayer_Get_weights_47_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_47;
}

u32 XNnlayer_Get_weights_47_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_47;
}

u32 XNnlayer_Write_weights_47_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_47_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_47_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_47_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_47_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_47_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_47_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_47_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_47_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_48_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE);
}

u32 XNnlayer_Get_weights_48_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_48_HIGH);
}

u32 XNnlayer_Get_weights_48_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_48_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + 1);
}

u32 XNnlayer_Get_weights_48_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_48;
}

u32 XNnlayer_Get_weights_48_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_48;
}

u32 XNnlayer_Write_weights_48_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_48_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_48_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_48_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_48_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_48_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_48_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_48_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_48_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_49_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE);
}

u32 XNnlayer_Get_weights_49_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_49_HIGH);
}

u32 XNnlayer_Get_weights_49_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_49_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + 1);
}

u32 XNnlayer_Get_weights_49_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_49;
}

u32 XNnlayer_Get_weights_49_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_49;
}

u32 XNnlayer_Write_weights_49_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_49_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_49_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_49_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_49_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_49_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_49_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_49_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_49_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_50_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE);
}

u32 XNnlayer_Get_weights_50_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_50_HIGH);
}

u32 XNnlayer_Get_weights_50_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_50_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + 1);
}

u32 XNnlayer_Get_weights_50_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_50;
}

u32 XNnlayer_Get_weights_50_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_50;
}

u32 XNnlayer_Write_weights_50_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_50_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_50_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_50_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_50_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_50_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_50_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_50_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_50_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_51_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE);
}

u32 XNnlayer_Get_weights_51_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_51_HIGH);
}

u32 XNnlayer_Get_weights_51_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_51_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + 1);
}

u32 XNnlayer_Get_weights_51_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_51;
}

u32 XNnlayer_Get_weights_51_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_51;
}

u32 XNnlayer_Write_weights_51_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_51_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_51_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_51_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_51_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_51_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_51_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_51_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_51_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_52_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE);
}

u32 XNnlayer_Get_weights_52_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_52_HIGH);
}

u32 XNnlayer_Get_weights_52_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_52_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + 1);
}

u32 XNnlayer_Get_weights_52_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_52;
}

u32 XNnlayer_Get_weights_52_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_52;
}

u32 XNnlayer_Write_weights_52_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_52_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_52_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_52_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_52_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_52_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_52_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_52_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_52_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_53_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE);
}

u32 XNnlayer_Get_weights_53_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_53_HIGH);
}

u32 XNnlayer_Get_weights_53_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_53_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + 1);
}

u32 XNnlayer_Get_weights_53_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_53;
}

u32 XNnlayer_Get_weights_53_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_53;
}

u32 XNnlayer_Write_weights_53_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_53_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_53_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_53_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_53_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_53_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_53_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_53_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_53_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_54_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE);
}

u32 XNnlayer_Get_weights_54_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_54_HIGH);
}

u32 XNnlayer_Get_weights_54_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_54_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + 1);
}

u32 XNnlayer_Get_weights_54_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_54;
}

u32 XNnlayer_Get_weights_54_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_54;
}

u32 XNnlayer_Write_weights_54_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_54_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_54_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_54_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_54_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_54_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_54_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_54_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_54_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_55_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE);
}

u32 XNnlayer_Get_weights_55_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_55_HIGH);
}

u32 XNnlayer_Get_weights_55_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_55_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + 1);
}

u32 XNnlayer_Get_weights_55_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_55;
}

u32 XNnlayer_Get_weights_55_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_55;
}

u32 XNnlayer_Write_weights_55_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_55_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_55_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_55_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_55_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_55_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_55_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_55_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_55_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_56_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE);
}

u32 XNnlayer_Get_weights_56_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_56_HIGH);
}

u32 XNnlayer_Get_weights_56_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_56_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + 1);
}

u32 XNnlayer_Get_weights_56_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_56;
}

u32 XNnlayer_Get_weights_56_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_56;
}

u32 XNnlayer_Write_weights_56_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_56_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_56_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_56_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_56_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_56_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_56_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_56_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_56_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_57_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE);
}

u32 XNnlayer_Get_weights_57_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_57_HIGH);
}

u32 XNnlayer_Get_weights_57_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_57_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + 1);
}

u32 XNnlayer_Get_weights_57_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_57;
}

u32 XNnlayer_Get_weights_57_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_57;
}

u32 XNnlayer_Write_weights_57_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_57_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_57_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_57_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_57_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_57_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_57_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_57_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_57_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_58_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE);
}

u32 XNnlayer_Get_weights_58_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_58_HIGH);
}

u32 XNnlayer_Get_weights_58_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_58_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + 1);
}

u32 XNnlayer_Get_weights_58_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_58;
}

u32 XNnlayer_Get_weights_58_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_58;
}

u32 XNnlayer_Write_weights_58_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_58_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_58_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_58_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_58_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_58_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_58_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_58_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_58_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_59_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE);
}

u32 XNnlayer_Get_weights_59_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_59_HIGH);
}

u32 XNnlayer_Get_weights_59_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_59_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + 1);
}

u32 XNnlayer_Get_weights_59_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_59;
}

u32 XNnlayer_Get_weights_59_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_59;
}

u32 XNnlayer_Write_weights_59_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_59_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_59_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_59_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_59_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_59_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_59_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_59_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_59_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_60_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE);
}

u32 XNnlayer_Get_weights_60_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_60_HIGH);
}

u32 XNnlayer_Get_weights_60_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_60_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + 1);
}

u32 XNnlayer_Get_weights_60_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_60;
}

u32 XNnlayer_Get_weights_60_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_60;
}

u32 XNnlayer_Write_weights_60_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_60_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_60_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_60_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_60_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_60_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_60_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_60_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_60_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_61_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE);
}

u32 XNnlayer_Get_weights_61_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_61_HIGH);
}

u32 XNnlayer_Get_weights_61_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_61_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + 1);
}

u32 XNnlayer_Get_weights_61_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_61;
}

u32 XNnlayer_Get_weights_61_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_61;
}

u32 XNnlayer_Write_weights_61_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_61_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_61_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_61_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_61_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_61_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_61_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_61_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_61_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_62_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE);
}

u32 XNnlayer_Get_weights_62_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_62_HIGH);
}

u32 XNnlayer_Get_weights_62_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_62_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + 1);
}

u32 XNnlayer_Get_weights_62_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_62;
}

u32 XNnlayer_Get_weights_62_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_62;
}

u32 XNnlayer_Write_weights_62_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_62_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_62_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_62_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_62_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_62_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_62_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_62_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_62_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_63_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE);
}

u32 XNnlayer_Get_weights_63_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_63_HIGH);
}

u32 XNnlayer_Get_weights_63_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_63_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + 1);
}

u32 XNnlayer_Get_weights_63_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_63;
}

u32 XNnlayer_Get_weights_63_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_63;
}

u32 XNnlayer_Write_weights_63_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_63_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_63_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_63_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_63_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_63_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_63_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_63_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_63_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_64_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE);
}

u32 XNnlayer_Get_weights_64_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_64_HIGH);
}

u32 XNnlayer_Get_weights_64_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_64_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + 1);
}

u32 XNnlayer_Get_weights_64_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_64;
}

u32 XNnlayer_Get_weights_64_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_64;
}

u32 XNnlayer_Write_weights_64_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_64_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_64_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_64_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_64_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_64_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_64_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_64_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_64_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_65_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE);
}

u32 XNnlayer_Get_weights_65_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_65_HIGH);
}

u32 XNnlayer_Get_weights_65_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_65_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + 1);
}

u32 XNnlayer_Get_weights_65_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_65;
}

u32 XNnlayer_Get_weights_65_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_65;
}

u32 XNnlayer_Write_weights_65_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_65_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_65_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_65_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_65_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_65_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_65_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_65_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_65_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_66_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE);
}

u32 XNnlayer_Get_weights_66_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_66_HIGH);
}

u32 XNnlayer_Get_weights_66_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_66_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + 1);
}

u32 XNnlayer_Get_weights_66_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_66;
}

u32 XNnlayer_Get_weights_66_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_66;
}

u32 XNnlayer_Write_weights_66_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_66_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_66_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_66_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_66_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_66_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_66_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_66_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_66_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_67_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE);
}

u32 XNnlayer_Get_weights_67_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_67_HIGH);
}

u32 XNnlayer_Get_weights_67_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_67_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + 1);
}

u32 XNnlayer_Get_weights_67_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_67;
}

u32 XNnlayer_Get_weights_67_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_67;
}

u32 XNnlayer_Write_weights_67_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_67_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_67_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_67_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_67_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_67_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_67_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_67_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_67_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_68_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE);
}

u32 XNnlayer_Get_weights_68_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_68_HIGH);
}

u32 XNnlayer_Get_weights_68_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_68_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + 1);
}

u32 XNnlayer_Get_weights_68_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_68;
}

u32 XNnlayer_Get_weights_68_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_68;
}

u32 XNnlayer_Write_weights_68_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_68_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_68_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_68_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_68_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_68_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_68_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_68_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_68_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_69_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE);
}

u32 XNnlayer_Get_weights_69_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_69_HIGH);
}

u32 XNnlayer_Get_weights_69_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_69_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + 1);
}

u32 XNnlayer_Get_weights_69_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_69;
}

u32 XNnlayer_Get_weights_69_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_69;
}

u32 XNnlayer_Write_weights_69_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_69_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_69_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_69_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_69_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_69_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_69_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_69_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_69_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_70_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE);
}

u32 XNnlayer_Get_weights_70_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_70_HIGH);
}

u32 XNnlayer_Get_weights_70_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_70_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + 1);
}

u32 XNnlayer_Get_weights_70_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_70;
}

u32 XNnlayer_Get_weights_70_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_70;
}

u32 XNnlayer_Write_weights_70_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_70_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_70_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_70_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_70_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_70_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_70_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_70_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_70_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_71_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE);
}

u32 XNnlayer_Get_weights_71_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_71_HIGH);
}

u32 XNnlayer_Get_weights_71_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_71_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + 1);
}

u32 XNnlayer_Get_weights_71_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_71;
}

u32 XNnlayer_Get_weights_71_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_71;
}

u32 XNnlayer_Write_weights_71_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_71_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_71_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_71_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_71_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_71_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_71_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_71_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_71_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_72_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE);
}

u32 XNnlayer_Get_weights_72_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_72_HIGH);
}

u32 XNnlayer_Get_weights_72_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_72_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + 1);
}

u32 XNnlayer_Get_weights_72_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_72;
}

u32 XNnlayer_Get_weights_72_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_72;
}

u32 XNnlayer_Write_weights_72_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_72_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_72_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_72_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_72_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_72_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_72_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_72_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_72_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_73_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE);
}

u32 XNnlayer_Get_weights_73_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_73_HIGH);
}

u32 XNnlayer_Get_weights_73_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_73_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + 1);
}

u32 XNnlayer_Get_weights_73_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_73;
}

u32 XNnlayer_Get_weights_73_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_73;
}

u32 XNnlayer_Write_weights_73_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_73_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_73_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_73_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_73_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_73_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_73_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_73_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_73_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_74_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE);
}

u32 XNnlayer_Get_weights_74_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_74_HIGH);
}

u32 XNnlayer_Get_weights_74_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_74_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + 1);
}

u32 XNnlayer_Get_weights_74_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_74;
}

u32 XNnlayer_Get_weights_74_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_74;
}

u32 XNnlayer_Write_weights_74_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_74_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_74_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_74_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_74_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_74_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_74_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_74_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_74_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_75_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE);
}

u32 XNnlayer_Get_weights_75_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_75_HIGH);
}

u32 XNnlayer_Get_weights_75_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_75_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + 1);
}

u32 XNnlayer_Get_weights_75_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_75;
}

u32 XNnlayer_Get_weights_75_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_75;
}

u32 XNnlayer_Write_weights_75_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_75_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_75_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_75_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_75_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_75_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_75_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_75_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_75_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_76_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE);
}

u32 XNnlayer_Get_weights_76_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_76_HIGH);
}

u32 XNnlayer_Get_weights_76_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_76_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + 1);
}

u32 XNnlayer_Get_weights_76_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_76;
}

u32 XNnlayer_Get_weights_76_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_76;
}

u32 XNnlayer_Write_weights_76_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_76_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_76_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_76_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_76_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_76_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_76_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_76_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_76_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_77_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE);
}

u32 XNnlayer_Get_weights_77_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_77_HIGH);
}

u32 XNnlayer_Get_weights_77_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_77_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + 1);
}

u32 XNnlayer_Get_weights_77_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_77;
}

u32 XNnlayer_Get_weights_77_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_77;
}

u32 XNnlayer_Write_weights_77_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_77_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_77_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_77_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_77_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_77_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_77_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_77_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_77_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_78_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE);
}

u32 XNnlayer_Get_weights_78_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_78_HIGH);
}

u32 XNnlayer_Get_weights_78_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_78_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + 1);
}

u32 XNnlayer_Get_weights_78_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_78;
}

u32 XNnlayer_Get_weights_78_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_78;
}

u32 XNnlayer_Write_weights_78_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_78_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_78_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_78_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_78_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_78_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_78_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_78_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_78_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_79_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE);
}

u32 XNnlayer_Get_weights_79_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_79_HIGH);
}

u32 XNnlayer_Get_weights_79_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_79_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + 1);
}

u32 XNnlayer_Get_weights_79_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_79;
}

u32 XNnlayer_Get_weights_79_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_79;
}

u32 XNnlayer_Write_weights_79_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_79_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_79_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_79_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_79_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_79_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_79_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_79_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_79_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_80_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE);
}

u32 XNnlayer_Get_weights_80_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_80_HIGH);
}

u32 XNnlayer_Get_weights_80_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_80_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + 1);
}

u32 XNnlayer_Get_weights_80_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_80;
}

u32 XNnlayer_Get_weights_80_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_80;
}

u32 XNnlayer_Write_weights_80_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_80_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_80_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_80_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_80_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_80_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_80_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_80_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_80_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_81_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE);
}

u32 XNnlayer_Get_weights_81_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_81_HIGH);
}

u32 XNnlayer_Get_weights_81_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_81_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + 1);
}

u32 XNnlayer_Get_weights_81_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_81;
}

u32 XNnlayer_Get_weights_81_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_81;
}

u32 XNnlayer_Write_weights_81_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_81_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_81_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_81_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_81_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_81_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_81_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_81_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_81_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_82_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE);
}

u32 XNnlayer_Get_weights_82_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_82_HIGH);
}

u32 XNnlayer_Get_weights_82_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_82_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + 1);
}

u32 XNnlayer_Get_weights_82_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_82;
}

u32 XNnlayer_Get_weights_82_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_82;
}

u32 XNnlayer_Write_weights_82_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_82_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_82_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_82_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_82_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_82_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_82_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_82_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_82_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_83_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE);
}

u32 XNnlayer_Get_weights_83_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_83_HIGH);
}

u32 XNnlayer_Get_weights_83_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_83_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + 1);
}

u32 XNnlayer_Get_weights_83_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_83;
}

u32 XNnlayer_Get_weights_83_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_83;
}

u32 XNnlayer_Write_weights_83_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_83_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_83_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_83_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_83_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_83_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_83_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_83_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_83_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_84_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE);
}

u32 XNnlayer_Get_weights_84_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_84_HIGH);
}

u32 XNnlayer_Get_weights_84_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_84_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + 1);
}

u32 XNnlayer_Get_weights_84_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_84;
}

u32 XNnlayer_Get_weights_84_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_84;
}

u32 XNnlayer_Write_weights_84_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_84_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_84_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_84_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_84_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_84_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_84_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_84_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_84_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_85_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE);
}

u32 XNnlayer_Get_weights_85_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_85_HIGH);
}

u32 XNnlayer_Get_weights_85_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_85_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + 1);
}

u32 XNnlayer_Get_weights_85_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_85;
}

u32 XNnlayer_Get_weights_85_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_85;
}

u32 XNnlayer_Write_weights_85_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_85_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_85_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_85_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_85_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_85_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_85_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_85_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_85_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_86_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE);
}

u32 XNnlayer_Get_weights_86_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_86_HIGH);
}

u32 XNnlayer_Get_weights_86_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_86_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + 1);
}

u32 XNnlayer_Get_weights_86_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_86;
}

u32 XNnlayer_Get_weights_86_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_86;
}

u32 XNnlayer_Write_weights_86_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_86_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_86_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_86_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_86_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_86_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_86_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_86_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_86_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_87_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE);
}

u32 XNnlayer_Get_weights_87_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_87_HIGH);
}

u32 XNnlayer_Get_weights_87_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_87_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + 1);
}

u32 XNnlayer_Get_weights_87_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_87;
}

u32 XNnlayer_Get_weights_87_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_87;
}

u32 XNnlayer_Write_weights_87_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_87_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_87_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_87_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_87_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_87_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_87_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_87_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_87_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_88_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE);
}

u32 XNnlayer_Get_weights_88_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_88_HIGH);
}

u32 XNnlayer_Get_weights_88_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_88_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + 1);
}

u32 XNnlayer_Get_weights_88_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_88;
}

u32 XNnlayer_Get_weights_88_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_88;
}

u32 XNnlayer_Write_weights_88_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_88_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_88_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_88_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_88_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_88_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_88_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_88_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_88_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_89_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE);
}

u32 XNnlayer_Get_weights_89_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_89_HIGH);
}

u32 XNnlayer_Get_weights_89_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_89_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + 1);
}

u32 XNnlayer_Get_weights_89_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_89;
}

u32 XNnlayer_Get_weights_89_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_89;
}

u32 XNnlayer_Write_weights_89_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_89_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_89_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_89_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_89_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_89_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_89_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_89_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_89_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_90_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE);
}

u32 XNnlayer_Get_weights_90_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_90_HIGH);
}

u32 XNnlayer_Get_weights_90_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_90_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + 1);
}

u32 XNnlayer_Get_weights_90_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_90;
}

u32 XNnlayer_Get_weights_90_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_90;
}

u32 XNnlayer_Write_weights_90_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_90_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_90_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_90_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_90_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_90_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_90_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_90_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_90_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_91_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE);
}

u32 XNnlayer_Get_weights_91_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_91_HIGH);
}

u32 XNnlayer_Get_weights_91_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_91_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + 1);
}

u32 XNnlayer_Get_weights_91_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_91;
}

u32 XNnlayer_Get_weights_91_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_91;
}

u32 XNnlayer_Write_weights_91_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_91_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_91_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_91_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_91_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_91_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_91_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_91_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_91_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_92_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE);
}

u32 XNnlayer_Get_weights_92_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_92_HIGH);
}

u32 XNnlayer_Get_weights_92_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_92_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + 1);
}

u32 XNnlayer_Get_weights_92_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_92;
}

u32 XNnlayer_Get_weights_92_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_92;
}

u32 XNnlayer_Write_weights_92_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_92_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_92_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_92_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_92_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_92_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_92_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_92_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_92_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_93_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE);
}

u32 XNnlayer_Get_weights_93_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_93_HIGH);
}

u32 XNnlayer_Get_weights_93_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_93_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + 1);
}

u32 XNnlayer_Get_weights_93_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_93;
}

u32 XNnlayer_Get_weights_93_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_93;
}

u32 XNnlayer_Write_weights_93_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_93_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_93_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_93_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_93_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_93_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_93_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_93_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_93_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_94_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE);
}

u32 XNnlayer_Get_weights_94_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_94_HIGH);
}

u32 XNnlayer_Get_weights_94_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_94_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + 1);
}

u32 XNnlayer_Get_weights_94_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_94;
}

u32 XNnlayer_Get_weights_94_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_94;
}

u32 XNnlayer_Write_weights_94_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_94_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_94_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_94_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_94_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_94_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_94_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_94_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_94_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_95_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE);
}

u32 XNnlayer_Get_weights_95_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_95_HIGH);
}

u32 XNnlayer_Get_weights_95_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_95_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + 1);
}

u32 XNnlayer_Get_weights_95_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_95;
}

u32 XNnlayer_Get_weights_95_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_95;
}

u32 XNnlayer_Write_weights_95_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_95_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_95_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_95_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_95_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_95_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_95_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_95_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_95_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_96_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE);
}

u32 XNnlayer_Get_weights_96_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_96_HIGH);
}

u32 XNnlayer_Get_weights_96_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_96_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + 1);
}

u32 XNnlayer_Get_weights_96_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_96;
}

u32 XNnlayer_Get_weights_96_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_96;
}

u32 XNnlayer_Write_weights_96_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_96_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_96_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_96_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_96_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_96_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_96_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_96_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_96_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_97_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE);
}

u32 XNnlayer_Get_weights_97_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_97_HIGH);
}

u32 XNnlayer_Get_weights_97_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_97_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + 1);
}

u32 XNnlayer_Get_weights_97_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_97;
}

u32 XNnlayer_Get_weights_97_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_97;
}

u32 XNnlayer_Write_weights_97_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_97_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_97_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_97_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_97_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_97_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_97_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_97_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_97_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_98_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE);
}

u32 XNnlayer_Get_weights_98_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_98_HIGH);
}

u32 XNnlayer_Get_weights_98_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_98_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + 1);
}

u32 XNnlayer_Get_weights_98_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_98;
}

u32 XNnlayer_Get_weights_98_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_98;
}

u32 XNnlayer_Write_weights_98_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_98_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_98_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_98_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_98_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_98_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_98_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_98_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_98_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_99_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE);
}

u32 XNnlayer_Get_weights_99_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_99_HIGH);
}

u32 XNnlayer_Get_weights_99_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_99_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + 1);
}

u32 XNnlayer_Get_weights_99_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_99;
}

u32 XNnlayer_Get_weights_99_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_99;
}

u32 XNnlayer_Write_weights_99_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_99_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_99_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_99_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_99_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_99_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_99_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_99_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_99_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_100_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE);
}

u32 XNnlayer_Get_weights_100_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_100_HIGH);
}

u32 XNnlayer_Get_weights_100_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_100_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + 1);
}

u32 XNnlayer_Get_weights_100_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_100;
}

u32 XNnlayer_Get_weights_100_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_100;
}

u32 XNnlayer_Write_weights_100_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_100_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_100_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_100_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_100_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_100_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_100_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_100_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_100_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_101_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE);
}

u32 XNnlayer_Get_weights_101_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_101_HIGH);
}

u32 XNnlayer_Get_weights_101_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_101_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + 1);
}

u32 XNnlayer_Get_weights_101_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_101;
}

u32 XNnlayer_Get_weights_101_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_101;
}

u32 XNnlayer_Write_weights_101_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_101_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_101_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_101_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_101_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_101_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_101_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_101_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_101_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_102_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE);
}

u32 XNnlayer_Get_weights_102_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_102_HIGH);
}

u32 XNnlayer_Get_weights_102_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_102_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + 1);
}

u32 XNnlayer_Get_weights_102_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_102;
}

u32 XNnlayer_Get_weights_102_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_102;
}

u32 XNnlayer_Write_weights_102_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_102_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_102_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_102_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_102_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_102_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_102_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_102_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_102_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_103_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE);
}

u32 XNnlayer_Get_weights_103_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_103_HIGH);
}

u32 XNnlayer_Get_weights_103_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_103_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + 1);
}

u32 XNnlayer_Get_weights_103_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_103;
}

u32 XNnlayer_Get_weights_103_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_103;
}

u32 XNnlayer_Write_weights_103_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_103_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_103_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_103_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_103_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_103_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_103_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_103_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_103_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_104_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE);
}

u32 XNnlayer_Get_weights_104_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_104_HIGH);
}

u32 XNnlayer_Get_weights_104_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_104_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + 1);
}

u32 XNnlayer_Get_weights_104_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_104;
}

u32 XNnlayer_Get_weights_104_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_104;
}

u32 XNnlayer_Write_weights_104_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_104_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_104_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_104_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_104_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_104_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_104_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_104_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_104_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_105_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE);
}

u32 XNnlayer_Get_weights_105_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_105_HIGH);
}

u32 XNnlayer_Get_weights_105_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_105_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + 1);
}

u32 XNnlayer_Get_weights_105_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_105;
}

u32 XNnlayer_Get_weights_105_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_105;
}

u32 XNnlayer_Write_weights_105_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_105_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_105_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_105_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_105_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_105_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_105_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_105_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_105_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_106_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE);
}

u32 XNnlayer_Get_weights_106_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_106_HIGH);
}

u32 XNnlayer_Get_weights_106_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_106_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + 1);
}

u32 XNnlayer_Get_weights_106_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_106;
}

u32 XNnlayer_Get_weights_106_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_106;
}

u32 XNnlayer_Write_weights_106_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_106_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_106_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_106_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_106_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_106_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_106_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_106_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_106_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_107_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE);
}

u32 XNnlayer_Get_weights_107_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_107_HIGH);
}

u32 XNnlayer_Get_weights_107_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_107_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + 1);
}

u32 XNnlayer_Get_weights_107_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_107;
}

u32 XNnlayer_Get_weights_107_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_107;
}

u32 XNnlayer_Write_weights_107_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_107_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_107_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_107_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_107_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_107_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_107_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_107_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_107_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_108_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE);
}

u32 XNnlayer_Get_weights_108_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_108_HIGH);
}

u32 XNnlayer_Get_weights_108_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_108_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + 1);
}

u32 XNnlayer_Get_weights_108_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_108;
}

u32 XNnlayer_Get_weights_108_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_108;
}

u32 XNnlayer_Write_weights_108_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_108_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_108_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_108_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_108_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_108_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_108_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_108_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_108_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_109_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE);
}

u32 XNnlayer_Get_weights_109_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_109_HIGH);
}

u32 XNnlayer_Get_weights_109_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_109_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + 1);
}

u32 XNnlayer_Get_weights_109_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_109;
}

u32 XNnlayer_Get_weights_109_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_109;
}

u32 XNnlayer_Write_weights_109_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_109_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_109_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_109_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_109_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_109_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_109_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_109_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_109_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_110_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE);
}

u32 XNnlayer_Get_weights_110_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_110_HIGH);
}

u32 XNnlayer_Get_weights_110_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_110_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + 1);
}

u32 XNnlayer_Get_weights_110_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_110;
}

u32 XNnlayer_Get_weights_110_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_110;
}

u32 XNnlayer_Write_weights_110_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_110_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_110_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_110_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_110_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_110_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_110_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_110_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_110_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_111_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE);
}

u32 XNnlayer_Get_weights_111_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_111_HIGH);
}

u32 XNnlayer_Get_weights_111_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_111_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + 1);
}

u32 XNnlayer_Get_weights_111_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_111;
}

u32 XNnlayer_Get_weights_111_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_111;
}

u32 XNnlayer_Write_weights_111_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_111_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_111_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_111_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_111_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_111_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_111_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_111_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_111_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_112_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE);
}

u32 XNnlayer_Get_weights_112_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_112_HIGH);
}

u32 XNnlayer_Get_weights_112_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_112_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + 1);
}

u32 XNnlayer_Get_weights_112_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_112;
}

u32 XNnlayer_Get_weights_112_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_112;
}

u32 XNnlayer_Write_weights_112_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_112_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_112_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_112_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_112_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_112_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_112_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_112_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_112_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_113_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE);
}

u32 XNnlayer_Get_weights_113_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_113_HIGH);
}

u32 XNnlayer_Get_weights_113_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_113_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + 1);
}

u32 XNnlayer_Get_weights_113_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_113;
}

u32 XNnlayer_Get_weights_113_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_113;
}

u32 XNnlayer_Write_weights_113_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_113_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_113_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_113_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_113_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_113_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_113_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_113_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_113_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_114_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE);
}

u32 XNnlayer_Get_weights_114_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_114_HIGH);
}

u32 XNnlayer_Get_weights_114_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_114_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + 1);
}

u32 XNnlayer_Get_weights_114_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_114;
}

u32 XNnlayer_Get_weights_114_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_114;
}

u32 XNnlayer_Write_weights_114_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_114_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_114_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_114_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_114_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_114_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_114_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_114_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_114_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_115_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE);
}

u32 XNnlayer_Get_weights_115_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_115_HIGH);
}

u32 XNnlayer_Get_weights_115_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_115_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + 1);
}

u32 XNnlayer_Get_weights_115_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_115;
}

u32 XNnlayer_Get_weights_115_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_115;
}

u32 XNnlayer_Write_weights_115_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_115_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_115_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_115_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_115_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_115_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_115_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_115_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_115_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_116_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE);
}

u32 XNnlayer_Get_weights_116_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_116_HIGH);
}

u32 XNnlayer_Get_weights_116_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_116_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + 1);
}

u32 XNnlayer_Get_weights_116_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_116;
}

u32 XNnlayer_Get_weights_116_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_116;
}

u32 XNnlayer_Write_weights_116_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_116_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_116_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_116_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_116_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_116_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_116_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_116_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_116_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_117_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE);
}

u32 XNnlayer_Get_weights_117_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_117_HIGH);
}

u32 XNnlayer_Get_weights_117_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_117_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + 1);
}

u32 XNnlayer_Get_weights_117_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_117;
}

u32 XNnlayer_Get_weights_117_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_117;
}

u32 XNnlayer_Write_weights_117_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_117_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_117_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_117_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_117_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_117_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_117_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_117_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_117_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_118_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE);
}

u32 XNnlayer_Get_weights_118_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_118_HIGH);
}

u32 XNnlayer_Get_weights_118_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_118_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + 1);
}

u32 XNnlayer_Get_weights_118_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_118;
}

u32 XNnlayer_Get_weights_118_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_118;
}

u32 XNnlayer_Write_weights_118_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_118_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_118_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_118_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_118_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_118_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_118_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_118_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_118_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_119_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE);
}

u32 XNnlayer_Get_weights_119_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_119_HIGH);
}

u32 XNnlayer_Get_weights_119_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_119_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + 1);
}

u32 XNnlayer_Get_weights_119_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_119;
}

u32 XNnlayer_Get_weights_119_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_119;
}

u32 XNnlayer_Write_weights_119_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_119_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_119_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_119_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_119_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_119_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_119_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_119_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_119_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_120_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE);
}

u32 XNnlayer_Get_weights_120_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_120_HIGH);
}

u32 XNnlayer_Get_weights_120_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_120_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + 1);
}

u32 XNnlayer_Get_weights_120_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_120;
}

u32 XNnlayer_Get_weights_120_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_120;
}

u32 XNnlayer_Write_weights_120_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_120_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_120_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_120_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_120_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_120_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_120_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_120_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_120_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_121_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE);
}

u32 XNnlayer_Get_weights_121_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_121_HIGH);
}

u32 XNnlayer_Get_weights_121_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_121_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + 1);
}

u32 XNnlayer_Get_weights_121_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_121;
}

u32 XNnlayer_Get_weights_121_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_121;
}

u32 XNnlayer_Write_weights_121_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_121_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_121_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_121_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_121_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_121_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_121_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_121_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_121_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_122_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE);
}

u32 XNnlayer_Get_weights_122_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_122_HIGH);
}

u32 XNnlayer_Get_weights_122_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_122_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + 1);
}

u32 XNnlayer_Get_weights_122_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_122;
}

u32 XNnlayer_Get_weights_122_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_122;
}

u32 XNnlayer_Write_weights_122_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_122_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_122_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_122_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_122_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_122_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_122_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_122_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_122_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_123_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE);
}

u32 XNnlayer_Get_weights_123_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_123_HIGH);
}

u32 XNnlayer_Get_weights_123_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_123_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + 1);
}

u32 XNnlayer_Get_weights_123_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_123;
}

u32 XNnlayer_Get_weights_123_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_123;
}

u32 XNnlayer_Write_weights_123_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_123_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_123_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_123_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_123_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_123_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_123_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_123_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_123_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_124_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE);
}

u32 XNnlayer_Get_weights_124_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_124_HIGH);
}

u32 XNnlayer_Get_weights_124_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_124_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + 1);
}

u32 XNnlayer_Get_weights_124_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_124;
}

u32 XNnlayer_Get_weights_124_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_124;
}

u32 XNnlayer_Write_weights_124_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_124_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_124_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_124_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_124_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_124_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_124_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_124_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_124_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_125_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE);
}

u32 XNnlayer_Get_weights_125_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_125_HIGH);
}

u32 XNnlayer_Get_weights_125_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_125_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + 1);
}

u32 XNnlayer_Get_weights_125_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_125;
}

u32 XNnlayer_Get_weights_125_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_125;
}

u32 XNnlayer_Write_weights_125_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_125_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_125_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_125_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_125_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_125_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_125_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_125_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_125_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_126_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE);
}

u32 XNnlayer_Get_weights_126_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_126_HIGH);
}

u32 XNnlayer_Get_weights_126_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_126_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + 1);
}

u32 XNnlayer_Get_weights_126_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_126;
}

u32 XNnlayer_Get_weights_126_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_126;
}

u32 XNnlayer_Write_weights_126_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_126_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_126_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_126_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_126_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_126_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_126_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_126_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_126_BASE + offset + i);
    }
    return length;
}

u32 XNnlayer_Get_weights_127_BaseAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE);
}

u32 XNnlayer_Get_weights_127_HighAddress(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_127_HIGH);
}

u32 XNnlayer_Get_weights_127_TotalBytes(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XNNLAYER_CONTROL_ADDR_WEIGHTS_127_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + 1);
}

u32 XNnlayer_Get_weights_127_BitWidth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_WIDTH_WEIGHTS_127;
}

u32 XNnlayer_Get_weights_127_Depth(XNnlayer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNNLAYER_CONTROL_DEPTH_WEIGHTS_127;
}

u32 XNnlayer_Write_weights_127_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_127_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_127_Words(XNnlayer *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XNNLAYER_CONTROL_ADDR_WEIGHTS_127_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + (offset + i)*4);
    }
    return length;
}

u32 XNnlayer_Write_weights_127_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_127_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XNnlayer_Read_weights_127_Bytes(XNnlayer *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XNNLAYER_CONTROL_ADDR_WEIGHTS_127_HIGH - XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE + offset + i);
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

