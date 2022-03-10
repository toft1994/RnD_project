// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xrunlayer.h"

extern XRunlayer_Config XRunlayer_ConfigTable[];

XRunlayer_Config *XRunlayer_LookupConfig(u16 DeviceId) {
	XRunlayer_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRUNLAYER_NUM_INSTANCES; Index++) {
		if (XRunlayer_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRunlayer_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRunlayer_Initialize(XRunlayer *InstancePtr, u16 DeviceId) {
	XRunlayer_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRunlayer_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRunlayer_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

