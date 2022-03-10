#include "1_neuron_layer.hpp"
#include <iostream>

int main(){
	const int inputSize = 3;
	short int input[SIZE] = {1, 1, 1};
	short int output[SIZE] = {0};
	short int weights[WEIGHT_MAX_SIZE*SIZE] = {1, 1, 1, 2, 2, 2, 3, 3, 3};
	short int bias[SIZE] = {100, 100, 100};

	std::cout << "STARTING" << std::endl;
	runLayer(input, output, weights, bias, inputSize);

	for(int i = 0; i < SIZE; i++) {
		if (output[i] != (i+i+i+100)) {
			return -i;
		}
	}

	return 0;
}
