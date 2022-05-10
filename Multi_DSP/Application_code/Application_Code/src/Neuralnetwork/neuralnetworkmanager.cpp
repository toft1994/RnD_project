/*
 * neuralnetworkmanager.cpp
 *
 *  Created on: 25. feb. 2022
 *      Author: jespe
 */

#include "neuralnetworkmanager.h"
#include <utility>

NeuralNetwork neuralnetwork_manager::nn_hardware = NeuralNetwork();
NeuralNetworkSW neuralnetwork_manager::nn_software = NeuralNetworkSW();
XScuTimer neuralnetwork_manager::timerInstance = XScuTimer();
float neuralnetwork_manager::totalTime = 0;
float neuralnetwork_manager::IPCoreTotExeTime = 0;

neuralnetwork_manager::neuralnetwork_manager() {

	XScuTimer_Config * ConfigPtr = XScuTimer_LookupConfig (XPAR_PS7_SCUTIMER_0_DEVICE_ID);
	int Status = XScuTimer_CfgInitialize (&timerInstance, ConfigPtr, ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS){
		xil_printf("Timer init() failed\r\n");
	}

	// Load timer with delay in multiple of ONE_SECOND
	XScuTimer_LoadTimer(&timerInstance, ONE_SECOND);
}

neuralnetwork_manager::~neuralnetwork_manager() {
}

u8 neuralnetwork_manager::setup_manager(std::string fileName) {
	FileParserSD fileP = FileParserSD();
	if(fileP.mount()){
		return -1;
	}
	if(fileP.openfile(fileName)){
		return -1;
	}

	nnLV_ = std::move(fileP.getWeightsBias());

	if(fileP.closefile()){
		return -1;
	}

	return 0;
}

void neuralnetwork_manager::addTime(u32 startTime){
	u32 timerVal = XScuTimer_GetCounterValue(&timerInstance);
	totalTime += ((float)startTime - (float)timerVal)/((float)ONE_SECOND/1000);
}

float neuralnetwork_manager::getTime(){
	float tmp = totalTime;
	totalTime = 0;
	return tmp;
}

float neuralnetwork_manager::getIPCoreTotExeTime(){
	float tmp = IPCoreTotExeTime;
	IPCoreTotExeTime = 0;
	return tmp;
}

u16 neuralnetwork_manager::run_network(u16 * input, u16 inputSize, bool hardware) {
	u16 ret = 0x0;

	XScuTimer_RestartTimer(&timerInstance);
	u32 startTime = XScuTimer_GetCounterValue(&timerInstance);

	// Start the timer
	XScuTimer_Start(&timerInstance);

	if(hardware) {
		if(inputSize > 0 && nnLV_.size() > 0) {
			u16 output[MAX_NN_SIZE] = { 0 };
			u16 tmp[MAX_NN_SIZE] = { 0 };

			u16* lastSize = nnLV_[0].getNNeurons();
			IPCoreTotExeTime += nn_hardware.run(input, output, nnLV_[0].getWeights().get(), nnLV_[0].getBias().get(), &inputSize, nnLV_[0].getNNeurons(), nnLV_[0].getActFunction(), &timerInstance);

			// Run each layer!
			for(u8 i = 1; i < nnLV_.size(); i++) {
				std::swap(output, tmp);
				memset(output, 0, sizeof(output));
				IPCoreTotExeTime += nn_hardware.run(tmp, output, nnLV_[i].getWeights().get(), nnLV_[i].getBias().get(), lastSize, nnLV_[i].getNNeurons(), nnLV_[i].getActFunction(), &timerInstance);
				lastSize = nnLV_[i].getNNeurons();
			}

			// Stop the timer
			XScuTimer_Stop(&timerInstance);

			FIXEDCONVERT tmp_res = FIXEDCONVERT();
			tmp_res.V.VAL = output[0];

			for(u16 i = 1; i < *lastSize; i++) {
				FIXEDCONVERT tmp1_res = FIXEDCONVERT();
				tmp1_res.V.VAL = output[i];
				lastOutput[i] = output[i];
				if (tmp_res < tmp1_res) {
					tmp_res = tmp1_res;
					ret = i;
				}
			}
			lastOutputSize = *lastSize;
		}
	}
	else {
		if(inputSize > 0 && nnLV_.size() > 0) {
			u16 output[MAX_NN_SIZE] = { 0 };
			u16 tmp[MAX_NN_SIZE] = { 0 };

			u16* lastSize = nnLV_[0].getNNeurons();
			nn_software.run(input, output, nnLV_[0].getWeights().get(), nnLV_[0].getBias().get(), &inputSize, nnLV_[0].getNNeurons(), nnLV_[0].getActFunction());

			// Run each layer!
			for(u8 i = 1; i < nnLV_.size(); i++) {
				std::swap(output, tmp);
				memset(output, 0, sizeof(output));
				nn_software.run(tmp, output, nnLV_[i].getWeights().get(), nnLV_[i].getBias().get(), lastSize, nnLV_[i].getNNeurons(), nnLV_[i].getActFunction());
				lastSize = nnLV_[i].getNNeurons();
			}

			// Stop the timer
			XScuTimer_Stop(&timerInstance);

			FIXEDCONVERT tmp_res = FIXEDCONVERT();
			tmp_res.V.VAL = output[0];

			for(u16 i = 1; i < *lastSize; i++) {
				FIXEDCONVERT tmp1_res = FIXEDCONVERT();
				tmp1_res.V.VAL = output[i];
				lastOutput[i] = output[i];
				if (tmp_res < tmp1_res) {
					tmp_res = tmp1_res;
					ret = i;
				}
			}
			lastOutputSize = *lastSize;
		}
	}

	addTime(startTime);

	return ret;
}

u16 neuralnetwork_manager::getLastSize() {
	return lastOutputSize;
}
u16* neuralnetwork_manager::getLastOutput(){
	return lastOutput;
}

