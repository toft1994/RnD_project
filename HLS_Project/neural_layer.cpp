#include "nnLayer.hpp"

static const unsigned short int size = SIZE;

dataType abs(dataType x) {
#pragma HLS inline
	if (x < 0) {
		return -x;
	} else {
		return x;
	}
}

void relu(dataType * output_, dataType * input_, unsigned short int numOfOutputNeurons) {
	#pragma HLS inline
	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
	{
		if (input_[i] < 0)
		{
			output_[i] = 0;
		}
		else {
			output_[i] = input_[i];
		}
	}
}

void sigmod_approx(dataType * output_, dataType * input_, unsigned short int numOfOutputNeurons) {
	#pragma HLS inline
	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
	{
		#pragma HLS pipeline off
		output_[i] = dataType(0.5)*(input_[i]/(dataType(1)+abs(input_[i])))+dataType(0.5);
	}
}

//https://stackoverflow.com/questions/6984440/approximate-ex
void softmax_approx(dataType * output_, dataType * input_, unsigned short int numOfOutputNeurons) {
#pragma HLS inline
	static const dataType CONSTANT(0.693147181);
	static const dataType one = dataType(1);
	softmaxSum_type sum = 0;
	softmaxSum_type resArray[SIZE] = {0};
	//#pragma HLS BIND_STORAGE variable=resArray type=ram_1p impl=bram

	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
	{
		#pragma HLS pipeline off
		if (input_[i] > 11) {
			input_[i] = 11;
		}
		else if (input_[i] < -11) {
			input_[i] = -11;
		}

		dataType fixed(abs(dataType(input_[i]))/CONSTANT);
		dataType whole = fixed.range(FIXED_BIT,FIXED_FRAC);
		dataType tmp = (fixed-whole+one);

		if (input_[i] > 0) {
			resArray[i] = (1 << whole.range(FIXED_BIT,FIXED_FRAC)) * tmp;
		}
		else if (input_[i] < 0){
			resArray[i] = dataType(one/tmp)*dataType(one/(1 << whole.range(SOFTMAX_BIT,SOFTMAX_FRAC)));
		}
		else {
			resArray[i] = one;
		}

		sum += resArray[i];
	}

	if (sum > 0) {
		for (unsigned short int i = 0; i < SIZE; i++)
		{
			#pragma HLS pipeline off
			output_[i] = resArray[i]/sum;
		}
	}
}

void applyBias(dataType * bias, dataType * output_, unsigned short int numOfOutputNeurons) {
#pragma HLS inline
	for (int i = 0; i < numOfOutputNeurons; i++) {
		output_[i] = bias[i];
	}
}

void runLayer(dataType * input_, dataType * output_, dataType * weights_, unsigned short int numOfOutputNeurons) {
#pragma HLS inline
	for (unsigned short int outNeurons = 0; outNeurons < numOfOutputNeurons; outNeurons++)
	{
		#pragma HLS pipeline off
		for (unsigned short int inNeurons = 0; inNeurons < SIZE; inNeurons++)
		{
			#pragma HLS pipeline off
			#pragma HLS UNROLL factor=size
			output_[outNeurons] += (weights_[inNeurons+(outNeurons*SIZE)] * input_[inNeurons]);
		}
	}
}

void runActivation(dataType * output_, dataType * input, unsigned short int numOfOutputNeurons, unsigned char activation) {
#pragma HLS inline
    if(activation == 1) {
    	relu(output_, input, numOfOutputNeurons);
    }
    else if (activation == 2) {
    	sigmod_approx(output_, input, numOfOutputNeurons);
    }
    else if (activation == 3) {
    	softmax_approx(output_, input, numOfOutputNeurons);
    }
    else {
    	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
    	{
			#pragma HLS pipeline off
    		output_[i] = input[i];
    	}
    }
}

void nnlayer(dataType input[SIZE], dataType output[SIZE], dataType bias[SIZE], dataType weights[WEIGHT_SIZE], unsigned short int numOfOutputNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=numOfOutputNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=input type=complete
#pragma HLS ARRAY_PARTITION variable=output type=complete
#pragma HLS ARRAY_PARTITION variable=weights type=cyclic factor=size
#pragma HLS BIND_STORAGE variable=weights type=RAM_1WNR impl=BRAM


	static dataType output_[SIZE] = {0};
	//#pragma HLS ARRAY_PARTITION variable=output_ type=complete

	applyBias(bias, output_, numOfOutputNeurons);
	runLayer(input, output_, weights, numOfOutputNeurons);
    runActivation(output, output_, numOfOutputNeurons, activation);
}

