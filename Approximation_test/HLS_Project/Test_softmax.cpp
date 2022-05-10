#include "approxTest.hpp"

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
		#pragma HLS pipeline off

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
			#pragma HLS pipeline off
			output_[i] = resArray[i]/sum;
		}
	}
}


void softmax(fixedInput * output_, fixedInput * input_, unsigned short int numOfOutputNeurons) {
#pragma HLS inline
	softmaxSum_type sum = 0;
	softmax_type resArray[SIZE] = {0};

	for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
	{
		#pragma HLS pipeline off
		resArray[i] = e^input_[i];
		sum += resArray[i];
	}

	if (sum > 0) {
		for (unsigned short int i = 0; i < numOfOutputNeurons; i++)
		{
			#pragma HLS pipeline off
			output_[i] = resArray[i]/sum;
		}
	}
}

void test()
