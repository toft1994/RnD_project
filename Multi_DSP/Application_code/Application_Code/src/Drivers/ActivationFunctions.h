#include "NNSWDefines.h"

/*static void relu(u16 * output_, FIXEDCONVERT* input, u16 * numOfOutputNeurons) {
	for (unsigned short int i = 0; i < *numOfOutputNeurons; i++)
	{
		if (output_[i] < 0)
		{
			output_[i] = 0;
		}
	}
}

static void sigmod_approx(u16 * output_, FIXEDCONVERT* input, u16 * numOfOutputNeurons) {
	for (unsigned short int i = 0; i < *numOfOutputNeurons; i++)
	{
		output_[i] = fixedInput(0.5)*(output_[i]/(fixedInput(1)+abs(output_[i])))+fixedInput(0.5);
	}
}

//https://stackoverflow.com/questions/6984440/approximate-ex
static void softmax(u16 * output_, FIXEDCONVERT* input, u16 * numOfOutputNeurons) {

}
*/
