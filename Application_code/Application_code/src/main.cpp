#include <string>
#include <iostream>
#include "Drivers/NeuralNetwork.h"

int main()
{
	while(1){
		auto t = NeuralNetwork();
		t.test();
	}
	return 0;
}

/* Works
 *
 */

/*#include <string>
#include <iostream>
#include "xnnlayer.h"
#include "xparameters.h"

const short int outputSize = 3;
const short int inputSize = 3;
const unsigned char acti = 0;
u16 input[inputSize] = {0};
u16 output[outputSize+5] = {0};
u16 weights[outputSize*inputSize];
u16 bias[outputSize];

char * testm = (char*) input;

long unsigned int test[2] = {65537, 65537};

int main()
{
	while(1){



		int counter = 1;
		int incrementer = 0;
		for(int i = 0; i < inputSize; i++) {
			input[i] = 1;
			bias[i] = 100;
		}

		for(int i = 0; i < outputSize*inputSize; i++) {
			weights[i] = incrementer;
			if(counter >= inputSize){
				counter = 0;
				incrementer++;
			}
			counter++;
		}

		XNnlayer ptr;
		XNnlayer_Initialize(&ptr, XPAR_NNLAYER_0_DEVICE_ID);

		XNnlayer_Set_activation(&ptr,1);
		XNnlayer_Set_numOfInNeurons(&ptr,inputSize);
		XNnlayer_Set_numOfOutNeurons(&ptr,outputSize);
		XNnlayer_Set_activation(&ptr,acti);

		//XNnlayer_Write_input_r_Bytes(&ptr, 0, (char*)input, inputSize);
		XNnlayer_Write_input_r_Bytes(&ptr, 0, (char*)input, inputSize*2);
		XNnlayer_Write_bias_Bytes(&ptr, 0, (char*)bias, outputSize*2);
		XNnlayer_Write_weights_Bytes(&ptr, 0, (char*)weights, inputSize*outputSize*2);

		while(!XNnlayer_IsReady(&ptr))
		{}
		XNnlayer_Start(&ptr);

		while(!XNnlayer_IsReady(&ptr))
		{}

		XNnlayer_Read_output_r_Bytes(&ptr, 0, (char*)output, outputSize);
		short int tmp[outputSize] = {0};
		XNnlayer_Write_output_r_Bytes(&ptr, 0, (char*)tmp, outputSize);
	}
	return 0;
}
 */
