#include "1_neuron_layer.hpp"
#include <iostream>

int main(){
	const int outputSize = 256;
	const int inputSize = 3;
	dataType input[SIZE];
	dataType output[SIZE] = {0};
	dataType weights[WEIGHT_MAX_SIZE];
	dataType bias[SIZE];

	int counter = 1;
	int incrementer = 0;
	for(int i = 0; i < SIZE; i++) {
		input[i] = dataType(i);
		bias[i] = 1;
	}

	for(int i = 0; i < WEIGHT_MAX_SIZE; i++) {
		weights[i] = dataType(incrementer);
		if(counter >= inputSize){
			counter = 0;
			incrementer++;
		}
		counter++;
	}

	std::cout << "STARTING" << std::endl;
	nnlayer(input, output, weights, bias, inputSize, outputSize, 1);

	for(int i = 0; i < 30; i++) {
		if (output[i] != dataType(i+i+i+1)) {
			return -i;
		}
	}

	return 0;
}
