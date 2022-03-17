/*
 * FileParserSD.h
 *
 *  Created on: 8. mar. 2022
 *      Author: Mikke
 */

#ifndef SRC_FILEPARSERSD_H_
#define SRC_FILEPARSERSD_H_
#include "xsdps.h"		/* SD device driver */
#include "ff.h"			/* FatFS File System */
#include <fstream>
#include <vector>
#include <string>
#include <regex>
#include "../FileParser/nnLayer.h"

class FileParserSD {

public:
	FileParserSD();
    virtual ~FileParserSD();

    //Should be reimplemented with SD Card Methods
    int openfile(std::string & filename);
    int closefile();
    int mount(bool remount=false);
    std::string readfile(bool fromStart=true);

    std::vector<nnLayer> parseString(std::string && str);

    std::vector<nnLayer> parseStringTest(std::string & fileName);


private:
    std::shared_ptr<CUSTOMTYPE> getWeightsFromSMatch(std::string, unsigned int);
    std::shared_ptr<CUSTOMTYPE> getBiasFromSMatch(std::string, unsigned int);

    std::string getFileLine(std::string fileName, unsigned int oldStop, unsigned int totalSize);

    nnLayer parseline(std::string);

    std::string fileName;
    std::string pathName;

    unsigned int NumberOfBytesWritten;
    unsigned int NumberOfBytesRead;

    FATFS mFatFS;
    FIL mFIL;

    bool isMounted = false;
};


#endif /* SRC_FILEPARSERSD_H_ */
