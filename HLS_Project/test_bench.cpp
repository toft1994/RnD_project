#include "nnLayer.hpp"
#include <iostream>

int main(){
	int outputSize = 3;
	int inputSize = 5;
	dataType input[SIZE] = {0};
	dataType output[SIZE] = {0};
	dataType weights[WEIGHT_SIZE] = {0};
	dataType bias[SIZE] = {0};

	int counter = 1;
	int incrementer = 0;
	for(int i = 0; i < SIZE; i++) {
		if (i < inputSize) {
			input[i] = dataType(1);
		}
		else {
			input[i] = dataType(0);
		}
		if (i < outputSize) {
			bias[i] = dataType(1);
		}
		else {
			bias[i] = dataType(0);
		}
	}

	for(int i = 0; i < SIZE; i++) {
		for (int x = 0; x < SIZE; x++) {
			if (x < inputSize && i < outputSize) {
				weights[(i*SIZE)+x] = dataType(incrementer*0.15);
				if(counter >= inputSize){
					counter = 0;
					incrementer++;
				}
				counter++;
			}
			else {
				weights[(i*SIZE)+x] = dataType(0);
			}
		}
	}

	nnlayer(input, output, bias, weights, outputSize, 3);

	dataType test = 0.1328125;
	if(output[0] != test){
		return -1;
	}
	test = 0.27734375;
	if(output[1] != test){
		return -1;
	}
	test = 0.5859375;
	if(output[2] != test){
		return -1;
	}

	outputSize = SIZE;
	inputSize = 3;

	for(int i = 0; i < SIZE; i++) {
		if (i < inputSize) {
			input[i] = dataType(1);
		}
		else {
			input[i] = dataType(0);
		}
		if (i < outputSize) {
			bias[i] = dataType(1);
		}
		else {
			bias[i] = dataType(0);
		}
	}

	bias[0] = dataType(-100);
	incrementer = 0;
	counter = 1;

	for(int i = 0; i < SIZE; i++) {
		for (int x = 0; x < SIZE; x++) {
			if (x < inputSize && i < outputSize) {
				weights[(i*SIZE)+x] = dataType(incrementer*1);
				if(counter >= inputSize){
					counter = 0;
					incrementer++;
				}
				counter++;
			}
			else {
				weights[(i*SIZE)+x] = 0;
			}
		}
	}

	nnlayer(input, output, bias, weights, outputSize, 1);

	if(output[0] != 0)
	{
		return -1;
	}

	for(int i = 1; i < 8; i++) {
		if (output[i] != dataType((i*inputSize)+1)) {
			return -i;
		}
	}

	return 0;
}
