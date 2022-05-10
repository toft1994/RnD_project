#include "nnLayer.hpp"
#include <iostream>

int main(){
	int outputSize = 3;
	int inputSize = 5;
	fixedInput input[SIZE] = {0};
	fixedInput output[SIZE] = {0};
	fixedInput weights[WEIGHT_SIZE] = {0};
	fixedInput bias[SIZE] = {0};

	int counter = 1;
	int incrementer = 0;
	for(int i = 0; i < SIZE; i++) {
		if (i < inputSize) {
			input[i] = fixedInput(1);
		}
		else {
			input[i] = fixedInput(0);
		}
		if (i < outputSize) {
			bias[i] = fixedInput(1);
		}
		else {
			bias[i] = fixedInput(0);
		}
	}

	for(int i = 0; i < outputSize; i++) {
		for (int x = 0; x < inputSize; x++) {
			if (x < inputSize && i < outputSize) {
				weights[(i*inputSize)+x] = fixedInput(incrementer*0.15);
				if(counter >= inputSize){
					counter = 0;
					incrementer++;
				}
				counter++;
			}
			/*else {
				weights[(i*SIZE)+x] = fixedInput(0);
			}*/
		}
		output[i] = fixedInput(0);
	}

	nnlayer(input, output, bias, weights, inputSize, outputSize, 3);

	fixedInput test = 0.1328125;
	if(output[0] != test){
		std::cout << output[0] << std::endl;
		return -1;
	}
	test = 0.27734375;
	if(output[1] != test){
		std::cout << output[1] << std::endl;
		return -1;
	}
	test = 0.5859375;
	if(output[2] != test){
		std::cout << output[2] << std::endl;
		return -1;
	}

	outputSize = SIZE;
	inputSize = 3;

	for(int i = 0; i < SIZE; i++) {
		if (i < inputSize) {
			input[i] = fixedInput(1);
		}
		else {
			input[i] = fixedInput(0);
		}
		if (i < outputSize) {
			bias[i] = fixedInput(1);
		}
		else {
			bias[i] = fixedInput(0);
		}
	}

	bias[0] = fixedInput(-100);
	incrementer = 0;
	counter = 1;

	for(int i = 0; i < outputSize; i++) {
		for (int x = 0; x < inputSize; x++) {
			if (x < inputSize && i < outputSize) {
				weights[(i*inputSize)+x] = fixedInput(incrementer*1);
				if(counter >= inputSize){
					counter = 0;
					incrementer++;
				}
				counter++;
			}
			/*else {
				weights[(i*SIZE)+x] = 0;
			}*/
		}
	}

	nnlayer(input, output, bias, weights, inputSize, outputSize, 1);

	if(output[0] != 0)
	{
		return -1;
	}

	for(int i = 1; i < 8; i++) {
		if (output[i] != fixedInput((i*inputSize)+1)) {
			return -i;
		}
	}

	nnlayer(input, output, bias, weights, SIZE, SIZE, 2);
	nnlayer(input, output, bias, weights, SIZE, SIZE, 0);

	return 0;
}
