#include "1_neuron_layer.hpp"
#include <cstring>

const int size = SIZE;
const int max_size = MAX_SIZE;
const int max_weight_size = MAX_SIZE*SIZE;

void runLayer(short int input[MAX_SIZE], short int output[SIZE], short int weights[WEIGHT_MAX_SIZE], short int bias[SIZE], unsigned short int numOfInNeurons) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
#pragma HLS INTERFACE mode=s_axilite port=return

	unsigned short int outNeurons = 0;

	short int tmp_input[MAX_SIZE];
	short int tmp_weights[MAX_SIZE];
	short int tmp_bias[MAX_SIZE];

	memcpy(tmp_input,(const short int*)input, MAX_SIZE*sizeof(short int));
	memcpy(tmp_bias,(const short int*)bias, MAX_SIZE*sizeof(short int));

	for (outNeurons = 0; outNeurons < SIZE; outNeurons++)
	{
		memcpy(tmp_weights,(const short int*)&weights[outNeurons*numOfInNeurons], numOfInNeurons*sizeof(short int));

		for (short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
		{
			output[outNeurons] += (tmp_weights[inNeurons] * input[inNeurons]);
		}
		output[outNeurons] += tmp_bias[outNeurons];
	}
}


/* */
