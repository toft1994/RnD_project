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
#include "../Drivers/FileParserSD.h"
#include "../Drivers/NeuralNetwork.h"

class neuralnetwork_manager {
public:
	neuralnetwork_manager();
	virtual ~neuralnetwork_manager();

	int8_t setup_manager(std::string fileName);

	uint16_t run_network(uint16_t * input, uint16_t inputSize);

private:
	uint8_t totalLayers_ = 0;
	uint8_t currentLayer_ = 0;
	uint16_t currentHardware = 0;

	std::vector<nnLayer> nnLV_;
	NeuralNetwork nn_ = NeuralNetwork();
};



#endif /* SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_ */
