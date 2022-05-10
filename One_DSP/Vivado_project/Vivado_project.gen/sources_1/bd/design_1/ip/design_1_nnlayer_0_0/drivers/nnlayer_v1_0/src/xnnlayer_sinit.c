// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xnnlayer.h"

extern XNnlayer_Config XNnlayer_ConfigTable[];

XNnlayer_Config *XNnlayer_LookupConfig(u16 DeviceId) {
	XNnlayer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNNLAYER_NUM_INSTANCES; Index++) {
		if (XNnlayer_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNnlayer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNnlayer_Initialize(XNnlayer *InstancePtr, u16 DeviceId) {
	XNnlayer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNnlayer_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNnlayer_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

