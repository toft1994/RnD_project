/*
 * NeuralNetwork.cpp
 *
 *  Created on: 10. mar. 2022
 *      Author: jespe
 */

#include "NeuralNetwork.h"
#define DIVIDER 2

NeuralNetwork::NeuralNetwork() {
	XNnlayer_Initialize(&ptr, XPAR_NNLAYER_0_DEVICE_ID);
}

NeuralNetwork::~NeuralNetwork() {
}

void NeuralNetwork::run(u16* input, u16* output, u16* weights, u16* bias, u16* inputSize, u16* outputSize, u8* activation) {
	setInput(input, inputSize);
	setInputneurons(inputSize);
	setOutputneurons(outputSize);
	setBias(bias, outputSize);
	setWeights(weights, inputSize, outputSize);
	setActivation(activation);

	while(!XNnlayer_IsReady(&ptr))
	{}

	XNnlayer_Start(&ptr);

	while(!XNnlayer_IsReady(&ptr))
	{}

	XNnlayer_Read_output_r_Words(&ptr, 0, (u32*)output, (*outputSize + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setBias(u16* bias, u16* size) {
	XNnlayer_Write_bias_Words(&ptr, 0, (u32*)bias, (*size + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setWeights(u16* weights, u16* inputSize, u16* outputSize) {
	XNnlayer_Write_weights_Words(&ptr, 0, (u32*)weights, ((*outputSize**inputSize) + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setInputneurons(u16* inputSize) {
	XNnlayer_Set_numOfInNeurons(&ptr,*inputSize);
}

void NeuralNetwork::setOutputneurons(u16* outputSize) {
	XNnlayer_Set_numOfOutNeurons(&ptr,*outputSize);
}

void NeuralNetwork::setActivation(u8* activation) {
	XNnlayer_Set_activation(&ptr,*activation);
}

void NeuralNetwork::setInput(u16* input, u16 * size) {
	XNnlayer_Write_input_r_Words(&ptr, 0, (u32*)input, (*size + DIVIDER - 1) / DIVIDER);
}

#define TESTINPUT 3
#define TESTOUTPUT 3

u16 outputSize = TESTOUTPUT;
u16 inputSize = TESTINPUT;
u8 acti = 0;
u16 input[TESTINPUT] = {0};
u16 output[TESTOUTPUT] = {0};
u16 weights[TESTOUTPUT*TESTINPUT];
u16 bias[TESTOUTPUT];

void NeuralNetwork::test() {
	int counter = 1;
	int incrementer = 0;
	for(int i = 0; i < inputSize; i++) {
		input[i] = 1;
		bias[i] = 100;
	}

	for(int i = 0; i < outputSize*inputSize; i++) {
		weights[i] = incrementer;
		if(counter >= inputSize){
			counter = 0;
			incrementer++;
		}
		counter++;
	}
	run(input, output, weights, bias, &inputSize, &outputSize, &acti);
}
