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

#include "xscutimer.h"
#define ONE_SECOND 325000000

class neuralnetwork_manager {
public:
	neuralnetwork_manager();
	virtual ~neuralnetwork_manager();

	u8 setup_manager(std::string fileName);

	u16 run_network(u16 * input, u16 inputSize);

	void printTime(u32 startTime);
private:
	u8 totalLayers_ = 0;
	u8 currentLayer_ = 0;
	u16 currentHardware = 0;

	std::vector<nnLayer> nnLV_;
	NeuralNetwork nn_ = NeuralNetwork();

	static XScuTimer timerInstance;
	static float totalTime;
	static XScuTimer_Config *ConfigPtr;
};

#endif /* SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_ */
