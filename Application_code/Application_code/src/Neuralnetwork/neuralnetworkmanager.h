/*
 * neuralnetworkmanager.h
 *
 *  Created on: 25. feb. 2022
 *      Author: jespe
 */

#ifndef SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_
#define SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_

#include <stdint.h>
#define MAX_SIZE 2048

class neuralnetwork_manager {
public:
	neuralnetwork_manager();
	virtual ~neuralnetwork_manager();

	void setup_manager(); // Skal måske tage en pointer til mikkels class

	uint16_t run_network(int * input, uint16_t inputSize) {
		uint16_t res = 0xffff;

		if(inputSize == inputSize_ && maxSize_ != 0) {
			int tmp[MAX_SIZE] = { 0 };
			int tmp[MAX_SIZE] = { 0 };

			// Run each layer!
			for(currentLayer_ = 0; i < totalLayers_; currentLayer_++) {

				// Get info from mikkels component

				// Do hardware swap

				// Run neural network

				// Store result

				// Run activation function

				// repeat
			}
		}

		return res;
	}

private:
	uint8_t totalLayers_ = 0;
	uint8_t currentLayer_ = 0;
	uint16_t inputSize_ = 0;
	uint16_t maxSize_ = 0;
	uint16_t currentHardware = 0;
};





uint8_t DummyGetLayer(){
	return 5;
}

#endif /* SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_ */
