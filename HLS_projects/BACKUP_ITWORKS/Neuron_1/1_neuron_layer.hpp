#pragma once
#include "../defines.hpp"
#define SIZE 3
#define WEIGHT_MAX_SIZE SIZE*MAX_SIZE

void runLayer(short int input[MAX_SIZE], short int output[SIZE], short int weights[WEIGHT_MAX_SIZE], short int bias[SIZE], unsigned short int numOfInNeurons);
