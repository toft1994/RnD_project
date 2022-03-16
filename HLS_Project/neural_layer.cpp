#include "1_neuron_layer.hpp"
#include <cstring>

const int size = SIZE;
const int max_size = MAX_SIZE;
const int max_weight_size = MAX_SIZE*SIZE;

void relu(dataType* data) {
	#pragma HLS inline
	for (short int i = 0; i < SIZE; i++)
	{
		#pragma HLS PIPELINE
		if (data[i] < 0)
		{
			data[i] = 0;
		}
	}
}

void nnlayer(dataType input[MAX_SIZE], dataType output[SIZE], dataType weights[WEIGHT_MAX_SIZE], dataType bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
#pragma HLS INTERFACE mode=s_axilite port=numOfOutNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return
	unsigned short int outNeurons = 0;
	unsigned short int inNeurons = 0;
	unsigned short int weightIndexAdded = 0;

	for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++) {
		output[outNeurons] = bias[outNeurons];
	}

	for (inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
	{
		for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++)
		{
			#pragma HLS UNROLL
			output[outNeurons] += (weights[outNeurons+weightIndexAdded] * input[inNeurons]);
		}
		weightIndexAdded+=numOfOutNeurons;
	}

	if(activation == 1) {
		relu(output);
	}
}

/*
#include "1_neuron_layer.hpp"
#include <cstring>

const int size = SIZE;
const int max_size = MAX_SIZE;
const int max_weight_size = MAX_SIZE*SIZE;

void relu(dataType* data) {
	#pragma HLS inline
	for (short int i = 0; i < SIZE; i++)
	{
		#pragma HLS PIPELINE
		if (data[i] < 0)
		{
			data[i] = 0;
		}
	}
}

static unsigned short int outNeurons = 0;
static unsigned short int weightIndexAdded = 0;
static unsigned short int inNeurons = 0;

void nnlayer(dataType input[MAX_SIZE], dataType output[SIZE], dataType weights[WEIGHT_MAX_SIZE], dataType bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input storage_impl=bram
#pragma HLS INTERFACE mode=s_axilite port=output storage_impl=bram
#pragma HLS INTERFACE mode=s_axilite port=weights storage_impl=bram
#pragma HLS INTERFACE mode=s_axilite port=bias storage_impl=bram
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
#pragma HLS INTERFACE mode=s_axilite port=numOfOutNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return

	for (outNeurons = 0; outNeurons < MAX_SIZE; outNeurons++)
	{
		output[outNeurons] = bias[outNeurons];
		for (inNeurons = 0; inNeurons < MAX_SIZE; inNeurons++)
		{
			#pragma HLS UNROLL factor = 8
			output[outNeurons] += input[inNeurons]; // (weights[inNeurons+weightIndexAdded] * input[inNeurons])
		}
		weightIndexAdded+=numOfInNeurons;
	}
	outNeurons = 0;
	weightIndexAdded = 0;

	/*if(activation == 1) {
		relu(output);
	}*/
//}
