#pragma once
#define SIZE 128
#define WEIGHT_SIZE SIZE*SIZE
#include <ap_fixed.h>

#define SOFTMAX_BIT 32
#define SOFTMAX_WHOLE 16
#define SOFTMAX_FRAC SOFTMAX_BIT-SOFTMAX_WHOLE

#define FIXED_BIT 16
#define FIXED_WHOLE 8
#define FIXED_FRAC FIXED_BIT-FIXED_WHOLE

typedef ap_fixed<FIXED_BIT,FIXED_WHOLE> dataType;
typedef ap_fixed<SOFTMAX_BIT,SOFTMAX_WHOLE> softmaxSum_type;

void nnlayer(dataType input[SIZE], dataType output[SIZE], dataType bias[SIZE], dataType weights[WEIGHT_SIZE], unsigned short int numOfOutputNeurons, unsigned char activation);
