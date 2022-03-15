#pragma once
#define MAX_SIZE 256
#define SIZE 256
#define WEIGHT_MAX_SIZE SIZE*MAX_SIZE
#include <ap_fixed.h>

typedef ap_fixed<16,8> dataType;

void nnlayer(short int input[MAX_SIZE], short int output[SIZE], short int weights[WEIGHT_MAX_SIZE], short int bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation);
