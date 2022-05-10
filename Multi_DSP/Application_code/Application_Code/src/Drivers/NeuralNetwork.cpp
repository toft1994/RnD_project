/*
 * NeuralNetwork.cpp
 *
 *  Created on: 10. mar. 2022
 *      Author: jespe
 */


#include "NeuralNetwork.h"
#include "../globals.h"
#define DIVIDER 2

NeuralNetwork::NeuralNetwork() {
	XNnlayer_Initialize(&instance, XPAR_NNLAYER_0_DEVICE_ID);
	ptr = &instance;

	ConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	s32 Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr,
					ConfigPtr->BaseAddr);

	XGpioPs_SetDirectionPin(&Gpio, 12, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 12, 1);
}

NeuralNetwork::~NeuralNetwork() {
}

float NeuralNetwork::run(u16* input, u16* output, u16* weights, u16* bias, u16* inputSize, u16* outputSize, u8* activation, XScuTimer * timerInstance) {

	setInput(input, inputSize);
	setInputneurons(inputSize);
	setOutputneurons(outputSize);
	setBias(bias, outputSize);
	setWeights(weights, inputSize, outputSize);
	setActivation(activation);
	while(!XNnlayer_IsReady(ptr))
	{}

	// Start tid her
	u32 startTime = XScuTimer_GetCounterValue(timerInstance);
	XGpioPs_WritePin(&Gpio, 12, 1);
	XNnlayer_Start(ptr);
	while(!XNnlayer_IsDone(ptr))
	{}
	XGpioPs_WritePin(&Gpio, 12, 0);
	u32 stopTime = XScuTimer_GetCounterValue(timerInstance);

	// Stop tid her
	getOutput(output, outputSize);
	return ((float)startTime - (float)stopTime)/((float)ONE_SECOND/1000);
}

void NeuralNetwork::setBias(u16* bias, u16* size) {
	XNnlayer_Write_bias_Words(ptr, 0, (u32*)bias, (*size + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setWeights(u16* weights, u16* inputSize, u16* outputSize) {
	XNnlayer_Write_weights_Words(ptr, 0, (u32*)weights, ((*outputSize**inputSize) + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setInputneurons(u16* inputSize) {
	XNnlayer_Set_numOfInputNeurons(ptr,*inputSize);
}

void NeuralNetwork::setOutputneurons(u16* outputSize) {
	//XNnlayer_Set_numOfOutNeurons(&ptr,*outputSize);
	XNnlayer_Set_numOfOutputNeurons(ptr,*outputSize);
}

void NeuralNetwork::setActivation(u8* activation) {
	XNnlayer_Set_activation(ptr,*activation);
}

void NeuralNetwork::setInput(u16* input, u16 * size) {
	XNnlayer_Write_input_r_Words(ptr, 0, (u32*)input, (*size + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::getOutput(u16* output, u16 * size) {
	XNnlayer_Read_output_r_Words(ptr, 0, (u32*)output, (*size + DIVIDER - 1) / DIVIDER);
}

/*
#include "NeuralNetwork.h"

#include "../globals.h"
#define DIVIDER 2



NeuralNetwork::NeuralNetwork() {
	XNnlayer_Initialize(&instance, XPAR_NNLAYER_0_DEVICE_ID);
	ptr = &instance;
	ConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	s32 Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr,
					ConfigPtr->BaseAddr);


	XGpioPs_SetDirectionPin(&Gpio, 12, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 12, 1);


}

NeuralNetwork::~NeuralNetwork() {
}

float NeuralNetwork::run(u16* input, u16* output, u16* weights, u16* bias, u16* inputSize, u16* outputSize, u8* activation, XScuTimer * timerInstance) {

	XGpioPs_WritePin(&Gpio, 12, 0x1);

	setInput(input, inputSize);
	//setInputneurons(inputSize);
	setOutputneurons(outputSize);
	setBias(bias, outputSize);
	setWeights(weights, inputSize, outputSize);
	setActivation(activation);
	while(!XNnlayer_IsReady(ptr))
	{}

	u32 startTime = XScuTimer_GetCounterValue(timerInstance);
	XNnlayer_Start(ptr);
	while(!XNnlayer_IsDone(ptr))
	{}
	u32 stopTime = XScuTimer_GetCounterValue(timerInstance);

	getOutput(output, outputSize);
	XGpioPs_WritePin(&Gpio, 12, 0x0);

	return ((float)startTime - (float)stopTime)/((float)ONE_SECOND/1000);
}

void NeuralNetwork::setBias(u16* bias, u16* size) {
	//XNnlayer_Write_bias_Words(&ptr, 0, (u32*)bias, (*size + DIVIDER - 1) / DIVIDER);
	XNnlayer_Write_bias_Words(ptr, 0, (u32*)bias, (*size + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setWeights(u16* weights, u16* inputSize, u16* outputSize) {
	//XNnlayer_Write_weights_Words(&ptr, 0, (u32*)weights, ((*outputSize**inputSize) + DIVIDER - 1) / DIVIDER);
	Xil_AssertVoid(ptr != NULL);
	Xil_AssertVoid(ptr->IsReady == XIL_COMPONENT_IS_READY);

    for (int in = 0; in < *inputSize; in++) {
    	int address = in*256+XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE;
    	u32 * weights_ptr = (u32 *) &weights[*outputSize*in];
        for (int out = 0; out < (*outputSize + DIVIDER - 1) / DIVIDER; out++) {
            u32 w = *(weights_ptr + out);
            *(u32 *)(ptr->Control_BaseAddress + address + out*4) = w;
        }
    }
}

void NeuralNetwork::setInputneurons(u16* inputSize) {
	//XNnlayer_Set_numOfInNeurons(&ptr,*inputSize);
}

void NeuralNetwork::setOutputneurons(u16* outputSize) {
	//XNnlayer_Set_numOfOutNeurons(&ptr,*outputSize);
	XNnlayer_Set_numOfOutputNeurons(ptr,*outputSize);
}

void NeuralNetwork::setActivation(u8* activation) {
	XNnlayer_Set_activation(ptr,*activation);
}

void NeuralNetwork::setInput(u16* input, u16 * size) {
	//XNnlayer_Write_input_r_Words(&ptr, 0, (u32*)input, (*size + DIVIDER - 1) / DIVIDER);
	Xil_AssertVoid(ptr != NULL);
	Xil_AssertVoid(ptr->IsReady == XIL_COMPONENT_IS_READY);

	int counter = 0;
	for(int i = XNNLAYER_CONTROL_ADDR_INPUT_0_DATA; i <= XNNLAYER_CONTROL_ADDR_INPUT_127_DATA; i+=8){
		XNnlayer_WriteReg(ptr->Control_BaseAddress, i, input[counter]);
		counter++;
	}
}

void NeuralNetwork::getOutput(u16* output, u16 * size) {
	Xil_AssertVoid(ptr != NULL);
	Xil_AssertVoid(ptr->IsReady == XIL_COMPONENT_IS_READY);
	//XNnlayer_Read_output_r_Words(&ptr, 0, (u32*)output, (*outputSize + DIVIDER - 1) / DIVIDER);

	int counter = 0;
	for(int i = XNNLAYER_CONTROL_ADDR_OUTPUT_0_DATA; i < (*size*XNNLAYER_CONTROL_BITS_OUTPUT_0_DATA)+XNNLAYER_CONTROL_ADDR_OUTPUT_0_DATA; i+=XNNLAYER_CONTROL_BITS_OUTPUT_0_DATA){
		output[counter] = (u16) XNnlayer_ReadReg(ptr->Control_BaseAddress, i);
		counter++;
	}
}
*/
