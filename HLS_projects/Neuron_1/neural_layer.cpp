#include "1_neuron_layer.hpp"
#include <cstring>

const int size = SIZE;
const int max_size = MAX_SIZE;
const int max_weight_size = MAX_SIZE*SIZE;

void relu(dataType* data, unsigned char numOfNeurons) {
	#pragma HLS inline
	for (unsigned char i = 0; i < numOfNeurons; i++)
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
	unsigned short int weightIndexAdded = 0;

	for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++) {
		output[outNeurons] = bias[outNeurons];
	}

	for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++)
	{
		for (short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
		{
			#pragma HLS UNROLL
			output[outNeurons] += (weights[inNeurons+weightIndexAdded] * input[inNeurons]);
		}
		weightIndexAdded+=numOfInNeurons;
	}

	if(activation == 1){
		relu(output, numOfOutNeurons);
	}
}



/*
 void nnlayer(short int input[MAX_SIZE], short int output[SIZE], short int weights[WEIGHT_MAX_SIZE], short int bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
#pragma HLS INTERFACE mode=s_axilite port=numOfOutNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return
	unsigned short int outNeurons = 0;
	unsigned short int weightIndexAdded = 0;

	for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++)
	{
		short int tmp = 0;
		output[outNeurons] = 0;
		for (short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
		{
			tmp += (weights[inNeurons+weightIndexAdded] * input[inNeurons]);
		}
		output[outNeurons] = tmp + bias[outNeurons];
		weightIndexAdded+=numOfInNeurons;
	}

	/*if(activation == 1){
		relu(output, numOfOutNeurons);
	}*/
/*}
}*/



/*
 * #pragma HLS INTERFACE m_axi depth=max_size port=input bundle=Inputs
#pragma HLS INTERFACE m_axi depth=max_weight_size port=weights bundle=Inputs
#pragma HLS INTERFACE m_axi depth=size port=bias bundle=Inputs
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
		short int tmp = 0;
		memcpy(tmp_weights,(const short int*)&weights[outNeurons*numOfInNeurons], numOfInNeurons*sizeof(short int));

		for (short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
		{
			tmp += (tmp_weights[inNeurons] * input[inNeurons]);
		}
		output[outNeurons] = tmp + tmp_bias[outNeurons];
	}
}
 *
 */



































/* void runLayer(short int input[MAX_SIZE], short int output[SIZE], short int weights[WEIGHT_MAX_SIZE], short int bias[SIZE], unsigned short int numOfInNeurons) {
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
}*/
