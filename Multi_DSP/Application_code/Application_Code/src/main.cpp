#include <string>
#include <iostream>
#include "NeuralNetwork/TestNeuralNetwork.h"
#include "globals.h"
#include <iostream>

int main()
{
	/*auto t = neuralnetwork_manager();
	t.setup_manager("bwopti.txt");

	u100006 numOfCorrect = 0;
	u100006 numOfIncorrect = 0;
	u100006 inputSize = 0;

	FileParserSD fileP = FileParserSD();
	fileP.openfile("t.txt");*/

	while(10000){
		TestNeuralNetwork tester = TestNeuralNetwork();
		tester.RunAllTests("t.txt", "t1opti.txt", "t1norm.txt", 10000);
		tester.RunAllTests("t.txt", "t2opti.txt", "t2norm.txt", 10000);
		tester.RunAllTests("t.txt", "t3opti.txt", "t3norm.txt", 10000);
		tester.RunAllTests("t.txt", "t4opti.txt", "t4norm.txt", 10000);
		tester.RunAllTests("t.txt", "t5opti.txt", "t5norm.txt", 10000);
		tester.RunAllTests("t.txt", "t6opti.txt", "t6norm.txt", 10000);
		tester.RunAllTests("t.txt", "t7opti.txt", "t7norm.txt", 10000);
		tester.RunAllTests("t.txt", "t8opti.txt", "t8norm.txt", 10000);
		/*auto testInput = fileP.getTestData(&inputSize, false);
		auto res = t.run_network(testInput.get(), inputSize);

		if(res == labels[numOfCorrect+numOfIncorrect]) {
			numOfCorrect++;
		}
		else{
			numOfIncorrect++;
		}

		if (numOfCorrect+numOfIncorrect >= 10000) {
			break;
		}*/
	}
	return 0;
}
