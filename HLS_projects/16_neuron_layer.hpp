#pragma once
#include "../defines.hpp"
#define SIZE 16

void runLayer(int input[MAX_SIZE], int output[SIZE], int weights[SIZE*SIZE], int bias[SIZE], unsigned short int numOfInNeurons);