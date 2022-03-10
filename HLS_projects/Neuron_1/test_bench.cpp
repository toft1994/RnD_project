#include "1_neuron_layer.hpp"
#include <iostream>

int main(){
	const int outputSize = 256;
	const int inputSize = 3;
	short int input[SIZE];
	short int output[SIZE] = {0};
	short int weights[WEIGHT_MAX_SIZE];
	short int bias[SIZE];

	int counter = 1;
	int incrementer = 0;
	for(int i = 0; i < SIZE; i++) {
		input[i] = 1;
		bias[i] = 100;
	}

	for(int i = 0; i < WEIGHT_MAX_SIZE; i++) {
		weights[i] = incrementer;
		if(counter >= inputSize){
			counter = 0;
			incrementer++;
		}
		counter++;
	}

	std::cout << "STARTING" << std::endl;
	nnlayer(input, output, weights, bias, inputSize, outputSize, 1);

	for(int i = 0; i < SIZE; i++) {
		if (output[i] != (i+i+i+100)) {
			return -i;
		}
	}

	return 0;
}
