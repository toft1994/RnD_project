#include "nnLayer.hpp"

static const unsigned short int size = SIZE;

fixedInput abs(fixedInput x) {
#pragma HLS inline
	if (x < 0) {
		return -x;
	} else {
		return x;
	}
}

void relu(fixedInput * output_, fixedInput * input_, unsigned short int numOfOutputNeurons) {
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

void sigmod_approx(fixedInput * output_, fixedInput * input_, unsigned short int numOfOutputNeurons) {
	#pragma HLS inline
	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
	{
		output_[i] = fixedInput(0.5)*(input_[i]/(fixedInput(1)+abs(input_[i])))+fixedInput(0.5);
	}
}

//https://stackoverflow.com/questions/6984440/approximate-ex
void softmax_approx(fixedInput * output_, fixedInput * input_, unsigned short int numOfOutputNeurons) {
#pragma HLS inline
	static const fixedInput CONSTANT(0.693147181);
	static const softmax_type one = fixedInput(1);
	softmaxSum_type sum = 0;
	softmax_type resArray[SIZE] = {0};
	char overflow = 0;

	for (unsigned short int i = 0; i < numOfOutputNeurons; i++) {
		if (input_[i] > 11  && input_[i] - 11 > overflow) {
			overflow = input_[i] - 11;
		}
	}

	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
	{
		if (input_[i] - overflow < -11) {
			input_[i] = -11;
		}
		fixedInput fixed(abs(fixedInput(input_[i]-overflow))/CONSTANT);
		fixedInput whole = fixed.range(FIXED_OUT_BIT,FIXED_OUT_FRAC);
		fixedInput tmp = (fixed-whole+one);

		if (input_[i] > 0) {
			resArray[i] = (1 << whole.range(FIXED_OUT_BIT,FIXED_OUT_FRAC)) * tmp;
		}
		else if (input_[i] < 0){
			resArray[i] = softmax_type(one/tmp)*softmax_type(one/(1 << whole.range(FIXED_OUT_BIT,FIXED_OUT_FRAC)));
		}
		else {
			resArray[i] = one;
		}

		sum += resArray[i];
	}

	if (sum > 0) {
		for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
		{
			output_[i] = resArray[i]/sum;
		}
	}
}

void runLayer(fixedInput * input_, fixedInput * output_, fixedInput * bias, fixedInput * weights_, unsigned short int numOfInputNeurons, unsigned short int numOfOutputNeurons) {
#pragma HLS inline
	for (unsigned short int outNeurons = 0; outNeurons < numOfOutputNeurons; outNeurons++)
	{
		output_[outNeurons] = bias[outNeurons];
		for (unsigned short int inNeurons = 0; inNeurons < numOfInputNeurons; inNeurons++)
		{
			output_[outNeurons] += (weights_[inNeurons+(outNeurons*numOfInputNeurons)] * input_[inNeurons]);
		}
	}
}

void runActivation(fixedInput * output_, fixedInput * input, unsigned short int numOfOutputNeurons, unsigned char activation) {
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
    		output_[i] = input[i];
    	}
    }
}

void nnlayer(fixedInput input[SIZE], fixedInput output[SIZE], fixedInput bias[SIZE], fixedInput weights[WEIGHT_SIZE], unsigned short int numOfInputNeurons, unsigned short int numOfOutputNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=numOfInputNeurons
#pragma HLS INTERFACE mode=s_axilite port=numOfOutputNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return

/*#pragma HLS ARRAY_PARTITION variable=input type=complete
#pragma HLS ARRAY_PARTITION variable=output type=complete
#pragma HLS ARRAY_PARTITION variable=weights type=cyclic factor=size*/
//#pragma HLS BIND_STORAGE variable=weights type=RAM_1WNR impl=BRAM

	static fixedInput output_[SIZE] = {0};
	//#pragma HLS ARRAY_PARTITION variable=output_ type=complete

	//applyBias(bias, output_, numOfOutputNeurons);
	runLayer(input, output_, bias, weights, numOfInputNeurons, numOfOutputNeurons);
    runActivation(output, output_, numOfOutputNeurons, activation);
}
