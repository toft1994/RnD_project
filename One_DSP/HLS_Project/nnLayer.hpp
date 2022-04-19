#pragma once
#define SIZE 128
#define WEIGHT_SIZE SIZE*SIZE
#include <ap_fixed.h>

#define SOFTMAX_BIT 32
#define SOFTMAX_WHOLE 16
#define SOFTMAX_FRAC SOFTMAX_BIT-SOFTMAX_WHOLE

#define SOFTMAX_SUM_BIT 64
#define SOFTMAX_SUM_WHOLE 32
#define SOFTMAX_SUM_FRAC SOFTMAX_SUM_BIT-SOFTMAX_SUM_WHOLE

#define FIXED_OUT_BIT 16
#define FIXED_OUT_WHOLE 8
#define FIXED_OUT_FRAC FIXED_OUT_BIT-FIXED_OUT_WHOLE

#define FIXED_INP_BIT 16
#define FIXED_INP_WHOLE 8
#define FIXED_INP_FRAC FIXED_INP_BIT-FIXED_INP_WHOLE

typedef ap_fixed<FIXED_INP_BIT,FIXED_INP_WHOLE> fixedInput;
typedef ap_fixed<FIXED_OUT_BIT,FIXED_OUT_WHOLE> fixedOutput;
typedef ap_ufixed<SOFTMAX_BIT,SOFTMAX_WHOLE> softmax_type;
typedef ap_ufixed<SOFTMAX_SUM_BIT,SOFTMAX_SUM_WHOLE> softmaxSum_type;

void nnlayer(fixedInput input[SIZE], fixedInput output[SIZE], fixedInput weights[WEIGHT_SIZE], fixedInput bias[SIZE], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation);
