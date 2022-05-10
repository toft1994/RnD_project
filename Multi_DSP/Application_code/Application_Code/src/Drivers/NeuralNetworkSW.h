/*
 * NeuralNetworkSW.h
 *
 *  Created on: 21. apr. 2022
 *      Author: Mikkel
 */

#ifndef SRC_DRIVERS_NEURALNETWORKSW_H_
#define SRC_DRIVERS_NEURALNETWORKSW_H_
#include "xil_types.h"
#include "xparameters.h"
#include "../globals.h"
#include "ActivationFunctions.h"

class NeuralNetworkSW {
public:
	NeuralNetworkSW();
	virtual ~NeuralNetworkSW();
	void run(u16* input, u16* output, u16* weights, u16* bias, u16 *inputSize, u16 *outputSize, u8 *actiavtion);

private:
	void calculateLayer(u16* input, u16* output, u16* weights, u16* bias, u16 *inputSize, u16 *outputSize, u8 *actiavtion);
	void runLayer(u16* input, FIXEDCONVERT* output, u16* bias, u16* weights, u16 *numOfInNeurons, u16 *numOfOutputNeurons);
	void runActivation(u16 *output, FIXEDCONVERT* input, u8 *activation, u16 *numOfOutputNeurons);
};

#endif /* SRC_DRIVERS_NEURALNETWORKSW_H_ */
