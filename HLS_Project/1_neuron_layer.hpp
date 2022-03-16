#pragma once
#define MAX_SIZE 256
#define SIZE 256
#define WEIGHT_MAX_SIZE SIZE*MAX_SIZE
#include <ap_fixed.h>

typedef ap_fixed<16,8> dataType;

void nnlayer(dataType input[MAX_SIZE], dataType output[SIZE], dataType weights[WEIGHT_MAX_SIZE], dataType bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation);
