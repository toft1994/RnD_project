#include "nnLayer.hpp"
#include <cstring>

static const unsigned short int size = SIZE;
//static dataType tmp_input[SIZE];

dataType abs(dataType x) {
#pragma HLS inline
	if (x < 0) {
		return -x;
	} else {
		return x;
	}
}

void relu(dataType * output_, dataType * input_, unsigned short int numOfOutNeurons) {
	#pragma HLS inline
	for (unsigned short int i = 0; i < numOfOutNeurons; i++)
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

void sigmod_approx(dataType * output_, dataType * input_, unsigned short int numOfOutNeurons) {
	#pragma HLS inline
	for (unsigned short int i = 0; i < numOfOutNeurons; i++)
	{
		output_[i] = dataType(0.5)*(input_[i]/(dataType(1)+abs(input_[i])))+dataType(0.5);
	}
}

//https://stackoverflow.com/questions/6984440/approximate-ex
// We might need to hard cap it!!
// Evt have dobbelt versioner sp en der bruger ln(2) og en der bruger ln(1.2)
void softmax_approx(dataType * output_, dataType * input_, unsigned short int numOfOutNeurons) {
#pragma HLS inline

	softmaxFixed_type resArray[SIZE] = {0};
	softmaxFixed_type sum = 0;
	const softmaxFixed_type CONSTANT(0.693147181);

	for (unsigned short int i = 0; i < numOfOutNeurons; i++)
	{
		softmaxFixed_type fixed(dataType(input_[i])/CONSTANT);
		ap_uint<SOFTMAX_WHOLE> whole = 0;

		if (fixed < -22) {
			resArray[i] = 0;
		}
		else if (fixed > 22) {
			resArray[i] = 4294967295;
		}
		else if (input_[i] > 0) {
			whole = fixed.range(SOFTMAX_BIT,SOFTMAX_FRAC);
			resArray[i] = (1 << whole) * (fixed-whole+softmaxFixed_type(1));
		}
		else if (input_[i] < 0){
			fixed = -fixed;
			whole = fixed.range(SOFTMAX_BIT,SOFTMAX_FRAC);
			softmaxFixed_type tmp = 1;

			// Bit manipulation. Wanted to use shifts but could not make it work.
			if (whole != 0) {
				tmp = 0;
				tmp[SOFTMAX_FRAC-whole] = 1;
			}
			resArray[i] = tmp/(fixed-softmaxFixed_type(whole)+softmaxFixed_type(1));
		}
		else {
			resArray[i] = softmaxFixed_type(1);
		}

		sum += resArray[i];
	}

	if (sum > 0) {
		for (unsigned short int i = 0; i < numOfOutNeurons; i++)
		{
			output_[i] = resArray[i]/sum;
		}
	}
}

void applyBias(dataType * bias, dataType * output_, unsigned short int numOfOutNeurons) {
#pragma HLS inline
	for (int i = 0; i < numOfOutNeurons; i++) {
		output_[i] = bias[i];
	}
}

void runLayer(dataType * input_, dataType * output_, dataType * weights_, unsigned short int numOfInNeurons, unsigned short int numOfOutNeurons) {
#pragma HLS inline
	for (unsigned short int outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++)
	{
		for (unsigned short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
		{
			output_[outNeurons] += (weights_[inNeurons + (outNeurons*numOfInNeurons)] * input_[inNeurons]);
		}
	}
}


void runActivation(dataType * output_, dataType * input, unsigned char activation, unsigned short int numOfOutNeurons) {
#pragma HLS inline
    if(activation == 1) {
    	relu(output_, input, numOfOutNeurons);
    }
    else if (activation == 2) {
    	sigmod_approx(output_, input, numOfOutNeurons);
    }
    else if (activation == 3) {
    	softmax_approx(output_, input, numOfOutNeurons);
    }
    else {
    	for (unsigned short int i = 0; i < numOfOutNeurons; i++)
    	{
    		output_[i] = input[i];
    	}
    }
}

void setInput(dataType * input, dataType * input_, unsigned short int numOfOutNeurons) {
#pragma HLS inline
	for (int i = 0; i < numOfOutNeurons; i++) {
		input_[i] = input[i];
	}
}

void setWeights(dataType * weights, dataType * weights_, unsigned short int numOfInNeurons, unsigned short int numOfOutNeurons) {
#pragma HLS inline
	for (int i = 0; i < numOfInNeurons*numOfOutNeurons; i++) {
		weights_[i] = weights[i];
	}
}

void nnlayer(dataType input[SIZE], dataType output[SIZE], dataType bias[SIZE], dataType weights[WEIGHT_SIZE], unsigned short int numOfInNeurons, unsigned short int numOfOutNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=bias
#pragma HLS INTERFACE mode=s_axilite port=weights
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
#pragma HLS INTERFACE mode=s_axilite port=numOfOutNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return

//#pragma HLS ARRAY_RESHAPE variable= weights
	static dataType output_[SIZE] = {0};
	//static dataType input_[SIZE] = {0};
	//static dataType weights_[SIZE*SIZE];

	//setInput(input, input_, numOfInNeurons);
	//setWeights(weights, weights_, numOfInNeurons, numOfOutNeurons);
	applyBias(bias, output_, numOfOutNeurons);
	runLayer(input, output_, weights, numOfInNeurons, numOfOutNeurons);
    runActivation(output, output_, activation, numOfOutNeurons);
}




/*
 * void setInput(dataType * input, dataType * input_) {
#pragma HLS inline
	memcpy(input_, (dataType*) input, SIZE * sizeof(dataType));
}

void setWeights(dataType * weights, dataType * weights_) {
#pragma HLS inline
	memcpy(weights_, (dataType*) weights, WEIGHT_SIZE * sizeof(dataType));
}

void setOutput(dataType * output, dataType * output_) {
#pragma HLS inline
	memcpy(output, (dataType*) output_, SIZE * sizeof(dataType));
}
 */
