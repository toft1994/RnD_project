/*
 * FileParserSD.cpp
 *
 *  Created on: 8. mar. 2022
 *      Author: Mikkel
 * 	Implementation of SD Card is inspired from Kim Bjerge, Aarhus University
 */
#include "FileParserSD.h"

/**
 * Initial Paths of the SD card is set
 */
FileParserSD::FileParserSD() {
	pathName = "0:/";  			/* Set Initial Path of SD Card */
	fileName = "";				/* Set Initial Filename to "null" */
}

FileParserSD::~FileParserSD() {
    closefile();
}

/**
 * Open the file with the @param filename
 */
int FileParserSD::openfile(std::string & filename) {
	FRESULT result;

	/* Return Failure if card is not mounted */
	if(!isMounted){
		return XST_FAILURE;
	}

	/* Open the file in always read mode and only the existing file */
	result = f_open(&mFIL, filename.c_str(), FA_OPEN_EXISTING | FA_READ);
	if(result){
		return XST_FAILURE;
	}

	/* Set the file pointer to the start of the file */
	result = f_lseek(&mFIL, 0);
	if(result){
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/**
 * Mount the File in the system
 */
int FileParserSD::mount(bool remount)
{
	FRESULT result;
	if (!isMounted or remount) { /* Ensure that we aren't already mounted */
		result = f_mount(&mFatFS, pathName.c_str(), 0);

		if (result != FR_OK) { /* If Mounts fails, return error */
			return XST_FAILURE;
		}
		isMounted = true;
	}
	return XST_SUCCESS;
}

/**
 * Close the file descriptor correctly
 */
int FileParserSD::closefile() {
	FRESULT result = f_close(&mFIL);
	if (result) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/**
 * Parse the whole string from config file to a nnLayer Vector
 */

std::vector<nnLayer> FileParserSD::parseString(std::string & fileName) {

    std::vector<nnLayer> nnLayerVector;
    unsigned int index = 0;
    FILINFO info;
    FRESULT result = f_stat(fileName.c_str(), &info);

    /*if (result) {
    	return nnLayerVector;
    }*/

    while(index < info.fsize) {
        std::string line = getFileLine(fileName, index, info.fsize);
        nnLayerVector.push_back(std::move(parseline(line)));
        index += line.length() + 1;
    }

    return nnLayerVector;
}


std::string FileParserSD::getFileLine(std::string fileName, unsigned int oldStop, unsigned int totalSize) {
	char tmpArray[MAX_FILE_INPUT];
	std::string ret = "";
	FRESULT result;

	result = f_lseek(&mFIL, oldStop);
	if (result) {
		return "FF";
	}

	NumberOfBytesRead = 0;

	do {
		result = f_read(&mFIL, (void*)tmpArray, sizeof(tmpArray), &NumberOfBytesRead);
		if (result) {
			return "FF";
		}
		ret.append(tmpArray, NumberOfBytesRead);
	}
	while(ret.find("\n") == std::string::npos || totalSize < ret.size() + oldStop);

	ret = ret.substr(0, ret.find("\n"));
	return ret;
}

nnLayer FileParserSD::parseline(const std::string inLine) {

    std::smatch SmatchWeights;
    std::smatch SmatchBias;
    std::smatch SmatchAct;

    std::regex_search(inLine.begin(), inLine.end(), SmatchWeights, std::regex("^(.*?)\\FA")); // Weights Regex
    std::regex_search(inLine.begin(), inLine.end(), SmatchBias, std::regex("\\FB(.*?)$")); // Bias Regex
    std::regex_search(inLine.begin(), inLine.end(), SmatchAct, std::regex("\\FA(.*?)\\FB")); // Act function

    std::string weightString = SmatchWeights.str();
    std::string biasString = SmatchBias.str();
    std::string actFunc = SmatchAct.str();

    unsigned int numberOfBias = std::count(biasString.begin(), biasString.end(), ',');
    unsigned int numberOfWeights = std::count(weightString.begin(), weightString.end(), ',');

    unsigned int act = std::stoi(actFunc.substr(actFunc.find(',', 0)+1,
                                                actFunc.find(',', actFunc.find(',', 0))-1));

    std::shared_ptr<CUSTOMTYPE> weights(getWeightsFromSMatch(weightString, numberOfWeights));
    std::shared_ptr<CUSTOMTYPE> bias(getBiasFromSMatch(biasString, numberOfBias));

    nnLayer bufLayer = nnLayer(numberOfBias, weights, bias, act);
    return bufLayer;
}

std::shared_ptr<CUSTOMTYPE> FileParserSD::getWeightsFromSMatch(std::string weightString, unsigned int numberOfWeights) {

    std::string buf;
    std::stringstream sstream(weightString);

    std::shared_ptr<CUSTOMTYPE> w(new CUSTOMTYPE[numberOfWeights]);
    for (unsigned int i = 0; i < numberOfWeights; ++i) {
        std::getline(sstream, buf, ',');
        w.get()[i] = FIXEDCONVERT(std::stof(buf)).bits_to_uint64();
    }

    return w;
}

std::shared_ptr<CUSTOMTYPE> FileParserSD::getBiasFromSMatch(std::string biasString, unsigned int numberOfBias) {
    // Remove the "FB," from the string
    biasString.replace(biasString.begin(), biasString.begin()+3, "");

    std::string buf;
    std::stringstream sstream(biasString);

    std::shared_ptr<CUSTOMTYPE> b(new CUSTOMTYPE[numberOfBias]);
    for (unsigned int i = 0; i < numberOfBias; ++i) {
        std::getline(sstream, buf, ',');
        b.get()[i] = FIXEDCONVERT(std::stof(buf)).bits_to_uint64();
    }

    return b;
}
