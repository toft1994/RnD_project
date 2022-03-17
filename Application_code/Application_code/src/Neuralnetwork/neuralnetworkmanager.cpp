/*
 * neuralnetworkmanager.cpp
 *
 *  Created on: 25. feb. 2022
 *      Author: jespe
 */

#include "neuralnetworkmanager.h"
#include <utility>

neuralnetwork_manager::neuralnetwork_manager() {
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

	nnLV_ = std::move(fileP.parseString(fileName));
	totalLayers_ = nnLV_.size();

	if(fileP.closefile()){
		return -1;
	}

	return 0;
}

u16 neuralnetwork_manager::run_network(u16 * input, u16 inputSize) {
	u16 res = 0xffff;

	if(inputSize > 0 && nnLV_.size() > 0) {
		u16 output[MAX_NN_SIZE] = { 0 };
		u16 tmp[MAX_NN_SIZE] = { 0 };

		u16* lastSize = nnLV_[0].getNNeurons();
		nn_.run(input, output, nnLV_[0].getWeights().get(), nnLV_[0].getBias().get(), &inputSize, nnLV_[0].getNNeurons(), nnLV_[0].getActFunction());

		// Run each layer!
		for(u8 i = 1; i < nnLV_.size(); i++) {
			std::swap(output, tmp);
			nn_.run(tmp, output, nnLV_[i].getWeights().get(), nnLV_[i].getBias().get(), lastSize, nnLV_[i].getNNeurons(), nnLV_[i].getActFunction());
			lastSize = nnLV_[i].getNNeurons();

			// Do hardware swap

			// Run activation function
		}

		float o2[MAX_NN_SIZE] = {0};
		FIXEDCONVERT tmp1 = FIXEDCONVERT();
		for(u8 i = 0; i < *lastSize; i++) {
			tmp1.V.VAL = output[i];
			o2[i] = tmp1.to_float();
		}
	}

	return res;
}
