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
}

NeuralNetwork::~NeuralNetwork() {
}

void NeuralNetwork::run(u16* input, u16* output, u16* weights, u16* bias, u16* inputSize, u16* outputSize, u8* activation) {

	while(!XNnlayer_IsReady(ptr))
	{}
	getOutput(output, outputSize);

	setInput(input, inputSize);
	setInputneurons(inputSize);
	setOutputneurons(outputSize);
	setBias(bias, outputSize);
	setWeights(weights, inputSize, outputSize);
	setActivation(activation);
	while(!XNnlayer_IsReady(ptr))
	{}
	XNnlayer_Start(ptr);
	while(!XNnlayer_IsReady(ptr))
	{}

	getOutput(output, outputSize);
}

void NeuralNetwork::setBias(u16* bias, u16* size) {
	//XNnlayer_Write_bias_Words(&ptr, 0, (u32*)bias, (*size + DIVIDER - 1) / DIVIDER);
	XNnlayer_Write_bias_Words(ptr, 0, (u32*)bias, (*size + DIVIDER - 1) / DIVIDER);
}

void NeuralNetwork::setWeights(u16* weights, u16* inputSize, u16* outputSize) {
	//XNnlayer_Write_weights_Words(&ptr, 0, (u32*)weights, ((*outputSize**inputSize) + DIVIDER - 1) / DIVIDER);
	//XNnlayer_Write_weights_Words(&ptr, 0, (u32*)weights, (MAX_NN_SIZE*MAX_NN_SIZE)/2);
	Xil_AssertVoid(ptr != NULL);
	Xil_AssertVoid(ptr->IsReady == XIL_COMPONENT_IS_READY);

    int counter = 0;

    //u32 * weights_ptr = (u32*) weights;

	/*for (int x = XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE; x < XNNLAYER_CONTROL_ADDR_WEIGHTS_127_BASE; x += 256) {
    	for (int i = 0; i < 128/2; i++) {
        	*(int *)(ptr->Control_BaseAddress + x) = *(weights_ptr+i+(counter*128/2));
    	}
    	counter++;
	}*/



    /*for (int out = 0; out < *outputSize; out++) {
       	for (int in = 0; in < *inputSize; in++) {
            int address = in*256+XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE;
           	u32 w = *(weights_ptr+(out**outputSize)+in);
           	*(int *)(ptr->Control_BaseAddress + address + (in*4)) = w;
        }
    }*/

    /*for (int in = 0; in < *inputSize; in++) {
    	for (int out = 0; out < *outputSize/2; out++) {
        	int address = in*256+XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE;
        	u32 w = *(weights_ptr+(in**inputSize)+out);
        	*(int *)(ptr->Control_BaseAddress + address + (out*4)) = w;
    	}
    }*/

    /*
     * for (int in = 0; in < *inputSize; in++) {
    	int address = in*256+XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE;
    	u32 * weights_ptr = (u32 *) weights[*outputSize*in];
        for (int out = 0; out < *outputSize; out++) {
            auto w = *(weights_ptr + (out+(in**outputSize)));
            *(short *)(ptr->Control_BaseAddress + address + out*2) = w;
        }
    }*/

    for (int in = 0; in < *inputSize; in++) {
    	int address = in*256+XNNLAYER_CONTROL_ADDR_WEIGHTS_0_BASE;
    	u32 * weights_ptr = (u32 *) &weights[*outputSize*in];
        for (int out = 0; out < (*outputSize + DIVIDER - 1) / DIVIDER; out++) {
            u32 w = *(weights_ptr + out);
            *(u32 *)(ptr->Control_BaseAddress + address + out*4) = w;
        }
    }

    u16 test[6] = {FIXEDCONVERT(1).bits_to_uint64(), FIXEDCONVERT(2).bits_to_uint64(), FIXEDCONVERT(3).bits_to_uint64(), FIXEDCONVERT(4).bits_to_uint64(), FIXEDCONVERT(5).bits_to_uint64(), FIXEDCONVERT(0).bits_to_uint64()};
    u16 test1[6] = {FIXEDCONVERT(1).bits_to_uint64(), FIXEDCONVERT(2).bits_to_uint64(), FIXEDCONVERT(3).bits_to_uint64(), FIXEDCONVERT(4).bits_to_uint64(), FIXEDCONVERT(5).bits_to_uint64(), FIXEDCONVERT(0).bits_to_uint64()};

    u32 * t1 = (u32*) test;
    u32 * t2 = (u32*) test1;

    /*XNnlayer_Write_weights_0_Words(ptr, 0, t1, 3);
    XNnlayer_Write_weights_1_Words(ptr, 0, t2, 3);*/
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
	//XNnlayer_Write_input_r_Words(&ptr, 0, (u32*)input, MAX_NN_SIZE/2);
	Xil_AssertVoid(ptr != NULL);
	Xil_AssertVoid(ptr->IsReady == XIL_COMPONENT_IS_READY);

	int counter = 0;
	for(int i = XNNLAYER_CONTROL_ADDR_INPUT_0_DATA; i <= XNNLAYER_CONTROL_ADDR_INPUT_127_DATA; i+=8){
		XNnlayer_WriteReg(ptr->Control_BaseAddress, i, input[counter]);
		counter++;
	}
}

void NeuralNetwork::getOutput(u16* output, u16 * size) {
	//XNnlayer_Read_output_r_Words(&ptr, 0, (u32*)output, (*outputSize + DIVIDER - 1) / DIVIDER);
	Xil_AssertVoid(ptr != NULL);
	Xil_AssertVoid(ptr->IsReady == XIL_COMPONENT_IS_READY);

	int counter = 0;
	for(int i = XNNLAYER_CONTROL_ADDR_OUTPUT_0_DATA; i < (*size*XNNLAYER_CONTROL_BITS_OUTPUT_0_DATA)+XNNLAYER_CONTROL_ADDR_OUTPUT_0_DATA; i+=XNNLAYER_CONTROL_BITS_OUTPUT_0_DATA){
		output[counter] = (u16) XNnlayer_ReadReg(ptr->Control_BaseAddress, i);
		counter++;
	}
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
