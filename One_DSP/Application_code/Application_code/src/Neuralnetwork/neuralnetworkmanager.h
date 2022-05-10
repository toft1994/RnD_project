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
#include "../Drivers/NeuralNetworkSW.h"
#include "xscutimer.h"
#define ONE_SECOND 325000000

class neuralnetwork_manager {
public:
	neuralnetwork_manager();
	virtual ~neuralnetwork_manager();

	u8 setup_manager(std::string fileName);
	u16 run_network(u16 * input, u16 inputSize, bool hardware);
	float getTime();
	float getIPCoreTotExeTime();
	u16 getLastSize();
	u16* getLastOutput();

private:
	std::vector<nnLayer> nnLV_;
	static NeuralNetwork nn_hardware;
	static NeuralNetworkSW nn_software;
	void addTime(u32 startTime);

	static XScuTimer timerInstance;
	static float totalTime;
	static float IPCoreTotExeTime;
	static XScuTimer_Config *ConfigPtr;

	u16 lastOutput[MAX_NN_SIZE] = {0};
	u16 lastOutputSize = 0;
};

#endif /* SRC_NEURALNETWORK_NEURALNETWORKMANAGER_H_ */
