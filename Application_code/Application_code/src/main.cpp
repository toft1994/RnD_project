#include <string>
#include <iostream>
#include "Drivers/NeuralNetwork.h"
#include "NeuralNetwork/neuralnetworkmanager.h"
#include "globals.h"
#include <ap_fixed.h>

int main()
{
	const int size = 120;
	float test1[size] = {0.4356311,
			-1.5256095,
			-2.929294,
			0.78049594,
			-1.913501,
			-0.17746294,
			-0.5279534,
			-0.261578,
			-1.2154322,
			-2.4088075,
			-0.49991792,
			0.14815184,
			0.55782384,
			-1.0189309,
			0.296381,
			0.59759855,
			-1.3499173,
			-0.6998608,
			-0.13620839,
			1.2842977,
			1.5183461,
			0.7944771,
			-0.5089817,
			-0.19893956,
			1.0990593,
			-1.0314282,
			-0.26020083,
			-0.002515152,
			-0.65418315,
			0.25683814,
			-0.79509646,
			-0.620203,
			1.0764673,
			-0.14170355,
			0.1325786,
			-0.39266303,
			-0.7963508,
			-0.34868875,
			0.17548883,
			0.6239897,
			-0.3845132,
			-0.70000434,
			-0.5509022,
			0.16596945,
			-0.5055693,
			-0.22192127,
			-0.16126911,
			0.87991184,
			0.6985651,
			1.0884265,
			0.4363532,
			0.58608425,
			-0.41466242,
			-0.17942804,
			-0.6179982,
			-0.060580447,
			-0.573964,
			-0.15346849,
			-0.025433607,
			-0.362018,
			0.9776491,
			1.2374365,
			-0.48520422,
			-0.42706177,
			0.2414133,
			-0.08962464,
			-0.630501,
			-0.18121111,
			-0.04891403,
			0.3595663,
			-0.004707396,
			0.0443089,
			-0.38594237,
			-0.43605042,
			0.35741982,
			0.46624076,
			0.18856962,
			0.11177998,
			0.24947318,
			-0.08597955,
			-0.3567927,
			0.38207972,
			0.16093072,
			-0.056202367,
			0.18432909,
			-0.12539963,
			-0.32113126,
			0.04828868,
			0.40869176,
			0.21507508,
			-0.47755843,
			-0.67721593,
			0.6392255,
			0.004812071,
			-0.3368757,
			0.0448191,
			0.009400189,
			0.13303275,
			0.28202954,
			-0.7610152,
			0.022354428,
			0.39671612,
			0.06619986,
			-0.08928181,
			-0.20181353,
			0.150165,
			-0.032885686,
			-0.31620595,
			0.38987106,
			0.33801502,
			0.13236059,
			0.086891115,
			-0.05886899,
			0.14126438,
			0.18409294,
			-0.23299956,
			-0.16531898,
			-0.05112751,
			0.0048518404,
			-0.36080712};

	u16 tin[size] = {0};

	for(unsigned int i = 0; i<size; i++){
		tin[i] = FIXEDCONVERT(test1[i]).bits_to_uint64();
	}

	while(1){
		auto t = neuralnetwork_manager();
		t.setup_manager("testFile.txt");
		t.run_network(tin, size);
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
