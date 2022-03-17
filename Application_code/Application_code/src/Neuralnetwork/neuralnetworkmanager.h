/*
 * neuralnetworkmanager.h
 *
 *  Created on: 25. feb. 2022
 *      Author: jespe
 */

#ifndef SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_
#define SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_

#include <stdint.h>
#include "../Drivers/FileParserSD.h"
#include "../Drivers/NeuralNetwork.h"

class neuralnetwork_manager {
public:
	neuralnetwork_manager();
	virtual ~neuralnetwork_manager();

	u8 setup_manager(std::string fileName);

	u16 run_network(uint16_t * input, uint16_t inputSize);

private:
	u8 totalLayers_ = 0;
	u8 currentLayer_ = 0;
	u16 currentHardware = 0;

	std::vector<nnLayer> nnLV_;
	NeuralNetwork nn_ = NeuralNetwork();
};



#endif /* SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_ */
