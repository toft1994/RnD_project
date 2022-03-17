#pragma once
#define SIZE 256
#define WEIGHT_SIZE SIZE*SIZE
#include <ap_fixed.h>

typedef ap_fixed<16,8> dataType;

void nnlayer(dataType input[SIZE], dataType output[SIZE], dataType weights[WEIGHT_SIZE], dataType bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation);
