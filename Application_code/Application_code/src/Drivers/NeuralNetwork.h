/*
 * NeuralNetwork.h
 *
 *  Created on: 10. mar. 2022
 *      Author: jespe
 */

#ifndef SRC_DRIVERS_NEURALNETWORK_H_
#define SRC_DRIVERS_NEURALNETWORK_H_
#include "xil_types.h"
#include "xnnlayer.h"
#include "xparameters.h"

class NeuralNetwork {
public:
	NeuralNetwork();
	virtual ~NeuralNetwork();
	void run(u16* input, u16* output, u16* weights, u16* bias, u16* inputSize, u16* outputSize, u8* actiavtion);
	void test();

private:
	void setInput(u16* input, u16 * size);
	void getOutput(u16* output, u16 * size);
	void setBias(u16* bias, u16* size);
	void setWeights(u16* weights, u16* inputSize, u16* outputSize);
	void setInputneurons(u16* inputSize);
	void setOutputneurons(u16* outputSize);
	void setActivation(u8* activation);

	XNnlayer instance;
	XNnlayer * ptr;
};

#endif /* SRC_DRIVERS_NEURALNETWORK_H_ */
