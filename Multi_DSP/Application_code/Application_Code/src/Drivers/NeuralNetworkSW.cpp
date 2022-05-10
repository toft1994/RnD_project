/*
 * NeuralNetworkSW.cpp
 *
 *  Created on: 21. apr. 2022
 *      Author: Mikkel
 */

#include "NeuralNetworkSW.h"
#define DIVIDER 2

static FIXEDCONVERT abs(FIXEDCONVERT x) {
	if (x < 0){
		return -x;
	}
	else {
		return x;
	}
}

static void relu(u16 * output_, FIXEDCONVERT* input, u16 * numOfOutputNeurons) {
	for (unsigned short int i = 0; i < *numOfOutputNeurons; i++)
	{
		if (input[i] < 0)
		{
			output_[i] = 0;
		}
		else {
			output_[i] = input[i].V.VAL;
		}
	}
}

static void sigmod_approx(u16 * output_, FIXEDCONVERT* input, u16 * numOfOutputNeurons) {
	for (unsigned short int i = 0; i < *numOfOutputNeurons; i++)
	{
		output_[i] = FIXEDCONVERT(fixedInput(0.5)*(input[i]/(fixedInput(1)+abs(input[i])))+fixedInput(0.5)).V.VAL;
	}
}

//https://stackoverflow.com/questions/6984440/approximate-ex
static void softmax(u16 * output_, FIXEDCONVERT* input, u16 * numOfOutputNeurons) {
	double resArray[MAX_NN_SIZE] = {0};
	double sum = 0;


	for(int i = 0; i < *numOfOutputNeurons; i++){
		float tmp = input[i].to_float();
		resArray[i] = exp(input[i].to_float());
		sum += resArray[i];
	}
	for(int i = 0; i < *numOfOutputNeurons; i++){
		float tmp = resArray[i]/sum;
		output_[i] = FIXEDCONVERT(tmp).V.VAL;
	}
}

NeuralNetworkSW::NeuralNetworkSW() {}

NeuralNetworkSW::~NeuralNetworkSW() {}

void NeuralNetworkSW::calculateLayer(u16* input, u16* output, u16* weights, u16* bias, u16 *inputSize, u16 *outputSize, u8 *activation){
	FIXEDCONVERT output_[MAX_NN_SIZE] = {0};
	runLayer(input, output_, bias, weights, inputSize, outputSize);
	runActivation(output, output_, activation, outputSize);
}

void NeuralNetworkSW::run(u16* input, u16* output, u16* weights, u16* bias, u16 *inputSize, u16 *outputSize, u8 *activation) {
	calculateLayer(input, output, weights, bias, inputSize, outputSize, activation);
}

void NeuralNetworkSW::runLayer(u16* input, FIXEDCONVERT* output, u16* bias, u16* weights, u16 *numOfInNeurons, u16 *numOfOutputNeurons){
	FIXEDCONVERT tmp1 = 0, tmp2 = 0;
	for (unsigned short int outNeurons = 0; outNeurons < *numOfOutputNeurons; outNeurons++)
	{
		output[outNeurons].V.VAL = bias[outNeurons];
		for (unsigned short int inNeurons = 0; inNeurons < *numOfInNeurons; inNeurons++)
		{
			tmp1.V.VAL = weights[inNeurons + (outNeurons**numOfInNeurons)];
			tmp2.V.VAL = input[inNeurons];
			output[outNeurons] += (tmp1 * tmp2);
		}
	}
}
void NeuralNetworkSW::runActivation(u16 *output, FIXEDCONVERT* input, u8 *activation, u16 *numOfOutputNeurons){
    if(*activation == 1) {
    	relu(output, input, numOfOutputNeurons);
    }
    else if (*activation == 2) {
    	sigmod_approx(output, input, numOfOutputNeurons);
    }
    else if (*activation == 3) {
    	softmax(output, input, numOfOutputNeurons);
    }
    else {
    	for (int i = 0; i < *numOfOutputNeurons; i++) {
    		output[i] = input[i].V.VAL;
    	}
    }
}


