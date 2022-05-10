/*
 * TestNeuralNetwork.cpp
 *
 *  Created on: 21. apr. 2022
 *      Author: jespe
 */

#include "TestNeuralNetwork.h"
#include <iostream>
TestNeuralNetwork::TestNeuralNetwork() {
	nn_manager = neuralnetwork_manager();
}

TestNeuralNetwork::~TestNeuralNetwork() {
	// TODO Auto-generated destructor stub
}

void TestNeuralNetwork::RunAllTests(std::string inputFilename, std::string optiWeightBiasFilename, std::string normWeightBiasFilename, u16 numOfTestSamples) {

	std::cout << "Testing with file: " << optiWeightBiasFilename << std::endl;
	Test_NeuralNetwork_hardware(inputFilename, normWeightBiasFilename, numOfTestSamples);
	std::cout << "Done first" << std::endl;
	/*Test_NeuralNetwork_software(inputFilename, normWeightBiasFilename, numOfTestSamples);
	std::cout << "Done Second" << std::endl;
	Test_NeuralNetwork_CompareSoftmax(inputFilename, "softopti.txt", "softnorm.txt");
	std::cout << std::endl;*/

	std::cout << "Accuracy hardware: " << accuracy_hardware << std::endl;
	std::cout << "Average time hardware: " << totalTime_hardware/(float)numOfTestSamples << std::endl;
	std::cout << "Total time hardware: " << totalTime_hardware << std::endl;
	std::cout << "Average execution time hardware: " << IPCoreExeTime_hardware/(float)numOfTestSamples << std::endl;
	std::cout << "Total execution time hardware: " << IPCoreExeTime_hardware << std::endl;
	std::cout << std::endl;


	std::cout << "Accuracy software: " << accuracy_software << std::endl;
	std::cout << "Average time software: " << totalTime_software/(float)numOfTestSamples << std::endl;
	std::cout << "Total time software: " << totalTime_software << std::endl;
	std::cout << std::endl;

	/*std::cout << "Hardware softmax res: " << std::endl;
	for(int i = 0; i < 10; i++) {
		std::cout << softmax_hardware[i] << std::endl;
	}
	std::cout << std::endl;

	std::cout << "Software softmax res: " << std::endl;
	for(int i = 0; i < 10; i++) {
		std::cout << softmax_software[i] << std::endl;
	}
	std::cout << std::endl;*/

}

void TestNeuralNetwork::Test_NeuralNetwork_hardware(std::string inputFilename, std::string weightBiasFilename, u16 numOfTestSamples) {
	nn_manager.setup_manager(weightBiasFilename);
	FileParserSD fileP = FileParserSD();
	fileP.openfile(inputFilename);

	u16 numOfCorrect = 0;
	u16 numOfIncorrect = 0;

	while(numOfCorrect+numOfIncorrect < numOfTestSamples){
		auto testInput = fileP.getTestData(&inputSize, false);
		u16 res = nn_manager.run_network(testInput.get(), inputSize, true);

		if(res == labels[numOfCorrect+numOfIncorrect]) {
			numOfCorrect++;
		}
		else {
			numOfIncorrect++;
		}
	}

	totalTime_hardware = nn_manager.getTime();
	IPCoreExeTime_hardware = nn_manager.getIPCoreTotExeTime();
	accuracy_hardware = (float)numOfCorrect/(float)numOfTestSamples;
}

void TestNeuralNetwork::Test_NeuralNetwork_software(std::string inputFilename, std::string weightBiasFilename, u16 numOfTestSamples) {
	nn_manager.setup_manager(weightBiasFilename);
	FileParserSD fileP = FileParserSD();
	fileP.openfile(inputFilename);

	u16 numOfCorrect = 0;
	u16 numOfIncorrect = 0;

	while(numOfCorrect+numOfIncorrect < numOfTestSamples){
		auto testInput = fileP.getTestData(&inputSize, false);
		u16 res = nn_manager.run_network(testInput.get(), inputSize, false);

		if(res == labels[numOfCorrect+numOfIncorrect]) {
			numOfCorrect++;
		}
		else {
			numOfIncorrect++;
		}
	}

	totalTime_software = nn_manager.getTime();
	accuracy_software = (float)numOfCorrect/(float)numOfTestSamples;
}


void TestNeuralNetwork::Test_NeuralNetwork_CompareSoftmax(std::string inputFilename, std::string HWweightBiasFilename, std::string SWweightBiasFilename) {
	nn_manager.setup_manager(HWweightBiasFilename);
	FileParserSD fileP = FileParserSD();
	fileP.openfile(inputFilename);
	auto testInput = fileP.getTestData(&inputSize, false);
	FIXEDCONVERT tmp = 0;

	nn_manager.run_network(testInput.get(), inputSize, true);

	for (u16 i = 0; i < nn_manager.getLastSize(); i++){
		tmp.V.VAL = nn_manager.getLastOutput()[i];
		softmax_hardware[i] = tmp.to_float();
	}

	nn_manager.setup_manager(SWweightBiasFilename);
	nn_manager.run_network(testInput.get(), inputSize, false);

	for (u16 i = 0; i < nn_manager.getLastSize(); i++){
		tmp.V.VAL = nn_manager.getLastOutput()[i];
		softmax_software[i] = tmp.to_float();
	}
}


