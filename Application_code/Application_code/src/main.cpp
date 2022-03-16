#include <string>
#include <iostream>
#include "Drivers/NeuralNetwork.h"
#include "NeuralNetwork/neuralnetworkmanager.h"
#include "globals.h"
#include <ap_fixed.h>

int main()
{
	float testinput[20] = {4.413851,
			-2.3967223,
			-1.8479078,
			0.50134146,
			-3.1577559,
			1.5717111,
			-0.90460753,
			-1.6261601,
			-1.7929299,
			-0.34403673,
			0.026094172,
			1.253253,
			-0.11076248,
			0.016034037,
			-0.93397224,
			1.1119237,
			-0.686241,
			-0.22292998,
			0.6829099,
			0.44102368};

	u16 tin[20] = {0};

	for(char i = 0; i<15; i++){
		tin[i] = FIXEDCONVERT(testinput[i]).bits_to_uint64();
	}

	while(1){
		auto t = neuralnetwork_manager();
		t.setup_manager("testFile.txt");
		t.run_network(tin, 20);
	}
	return 0;
}

/* Works
 *		float testing = 0.2;

		CUSTOMTYPE test(testing);

		auto something = test.to_int();
		auto something1 = test.to_double();
		auto somethingj = test.bits_to_uint64();


		test = 0.1;

		something = test.to_int();
		something1 = test.to_double();
		u16 res = test.bits_to_uint64();
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
