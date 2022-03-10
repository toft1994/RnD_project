//
// Created by Mikke on 24-02-2022.
//

#ifndef FILEPARSER_FILEPARSER_H
#define FILEPARSER_FILEPARSER_H
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <regex>
#include "nnLayer.h"



class FileParser {

public:
    FileParser();
    virtual ~FileParser();

    //Should be reimplemented with SD Card Methods
    unsigned int openfile(std::string filename);
    unsigned int closefile();
    std::string readfile();

    std::vector<nnLayer> parseString(const std::string);

private:

    std::shared_ptr<CUSTOMTYPE> getWeightsFromSMatch(std::string, unsigned int);
    std::shared_ptr<CUSTOMTYPE> getBiasFromSMatch(std::string, unsigned int);

    nnLayer parseline(std::string);
    std::ifstream filedescrip_;

};


#endif //FILEPARSER_FILEPARSER_H
