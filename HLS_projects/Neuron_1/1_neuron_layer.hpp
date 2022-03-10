#pragma once
#include "../defines.hpp"
#define SIZE 256
#define WEIGHT_MAX_SIZE SIZE*MAX_SIZE

void nnlayer(short int input[MAX_SIZE], short int output[SIZE], short int weights[WEIGHT_MAX_SIZE], short int bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation);
