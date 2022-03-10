#include "1_neruon_layer.hpp"

void runLayer(int input[MAX_SIZE], int output[SIZE], int weights[SIZE*SIZE], int bias[SIZE], unsigned short int numOfInNeurons) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
	unsigned short int outNeurons = 0;
	unsigned short int weightIndexAdded = 0;

	for (outNeurons = 0; outNeurons < SIZE; outNeurons++)
	{
		for (short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
		{
			output[outNeurons] += (weights[inNeurons+weightIndexAdded] * input[inNeurons]);
		}
		output[outNeurons] += bias[outNeurons];
		weightIndexAdded+=numOfInNeurons;
	}
}
