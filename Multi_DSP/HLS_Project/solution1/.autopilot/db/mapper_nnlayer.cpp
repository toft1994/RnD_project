#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s2__ { char data[2]; };
extern "C" void nnlayer(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short*, short, char);
extern "C" void apatb_nnlayer_hw(volatile void * __xlx_apatb_param_input_0, volatile void * __xlx_apatb_param_input_1, volatile void * __xlx_apatb_param_input_2, volatile void * __xlx_apatb_param_input_3, volatile void * __xlx_apatb_param_input_4, volatile void * __xlx_apatb_param_input_5, volatile void * __xlx_apatb_param_input_6, volatile void * __xlx_apatb_param_input_7, volatile void * __xlx_apatb_param_input_8, volatile void * __xlx_apatb_param_input_9, volatile void * __xlx_apatb_param_input_10, volatile void * __xlx_apatb_param_input_11, volatile void * __xlx_apatb_param_input_12, volatile void * __xlx_apatb_param_input_13, volatile void * __xlx_apatb_param_input_14, volatile void * __xlx_apatb_param_input_15, volatile void * __xlx_apatb_param_input_16, volatile void * __xlx_apatb_param_input_17, volatile void * __xlx_apatb_param_input_18, volatile void * __xlx_apatb_param_input_19, volatile void * __xlx_apatb_param_input_20, volatile void * __xlx_apatb_param_input_21, volatile void * __xlx_apatb_param_input_22, volatile void * __xlx_apatb_param_input_23, volatile void * __xlx_apatb_param_input_24, volatile void * __xlx_apatb_param_input_25, volatile void * __xlx_apatb_param_input_26, volatile void * __xlx_apatb_param_input_27, volatile void * __xlx_apatb_param_input_28, volatile void * __xlx_apatb_param_input_29, volatile void * __xlx_apatb_param_input_30, volatile void * __xlx_apatb_param_input_31, volatile void * __xlx_apatb_param_input_32, volatile void * __xlx_apatb_param_input_33, volatile void * __xlx_apatb_param_input_34, volatile void * __xlx_apatb_param_input_35, volatile void * __xlx_apatb_param_input_36, volatile void * __xlx_apatb_param_input_37, volatile void * __xlx_apatb_param_input_38, volatile void * __xlx_apatb_param_input_39, volatile void * __xlx_apatb_param_input_40, volatile void * __xlx_apatb_param_input_41, volatile void * __xlx_apatb_param_input_42, volatile void * __xlx_apatb_param_input_43, volatile void * __xlx_apatb_param_input_44, volatile void * __xlx_apatb_param_input_45, volatile void * __xlx_apatb_param_input_46, volatile void * __xlx_apatb_param_input_47, volatile void * __xlx_apatb_param_input_48, volatile void * __xlx_apatb_param_input_49, volatile void * __xlx_apatb_param_input_50, volatile void * __xlx_apatb_param_input_51, volatile void * __xlx_apatb_param_input_52, volatile void * __xlx_apatb_param_input_53, volatile void * __xlx_apatb_param_input_54, volatile void * __xlx_apatb_param_input_55, volatile void * __xlx_apatb_param_input_56, volatile void * __xlx_apatb_param_input_57, volatile void * __xlx_apatb_param_input_58, volatile void * __xlx_apatb_param_input_59, volatile void * __xlx_apatb_param_input_60, volatile void * __xlx_apatb_param_input_61, volatile void * __xlx_apatb_param_input_62, volatile void * __xlx_apatb_param_input_63, volatile void * __xlx_apatb_param_input_64, volatile void * __xlx_apatb_param_input_65, volatile void * __xlx_apatb_param_input_66, volatile void * __xlx_apatb_param_input_67, volatile void * __xlx_apatb_param_input_68, volatile void * __xlx_apatb_param_input_69, volatile void * __xlx_apatb_param_input_70, volatile void * __xlx_apatb_param_input_71, volatile void * __xlx_apatb_param_input_72, volatile void * __xlx_apatb_param_input_73, volatile void * __xlx_apatb_param_input_74, volatile void * __xlx_apatb_param_input_75, volatile void * __xlx_apatb_param_input_76, volatile void * __xlx_apatb_param_input_77, volatile void * __xlx_apatb_param_input_78, volatile void * __xlx_apatb_param_input_79, volatile void * __xlx_apatb_param_input_80, volatile void * __xlx_apatb_param_input_81, volatile void * __xlx_apatb_param_input_82, volatile void * __xlx_apatb_param_input_83, volatile void * __xlx_apatb_param_input_84, volatile void * __xlx_apatb_param_input_85, volatile void * __xlx_apatb_param_input_86, volatile void * __xlx_apatb_param_input_87, volatile void * __xlx_apatb_param_input_88, volatile void * __xlx_apatb_param_input_89, volatile void * __xlx_apatb_param_input_90, volatile void * __xlx_apatb_param_input_91, volatile void * __xlx_apatb_param_input_92, volatile void * __xlx_apatb_param_input_93, volatile void * __xlx_apatb_param_input_94, volatile void * __xlx_apatb_param_input_95, volatile void * __xlx_apatb_param_input_96, volatile void * __xlx_apatb_param_input_97, volatile void * __xlx_apatb_param_input_98, volatile void * __xlx_apatb_param_input_99, volatile void * __xlx_apatb_param_input_100, volatile void * __xlx_apatb_param_input_101, volatile void * __xlx_apatb_param_input_102, volatile void * __xlx_apatb_param_input_103, volatile void * __xlx_apatb_param_input_104, volatile void * __xlx_apatb_param_input_105, volatile void * __xlx_apatb_param_input_106, volatile void * __xlx_apatb_param_input_107, volatile void * __xlx_apatb_param_input_108, volatile void * __xlx_apatb_param_input_109, volatile void * __xlx_apatb_param_input_110, volatile void * __xlx_apatb_param_input_111, volatile void * __xlx_apatb_param_input_112, volatile void * __xlx_apatb_param_input_113, volatile void * __xlx_apatb_param_input_114, volatile void * __xlx_apatb_param_input_115, volatile void * __xlx_apatb_param_input_116, volatile void * __xlx_apatb_param_input_117, volatile void * __xlx_apatb_param_input_118, volatile void * __xlx_apatb_param_input_119, volatile void * __xlx_apatb_param_input_120, volatile void * __xlx_apatb_param_input_121, volatile void * __xlx_apatb_param_input_122, volatile void * __xlx_apatb_param_input_123, volatile void * __xlx_apatb_param_input_124, volatile void * __xlx_apatb_param_input_125, volatile void * __xlx_apatb_param_input_126, volatile void * __xlx_apatb_param_input_127, volatile void * __xlx_apatb_param_output_0, volatile void * __xlx_apatb_param_output_1, volatile void * __xlx_apatb_param_output_2, volatile void * __xlx_apatb_param_output_3, volatile void * __xlx_apatb_param_output_4, volatile void * __xlx_apatb_param_output_5, volatile void * __xlx_apatb_param_output_6, volatile void * __xlx_apatb_param_output_7, volatile void * __xlx_apatb_param_output_8, volatile void * __xlx_apatb_param_output_9, volatile void * __xlx_apatb_param_output_10, volatile void * __xlx_apatb_param_output_11, volatile void * __xlx_apatb_param_output_12, volatile void * __xlx_apatb_param_output_13, volatile void * __xlx_apatb_param_output_14, volatile void * __xlx_apatb_param_output_15, volatile void * __xlx_apatb_param_output_16, volatile void * __xlx_apatb_param_output_17, volatile void * __xlx_apatb_param_output_18, volatile void * __xlx_apatb_param_output_19, volatile void * __xlx_apatb_param_output_20, volatile void * __xlx_apatb_param_output_21, volatile void * __xlx_apatb_param_output_22, volatile void * __xlx_apatb_param_output_23, volatile void * __xlx_apatb_param_output_24, volatile void * __xlx_apatb_param_output_25, volatile void * __xlx_apatb_param_output_26, volatile void * __xlx_apatb_param_output_27, volatile void * __xlx_apatb_param_output_28, volatile void * __xlx_apatb_param_output_29, volatile void * __xlx_apatb_param_output_30, volatile void * __xlx_apatb_param_output_31, volatile void * __xlx_apatb_param_output_32, volatile void * __xlx_apatb_param_output_33, volatile void * __xlx_apatb_param_output_34, volatile void * __xlx_apatb_param_output_35, volatile void * __xlx_apatb_param_output_36, volatile void * __xlx_apatb_param_output_37, volatile void * __xlx_apatb_param_output_38, volatile void * __xlx_apatb_param_output_39, volatile void * __xlx_apatb_param_output_40, volatile void * __xlx_apatb_param_output_41, volatile void * __xlx_apatb_param_output_42, volatile void * __xlx_apatb_param_output_43, volatile void * __xlx_apatb_param_output_44, volatile void * __xlx_apatb_param_output_45, volatile void * __xlx_apatb_param_output_46, volatile void * __xlx_apatb_param_output_47, volatile void * __xlx_apatb_param_output_48, volatile void * __xlx_apatb_param_output_49, volatile void * __xlx_apatb_param_output_50, volatile void * __xlx_apatb_param_output_51, volatile void * __xlx_apatb_param_output_52, volatile void * __xlx_apatb_param_output_53, volatile void * __xlx_apatb_param_output_54, volatile void * __xlx_apatb_param_output_55, volatile void * __xlx_apatb_param_output_56, volatile void * __xlx_apatb_param_output_57, volatile void * __xlx_apatb_param_output_58, volatile void * __xlx_apatb_param_output_59, volatile void * __xlx_apatb_param_output_60, volatile void * __xlx_apatb_param_output_61, volatile void * __xlx_apatb_param_output_62, volatile void * __xlx_apatb_param_output_63, volatile void * __xlx_apatb_param_output_64, volatile void * __xlx_apatb_param_output_65, volatile void * __xlx_apatb_param_output_66, volatile void * __xlx_apatb_param_output_67, volatile void * __xlx_apatb_param_output_68, volatile void * __xlx_apatb_param_output_69, volatile void * __xlx_apatb_param_output_70, volatile void * __xlx_apatb_param_output_71, volatile void * __xlx_apatb_param_output_72, volatile void * __xlx_apatb_param_output_73, volatile void * __xlx_apatb_param_output_74, volatile void * __xlx_apatb_param_output_75, volatile void * __xlx_apatb_param_output_76, volatile void * __xlx_apatb_param_output_77, volatile void * __xlx_apatb_param_output_78, volatile void * __xlx_apatb_param_output_79, volatile void * __xlx_apatb_param_output_80, volatile void * __xlx_apatb_param_output_81, volatile void * __xlx_apatb_param_output_82, volatile void * __xlx_apatb_param_output_83, volatile void * __xlx_apatb_param_output_84, volatile void * __xlx_apatb_param_output_85, volatile void * __xlx_apatb_param_output_86, volatile void * __xlx_apatb_param_output_87, volatile void * __xlx_apatb_param_output_88, volatile void * __xlx_apatb_param_output_89, volatile void * __xlx_apatb_param_output_90, volatile void * __xlx_apatb_param_output_91, volatile void * __xlx_apatb_param_output_92, volatile void * __xlx_apatb_param_output_93, volatile void * __xlx_apatb_param_output_94, volatile void * __xlx_apatb_param_output_95, volatile void * __xlx_apatb_param_output_96, volatile void * __xlx_apatb_param_output_97, volatile void * __xlx_apatb_param_output_98, volatile void * __xlx_apatb_param_output_99, volatile void * __xlx_apatb_param_output_100, volatile void * __xlx_apatb_param_output_101, volatile void * __xlx_apatb_param_output_102, volatile void * __xlx_apatb_param_output_103, volatile void * __xlx_apatb_param_output_104, volatile void * __xlx_apatb_param_output_105, volatile void * __xlx_apatb_param_output_106, volatile void * __xlx_apatb_param_output_107, volatile void * __xlx_apatb_param_output_108, volatile void * __xlx_apatb_param_output_109, volatile void * __xlx_apatb_param_output_110, volatile void * __xlx_apatb_param_output_111, volatile void * __xlx_apatb_param_output_112, volatile void * __xlx_apatb_param_output_113, volatile void * __xlx_apatb_param_output_114, volatile void * __xlx_apatb_param_output_115, volatile void * __xlx_apatb_param_output_116, volatile void * __xlx_apatb_param_output_117, volatile void * __xlx_apatb_param_output_118, volatile void * __xlx_apatb_param_output_119, volatile void * __xlx_apatb_param_output_120, volatile void * __xlx_apatb_param_output_121, volatile void * __xlx_apatb_param_output_122, volatile void * __xlx_apatb_param_output_123, volatile void * __xlx_apatb_param_output_124, volatile void * __xlx_apatb_param_output_125, volatile void * __xlx_apatb_param_output_126, volatile void * __xlx_apatb_param_output_127, volatile void * __xlx_apatb_param_bias, volatile void * __xlx_apatb_param_weights_0, volatile void * __xlx_apatb_param_weights_1, volatile void * __xlx_apatb_param_weights_2, volatile void * __xlx_apatb_param_weights_3, volatile void * __xlx_apatb_param_weights_4, volatile void * __xlx_apatb_param_weights_5, volatile void * __xlx_apatb_param_weights_6, volatile void * __xlx_apatb_param_weights_7, volatile void * __xlx_apatb_param_weights_8, volatile void * __xlx_apatb_param_weights_9, volatile void * __xlx_apatb_param_weights_10, volatile void * __xlx_apatb_param_weights_11, volatile void * __xlx_apatb_param_weights_12, volatile void * __xlx_apatb_param_weights_13, volatile void * __xlx_apatb_param_weights_14, volatile void * __xlx_apatb_param_weights_15, volatile void * __xlx_apatb_param_weights_16, volatile void * __xlx_apatb_param_weights_17, volatile void * __xlx_apatb_param_weights_18, volatile void * __xlx_apatb_param_weights_19, volatile void * __xlx_apatb_param_weights_20, volatile void * __xlx_apatb_param_weights_21, volatile void * __xlx_apatb_param_weights_22, volatile void * __xlx_apatb_param_weights_23, volatile void * __xlx_apatb_param_weights_24, volatile void * __xlx_apatb_param_weights_25, volatile void * __xlx_apatb_param_weights_26, volatile void * __xlx_apatb_param_weights_27, volatile void * __xlx_apatb_param_weights_28, volatile void * __xlx_apatb_param_weights_29, volatile void * __xlx_apatb_param_weights_30, volatile void * __xlx_apatb_param_weights_31, volatile void * __xlx_apatb_param_weights_32, volatile void * __xlx_apatb_param_weights_33, volatile void * __xlx_apatb_param_weights_34, volatile void * __xlx_apatb_param_weights_35, volatile void * __xlx_apatb_param_weights_36, volatile void * __xlx_apatb_param_weights_37, volatile void * __xlx_apatb_param_weights_38, volatile void * __xlx_apatb_param_weights_39, volatile void * __xlx_apatb_param_weights_40, volatile void * __xlx_apatb_param_weights_41, volatile void * __xlx_apatb_param_weights_42, volatile void * __xlx_apatb_param_weights_43, volatile void * __xlx_apatb_param_weights_44, volatile void * __xlx_apatb_param_weights_45, volatile void * __xlx_apatb_param_weights_46, volatile void * __xlx_apatb_param_weights_47, volatile void * __xlx_apatb_param_weights_48, volatile void * __xlx_apatb_param_weights_49, volatile void * __xlx_apatb_param_weights_50, volatile void * __xlx_apatb_param_weights_51, volatile void * __xlx_apatb_param_weights_52, volatile void * __xlx_apatb_param_weights_53, volatile void * __xlx_apatb_param_weights_54, volatile void * __xlx_apatb_param_weights_55, volatile void * __xlx_apatb_param_weights_56, volatile void * __xlx_apatb_param_weights_57, volatile void * __xlx_apatb_param_weights_58, volatile void * __xlx_apatb_param_weights_59, volatile void * __xlx_apatb_param_weights_60, volatile void * __xlx_apatb_param_weights_61, volatile void * __xlx_apatb_param_weights_62, volatile void * __xlx_apatb_param_weights_63, volatile void * __xlx_apatb_param_weights_64, volatile void * __xlx_apatb_param_weights_65, volatile void * __xlx_apatb_param_weights_66, volatile void * __xlx_apatb_param_weights_67, volatile void * __xlx_apatb_param_weights_68, volatile void * __xlx_apatb_param_weights_69, volatile void * __xlx_apatb_param_weights_70, volatile void * __xlx_apatb_param_weights_71, volatile void * __xlx_apatb_param_weights_72, volatile void * __xlx_apatb_param_weights_73, volatile void * __xlx_apatb_param_weights_74, volatile void * __xlx_apatb_param_weights_75, volatile void * __xlx_apatb_param_weights_76, volatile void * __xlx_apatb_param_weights_77, volatile void * __xlx_apatb_param_weights_78, volatile void * __xlx_apatb_param_weights_79, volatile void * __xlx_apatb_param_weights_80, volatile void * __xlx_apatb_param_weights_81, volatile void * __xlx_apatb_param_weights_82, volatile void * __xlx_apatb_param_weights_83, volatile void * __xlx_apatb_param_weights_84, volatile void * __xlx_apatb_param_weights_85, volatile void * __xlx_apatb_param_weights_86, volatile void * __xlx_apatb_param_weights_87, volatile void * __xlx_apatb_param_weights_88, volatile void * __xlx_apatb_param_weights_89, volatile void * __xlx_apatb_param_weights_90, volatile void * __xlx_apatb_param_weights_91, volatile void * __xlx_apatb_param_weights_92, volatile void * __xlx_apatb_param_weights_93, volatile void * __xlx_apatb_param_weights_94, volatile void * __xlx_apatb_param_weights_95, volatile void * __xlx_apatb_param_weights_96, volatile void * __xlx_apatb_param_weights_97, volatile void * __xlx_apatb_param_weights_98, volatile void * __xlx_apatb_param_weights_99, volatile void * __xlx_apatb_param_weights_100, volatile void * __xlx_apatb_param_weights_101, volatile void * __xlx_apatb_param_weights_102, volatile void * __xlx_apatb_param_weights_103, volatile void * __xlx_apatb_param_weights_104, volatile void * __xlx_apatb_param_weights_105, volatile void * __xlx_apatb_param_weights_106, volatile void * __xlx_apatb_param_weights_107, volatile void * __xlx_apatb_param_weights_108, volatile void * __xlx_apatb_param_weights_109, volatile void * __xlx_apatb_param_weights_110, volatile void * __xlx_apatb_param_weights_111, volatile void * __xlx_apatb_param_weights_112, volatile void * __xlx_apatb_param_weights_113, volatile void * __xlx_apatb_param_weights_114, volatile void * __xlx_apatb_param_weights_115, volatile void * __xlx_apatb_param_weights_116, volatile void * __xlx_apatb_param_weights_117, volatile void * __xlx_apatb_param_weights_118, volatile void * __xlx_apatb_param_weights_119, volatile void * __xlx_apatb_param_weights_120, volatile void * __xlx_apatb_param_weights_121, volatile void * __xlx_apatb_param_weights_122, volatile void * __xlx_apatb_param_weights_123, volatile void * __xlx_apatb_param_weights_124, volatile void * __xlx_apatb_param_weights_125, volatile void * __xlx_apatb_param_weights_126, volatile void * __xlx_apatb_param_weights_127, short __xlx_apatb_param_numOfOutputNeurons, char __xlx_apatb_param_activation) {
  // Collect __xlx_bias__tmp_vec
  vector<sc_bv<16> >__xlx_bias__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_bias)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_bias)[j*2+1];
    __xlx_bias__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_bias = 128;
  int __xlx_offset_param_bias = 0;
  int __xlx_offset_byte_param_bias = 0*2;
  short* __xlx_bias__input_buffer= new short[__xlx_bias__tmp_vec.size()];
  for (int i = 0; i < __xlx_bias__tmp_vec.size(); ++i) {
    __xlx_bias__input_buffer[i] = __xlx_bias__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_0__tmp_vec
  vector<sc_bv<16> >__xlx_weights_0__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_0)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_0)[j*2+1];
    __xlx_weights_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_0 = 128;
  int __xlx_offset_param_weights_0 = 0;
  int __xlx_offset_byte_param_weights_0 = 0*2;
  short* __xlx_weights_0__input_buffer= new short[__xlx_weights_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_0__tmp_vec.size(); ++i) {
    __xlx_weights_0__input_buffer[i] = __xlx_weights_0__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_1__tmp_vec
  vector<sc_bv<16> >__xlx_weights_1__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_1)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_1)[j*2+1];
    __xlx_weights_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_1 = 128;
  int __xlx_offset_param_weights_1 = 0;
  int __xlx_offset_byte_param_weights_1 = 0*2;
  short* __xlx_weights_1__input_buffer= new short[__xlx_weights_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_1__tmp_vec.size(); ++i) {
    __xlx_weights_1__input_buffer[i] = __xlx_weights_1__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_2__tmp_vec
  vector<sc_bv<16> >__xlx_weights_2__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_2)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_2)[j*2+1];
    __xlx_weights_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_2 = 128;
  int __xlx_offset_param_weights_2 = 0;
  int __xlx_offset_byte_param_weights_2 = 0*2;
  short* __xlx_weights_2__input_buffer= new short[__xlx_weights_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_2__tmp_vec.size(); ++i) {
    __xlx_weights_2__input_buffer[i] = __xlx_weights_2__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_3__tmp_vec
  vector<sc_bv<16> >__xlx_weights_3__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_3)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_3)[j*2+1];
    __xlx_weights_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_3 = 128;
  int __xlx_offset_param_weights_3 = 0;
  int __xlx_offset_byte_param_weights_3 = 0*2;
  short* __xlx_weights_3__input_buffer= new short[__xlx_weights_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_3__tmp_vec.size(); ++i) {
    __xlx_weights_3__input_buffer[i] = __xlx_weights_3__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_4__tmp_vec
  vector<sc_bv<16> >__xlx_weights_4__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_4)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_4)[j*2+1];
    __xlx_weights_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_4 = 128;
  int __xlx_offset_param_weights_4 = 0;
  int __xlx_offset_byte_param_weights_4 = 0*2;
  short* __xlx_weights_4__input_buffer= new short[__xlx_weights_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_4__tmp_vec.size(); ++i) {
    __xlx_weights_4__input_buffer[i] = __xlx_weights_4__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_5__tmp_vec
  vector<sc_bv<16> >__xlx_weights_5__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_5)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_5)[j*2+1];
    __xlx_weights_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_5 = 128;
  int __xlx_offset_param_weights_5 = 0;
  int __xlx_offset_byte_param_weights_5 = 0*2;
  short* __xlx_weights_5__input_buffer= new short[__xlx_weights_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_5__tmp_vec.size(); ++i) {
    __xlx_weights_5__input_buffer[i] = __xlx_weights_5__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_6__tmp_vec
  vector<sc_bv<16> >__xlx_weights_6__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_6)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_6)[j*2+1];
    __xlx_weights_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_6 = 128;
  int __xlx_offset_param_weights_6 = 0;
  int __xlx_offset_byte_param_weights_6 = 0*2;
  short* __xlx_weights_6__input_buffer= new short[__xlx_weights_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_6__tmp_vec.size(); ++i) {
    __xlx_weights_6__input_buffer[i] = __xlx_weights_6__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_7__tmp_vec
  vector<sc_bv<16> >__xlx_weights_7__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_7)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_7)[j*2+1];
    __xlx_weights_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_7 = 128;
  int __xlx_offset_param_weights_7 = 0;
  int __xlx_offset_byte_param_weights_7 = 0*2;
  short* __xlx_weights_7__input_buffer= new short[__xlx_weights_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_7__tmp_vec.size(); ++i) {
    __xlx_weights_7__input_buffer[i] = __xlx_weights_7__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_8__tmp_vec
  vector<sc_bv<16> >__xlx_weights_8__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_8)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_8)[j*2+1];
    __xlx_weights_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_8 = 128;
  int __xlx_offset_param_weights_8 = 0;
  int __xlx_offset_byte_param_weights_8 = 0*2;
  short* __xlx_weights_8__input_buffer= new short[__xlx_weights_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_8__tmp_vec.size(); ++i) {
    __xlx_weights_8__input_buffer[i] = __xlx_weights_8__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_9__tmp_vec
  vector<sc_bv<16> >__xlx_weights_9__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_9)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_9)[j*2+1];
    __xlx_weights_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_9 = 128;
  int __xlx_offset_param_weights_9 = 0;
  int __xlx_offset_byte_param_weights_9 = 0*2;
  short* __xlx_weights_9__input_buffer= new short[__xlx_weights_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_9__tmp_vec.size(); ++i) {
    __xlx_weights_9__input_buffer[i] = __xlx_weights_9__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_10__tmp_vec
  vector<sc_bv<16> >__xlx_weights_10__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_10)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_10)[j*2+1];
    __xlx_weights_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_10 = 128;
  int __xlx_offset_param_weights_10 = 0;
  int __xlx_offset_byte_param_weights_10 = 0*2;
  short* __xlx_weights_10__input_buffer= new short[__xlx_weights_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_10__tmp_vec.size(); ++i) {
    __xlx_weights_10__input_buffer[i] = __xlx_weights_10__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_11__tmp_vec
  vector<sc_bv<16> >__xlx_weights_11__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_11)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_11)[j*2+1];
    __xlx_weights_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_11 = 128;
  int __xlx_offset_param_weights_11 = 0;
  int __xlx_offset_byte_param_weights_11 = 0*2;
  short* __xlx_weights_11__input_buffer= new short[__xlx_weights_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_11__tmp_vec.size(); ++i) {
    __xlx_weights_11__input_buffer[i] = __xlx_weights_11__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_12__tmp_vec
  vector<sc_bv<16> >__xlx_weights_12__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_12)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_12)[j*2+1];
    __xlx_weights_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_12 = 128;
  int __xlx_offset_param_weights_12 = 0;
  int __xlx_offset_byte_param_weights_12 = 0*2;
  short* __xlx_weights_12__input_buffer= new short[__xlx_weights_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_12__tmp_vec.size(); ++i) {
    __xlx_weights_12__input_buffer[i] = __xlx_weights_12__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_13__tmp_vec
  vector<sc_bv<16> >__xlx_weights_13__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_13)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_13)[j*2+1];
    __xlx_weights_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_13 = 128;
  int __xlx_offset_param_weights_13 = 0;
  int __xlx_offset_byte_param_weights_13 = 0*2;
  short* __xlx_weights_13__input_buffer= new short[__xlx_weights_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_13__tmp_vec.size(); ++i) {
    __xlx_weights_13__input_buffer[i] = __xlx_weights_13__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_14__tmp_vec
  vector<sc_bv<16> >__xlx_weights_14__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_14)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_14)[j*2+1];
    __xlx_weights_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_14 = 128;
  int __xlx_offset_param_weights_14 = 0;
  int __xlx_offset_byte_param_weights_14 = 0*2;
  short* __xlx_weights_14__input_buffer= new short[__xlx_weights_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_14__tmp_vec.size(); ++i) {
    __xlx_weights_14__input_buffer[i] = __xlx_weights_14__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_15__tmp_vec
  vector<sc_bv<16> >__xlx_weights_15__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_15)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_15)[j*2+1];
    __xlx_weights_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_15 = 128;
  int __xlx_offset_param_weights_15 = 0;
  int __xlx_offset_byte_param_weights_15 = 0*2;
  short* __xlx_weights_15__input_buffer= new short[__xlx_weights_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_15__tmp_vec.size(); ++i) {
    __xlx_weights_15__input_buffer[i] = __xlx_weights_15__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_16__tmp_vec
  vector<sc_bv<16> >__xlx_weights_16__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_16)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_16)[j*2+1];
    __xlx_weights_16__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_16 = 128;
  int __xlx_offset_param_weights_16 = 0;
  int __xlx_offset_byte_param_weights_16 = 0*2;
  short* __xlx_weights_16__input_buffer= new short[__xlx_weights_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_16__tmp_vec.size(); ++i) {
    __xlx_weights_16__input_buffer[i] = __xlx_weights_16__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_17__tmp_vec
  vector<sc_bv<16> >__xlx_weights_17__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_17)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_17)[j*2+1];
    __xlx_weights_17__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_17 = 128;
  int __xlx_offset_param_weights_17 = 0;
  int __xlx_offset_byte_param_weights_17 = 0*2;
  short* __xlx_weights_17__input_buffer= new short[__xlx_weights_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_17__tmp_vec.size(); ++i) {
    __xlx_weights_17__input_buffer[i] = __xlx_weights_17__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_18__tmp_vec
  vector<sc_bv<16> >__xlx_weights_18__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_18)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_18)[j*2+1];
    __xlx_weights_18__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_18 = 128;
  int __xlx_offset_param_weights_18 = 0;
  int __xlx_offset_byte_param_weights_18 = 0*2;
  short* __xlx_weights_18__input_buffer= new short[__xlx_weights_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_18__tmp_vec.size(); ++i) {
    __xlx_weights_18__input_buffer[i] = __xlx_weights_18__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_19__tmp_vec
  vector<sc_bv<16> >__xlx_weights_19__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_19)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_19)[j*2+1];
    __xlx_weights_19__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_19 = 128;
  int __xlx_offset_param_weights_19 = 0;
  int __xlx_offset_byte_param_weights_19 = 0*2;
  short* __xlx_weights_19__input_buffer= new short[__xlx_weights_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_19__tmp_vec.size(); ++i) {
    __xlx_weights_19__input_buffer[i] = __xlx_weights_19__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_20__tmp_vec
  vector<sc_bv<16> >__xlx_weights_20__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_20)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_20)[j*2+1];
    __xlx_weights_20__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_20 = 128;
  int __xlx_offset_param_weights_20 = 0;
  int __xlx_offset_byte_param_weights_20 = 0*2;
  short* __xlx_weights_20__input_buffer= new short[__xlx_weights_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_20__tmp_vec.size(); ++i) {
    __xlx_weights_20__input_buffer[i] = __xlx_weights_20__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_21__tmp_vec
  vector<sc_bv<16> >__xlx_weights_21__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_21)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_21)[j*2+1];
    __xlx_weights_21__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_21 = 128;
  int __xlx_offset_param_weights_21 = 0;
  int __xlx_offset_byte_param_weights_21 = 0*2;
  short* __xlx_weights_21__input_buffer= new short[__xlx_weights_21__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_21__tmp_vec.size(); ++i) {
    __xlx_weights_21__input_buffer[i] = __xlx_weights_21__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_22__tmp_vec
  vector<sc_bv<16> >__xlx_weights_22__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_22)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_22)[j*2+1];
    __xlx_weights_22__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_22 = 128;
  int __xlx_offset_param_weights_22 = 0;
  int __xlx_offset_byte_param_weights_22 = 0*2;
  short* __xlx_weights_22__input_buffer= new short[__xlx_weights_22__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_22__tmp_vec.size(); ++i) {
    __xlx_weights_22__input_buffer[i] = __xlx_weights_22__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_23__tmp_vec
  vector<sc_bv<16> >__xlx_weights_23__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_23)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_23)[j*2+1];
    __xlx_weights_23__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_23 = 128;
  int __xlx_offset_param_weights_23 = 0;
  int __xlx_offset_byte_param_weights_23 = 0*2;
  short* __xlx_weights_23__input_buffer= new short[__xlx_weights_23__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_23__tmp_vec.size(); ++i) {
    __xlx_weights_23__input_buffer[i] = __xlx_weights_23__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_24__tmp_vec
  vector<sc_bv<16> >__xlx_weights_24__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_24)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_24)[j*2+1];
    __xlx_weights_24__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_24 = 128;
  int __xlx_offset_param_weights_24 = 0;
  int __xlx_offset_byte_param_weights_24 = 0*2;
  short* __xlx_weights_24__input_buffer= new short[__xlx_weights_24__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_24__tmp_vec.size(); ++i) {
    __xlx_weights_24__input_buffer[i] = __xlx_weights_24__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_25__tmp_vec
  vector<sc_bv<16> >__xlx_weights_25__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_25)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_25)[j*2+1];
    __xlx_weights_25__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_25 = 128;
  int __xlx_offset_param_weights_25 = 0;
  int __xlx_offset_byte_param_weights_25 = 0*2;
  short* __xlx_weights_25__input_buffer= new short[__xlx_weights_25__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_25__tmp_vec.size(); ++i) {
    __xlx_weights_25__input_buffer[i] = __xlx_weights_25__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_26__tmp_vec
  vector<sc_bv<16> >__xlx_weights_26__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_26)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_26)[j*2+1];
    __xlx_weights_26__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_26 = 128;
  int __xlx_offset_param_weights_26 = 0;
  int __xlx_offset_byte_param_weights_26 = 0*2;
  short* __xlx_weights_26__input_buffer= new short[__xlx_weights_26__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_26__tmp_vec.size(); ++i) {
    __xlx_weights_26__input_buffer[i] = __xlx_weights_26__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_27__tmp_vec
  vector<sc_bv<16> >__xlx_weights_27__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_27)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_27)[j*2+1];
    __xlx_weights_27__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_27 = 128;
  int __xlx_offset_param_weights_27 = 0;
  int __xlx_offset_byte_param_weights_27 = 0*2;
  short* __xlx_weights_27__input_buffer= new short[__xlx_weights_27__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_27__tmp_vec.size(); ++i) {
    __xlx_weights_27__input_buffer[i] = __xlx_weights_27__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_28__tmp_vec
  vector<sc_bv<16> >__xlx_weights_28__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_28)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_28)[j*2+1];
    __xlx_weights_28__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_28 = 128;
  int __xlx_offset_param_weights_28 = 0;
  int __xlx_offset_byte_param_weights_28 = 0*2;
  short* __xlx_weights_28__input_buffer= new short[__xlx_weights_28__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_28__tmp_vec.size(); ++i) {
    __xlx_weights_28__input_buffer[i] = __xlx_weights_28__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_29__tmp_vec
  vector<sc_bv<16> >__xlx_weights_29__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_29)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_29)[j*2+1];
    __xlx_weights_29__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_29 = 128;
  int __xlx_offset_param_weights_29 = 0;
  int __xlx_offset_byte_param_weights_29 = 0*2;
  short* __xlx_weights_29__input_buffer= new short[__xlx_weights_29__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_29__tmp_vec.size(); ++i) {
    __xlx_weights_29__input_buffer[i] = __xlx_weights_29__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_30__tmp_vec
  vector<sc_bv<16> >__xlx_weights_30__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_30)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_30)[j*2+1];
    __xlx_weights_30__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_30 = 128;
  int __xlx_offset_param_weights_30 = 0;
  int __xlx_offset_byte_param_weights_30 = 0*2;
  short* __xlx_weights_30__input_buffer= new short[__xlx_weights_30__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_30__tmp_vec.size(); ++i) {
    __xlx_weights_30__input_buffer[i] = __xlx_weights_30__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_31__tmp_vec
  vector<sc_bv<16> >__xlx_weights_31__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_31)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_31)[j*2+1];
    __xlx_weights_31__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_31 = 128;
  int __xlx_offset_param_weights_31 = 0;
  int __xlx_offset_byte_param_weights_31 = 0*2;
  short* __xlx_weights_31__input_buffer= new short[__xlx_weights_31__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_31__tmp_vec.size(); ++i) {
    __xlx_weights_31__input_buffer[i] = __xlx_weights_31__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_32__tmp_vec
  vector<sc_bv<16> >__xlx_weights_32__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_32)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_32)[j*2+1];
    __xlx_weights_32__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_32 = 128;
  int __xlx_offset_param_weights_32 = 0;
  int __xlx_offset_byte_param_weights_32 = 0*2;
  short* __xlx_weights_32__input_buffer= new short[__xlx_weights_32__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_32__tmp_vec.size(); ++i) {
    __xlx_weights_32__input_buffer[i] = __xlx_weights_32__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_33__tmp_vec
  vector<sc_bv<16> >__xlx_weights_33__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_33)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_33)[j*2+1];
    __xlx_weights_33__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_33 = 128;
  int __xlx_offset_param_weights_33 = 0;
  int __xlx_offset_byte_param_weights_33 = 0*2;
  short* __xlx_weights_33__input_buffer= new short[__xlx_weights_33__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_33__tmp_vec.size(); ++i) {
    __xlx_weights_33__input_buffer[i] = __xlx_weights_33__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_34__tmp_vec
  vector<sc_bv<16> >__xlx_weights_34__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_34)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_34)[j*2+1];
    __xlx_weights_34__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_34 = 128;
  int __xlx_offset_param_weights_34 = 0;
  int __xlx_offset_byte_param_weights_34 = 0*2;
  short* __xlx_weights_34__input_buffer= new short[__xlx_weights_34__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_34__tmp_vec.size(); ++i) {
    __xlx_weights_34__input_buffer[i] = __xlx_weights_34__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_35__tmp_vec
  vector<sc_bv<16> >__xlx_weights_35__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_35)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_35)[j*2+1];
    __xlx_weights_35__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_35 = 128;
  int __xlx_offset_param_weights_35 = 0;
  int __xlx_offset_byte_param_weights_35 = 0*2;
  short* __xlx_weights_35__input_buffer= new short[__xlx_weights_35__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_35__tmp_vec.size(); ++i) {
    __xlx_weights_35__input_buffer[i] = __xlx_weights_35__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_36__tmp_vec
  vector<sc_bv<16> >__xlx_weights_36__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_36)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_36)[j*2+1];
    __xlx_weights_36__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_36 = 128;
  int __xlx_offset_param_weights_36 = 0;
  int __xlx_offset_byte_param_weights_36 = 0*2;
  short* __xlx_weights_36__input_buffer= new short[__xlx_weights_36__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_36__tmp_vec.size(); ++i) {
    __xlx_weights_36__input_buffer[i] = __xlx_weights_36__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_37__tmp_vec
  vector<sc_bv<16> >__xlx_weights_37__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_37)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_37)[j*2+1];
    __xlx_weights_37__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_37 = 128;
  int __xlx_offset_param_weights_37 = 0;
  int __xlx_offset_byte_param_weights_37 = 0*2;
  short* __xlx_weights_37__input_buffer= new short[__xlx_weights_37__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_37__tmp_vec.size(); ++i) {
    __xlx_weights_37__input_buffer[i] = __xlx_weights_37__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_38__tmp_vec
  vector<sc_bv<16> >__xlx_weights_38__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_38)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_38)[j*2+1];
    __xlx_weights_38__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_38 = 128;
  int __xlx_offset_param_weights_38 = 0;
  int __xlx_offset_byte_param_weights_38 = 0*2;
  short* __xlx_weights_38__input_buffer= new short[__xlx_weights_38__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_38__tmp_vec.size(); ++i) {
    __xlx_weights_38__input_buffer[i] = __xlx_weights_38__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_39__tmp_vec
  vector<sc_bv<16> >__xlx_weights_39__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_39)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_39)[j*2+1];
    __xlx_weights_39__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_39 = 128;
  int __xlx_offset_param_weights_39 = 0;
  int __xlx_offset_byte_param_weights_39 = 0*2;
  short* __xlx_weights_39__input_buffer= new short[__xlx_weights_39__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_39__tmp_vec.size(); ++i) {
    __xlx_weights_39__input_buffer[i] = __xlx_weights_39__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_40__tmp_vec
  vector<sc_bv<16> >__xlx_weights_40__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_40)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_40)[j*2+1];
    __xlx_weights_40__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_40 = 128;
  int __xlx_offset_param_weights_40 = 0;
  int __xlx_offset_byte_param_weights_40 = 0*2;
  short* __xlx_weights_40__input_buffer= new short[__xlx_weights_40__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_40__tmp_vec.size(); ++i) {
    __xlx_weights_40__input_buffer[i] = __xlx_weights_40__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_41__tmp_vec
  vector<sc_bv<16> >__xlx_weights_41__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_41)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_41)[j*2+1];
    __xlx_weights_41__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_41 = 128;
  int __xlx_offset_param_weights_41 = 0;
  int __xlx_offset_byte_param_weights_41 = 0*2;
  short* __xlx_weights_41__input_buffer= new short[__xlx_weights_41__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_41__tmp_vec.size(); ++i) {
    __xlx_weights_41__input_buffer[i] = __xlx_weights_41__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_42__tmp_vec
  vector<sc_bv<16> >__xlx_weights_42__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_42)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_42)[j*2+1];
    __xlx_weights_42__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_42 = 128;
  int __xlx_offset_param_weights_42 = 0;
  int __xlx_offset_byte_param_weights_42 = 0*2;
  short* __xlx_weights_42__input_buffer= new short[__xlx_weights_42__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_42__tmp_vec.size(); ++i) {
    __xlx_weights_42__input_buffer[i] = __xlx_weights_42__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_43__tmp_vec
  vector<sc_bv<16> >__xlx_weights_43__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_43)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_43)[j*2+1];
    __xlx_weights_43__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_43 = 128;
  int __xlx_offset_param_weights_43 = 0;
  int __xlx_offset_byte_param_weights_43 = 0*2;
  short* __xlx_weights_43__input_buffer= new short[__xlx_weights_43__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_43__tmp_vec.size(); ++i) {
    __xlx_weights_43__input_buffer[i] = __xlx_weights_43__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_44__tmp_vec
  vector<sc_bv<16> >__xlx_weights_44__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_44)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_44)[j*2+1];
    __xlx_weights_44__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_44 = 128;
  int __xlx_offset_param_weights_44 = 0;
  int __xlx_offset_byte_param_weights_44 = 0*2;
  short* __xlx_weights_44__input_buffer= new short[__xlx_weights_44__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_44__tmp_vec.size(); ++i) {
    __xlx_weights_44__input_buffer[i] = __xlx_weights_44__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_45__tmp_vec
  vector<sc_bv<16> >__xlx_weights_45__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_45)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_45)[j*2+1];
    __xlx_weights_45__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_45 = 128;
  int __xlx_offset_param_weights_45 = 0;
  int __xlx_offset_byte_param_weights_45 = 0*2;
  short* __xlx_weights_45__input_buffer= new short[__xlx_weights_45__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_45__tmp_vec.size(); ++i) {
    __xlx_weights_45__input_buffer[i] = __xlx_weights_45__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_46__tmp_vec
  vector<sc_bv<16> >__xlx_weights_46__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_46)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_46)[j*2+1];
    __xlx_weights_46__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_46 = 128;
  int __xlx_offset_param_weights_46 = 0;
  int __xlx_offset_byte_param_weights_46 = 0*2;
  short* __xlx_weights_46__input_buffer= new short[__xlx_weights_46__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_46__tmp_vec.size(); ++i) {
    __xlx_weights_46__input_buffer[i] = __xlx_weights_46__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_47__tmp_vec
  vector<sc_bv<16> >__xlx_weights_47__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_47)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_47)[j*2+1];
    __xlx_weights_47__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_47 = 128;
  int __xlx_offset_param_weights_47 = 0;
  int __xlx_offset_byte_param_weights_47 = 0*2;
  short* __xlx_weights_47__input_buffer= new short[__xlx_weights_47__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_47__tmp_vec.size(); ++i) {
    __xlx_weights_47__input_buffer[i] = __xlx_weights_47__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_48__tmp_vec
  vector<sc_bv<16> >__xlx_weights_48__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_48)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_48)[j*2+1];
    __xlx_weights_48__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_48 = 128;
  int __xlx_offset_param_weights_48 = 0;
  int __xlx_offset_byte_param_weights_48 = 0*2;
  short* __xlx_weights_48__input_buffer= new short[__xlx_weights_48__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_48__tmp_vec.size(); ++i) {
    __xlx_weights_48__input_buffer[i] = __xlx_weights_48__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_49__tmp_vec
  vector<sc_bv<16> >__xlx_weights_49__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_49)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_49)[j*2+1];
    __xlx_weights_49__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_49 = 128;
  int __xlx_offset_param_weights_49 = 0;
  int __xlx_offset_byte_param_weights_49 = 0*2;
  short* __xlx_weights_49__input_buffer= new short[__xlx_weights_49__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_49__tmp_vec.size(); ++i) {
    __xlx_weights_49__input_buffer[i] = __xlx_weights_49__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_50__tmp_vec
  vector<sc_bv<16> >__xlx_weights_50__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_50)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_50)[j*2+1];
    __xlx_weights_50__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_50 = 128;
  int __xlx_offset_param_weights_50 = 0;
  int __xlx_offset_byte_param_weights_50 = 0*2;
  short* __xlx_weights_50__input_buffer= new short[__xlx_weights_50__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_50__tmp_vec.size(); ++i) {
    __xlx_weights_50__input_buffer[i] = __xlx_weights_50__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_51__tmp_vec
  vector<sc_bv<16> >__xlx_weights_51__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_51)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_51)[j*2+1];
    __xlx_weights_51__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_51 = 128;
  int __xlx_offset_param_weights_51 = 0;
  int __xlx_offset_byte_param_weights_51 = 0*2;
  short* __xlx_weights_51__input_buffer= new short[__xlx_weights_51__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_51__tmp_vec.size(); ++i) {
    __xlx_weights_51__input_buffer[i] = __xlx_weights_51__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_52__tmp_vec
  vector<sc_bv<16> >__xlx_weights_52__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_52)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_52)[j*2+1];
    __xlx_weights_52__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_52 = 128;
  int __xlx_offset_param_weights_52 = 0;
  int __xlx_offset_byte_param_weights_52 = 0*2;
  short* __xlx_weights_52__input_buffer= new short[__xlx_weights_52__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_52__tmp_vec.size(); ++i) {
    __xlx_weights_52__input_buffer[i] = __xlx_weights_52__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_53__tmp_vec
  vector<sc_bv<16> >__xlx_weights_53__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_53)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_53)[j*2+1];
    __xlx_weights_53__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_53 = 128;
  int __xlx_offset_param_weights_53 = 0;
  int __xlx_offset_byte_param_weights_53 = 0*2;
  short* __xlx_weights_53__input_buffer= new short[__xlx_weights_53__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_53__tmp_vec.size(); ++i) {
    __xlx_weights_53__input_buffer[i] = __xlx_weights_53__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_54__tmp_vec
  vector<sc_bv<16> >__xlx_weights_54__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_54)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_54)[j*2+1];
    __xlx_weights_54__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_54 = 128;
  int __xlx_offset_param_weights_54 = 0;
  int __xlx_offset_byte_param_weights_54 = 0*2;
  short* __xlx_weights_54__input_buffer= new short[__xlx_weights_54__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_54__tmp_vec.size(); ++i) {
    __xlx_weights_54__input_buffer[i] = __xlx_weights_54__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_55__tmp_vec
  vector<sc_bv<16> >__xlx_weights_55__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_55)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_55)[j*2+1];
    __xlx_weights_55__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_55 = 128;
  int __xlx_offset_param_weights_55 = 0;
  int __xlx_offset_byte_param_weights_55 = 0*2;
  short* __xlx_weights_55__input_buffer= new short[__xlx_weights_55__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_55__tmp_vec.size(); ++i) {
    __xlx_weights_55__input_buffer[i] = __xlx_weights_55__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_56__tmp_vec
  vector<sc_bv<16> >__xlx_weights_56__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_56)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_56)[j*2+1];
    __xlx_weights_56__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_56 = 128;
  int __xlx_offset_param_weights_56 = 0;
  int __xlx_offset_byte_param_weights_56 = 0*2;
  short* __xlx_weights_56__input_buffer= new short[__xlx_weights_56__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_56__tmp_vec.size(); ++i) {
    __xlx_weights_56__input_buffer[i] = __xlx_weights_56__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_57__tmp_vec
  vector<sc_bv<16> >__xlx_weights_57__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_57)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_57)[j*2+1];
    __xlx_weights_57__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_57 = 128;
  int __xlx_offset_param_weights_57 = 0;
  int __xlx_offset_byte_param_weights_57 = 0*2;
  short* __xlx_weights_57__input_buffer= new short[__xlx_weights_57__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_57__tmp_vec.size(); ++i) {
    __xlx_weights_57__input_buffer[i] = __xlx_weights_57__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_58__tmp_vec
  vector<sc_bv<16> >__xlx_weights_58__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_58)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_58)[j*2+1];
    __xlx_weights_58__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_58 = 128;
  int __xlx_offset_param_weights_58 = 0;
  int __xlx_offset_byte_param_weights_58 = 0*2;
  short* __xlx_weights_58__input_buffer= new short[__xlx_weights_58__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_58__tmp_vec.size(); ++i) {
    __xlx_weights_58__input_buffer[i] = __xlx_weights_58__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_59__tmp_vec
  vector<sc_bv<16> >__xlx_weights_59__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_59)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_59)[j*2+1];
    __xlx_weights_59__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_59 = 128;
  int __xlx_offset_param_weights_59 = 0;
  int __xlx_offset_byte_param_weights_59 = 0*2;
  short* __xlx_weights_59__input_buffer= new short[__xlx_weights_59__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_59__tmp_vec.size(); ++i) {
    __xlx_weights_59__input_buffer[i] = __xlx_weights_59__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_60__tmp_vec
  vector<sc_bv<16> >__xlx_weights_60__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_60)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_60)[j*2+1];
    __xlx_weights_60__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_60 = 128;
  int __xlx_offset_param_weights_60 = 0;
  int __xlx_offset_byte_param_weights_60 = 0*2;
  short* __xlx_weights_60__input_buffer= new short[__xlx_weights_60__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_60__tmp_vec.size(); ++i) {
    __xlx_weights_60__input_buffer[i] = __xlx_weights_60__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_61__tmp_vec
  vector<sc_bv<16> >__xlx_weights_61__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_61)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_61)[j*2+1];
    __xlx_weights_61__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_61 = 128;
  int __xlx_offset_param_weights_61 = 0;
  int __xlx_offset_byte_param_weights_61 = 0*2;
  short* __xlx_weights_61__input_buffer= new short[__xlx_weights_61__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_61__tmp_vec.size(); ++i) {
    __xlx_weights_61__input_buffer[i] = __xlx_weights_61__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_62__tmp_vec
  vector<sc_bv<16> >__xlx_weights_62__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_62)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_62)[j*2+1];
    __xlx_weights_62__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_62 = 128;
  int __xlx_offset_param_weights_62 = 0;
  int __xlx_offset_byte_param_weights_62 = 0*2;
  short* __xlx_weights_62__input_buffer= new short[__xlx_weights_62__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_62__tmp_vec.size(); ++i) {
    __xlx_weights_62__input_buffer[i] = __xlx_weights_62__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_63__tmp_vec
  vector<sc_bv<16> >__xlx_weights_63__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_63)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_63)[j*2+1];
    __xlx_weights_63__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_63 = 128;
  int __xlx_offset_param_weights_63 = 0;
  int __xlx_offset_byte_param_weights_63 = 0*2;
  short* __xlx_weights_63__input_buffer= new short[__xlx_weights_63__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_63__tmp_vec.size(); ++i) {
    __xlx_weights_63__input_buffer[i] = __xlx_weights_63__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_64__tmp_vec
  vector<sc_bv<16> >__xlx_weights_64__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_64)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_64)[j*2+1];
    __xlx_weights_64__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_64 = 128;
  int __xlx_offset_param_weights_64 = 0;
  int __xlx_offset_byte_param_weights_64 = 0*2;
  short* __xlx_weights_64__input_buffer= new short[__xlx_weights_64__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_64__tmp_vec.size(); ++i) {
    __xlx_weights_64__input_buffer[i] = __xlx_weights_64__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_65__tmp_vec
  vector<sc_bv<16> >__xlx_weights_65__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_65)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_65)[j*2+1];
    __xlx_weights_65__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_65 = 128;
  int __xlx_offset_param_weights_65 = 0;
  int __xlx_offset_byte_param_weights_65 = 0*2;
  short* __xlx_weights_65__input_buffer= new short[__xlx_weights_65__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_65__tmp_vec.size(); ++i) {
    __xlx_weights_65__input_buffer[i] = __xlx_weights_65__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_66__tmp_vec
  vector<sc_bv<16> >__xlx_weights_66__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_66)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_66)[j*2+1];
    __xlx_weights_66__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_66 = 128;
  int __xlx_offset_param_weights_66 = 0;
  int __xlx_offset_byte_param_weights_66 = 0*2;
  short* __xlx_weights_66__input_buffer= new short[__xlx_weights_66__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_66__tmp_vec.size(); ++i) {
    __xlx_weights_66__input_buffer[i] = __xlx_weights_66__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_67__tmp_vec
  vector<sc_bv<16> >__xlx_weights_67__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_67)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_67)[j*2+1];
    __xlx_weights_67__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_67 = 128;
  int __xlx_offset_param_weights_67 = 0;
  int __xlx_offset_byte_param_weights_67 = 0*2;
  short* __xlx_weights_67__input_buffer= new short[__xlx_weights_67__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_67__tmp_vec.size(); ++i) {
    __xlx_weights_67__input_buffer[i] = __xlx_weights_67__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_68__tmp_vec
  vector<sc_bv<16> >__xlx_weights_68__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_68)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_68)[j*2+1];
    __xlx_weights_68__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_68 = 128;
  int __xlx_offset_param_weights_68 = 0;
  int __xlx_offset_byte_param_weights_68 = 0*2;
  short* __xlx_weights_68__input_buffer= new short[__xlx_weights_68__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_68__tmp_vec.size(); ++i) {
    __xlx_weights_68__input_buffer[i] = __xlx_weights_68__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_69__tmp_vec
  vector<sc_bv<16> >__xlx_weights_69__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_69)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_69)[j*2+1];
    __xlx_weights_69__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_69 = 128;
  int __xlx_offset_param_weights_69 = 0;
  int __xlx_offset_byte_param_weights_69 = 0*2;
  short* __xlx_weights_69__input_buffer= new short[__xlx_weights_69__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_69__tmp_vec.size(); ++i) {
    __xlx_weights_69__input_buffer[i] = __xlx_weights_69__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_70__tmp_vec
  vector<sc_bv<16> >__xlx_weights_70__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_70)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_70)[j*2+1];
    __xlx_weights_70__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_70 = 128;
  int __xlx_offset_param_weights_70 = 0;
  int __xlx_offset_byte_param_weights_70 = 0*2;
  short* __xlx_weights_70__input_buffer= new short[__xlx_weights_70__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_70__tmp_vec.size(); ++i) {
    __xlx_weights_70__input_buffer[i] = __xlx_weights_70__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_71__tmp_vec
  vector<sc_bv<16> >__xlx_weights_71__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_71)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_71)[j*2+1];
    __xlx_weights_71__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_71 = 128;
  int __xlx_offset_param_weights_71 = 0;
  int __xlx_offset_byte_param_weights_71 = 0*2;
  short* __xlx_weights_71__input_buffer= new short[__xlx_weights_71__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_71__tmp_vec.size(); ++i) {
    __xlx_weights_71__input_buffer[i] = __xlx_weights_71__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_72__tmp_vec
  vector<sc_bv<16> >__xlx_weights_72__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_72)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_72)[j*2+1];
    __xlx_weights_72__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_72 = 128;
  int __xlx_offset_param_weights_72 = 0;
  int __xlx_offset_byte_param_weights_72 = 0*2;
  short* __xlx_weights_72__input_buffer= new short[__xlx_weights_72__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_72__tmp_vec.size(); ++i) {
    __xlx_weights_72__input_buffer[i] = __xlx_weights_72__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_73__tmp_vec
  vector<sc_bv<16> >__xlx_weights_73__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_73)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_73)[j*2+1];
    __xlx_weights_73__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_73 = 128;
  int __xlx_offset_param_weights_73 = 0;
  int __xlx_offset_byte_param_weights_73 = 0*2;
  short* __xlx_weights_73__input_buffer= new short[__xlx_weights_73__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_73__tmp_vec.size(); ++i) {
    __xlx_weights_73__input_buffer[i] = __xlx_weights_73__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_74__tmp_vec
  vector<sc_bv<16> >__xlx_weights_74__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_74)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_74)[j*2+1];
    __xlx_weights_74__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_74 = 128;
  int __xlx_offset_param_weights_74 = 0;
  int __xlx_offset_byte_param_weights_74 = 0*2;
  short* __xlx_weights_74__input_buffer= new short[__xlx_weights_74__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_74__tmp_vec.size(); ++i) {
    __xlx_weights_74__input_buffer[i] = __xlx_weights_74__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_75__tmp_vec
  vector<sc_bv<16> >__xlx_weights_75__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_75)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_75)[j*2+1];
    __xlx_weights_75__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_75 = 128;
  int __xlx_offset_param_weights_75 = 0;
  int __xlx_offset_byte_param_weights_75 = 0*2;
  short* __xlx_weights_75__input_buffer= new short[__xlx_weights_75__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_75__tmp_vec.size(); ++i) {
    __xlx_weights_75__input_buffer[i] = __xlx_weights_75__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_76__tmp_vec
  vector<sc_bv<16> >__xlx_weights_76__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_76)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_76)[j*2+1];
    __xlx_weights_76__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_76 = 128;
  int __xlx_offset_param_weights_76 = 0;
  int __xlx_offset_byte_param_weights_76 = 0*2;
  short* __xlx_weights_76__input_buffer= new short[__xlx_weights_76__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_76__tmp_vec.size(); ++i) {
    __xlx_weights_76__input_buffer[i] = __xlx_weights_76__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_77__tmp_vec
  vector<sc_bv<16> >__xlx_weights_77__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_77)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_77)[j*2+1];
    __xlx_weights_77__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_77 = 128;
  int __xlx_offset_param_weights_77 = 0;
  int __xlx_offset_byte_param_weights_77 = 0*2;
  short* __xlx_weights_77__input_buffer= new short[__xlx_weights_77__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_77__tmp_vec.size(); ++i) {
    __xlx_weights_77__input_buffer[i] = __xlx_weights_77__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_78__tmp_vec
  vector<sc_bv<16> >__xlx_weights_78__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_78)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_78)[j*2+1];
    __xlx_weights_78__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_78 = 128;
  int __xlx_offset_param_weights_78 = 0;
  int __xlx_offset_byte_param_weights_78 = 0*2;
  short* __xlx_weights_78__input_buffer= new short[__xlx_weights_78__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_78__tmp_vec.size(); ++i) {
    __xlx_weights_78__input_buffer[i] = __xlx_weights_78__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_79__tmp_vec
  vector<sc_bv<16> >__xlx_weights_79__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_79)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_79)[j*2+1];
    __xlx_weights_79__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_79 = 128;
  int __xlx_offset_param_weights_79 = 0;
  int __xlx_offset_byte_param_weights_79 = 0*2;
  short* __xlx_weights_79__input_buffer= new short[__xlx_weights_79__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_79__tmp_vec.size(); ++i) {
    __xlx_weights_79__input_buffer[i] = __xlx_weights_79__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_80__tmp_vec
  vector<sc_bv<16> >__xlx_weights_80__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_80)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_80)[j*2+1];
    __xlx_weights_80__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_80 = 128;
  int __xlx_offset_param_weights_80 = 0;
  int __xlx_offset_byte_param_weights_80 = 0*2;
  short* __xlx_weights_80__input_buffer= new short[__xlx_weights_80__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_80__tmp_vec.size(); ++i) {
    __xlx_weights_80__input_buffer[i] = __xlx_weights_80__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_81__tmp_vec
  vector<sc_bv<16> >__xlx_weights_81__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_81)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_81)[j*2+1];
    __xlx_weights_81__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_81 = 128;
  int __xlx_offset_param_weights_81 = 0;
  int __xlx_offset_byte_param_weights_81 = 0*2;
  short* __xlx_weights_81__input_buffer= new short[__xlx_weights_81__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_81__tmp_vec.size(); ++i) {
    __xlx_weights_81__input_buffer[i] = __xlx_weights_81__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_82__tmp_vec
  vector<sc_bv<16> >__xlx_weights_82__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_82)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_82)[j*2+1];
    __xlx_weights_82__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_82 = 128;
  int __xlx_offset_param_weights_82 = 0;
  int __xlx_offset_byte_param_weights_82 = 0*2;
  short* __xlx_weights_82__input_buffer= new short[__xlx_weights_82__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_82__tmp_vec.size(); ++i) {
    __xlx_weights_82__input_buffer[i] = __xlx_weights_82__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_83__tmp_vec
  vector<sc_bv<16> >__xlx_weights_83__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_83)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_83)[j*2+1];
    __xlx_weights_83__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_83 = 128;
  int __xlx_offset_param_weights_83 = 0;
  int __xlx_offset_byte_param_weights_83 = 0*2;
  short* __xlx_weights_83__input_buffer= new short[__xlx_weights_83__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_83__tmp_vec.size(); ++i) {
    __xlx_weights_83__input_buffer[i] = __xlx_weights_83__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_84__tmp_vec
  vector<sc_bv<16> >__xlx_weights_84__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_84)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_84)[j*2+1];
    __xlx_weights_84__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_84 = 128;
  int __xlx_offset_param_weights_84 = 0;
  int __xlx_offset_byte_param_weights_84 = 0*2;
  short* __xlx_weights_84__input_buffer= new short[__xlx_weights_84__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_84__tmp_vec.size(); ++i) {
    __xlx_weights_84__input_buffer[i] = __xlx_weights_84__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_85__tmp_vec
  vector<sc_bv<16> >__xlx_weights_85__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_85)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_85)[j*2+1];
    __xlx_weights_85__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_85 = 128;
  int __xlx_offset_param_weights_85 = 0;
  int __xlx_offset_byte_param_weights_85 = 0*2;
  short* __xlx_weights_85__input_buffer= new short[__xlx_weights_85__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_85__tmp_vec.size(); ++i) {
    __xlx_weights_85__input_buffer[i] = __xlx_weights_85__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_86__tmp_vec
  vector<sc_bv<16> >__xlx_weights_86__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_86)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_86)[j*2+1];
    __xlx_weights_86__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_86 = 128;
  int __xlx_offset_param_weights_86 = 0;
  int __xlx_offset_byte_param_weights_86 = 0*2;
  short* __xlx_weights_86__input_buffer= new short[__xlx_weights_86__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_86__tmp_vec.size(); ++i) {
    __xlx_weights_86__input_buffer[i] = __xlx_weights_86__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_87__tmp_vec
  vector<sc_bv<16> >__xlx_weights_87__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_87)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_87)[j*2+1];
    __xlx_weights_87__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_87 = 128;
  int __xlx_offset_param_weights_87 = 0;
  int __xlx_offset_byte_param_weights_87 = 0*2;
  short* __xlx_weights_87__input_buffer= new short[__xlx_weights_87__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_87__tmp_vec.size(); ++i) {
    __xlx_weights_87__input_buffer[i] = __xlx_weights_87__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_88__tmp_vec
  vector<sc_bv<16> >__xlx_weights_88__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_88)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_88)[j*2+1];
    __xlx_weights_88__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_88 = 128;
  int __xlx_offset_param_weights_88 = 0;
  int __xlx_offset_byte_param_weights_88 = 0*2;
  short* __xlx_weights_88__input_buffer= new short[__xlx_weights_88__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_88__tmp_vec.size(); ++i) {
    __xlx_weights_88__input_buffer[i] = __xlx_weights_88__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_89__tmp_vec
  vector<sc_bv<16> >__xlx_weights_89__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_89)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_89)[j*2+1];
    __xlx_weights_89__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_89 = 128;
  int __xlx_offset_param_weights_89 = 0;
  int __xlx_offset_byte_param_weights_89 = 0*2;
  short* __xlx_weights_89__input_buffer= new short[__xlx_weights_89__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_89__tmp_vec.size(); ++i) {
    __xlx_weights_89__input_buffer[i] = __xlx_weights_89__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_90__tmp_vec
  vector<sc_bv<16> >__xlx_weights_90__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_90)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_90)[j*2+1];
    __xlx_weights_90__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_90 = 128;
  int __xlx_offset_param_weights_90 = 0;
  int __xlx_offset_byte_param_weights_90 = 0*2;
  short* __xlx_weights_90__input_buffer= new short[__xlx_weights_90__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_90__tmp_vec.size(); ++i) {
    __xlx_weights_90__input_buffer[i] = __xlx_weights_90__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_91__tmp_vec
  vector<sc_bv<16> >__xlx_weights_91__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_91)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_91)[j*2+1];
    __xlx_weights_91__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_91 = 128;
  int __xlx_offset_param_weights_91 = 0;
  int __xlx_offset_byte_param_weights_91 = 0*2;
  short* __xlx_weights_91__input_buffer= new short[__xlx_weights_91__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_91__tmp_vec.size(); ++i) {
    __xlx_weights_91__input_buffer[i] = __xlx_weights_91__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_92__tmp_vec
  vector<sc_bv<16> >__xlx_weights_92__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_92)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_92)[j*2+1];
    __xlx_weights_92__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_92 = 128;
  int __xlx_offset_param_weights_92 = 0;
  int __xlx_offset_byte_param_weights_92 = 0*2;
  short* __xlx_weights_92__input_buffer= new short[__xlx_weights_92__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_92__tmp_vec.size(); ++i) {
    __xlx_weights_92__input_buffer[i] = __xlx_weights_92__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_93__tmp_vec
  vector<sc_bv<16> >__xlx_weights_93__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_93)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_93)[j*2+1];
    __xlx_weights_93__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_93 = 128;
  int __xlx_offset_param_weights_93 = 0;
  int __xlx_offset_byte_param_weights_93 = 0*2;
  short* __xlx_weights_93__input_buffer= new short[__xlx_weights_93__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_93__tmp_vec.size(); ++i) {
    __xlx_weights_93__input_buffer[i] = __xlx_weights_93__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_94__tmp_vec
  vector<sc_bv<16> >__xlx_weights_94__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_94)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_94)[j*2+1];
    __xlx_weights_94__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_94 = 128;
  int __xlx_offset_param_weights_94 = 0;
  int __xlx_offset_byte_param_weights_94 = 0*2;
  short* __xlx_weights_94__input_buffer= new short[__xlx_weights_94__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_94__tmp_vec.size(); ++i) {
    __xlx_weights_94__input_buffer[i] = __xlx_weights_94__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_95__tmp_vec
  vector<sc_bv<16> >__xlx_weights_95__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_95)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_95)[j*2+1];
    __xlx_weights_95__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_95 = 128;
  int __xlx_offset_param_weights_95 = 0;
  int __xlx_offset_byte_param_weights_95 = 0*2;
  short* __xlx_weights_95__input_buffer= new short[__xlx_weights_95__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_95__tmp_vec.size(); ++i) {
    __xlx_weights_95__input_buffer[i] = __xlx_weights_95__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_96__tmp_vec
  vector<sc_bv<16> >__xlx_weights_96__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_96)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_96)[j*2+1];
    __xlx_weights_96__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_96 = 128;
  int __xlx_offset_param_weights_96 = 0;
  int __xlx_offset_byte_param_weights_96 = 0*2;
  short* __xlx_weights_96__input_buffer= new short[__xlx_weights_96__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_96__tmp_vec.size(); ++i) {
    __xlx_weights_96__input_buffer[i] = __xlx_weights_96__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_97__tmp_vec
  vector<sc_bv<16> >__xlx_weights_97__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_97)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_97)[j*2+1];
    __xlx_weights_97__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_97 = 128;
  int __xlx_offset_param_weights_97 = 0;
  int __xlx_offset_byte_param_weights_97 = 0*2;
  short* __xlx_weights_97__input_buffer= new short[__xlx_weights_97__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_97__tmp_vec.size(); ++i) {
    __xlx_weights_97__input_buffer[i] = __xlx_weights_97__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_98__tmp_vec
  vector<sc_bv<16> >__xlx_weights_98__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_98)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_98)[j*2+1];
    __xlx_weights_98__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_98 = 128;
  int __xlx_offset_param_weights_98 = 0;
  int __xlx_offset_byte_param_weights_98 = 0*2;
  short* __xlx_weights_98__input_buffer= new short[__xlx_weights_98__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_98__tmp_vec.size(); ++i) {
    __xlx_weights_98__input_buffer[i] = __xlx_weights_98__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_99__tmp_vec
  vector<sc_bv<16> >__xlx_weights_99__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_99)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_99)[j*2+1];
    __xlx_weights_99__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_99 = 128;
  int __xlx_offset_param_weights_99 = 0;
  int __xlx_offset_byte_param_weights_99 = 0*2;
  short* __xlx_weights_99__input_buffer= new short[__xlx_weights_99__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_99__tmp_vec.size(); ++i) {
    __xlx_weights_99__input_buffer[i] = __xlx_weights_99__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_100__tmp_vec
  vector<sc_bv<16> >__xlx_weights_100__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_100)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_100)[j*2+1];
    __xlx_weights_100__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_100 = 128;
  int __xlx_offset_param_weights_100 = 0;
  int __xlx_offset_byte_param_weights_100 = 0*2;
  short* __xlx_weights_100__input_buffer= new short[__xlx_weights_100__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_100__tmp_vec.size(); ++i) {
    __xlx_weights_100__input_buffer[i] = __xlx_weights_100__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_101__tmp_vec
  vector<sc_bv<16> >__xlx_weights_101__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_101)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_101)[j*2+1];
    __xlx_weights_101__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_101 = 128;
  int __xlx_offset_param_weights_101 = 0;
  int __xlx_offset_byte_param_weights_101 = 0*2;
  short* __xlx_weights_101__input_buffer= new short[__xlx_weights_101__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_101__tmp_vec.size(); ++i) {
    __xlx_weights_101__input_buffer[i] = __xlx_weights_101__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_102__tmp_vec
  vector<sc_bv<16> >__xlx_weights_102__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_102)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_102)[j*2+1];
    __xlx_weights_102__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_102 = 128;
  int __xlx_offset_param_weights_102 = 0;
  int __xlx_offset_byte_param_weights_102 = 0*2;
  short* __xlx_weights_102__input_buffer= new short[__xlx_weights_102__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_102__tmp_vec.size(); ++i) {
    __xlx_weights_102__input_buffer[i] = __xlx_weights_102__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_103__tmp_vec
  vector<sc_bv<16> >__xlx_weights_103__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_103)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_103)[j*2+1];
    __xlx_weights_103__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_103 = 128;
  int __xlx_offset_param_weights_103 = 0;
  int __xlx_offset_byte_param_weights_103 = 0*2;
  short* __xlx_weights_103__input_buffer= new short[__xlx_weights_103__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_103__tmp_vec.size(); ++i) {
    __xlx_weights_103__input_buffer[i] = __xlx_weights_103__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_104__tmp_vec
  vector<sc_bv<16> >__xlx_weights_104__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_104)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_104)[j*2+1];
    __xlx_weights_104__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_104 = 128;
  int __xlx_offset_param_weights_104 = 0;
  int __xlx_offset_byte_param_weights_104 = 0*2;
  short* __xlx_weights_104__input_buffer= new short[__xlx_weights_104__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_104__tmp_vec.size(); ++i) {
    __xlx_weights_104__input_buffer[i] = __xlx_weights_104__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_105__tmp_vec
  vector<sc_bv<16> >__xlx_weights_105__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_105)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_105)[j*2+1];
    __xlx_weights_105__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_105 = 128;
  int __xlx_offset_param_weights_105 = 0;
  int __xlx_offset_byte_param_weights_105 = 0*2;
  short* __xlx_weights_105__input_buffer= new short[__xlx_weights_105__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_105__tmp_vec.size(); ++i) {
    __xlx_weights_105__input_buffer[i] = __xlx_weights_105__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_106__tmp_vec
  vector<sc_bv<16> >__xlx_weights_106__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_106)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_106)[j*2+1];
    __xlx_weights_106__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_106 = 128;
  int __xlx_offset_param_weights_106 = 0;
  int __xlx_offset_byte_param_weights_106 = 0*2;
  short* __xlx_weights_106__input_buffer= new short[__xlx_weights_106__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_106__tmp_vec.size(); ++i) {
    __xlx_weights_106__input_buffer[i] = __xlx_weights_106__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_107__tmp_vec
  vector<sc_bv<16> >__xlx_weights_107__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_107)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_107)[j*2+1];
    __xlx_weights_107__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_107 = 128;
  int __xlx_offset_param_weights_107 = 0;
  int __xlx_offset_byte_param_weights_107 = 0*2;
  short* __xlx_weights_107__input_buffer= new short[__xlx_weights_107__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_107__tmp_vec.size(); ++i) {
    __xlx_weights_107__input_buffer[i] = __xlx_weights_107__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_108__tmp_vec
  vector<sc_bv<16> >__xlx_weights_108__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_108)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_108)[j*2+1];
    __xlx_weights_108__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_108 = 128;
  int __xlx_offset_param_weights_108 = 0;
  int __xlx_offset_byte_param_weights_108 = 0*2;
  short* __xlx_weights_108__input_buffer= new short[__xlx_weights_108__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_108__tmp_vec.size(); ++i) {
    __xlx_weights_108__input_buffer[i] = __xlx_weights_108__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_109__tmp_vec
  vector<sc_bv<16> >__xlx_weights_109__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_109)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_109)[j*2+1];
    __xlx_weights_109__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_109 = 128;
  int __xlx_offset_param_weights_109 = 0;
  int __xlx_offset_byte_param_weights_109 = 0*2;
  short* __xlx_weights_109__input_buffer= new short[__xlx_weights_109__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_109__tmp_vec.size(); ++i) {
    __xlx_weights_109__input_buffer[i] = __xlx_weights_109__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_110__tmp_vec
  vector<sc_bv<16> >__xlx_weights_110__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_110)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_110)[j*2+1];
    __xlx_weights_110__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_110 = 128;
  int __xlx_offset_param_weights_110 = 0;
  int __xlx_offset_byte_param_weights_110 = 0*2;
  short* __xlx_weights_110__input_buffer= new short[__xlx_weights_110__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_110__tmp_vec.size(); ++i) {
    __xlx_weights_110__input_buffer[i] = __xlx_weights_110__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_111__tmp_vec
  vector<sc_bv<16> >__xlx_weights_111__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_111)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_111)[j*2+1];
    __xlx_weights_111__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_111 = 128;
  int __xlx_offset_param_weights_111 = 0;
  int __xlx_offset_byte_param_weights_111 = 0*2;
  short* __xlx_weights_111__input_buffer= new short[__xlx_weights_111__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_111__tmp_vec.size(); ++i) {
    __xlx_weights_111__input_buffer[i] = __xlx_weights_111__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_112__tmp_vec
  vector<sc_bv<16> >__xlx_weights_112__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_112)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_112)[j*2+1];
    __xlx_weights_112__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_112 = 128;
  int __xlx_offset_param_weights_112 = 0;
  int __xlx_offset_byte_param_weights_112 = 0*2;
  short* __xlx_weights_112__input_buffer= new short[__xlx_weights_112__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_112__tmp_vec.size(); ++i) {
    __xlx_weights_112__input_buffer[i] = __xlx_weights_112__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_113__tmp_vec
  vector<sc_bv<16> >__xlx_weights_113__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_113)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_113)[j*2+1];
    __xlx_weights_113__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_113 = 128;
  int __xlx_offset_param_weights_113 = 0;
  int __xlx_offset_byte_param_weights_113 = 0*2;
  short* __xlx_weights_113__input_buffer= new short[__xlx_weights_113__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_113__tmp_vec.size(); ++i) {
    __xlx_weights_113__input_buffer[i] = __xlx_weights_113__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_114__tmp_vec
  vector<sc_bv<16> >__xlx_weights_114__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_114)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_114)[j*2+1];
    __xlx_weights_114__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_114 = 128;
  int __xlx_offset_param_weights_114 = 0;
  int __xlx_offset_byte_param_weights_114 = 0*2;
  short* __xlx_weights_114__input_buffer= new short[__xlx_weights_114__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_114__tmp_vec.size(); ++i) {
    __xlx_weights_114__input_buffer[i] = __xlx_weights_114__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_115__tmp_vec
  vector<sc_bv<16> >__xlx_weights_115__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_115)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_115)[j*2+1];
    __xlx_weights_115__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_115 = 128;
  int __xlx_offset_param_weights_115 = 0;
  int __xlx_offset_byte_param_weights_115 = 0*2;
  short* __xlx_weights_115__input_buffer= new short[__xlx_weights_115__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_115__tmp_vec.size(); ++i) {
    __xlx_weights_115__input_buffer[i] = __xlx_weights_115__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_116__tmp_vec
  vector<sc_bv<16> >__xlx_weights_116__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_116)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_116)[j*2+1];
    __xlx_weights_116__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_116 = 128;
  int __xlx_offset_param_weights_116 = 0;
  int __xlx_offset_byte_param_weights_116 = 0*2;
  short* __xlx_weights_116__input_buffer= new short[__xlx_weights_116__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_116__tmp_vec.size(); ++i) {
    __xlx_weights_116__input_buffer[i] = __xlx_weights_116__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_117__tmp_vec
  vector<sc_bv<16> >__xlx_weights_117__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_117)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_117)[j*2+1];
    __xlx_weights_117__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_117 = 128;
  int __xlx_offset_param_weights_117 = 0;
  int __xlx_offset_byte_param_weights_117 = 0*2;
  short* __xlx_weights_117__input_buffer= new short[__xlx_weights_117__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_117__tmp_vec.size(); ++i) {
    __xlx_weights_117__input_buffer[i] = __xlx_weights_117__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_118__tmp_vec
  vector<sc_bv<16> >__xlx_weights_118__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_118)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_118)[j*2+1];
    __xlx_weights_118__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_118 = 128;
  int __xlx_offset_param_weights_118 = 0;
  int __xlx_offset_byte_param_weights_118 = 0*2;
  short* __xlx_weights_118__input_buffer= new short[__xlx_weights_118__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_118__tmp_vec.size(); ++i) {
    __xlx_weights_118__input_buffer[i] = __xlx_weights_118__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_119__tmp_vec
  vector<sc_bv<16> >__xlx_weights_119__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_119)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_119)[j*2+1];
    __xlx_weights_119__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_119 = 128;
  int __xlx_offset_param_weights_119 = 0;
  int __xlx_offset_byte_param_weights_119 = 0*2;
  short* __xlx_weights_119__input_buffer= new short[__xlx_weights_119__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_119__tmp_vec.size(); ++i) {
    __xlx_weights_119__input_buffer[i] = __xlx_weights_119__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_120__tmp_vec
  vector<sc_bv<16> >__xlx_weights_120__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_120)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_120)[j*2+1];
    __xlx_weights_120__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_120 = 128;
  int __xlx_offset_param_weights_120 = 0;
  int __xlx_offset_byte_param_weights_120 = 0*2;
  short* __xlx_weights_120__input_buffer= new short[__xlx_weights_120__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_120__tmp_vec.size(); ++i) {
    __xlx_weights_120__input_buffer[i] = __xlx_weights_120__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_121__tmp_vec
  vector<sc_bv<16> >__xlx_weights_121__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_121)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_121)[j*2+1];
    __xlx_weights_121__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_121 = 128;
  int __xlx_offset_param_weights_121 = 0;
  int __xlx_offset_byte_param_weights_121 = 0*2;
  short* __xlx_weights_121__input_buffer= new short[__xlx_weights_121__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_121__tmp_vec.size(); ++i) {
    __xlx_weights_121__input_buffer[i] = __xlx_weights_121__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_122__tmp_vec
  vector<sc_bv<16> >__xlx_weights_122__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_122)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_122)[j*2+1];
    __xlx_weights_122__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_122 = 128;
  int __xlx_offset_param_weights_122 = 0;
  int __xlx_offset_byte_param_weights_122 = 0*2;
  short* __xlx_weights_122__input_buffer= new short[__xlx_weights_122__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_122__tmp_vec.size(); ++i) {
    __xlx_weights_122__input_buffer[i] = __xlx_weights_122__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_123__tmp_vec
  vector<sc_bv<16> >__xlx_weights_123__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_123)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_123)[j*2+1];
    __xlx_weights_123__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_123 = 128;
  int __xlx_offset_param_weights_123 = 0;
  int __xlx_offset_byte_param_weights_123 = 0*2;
  short* __xlx_weights_123__input_buffer= new short[__xlx_weights_123__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_123__tmp_vec.size(); ++i) {
    __xlx_weights_123__input_buffer[i] = __xlx_weights_123__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_124__tmp_vec
  vector<sc_bv<16> >__xlx_weights_124__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_124)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_124)[j*2+1];
    __xlx_weights_124__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_124 = 128;
  int __xlx_offset_param_weights_124 = 0;
  int __xlx_offset_byte_param_weights_124 = 0*2;
  short* __xlx_weights_124__input_buffer= new short[__xlx_weights_124__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_124__tmp_vec.size(); ++i) {
    __xlx_weights_124__input_buffer[i] = __xlx_weights_124__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_125__tmp_vec
  vector<sc_bv<16> >__xlx_weights_125__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_125)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_125)[j*2+1];
    __xlx_weights_125__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_125 = 128;
  int __xlx_offset_param_weights_125 = 0;
  int __xlx_offset_byte_param_weights_125 = 0*2;
  short* __xlx_weights_125__input_buffer= new short[__xlx_weights_125__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_125__tmp_vec.size(); ++i) {
    __xlx_weights_125__input_buffer[i] = __xlx_weights_125__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_126__tmp_vec
  vector<sc_bv<16> >__xlx_weights_126__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_126)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_126)[j*2+1];
    __xlx_weights_126__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_126 = 128;
  int __xlx_offset_param_weights_126 = 0;
  int __xlx_offset_byte_param_weights_126 = 0*2;
  short* __xlx_weights_126__input_buffer= new short[__xlx_weights_126__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_126__tmp_vec.size(); ++i) {
    __xlx_weights_126__input_buffer[i] = __xlx_weights_126__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_weights_127__tmp_vec
  vector<sc_bv<16> >__xlx_weights_127__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_weights_127)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_weights_127)[j*2+1];
    __xlx_weights_127__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_weights_127 = 128;
  int __xlx_offset_param_weights_127 = 0;
  int __xlx_offset_byte_param_weights_127 = 0*2;
  short* __xlx_weights_127__input_buffer= new short[__xlx_weights_127__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_127__tmp_vec.size(); ++i) {
    __xlx_weights_127__input_buffer[i] = __xlx_weights_127__tmp_vec[i].range(15, 0).to_uint64();
  }
  // DUT call
  nnlayer(__xlx_apatb_param_input_0, __xlx_apatb_param_input_1, __xlx_apatb_param_input_2, __xlx_apatb_param_input_3, __xlx_apatb_param_input_4, __xlx_apatb_param_input_5, __xlx_apatb_param_input_6, __xlx_apatb_param_input_7, __xlx_apatb_param_input_8, __xlx_apatb_param_input_9, __xlx_apatb_param_input_10, __xlx_apatb_param_input_11, __xlx_apatb_param_input_12, __xlx_apatb_param_input_13, __xlx_apatb_param_input_14, __xlx_apatb_param_input_15, __xlx_apatb_param_input_16, __xlx_apatb_param_input_17, __xlx_apatb_param_input_18, __xlx_apatb_param_input_19, __xlx_apatb_param_input_20, __xlx_apatb_param_input_21, __xlx_apatb_param_input_22, __xlx_apatb_param_input_23, __xlx_apatb_param_input_24, __xlx_apatb_param_input_25, __xlx_apatb_param_input_26, __xlx_apatb_param_input_27, __xlx_apatb_param_input_28, __xlx_apatb_param_input_29, __xlx_apatb_param_input_30, __xlx_apatb_param_input_31, __xlx_apatb_param_input_32, __xlx_apatb_param_input_33, __xlx_apatb_param_input_34, __xlx_apatb_param_input_35, __xlx_apatb_param_input_36, __xlx_apatb_param_input_37, __xlx_apatb_param_input_38, __xlx_apatb_param_input_39, __xlx_apatb_param_input_40, __xlx_apatb_param_input_41, __xlx_apatb_param_input_42, __xlx_apatb_param_input_43, __xlx_apatb_param_input_44, __xlx_apatb_param_input_45, __xlx_apatb_param_input_46, __xlx_apatb_param_input_47, __xlx_apatb_param_input_48, __xlx_apatb_param_input_49, __xlx_apatb_param_input_50, __xlx_apatb_param_input_51, __xlx_apatb_param_input_52, __xlx_apatb_param_input_53, __xlx_apatb_param_input_54, __xlx_apatb_param_input_55, __xlx_apatb_param_input_56, __xlx_apatb_param_input_57, __xlx_apatb_param_input_58, __xlx_apatb_param_input_59, __xlx_apatb_param_input_60, __xlx_apatb_param_input_61, __xlx_apatb_param_input_62, __xlx_apatb_param_input_63, __xlx_apatb_param_input_64, __xlx_apatb_param_input_65, __xlx_apatb_param_input_66, __xlx_apatb_param_input_67, __xlx_apatb_param_input_68, __xlx_apatb_param_input_69, __xlx_apatb_param_input_70, __xlx_apatb_param_input_71, __xlx_apatb_param_input_72, __xlx_apatb_param_input_73, __xlx_apatb_param_input_74, __xlx_apatb_param_input_75, __xlx_apatb_param_input_76, __xlx_apatb_param_input_77, __xlx_apatb_param_input_78, __xlx_apatb_param_input_79, __xlx_apatb_param_input_80, __xlx_apatb_param_input_81, __xlx_apatb_param_input_82, __xlx_apatb_param_input_83, __xlx_apatb_param_input_84, __xlx_apatb_param_input_85, __xlx_apatb_param_input_86, __xlx_apatb_param_input_87, __xlx_apatb_param_input_88, __xlx_apatb_param_input_89, __xlx_apatb_param_input_90, __xlx_apatb_param_input_91, __xlx_apatb_param_input_92, __xlx_apatb_param_input_93, __xlx_apatb_param_input_94, __xlx_apatb_param_input_95, __xlx_apatb_param_input_96, __xlx_apatb_param_input_97, __xlx_apatb_param_input_98, __xlx_apatb_param_input_99, __xlx_apatb_param_input_100, __xlx_apatb_param_input_101, __xlx_apatb_param_input_102, __xlx_apatb_param_input_103, __xlx_apatb_param_input_104, __xlx_apatb_param_input_105, __xlx_apatb_param_input_106, __xlx_apatb_param_input_107, __xlx_apatb_param_input_108, __xlx_apatb_param_input_109, __xlx_apatb_param_input_110, __xlx_apatb_param_input_111, __xlx_apatb_param_input_112, __xlx_apatb_param_input_113, __xlx_apatb_param_input_114, __xlx_apatb_param_input_115, __xlx_apatb_param_input_116, __xlx_apatb_param_input_117, __xlx_apatb_param_input_118, __xlx_apatb_param_input_119, __xlx_apatb_param_input_120, __xlx_apatb_param_input_121, __xlx_apatb_param_input_122, __xlx_apatb_param_input_123, __xlx_apatb_param_input_124, __xlx_apatb_param_input_125, __xlx_apatb_param_input_126, __xlx_apatb_param_input_127, __xlx_apatb_param_output_0, __xlx_apatb_param_output_1, __xlx_apatb_param_output_2, __xlx_apatb_param_output_3, __xlx_apatb_param_output_4, __xlx_apatb_param_output_5, __xlx_apatb_param_output_6, __xlx_apatb_param_output_7, __xlx_apatb_param_output_8, __xlx_apatb_param_output_9, __xlx_apatb_param_output_10, __xlx_apatb_param_output_11, __xlx_apatb_param_output_12, __xlx_apatb_param_output_13, __xlx_apatb_param_output_14, __xlx_apatb_param_output_15, __xlx_apatb_param_output_16, __xlx_apatb_param_output_17, __xlx_apatb_param_output_18, __xlx_apatb_param_output_19, __xlx_apatb_param_output_20, __xlx_apatb_param_output_21, __xlx_apatb_param_output_22, __xlx_apatb_param_output_23, __xlx_apatb_param_output_24, __xlx_apatb_param_output_25, __xlx_apatb_param_output_26, __xlx_apatb_param_output_27, __xlx_apatb_param_output_28, __xlx_apatb_param_output_29, __xlx_apatb_param_output_30, __xlx_apatb_param_output_31, __xlx_apatb_param_output_32, __xlx_apatb_param_output_33, __xlx_apatb_param_output_34, __xlx_apatb_param_output_35, __xlx_apatb_param_output_36, __xlx_apatb_param_output_37, __xlx_apatb_param_output_38, __xlx_apatb_param_output_39, __xlx_apatb_param_output_40, __xlx_apatb_param_output_41, __xlx_apatb_param_output_42, __xlx_apatb_param_output_43, __xlx_apatb_param_output_44, __xlx_apatb_param_output_45, __xlx_apatb_param_output_46, __xlx_apatb_param_output_47, __xlx_apatb_param_output_48, __xlx_apatb_param_output_49, __xlx_apatb_param_output_50, __xlx_apatb_param_output_51, __xlx_apatb_param_output_52, __xlx_apatb_param_output_53, __xlx_apatb_param_output_54, __xlx_apatb_param_output_55, __xlx_apatb_param_output_56, __xlx_apatb_param_output_57, __xlx_apatb_param_output_58, __xlx_apatb_param_output_59, __xlx_apatb_param_output_60, __xlx_apatb_param_output_61, __xlx_apatb_param_output_62, __xlx_apatb_param_output_63, __xlx_apatb_param_output_64, __xlx_apatb_param_output_65, __xlx_apatb_param_output_66, __xlx_apatb_param_output_67, __xlx_apatb_param_output_68, __xlx_apatb_param_output_69, __xlx_apatb_param_output_70, __xlx_apatb_param_output_71, __xlx_apatb_param_output_72, __xlx_apatb_param_output_73, __xlx_apatb_param_output_74, __xlx_apatb_param_output_75, __xlx_apatb_param_output_76, __xlx_apatb_param_output_77, __xlx_apatb_param_output_78, __xlx_apatb_param_output_79, __xlx_apatb_param_output_80, __xlx_apatb_param_output_81, __xlx_apatb_param_output_82, __xlx_apatb_param_output_83, __xlx_apatb_param_output_84, __xlx_apatb_param_output_85, __xlx_apatb_param_output_86, __xlx_apatb_param_output_87, __xlx_apatb_param_output_88, __xlx_apatb_param_output_89, __xlx_apatb_param_output_90, __xlx_apatb_param_output_91, __xlx_apatb_param_output_92, __xlx_apatb_param_output_93, __xlx_apatb_param_output_94, __xlx_apatb_param_output_95, __xlx_apatb_param_output_96, __xlx_apatb_param_output_97, __xlx_apatb_param_output_98, __xlx_apatb_param_output_99, __xlx_apatb_param_output_100, __xlx_apatb_param_output_101, __xlx_apatb_param_output_102, __xlx_apatb_param_output_103, __xlx_apatb_param_output_104, __xlx_apatb_param_output_105, __xlx_apatb_param_output_106, __xlx_apatb_param_output_107, __xlx_apatb_param_output_108, __xlx_apatb_param_output_109, __xlx_apatb_param_output_110, __xlx_apatb_param_output_111, __xlx_apatb_param_output_112, __xlx_apatb_param_output_113, __xlx_apatb_param_output_114, __xlx_apatb_param_output_115, __xlx_apatb_param_output_116, __xlx_apatb_param_output_117, __xlx_apatb_param_output_118, __xlx_apatb_param_output_119, __xlx_apatb_param_output_120, __xlx_apatb_param_output_121, __xlx_apatb_param_output_122, __xlx_apatb_param_output_123, __xlx_apatb_param_output_124, __xlx_apatb_param_output_125, __xlx_apatb_param_output_126, __xlx_apatb_param_output_127, __xlx_bias__input_buffer, __xlx_weights_0__input_buffer, __xlx_weights_1__input_buffer, __xlx_weights_2__input_buffer, __xlx_weights_3__input_buffer, __xlx_weights_4__input_buffer, __xlx_weights_5__input_buffer, __xlx_weights_6__input_buffer, __xlx_weights_7__input_buffer, __xlx_weights_8__input_buffer, __xlx_weights_9__input_buffer, __xlx_weights_10__input_buffer, __xlx_weights_11__input_buffer, __xlx_weights_12__input_buffer, __xlx_weights_13__input_buffer, __xlx_weights_14__input_buffer, __xlx_weights_15__input_buffer, __xlx_weights_16__input_buffer, __xlx_weights_17__input_buffer, __xlx_weights_18__input_buffer, __xlx_weights_19__input_buffer, __xlx_weights_20__input_buffer, __xlx_weights_21__input_buffer, __xlx_weights_22__input_buffer, __xlx_weights_23__input_buffer, __xlx_weights_24__input_buffer, __xlx_weights_25__input_buffer, __xlx_weights_26__input_buffer, __xlx_weights_27__input_buffer, __xlx_weights_28__input_buffer, __xlx_weights_29__input_buffer, __xlx_weights_30__input_buffer, __xlx_weights_31__input_buffer, __xlx_weights_32__input_buffer, __xlx_weights_33__input_buffer, __xlx_weights_34__input_buffer, __xlx_weights_35__input_buffer, __xlx_weights_36__input_buffer, __xlx_weights_37__input_buffer, __xlx_weights_38__input_buffer, __xlx_weights_39__input_buffer, __xlx_weights_40__input_buffer, __xlx_weights_41__input_buffer, __xlx_weights_42__input_buffer, __xlx_weights_43__input_buffer, __xlx_weights_44__input_buffer, __xlx_weights_45__input_buffer, __xlx_weights_46__input_buffer, __xlx_weights_47__input_buffer, __xlx_weights_48__input_buffer, __xlx_weights_49__input_buffer, __xlx_weights_50__input_buffer, __xlx_weights_51__input_buffer, __xlx_weights_52__input_buffer, __xlx_weights_53__input_buffer, __xlx_weights_54__input_buffer, __xlx_weights_55__input_buffer, __xlx_weights_56__input_buffer, __xlx_weights_57__input_buffer, __xlx_weights_58__input_buffer, __xlx_weights_59__input_buffer, __xlx_weights_60__input_buffer, __xlx_weights_61__input_buffer, __xlx_weights_62__input_buffer, __xlx_weights_63__input_buffer, __xlx_weights_64__input_buffer, __xlx_weights_65__input_buffer, __xlx_weights_66__input_buffer, __xlx_weights_67__input_buffer, __xlx_weights_68__input_buffer, __xlx_weights_69__input_buffer, __xlx_weights_70__input_buffer, __xlx_weights_71__input_buffer, __xlx_weights_72__input_buffer, __xlx_weights_73__input_buffer, __xlx_weights_74__input_buffer, __xlx_weights_75__input_buffer, __xlx_weights_76__input_buffer, __xlx_weights_77__input_buffer, __xlx_weights_78__input_buffer, __xlx_weights_79__input_buffer, __xlx_weights_80__input_buffer, __xlx_weights_81__input_buffer, __xlx_weights_82__input_buffer, __xlx_weights_83__input_buffer, __xlx_weights_84__input_buffer, __xlx_weights_85__input_buffer, __xlx_weights_86__input_buffer, __xlx_weights_87__input_buffer, __xlx_weights_88__input_buffer, __xlx_weights_89__input_buffer, __xlx_weights_90__input_buffer, __xlx_weights_91__input_buffer, __xlx_weights_92__input_buffer, __xlx_weights_93__input_buffer, __xlx_weights_94__input_buffer, __xlx_weights_95__input_buffer, __xlx_weights_96__input_buffer, __xlx_weights_97__input_buffer, __xlx_weights_98__input_buffer, __xlx_weights_99__input_buffer, __xlx_weights_100__input_buffer, __xlx_weights_101__input_buffer, __xlx_weights_102__input_buffer, __xlx_weights_103__input_buffer, __xlx_weights_104__input_buffer, __xlx_weights_105__input_buffer, __xlx_weights_106__input_buffer, __xlx_weights_107__input_buffer, __xlx_weights_108__input_buffer, __xlx_weights_109__input_buffer, __xlx_weights_110__input_buffer, __xlx_weights_111__input_buffer, __xlx_weights_112__input_buffer, __xlx_weights_113__input_buffer, __xlx_weights_114__input_buffer, __xlx_weights_115__input_buffer, __xlx_weights_116__input_buffer, __xlx_weights_117__input_buffer, __xlx_weights_118__input_buffer, __xlx_weights_119__input_buffer, __xlx_weights_120__input_buffer, __xlx_weights_121__input_buffer, __xlx_weights_122__input_buffer, __xlx_weights_123__input_buffer, __xlx_weights_124__input_buffer, __xlx_weights_125__input_buffer, __xlx_weights_126__input_buffer, __xlx_weights_127__input_buffer, __xlx_apatb_param_numOfOutputNeurons, __xlx_apatb_param_activation);
// print __xlx_apatb_param_bias
  sc_bv<16>*__xlx_bias_output_buffer = new sc_bv<16>[__xlx_size_param_bias];
  for (int i = 0; i < __xlx_size_param_bias; ++i) {
    __xlx_bias_output_buffer[i] = __xlx_bias__input_buffer[i+__xlx_offset_param_bias];
  }
  for (int i = 0; i < __xlx_size_param_bias; ++i) {
    ((char*)__xlx_apatb_param_bias)[i*2+0] = __xlx_bias_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_bias)[i*2+1] = __xlx_bias_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_0
  sc_bv<16>*__xlx_weights_0_output_buffer = new sc_bv<16>[__xlx_size_param_weights_0];
  for (int i = 0; i < __xlx_size_param_weights_0; ++i) {
    __xlx_weights_0_output_buffer[i] = __xlx_weights_0__input_buffer[i+__xlx_offset_param_weights_0];
  }
  for (int i = 0; i < __xlx_size_param_weights_0; ++i) {
    ((char*)__xlx_apatb_param_weights_0)[i*2+0] = __xlx_weights_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_0)[i*2+1] = __xlx_weights_0_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_1
  sc_bv<16>*__xlx_weights_1_output_buffer = new sc_bv<16>[__xlx_size_param_weights_1];
  for (int i = 0; i < __xlx_size_param_weights_1; ++i) {
    __xlx_weights_1_output_buffer[i] = __xlx_weights_1__input_buffer[i+__xlx_offset_param_weights_1];
  }
  for (int i = 0; i < __xlx_size_param_weights_1; ++i) {
    ((char*)__xlx_apatb_param_weights_1)[i*2+0] = __xlx_weights_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_1)[i*2+1] = __xlx_weights_1_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_2
  sc_bv<16>*__xlx_weights_2_output_buffer = new sc_bv<16>[__xlx_size_param_weights_2];
  for (int i = 0; i < __xlx_size_param_weights_2; ++i) {
    __xlx_weights_2_output_buffer[i] = __xlx_weights_2__input_buffer[i+__xlx_offset_param_weights_2];
  }
  for (int i = 0; i < __xlx_size_param_weights_2; ++i) {
    ((char*)__xlx_apatb_param_weights_2)[i*2+0] = __xlx_weights_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_2)[i*2+1] = __xlx_weights_2_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_3
  sc_bv<16>*__xlx_weights_3_output_buffer = new sc_bv<16>[__xlx_size_param_weights_3];
  for (int i = 0; i < __xlx_size_param_weights_3; ++i) {
    __xlx_weights_3_output_buffer[i] = __xlx_weights_3__input_buffer[i+__xlx_offset_param_weights_3];
  }
  for (int i = 0; i < __xlx_size_param_weights_3; ++i) {
    ((char*)__xlx_apatb_param_weights_3)[i*2+0] = __xlx_weights_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_3)[i*2+1] = __xlx_weights_3_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_4
  sc_bv<16>*__xlx_weights_4_output_buffer = new sc_bv<16>[__xlx_size_param_weights_4];
  for (int i = 0; i < __xlx_size_param_weights_4; ++i) {
    __xlx_weights_4_output_buffer[i] = __xlx_weights_4__input_buffer[i+__xlx_offset_param_weights_4];
  }
  for (int i = 0; i < __xlx_size_param_weights_4; ++i) {
    ((char*)__xlx_apatb_param_weights_4)[i*2+0] = __xlx_weights_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_4)[i*2+1] = __xlx_weights_4_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_5
  sc_bv<16>*__xlx_weights_5_output_buffer = new sc_bv<16>[__xlx_size_param_weights_5];
  for (int i = 0; i < __xlx_size_param_weights_5; ++i) {
    __xlx_weights_5_output_buffer[i] = __xlx_weights_5__input_buffer[i+__xlx_offset_param_weights_5];
  }
  for (int i = 0; i < __xlx_size_param_weights_5; ++i) {
    ((char*)__xlx_apatb_param_weights_5)[i*2+0] = __xlx_weights_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_5)[i*2+1] = __xlx_weights_5_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_6
  sc_bv<16>*__xlx_weights_6_output_buffer = new sc_bv<16>[__xlx_size_param_weights_6];
  for (int i = 0; i < __xlx_size_param_weights_6; ++i) {
    __xlx_weights_6_output_buffer[i] = __xlx_weights_6__input_buffer[i+__xlx_offset_param_weights_6];
  }
  for (int i = 0; i < __xlx_size_param_weights_6; ++i) {
    ((char*)__xlx_apatb_param_weights_6)[i*2+0] = __xlx_weights_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_6)[i*2+1] = __xlx_weights_6_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_7
  sc_bv<16>*__xlx_weights_7_output_buffer = new sc_bv<16>[__xlx_size_param_weights_7];
  for (int i = 0; i < __xlx_size_param_weights_7; ++i) {
    __xlx_weights_7_output_buffer[i] = __xlx_weights_7__input_buffer[i+__xlx_offset_param_weights_7];
  }
  for (int i = 0; i < __xlx_size_param_weights_7; ++i) {
    ((char*)__xlx_apatb_param_weights_7)[i*2+0] = __xlx_weights_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_7)[i*2+1] = __xlx_weights_7_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_8
  sc_bv<16>*__xlx_weights_8_output_buffer = new sc_bv<16>[__xlx_size_param_weights_8];
  for (int i = 0; i < __xlx_size_param_weights_8; ++i) {
    __xlx_weights_8_output_buffer[i] = __xlx_weights_8__input_buffer[i+__xlx_offset_param_weights_8];
  }
  for (int i = 0; i < __xlx_size_param_weights_8; ++i) {
    ((char*)__xlx_apatb_param_weights_8)[i*2+0] = __xlx_weights_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_8)[i*2+1] = __xlx_weights_8_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_9
  sc_bv<16>*__xlx_weights_9_output_buffer = new sc_bv<16>[__xlx_size_param_weights_9];
  for (int i = 0; i < __xlx_size_param_weights_9; ++i) {
    __xlx_weights_9_output_buffer[i] = __xlx_weights_9__input_buffer[i+__xlx_offset_param_weights_9];
  }
  for (int i = 0; i < __xlx_size_param_weights_9; ++i) {
    ((char*)__xlx_apatb_param_weights_9)[i*2+0] = __xlx_weights_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_9)[i*2+1] = __xlx_weights_9_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_10
  sc_bv<16>*__xlx_weights_10_output_buffer = new sc_bv<16>[__xlx_size_param_weights_10];
  for (int i = 0; i < __xlx_size_param_weights_10; ++i) {
    __xlx_weights_10_output_buffer[i] = __xlx_weights_10__input_buffer[i+__xlx_offset_param_weights_10];
  }
  for (int i = 0; i < __xlx_size_param_weights_10; ++i) {
    ((char*)__xlx_apatb_param_weights_10)[i*2+0] = __xlx_weights_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_10)[i*2+1] = __xlx_weights_10_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_11
  sc_bv<16>*__xlx_weights_11_output_buffer = new sc_bv<16>[__xlx_size_param_weights_11];
  for (int i = 0; i < __xlx_size_param_weights_11; ++i) {
    __xlx_weights_11_output_buffer[i] = __xlx_weights_11__input_buffer[i+__xlx_offset_param_weights_11];
  }
  for (int i = 0; i < __xlx_size_param_weights_11; ++i) {
    ((char*)__xlx_apatb_param_weights_11)[i*2+0] = __xlx_weights_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_11)[i*2+1] = __xlx_weights_11_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_12
  sc_bv<16>*__xlx_weights_12_output_buffer = new sc_bv<16>[__xlx_size_param_weights_12];
  for (int i = 0; i < __xlx_size_param_weights_12; ++i) {
    __xlx_weights_12_output_buffer[i] = __xlx_weights_12__input_buffer[i+__xlx_offset_param_weights_12];
  }
  for (int i = 0; i < __xlx_size_param_weights_12; ++i) {
    ((char*)__xlx_apatb_param_weights_12)[i*2+0] = __xlx_weights_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_12)[i*2+1] = __xlx_weights_12_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_13
  sc_bv<16>*__xlx_weights_13_output_buffer = new sc_bv<16>[__xlx_size_param_weights_13];
  for (int i = 0; i < __xlx_size_param_weights_13; ++i) {
    __xlx_weights_13_output_buffer[i] = __xlx_weights_13__input_buffer[i+__xlx_offset_param_weights_13];
  }
  for (int i = 0; i < __xlx_size_param_weights_13; ++i) {
    ((char*)__xlx_apatb_param_weights_13)[i*2+0] = __xlx_weights_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_13)[i*2+1] = __xlx_weights_13_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_14
  sc_bv<16>*__xlx_weights_14_output_buffer = new sc_bv<16>[__xlx_size_param_weights_14];
  for (int i = 0; i < __xlx_size_param_weights_14; ++i) {
    __xlx_weights_14_output_buffer[i] = __xlx_weights_14__input_buffer[i+__xlx_offset_param_weights_14];
  }
  for (int i = 0; i < __xlx_size_param_weights_14; ++i) {
    ((char*)__xlx_apatb_param_weights_14)[i*2+0] = __xlx_weights_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_14)[i*2+1] = __xlx_weights_14_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_15
  sc_bv<16>*__xlx_weights_15_output_buffer = new sc_bv<16>[__xlx_size_param_weights_15];
  for (int i = 0; i < __xlx_size_param_weights_15; ++i) {
    __xlx_weights_15_output_buffer[i] = __xlx_weights_15__input_buffer[i+__xlx_offset_param_weights_15];
  }
  for (int i = 0; i < __xlx_size_param_weights_15; ++i) {
    ((char*)__xlx_apatb_param_weights_15)[i*2+0] = __xlx_weights_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_15)[i*2+1] = __xlx_weights_15_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_16
  sc_bv<16>*__xlx_weights_16_output_buffer = new sc_bv<16>[__xlx_size_param_weights_16];
  for (int i = 0; i < __xlx_size_param_weights_16; ++i) {
    __xlx_weights_16_output_buffer[i] = __xlx_weights_16__input_buffer[i+__xlx_offset_param_weights_16];
  }
  for (int i = 0; i < __xlx_size_param_weights_16; ++i) {
    ((char*)__xlx_apatb_param_weights_16)[i*2+0] = __xlx_weights_16_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_16)[i*2+1] = __xlx_weights_16_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_17
  sc_bv<16>*__xlx_weights_17_output_buffer = new sc_bv<16>[__xlx_size_param_weights_17];
  for (int i = 0; i < __xlx_size_param_weights_17; ++i) {
    __xlx_weights_17_output_buffer[i] = __xlx_weights_17__input_buffer[i+__xlx_offset_param_weights_17];
  }
  for (int i = 0; i < __xlx_size_param_weights_17; ++i) {
    ((char*)__xlx_apatb_param_weights_17)[i*2+0] = __xlx_weights_17_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_17)[i*2+1] = __xlx_weights_17_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_18
  sc_bv<16>*__xlx_weights_18_output_buffer = new sc_bv<16>[__xlx_size_param_weights_18];
  for (int i = 0; i < __xlx_size_param_weights_18; ++i) {
    __xlx_weights_18_output_buffer[i] = __xlx_weights_18__input_buffer[i+__xlx_offset_param_weights_18];
  }
  for (int i = 0; i < __xlx_size_param_weights_18; ++i) {
    ((char*)__xlx_apatb_param_weights_18)[i*2+0] = __xlx_weights_18_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_18)[i*2+1] = __xlx_weights_18_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_19
  sc_bv<16>*__xlx_weights_19_output_buffer = new sc_bv<16>[__xlx_size_param_weights_19];
  for (int i = 0; i < __xlx_size_param_weights_19; ++i) {
    __xlx_weights_19_output_buffer[i] = __xlx_weights_19__input_buffer[i+__xlx_offset_param_weights_19];
  }
  for (int i = 0; i < __xlx_size_param_weights_19; ++i) {
    ((char*)__xlx_apatb_param_weights_19)[i*2+0] = __xlx_weights_19_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_19)[i*2+1] = __xlx_weights_19_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_20
  sc_bv<16>*__xlx_weights_20_output_buffer = new sc_bv<16>[__xlx_size_param_weights_20];
  for (int i = 0; i < __xlx_size_param_weights_20; ++i) {
    __xlx_weights_20_output_buffer[i] = __xlx_weights_20__input_buffer[i+__xlx_offset_param_weights_20];
  }
  for (int i = 0; i < __xlx_size_param_weights_20; ++i) {
    ((char*)__xlx_apatb_param_weights_20)[i*2+0] = __xlx_weights_20_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_20)[i*2+1] = __xlx_weights_20_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_21
  sc_bv<16>*__xlx_weights_21_output_buffer = new sc_bv<16>[__xlx_size_param_weights_21];
  for (int i = 0; i < __xlx_size_param_weights_21; ++i) {
    __xlx_weights_21_output_buffer[i] = __xlx_weights_21__input_buffer[i+__xlx_offset_param_weights_21];
  }
  for (int i = 0; i < __xlx_size_param_weights_21; ++i) {
    ((char*)__xlx_apatb_param_weights_21)[i*2+0] = __xlx_weights_21_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_21)[i*2+1] = __xlx_weights_21_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_22
  sc_bv<16>*__xlx_weights_22_output_buffer = new sc_bv<16>[__xlx_size_param_weights_22];
  for (int i = 0; i < __xlx_size_param_weights_22; ++i) {
    __xlx_weights_22_output_buffer[i] = __xlx_weights_22__input_buffer[i+__xlx_offset_param_weights_22];
  }
  for (int i = 0; i < __xlx_size_param_weights_22; ++i) {
    ((char*)__xlx_apatb_param_weights_22)[i*2+0] = __xlx_weights_22_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_22)[i*2+1] = __xlx_weights_22_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_23
  sc_bv<16>*__xlx_weights_23_output_buffer = new sc_bv<16>[__xlx_size_param_weights_23];
  for (int i = 0; i < __xlx_size_param_weights_23; ++i) {
    __xlx_weights_23_output_buffer[i] = __xlx_weights_23__input_buffer[i+__xlx_offset_param_weights_23];
  }
  for (int i = 0; i < __xlx_size_param_weights_23; ++i) {
    ((char*)__xlx_apatb_param_weights_23)[i*2+0] = __xlx_weights_23_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_23)[i*2+1] = __xlx_weights_23_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_24
  sc_bv<16>*__xlx_weights_24_output_buffer = new sc_bv<16>[__xlx_size_param_weights_24];
  for (int i = 0; i < __xlx_size_param_weights_24; ++i) {
    __xlx_weights_24_output_buffer[i] = __xlx_weights_24__input_buffer[i+__xlx_offset_param_weights_24];
  }
  for (int i = 0; i < __xlx_size_param_weights_24; ++i) {
    ((char*)__xlx_apatb_param_weights_24)[i*2+0] = __xlx_weights_24_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_24)[i*2+1] = __xlx_weights_24_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_25
  sc_bv<16>*__xlx_weights_25_output_buffer = new sc_bv<16>[__xlx_size_param_weights_25];
  for (int i = 0; i < __xlx_size_param_weights_25; ++i) {
    __xlx_weights_25_output_buffer[i] = __xlx_weights_25__input_buffer[i+__xlx_offset_param_weights_25];
  }
  for (int i = 0; i < __xlx_size_param_weights_25; ++i) {
    ((char*)__xlx_apatb_param_weights_25)[i*2+0] = __xlx_weights_25_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_25)[i*2+1] = __xlx_weights_25_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_26
  sc_bv<16>*__xlx_weights_26_output_buffer = new sc_bv<16>[__xlx_size_param_weights_26];
  for (int i = 0; i < __xlx_size_param_weights_26; ++i) {
    __xlx_weights_26_output_buffer[i] = __xlx_weights_26__input_buffer[i+__xlx_offset_param_weights_26];
  }
  for (int i = 0; i < __xlx_size_param_weights_26; ++i) {
    ((char*)__xlx_apatb_param_weights_26)[i*2+0] = __xlx_weights_26_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_26)[i*2+1] = __xlx_weights_26_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_27
  sc_bv<16>*__xlx_weights_27_output_buffer = new sc_bv<16>[__xlx_size_param_weights_27];
  for (int i = 0; i < __xlx_size_param_weights_27; ++i) {
    __xlx_weights_27_output_buffer[i] = __xlx_weights_27__input_buffer[i+__xlx_offset_param_weights_27];
  }
  for (int i = 0; i < __xlx_size_param_weights_27; ++i) {
    ((char*)__xlx_apatb_param_weights_27)[i*2+0] = __xlx_weights_27_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_27)[i*2+1] = __xlx_weights_27_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_28
  sc_bv<16>*__xlx_weights_28_output_buffer = new sc_bv<16>[__xlx_size_param_weights_28];
  for (int i = 0; i < __xlx_size_param_weights_28; ++i) {
    __xlx_weights_28_output_buffer[i] = __xlx_weights_28__input_buffer[i+__xlx_offset_param_weights_28];
  }
  for (int i = 0; i < __xlx_size_param_weights_28; ++i) {
    ((char*)__xlx_apatb_param_weights_28)[i*2+0] = __xlx_weights_28_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_28)[i*2+1] = __xlx_weights_28_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_29
  sc_bv<16>*__xlx_weights_29_output_buffer = new sc_bv<16>[__xlx_size_param_weights_29];
  for (int i = 0; i < __xlx_size_param_weights_29; ++i) {
    __xlx_weights_29_output_buffer[i] = __xlx_weights_29__input_buffer[i+__xlx_offset_param_weights_29];
  }
  for (int i = 0; i < __xlx_size_param_weights_29; ++i) {
    ((char*)__xlx_apatb_param_weights_29)[i*2+0] = __xlx_weights_29_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_29)[i*2+1] = __xlx_weights_29_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_30
  sc_bv<16>*__xlx_weights_30_output_buffer = new sc_bv<16>[__xlx_size_param_weights_30];
  for (int i = 0; i < __xlx_size_param_weights_30; ++i) {
    __xlx_weights_30_output_buffer[i] = __xlx_weights_30__input_buffer[i+__xlx_offset_param_weights_30];
  }
  for (int i = 0; i < __xlx_size_param_weights_30; ++i) {
    ((char*)__xlx_apatb_param_weights_30)[i*2+0] = __xlx_weights_30_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_30)[i*2+1] = __xlx_weights_30_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_31
  sc_bv<16>*__xlx_weights_31_output_buffer = new sc_bv<16>[__xlx_size_param_weights_31];
  for (int i = 0; i < __xlx_size_param_weights_31; ++i) {
    __xlx_weights_31_output_buffer[i] = __xlx_weights_31__input_buffer[i+__xlx_offset_param_weights_31];
  }
  for (int i = 0; i < __xlx_size_param_weights_31; ++i) {
    ((char*)__xlx_apatb_param_weights_31)[i*2+0] = __xlx_weights_31_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_31)[i*2+1] = __xlx_weights_31_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_32
  sc_bv<16>*__xlx_weights_32_output_buffer = new sc_bv<16>[__xlx_size_param_weights_32];
  for (int i = 0; i < __xlx_size_param_weights_32; ++i) {
    __xlx_weights_32_output_buffer[i] = __xlx_weights_32__input_buffer[i+__xlx_offset_param_weights_32];
  }
  for (int i = 0; i < __xlx_size_param_weights_32; ++i) {
    ((char*)__xlx_apatb_param_weights_32)[i*2+0] = __xlx_weights_32_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_32)[i*2+1] = __xlx_weights_32_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_33
  sc_bv<16>*__xlx_weights_33_output_buffer = new sc_bv<16>[__xlx_size_param_weights_33];
  for (int i = 0; i < __xlx_size_param_weights_33; ++i) {
    __xlx_weights_33_output_buffer[i] = __xlx_weights_33__input_buffer[i+__xlx_offset_param_weights_33];
  }
  for (int i = 0; i < __xlx_size_param_weights_33; ++i) {
    ((char*)__xlx_apatb_param_weights_33)[i*2+0] = __xlx_weights_33_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_33)[i*2+1] = __xlx_weights_33_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_34
  sc_bv<16>*__xlx_weights_34_output_buffer = new sc_bv<16>[__xlx_size_param_weights_34];
  for (int i = 0; i < __xlx_size_param_weights_34; ++i) {
    __xlx_weights_34_output_buffer[i] = __xlx_weights_34__input_buffer[i+__xlx_offset_param_weights_34];
  }
  for (int i = 0; i < __xlx_size_param_weights_34; ++i) {
    ((char*)__xlx_apatb_param_weights_34)[i*2+0] = __xlx_weights_34_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_34)[i*2+1] = __xlx_weights_34_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_35
  sc_bv<16>*__xlx_weights_35_output_buffer = new sc_bv<16>[__xlx_size_param_weights_35];
  for (int i = 0; i < __xlx_size_param_weights_35; ++i) {
    __xlx_weights_35_output_buffer[i] = __xlx_weights_35__input_buffer[i+__xlx_offset_param_weights_35];
  }
  for (int i = 0; i < __xlx_size_param_weights_35; ++i) {
    ((char*)__xlx_apatb_param_weights_35)[i*2+0] = __xlx_weights_35_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_35)[i*2+1] = __xlx_weights_35_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_36
  sc_bv<16>*__xlx_weights_36_output_buffer = new sc_bv<16>[__xlx_size_param_weights_36];
  for (int i = 0; i < __xlx_size_param_weights_36; ++i) {
    __xlx_weights_36_output_buffer[i] = __xlx_weights_36__input_buffer[i+__xlx_offset_param_weights_36];
  }
  for (int i = 0; i < __xlx_size_param_weights_36; ++i) {
    ((char*)__xlx_apatb_param_weights_36)[i*2+0] = __xlx_weights_36_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_36)[i*2+1] = __xlx_weights_36_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_37
  sc_bv<16>*__xlx_weights_37_output_buffer = new sc_bv<16>[__xlx_size_param_weights_37];
  for (int i = 0; i < __xlx_size_param_weights_37; ++i) {
    __xlx_weights_37_output_buffer[i] = __xlx_weights_37__input_buffer[i+__xlx_offset_param_weights_37];
  }
  for (int i = 0; i < __xlx_size_param_weights_37; ++i) {
    ((char*)__xlx_apatb_param_weights_37)[i*2+0] = __xlx_weights_37_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_37)[i*2+1] = __xlx_weights_37_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_38
  sc_bv<16>*__xlx_weights_38_output_buffer = new sc_bv<16>[__xlx_size_param_weights_38];
  for (int i = 0; i < __xlx_size_param_weights_38; ++i) {
    __xlx_weights_38_output_buffer[i] = __xlx_weights_38__input_buffer[i+__xlx_offset_param_weights_38];
  }
  for (int i = 0; i < __xlx_size_param_weights_38; ++i) {
    ((char*)__xlx_apatb_param_weights_38)[i*2+0] = __xlx_weights_38_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_38)[i*2+1] = __xlx_weights_38_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_39
  sc_bv<16>*__xlx_weights_39_output_buffer = new sc_bv<16>[__xlx_size_param_weights_39];
  for (int i = 0; i < __xlx_size_param_weights_39; ++i) {
    __xlx_weights_39_output_buffer[i] = __xlx_weights_39__input_buffer[i+__xlx_offset_param_weights_39];
  }
  for (int i = 0; i < __xlx_size_param_weights_39; ++i) {
    ((char*)__xlx_apatb_param_weights_39)[i*2+0] = __xlx_weights_39_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_39)[i*2+1] = __xlx_weights_39_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_40
  sc_bv<16>*__xlx_weights_40_output_buffer = new sc_bv<16>[__xlx_size_param_weights_40];
  for (int i = 0; i < __xlx_size_param_weights_40; ++i) {
    __xlx_weights_40_output_buffer[i] = __xlx_weights_40__input_buffer[i+__xlx_offset_param_weights_40];
  }
  for (int i = 0; i < __xlx_size_param_weights_40; ++i) {
    ((char*)__xlx_apatb_param_weights_40)[i*2+0] = __xlx_weights_40_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_40)[i*2+1] = __xlx_weights_40_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_41
  sc_bv<16>*__xlx_weights_41_output_buffer = new sc_bv<16>[__xlx_size_param_weights_41];
  for (int i = 0; i < __xlx_size_param_weights_41; ++i) {
    __xlx_weights_41_output_buffer[i] = __xlx_weights_41__input_buffer[i+__xlx_offset_param_weights_41];
  }
  for (int i = 0; i < __xlx_size_param_weights_41; ++i) {
    ((char*)__xlx_apatb_param_weights_41)[i*2+0] = __xlx_weights_41_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_41)[i*2+1] = __xlx_weights_41_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_42
  sc_bv<16>*__xlx_weights_42_output_buffer = new sc_bv<16>[__xlx_size_param_weights_42];
  for (int i = 0; i < __xlx_size_param_weights_42; ++i) {
    __xlx_weights_42_output_buffer[i] = __xlx_weights_42__input_buffer[i+__xlx_offset_param_weights_42];
  }
  for (int i = 0; i < __xlx_size_param_weights_42; ++i) {
    ((char*)__xlx_apatb_param_weights_42)[i*2+0] = __xlx_weights_42_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_42)[i*2+1] = __xlx_weights_42_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_43
  sc_bv<16>*__xlx_weights_43_output_buffer = new sc_bv<16>[__xlx_size_param_weights_43];
  for (int i = 0; i < __xlx_size_param_weights_43; ++i) {
    __xlx_weights_43_output_buffer[i] = __xlx_weights_43__input_buffer[i+__xlx_offset_param_weights_43];
  }
  for (int i = 0; i < __xlx_size_param_weights_43; ++i) {
    ((char*)__xlx_apatb_param_weights_43)[i*2+0] = __xlx_weights_43_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_43)[i*2+1] = __xlx_weights_43_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_44
  sc_bv<16>*__xlx_weights_44_output_buffer = new sc_bv<16>[__xlx_size_param_weights_44];
  for (int i = 0; i < __xlx_size_param_weights_44; ++i) {
    __xlx_weights_44_output_buffer[i] = __xlx_weights_44__input_buffer[i+__xlx_offset_param_weights_44];
  }
  for (int i = 0; i < __xlx_size_param_weights_44; ++i) {
    ((char*)__xlx_apatb_param_weights_44)[i*2+0] = __xlx_weights_44_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_44)[i*2+1] = __xlx_weights_44_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_45
  sc_bv<16>*__xlx_weights_45_output_buffer = new sc_bv<16>[__xlx_size_param_weights_45];
  for (int i = 0; i < __xlx_size_param_weights_45; ++i) {
    __xlx_weights_45_output_buffer[i] = __xlx_weights_45__input_buffer[i+__xlx_offset_param_weights_45];
  }
  for (int i = 0; i < __xlx_size_param_weights_45; ++i) {
    ((char*)__xlx_apatb_param_weights_45)[i*2+0] = __xlx_weights_45_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_45)[i*2+1] = __xlx_weights_45_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_46
  sc_bv<16>*__xlx_weights_46_output_buffer = new sc_bv<16>[__xlx_size_param_weights_46];
  for (int i = 0; i < __xlx_size_param_weights_46; ++i) {
    __xlx_weights_46_output_buffer[i] = __xlx_weights_46__input_buffer[i+__xlx_offset_param_weights_46];
  }
  for (int i = 0; i < __xlx_size_param_weights_46; ++i) {
    ((char*)__xlx_apatb_param_weights_46)[i*2+0] = __xlx_weights_46_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_46)[i*2+1] = __xlx_weights_46_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_47
  sc_bv<16>*__xlx_weights_47_output_buffer = new sc_bv<16>[__xlx_size_param_weights_47];
  for (int i = 0; i < __xlx_size_param_weights_47; ++i) {
    __xlx_weights_47_output_buffer[i] = __xlx_weights_47__input_buffer[i+__xlx_offset_param_weights_47];
  }
  for (int i = 0; i < __xlx_size_param_weights_47; ++i) {
    ((char*)__xlx_apatb_param_weights_47)[i*2+0] = __xlx_weights_47_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_47)[i*2+1] = __xlx_weights_47_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_48
  sc_bv<16>*__xlx_weights_48_output_buffer = new sc_bv<16>[__xlx_size_param_weights_48];
  for (int i = 0; i < __xlx_size_param_weights_48; ++i) {
    __xlx_weights_48_output_buffer[i] = __xlx_weights_48__input_buffer[i+__xlx_offset_param_weights_48];
  }
  for (int i = 0; i < __xlx_size_param_weights_48; ++i) {
    ((char*)__xlx_apatb_param_weights_48)[i*2+0] = __xlx_weights_48_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_48)[i*2+1] = __xlx_weights_48_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_49
  sc_bv<16>*__xlx_weights_49_output_buffer = new sc_bv<16>[__xlx_size_param_weights_49];
  for (int i = 0; i < __xlx_size_param_weights_49; ++i) {
    __xlx_weights_49_output_buffer[i] = __xlx_weights_49__input_buffer[i+__xlx_offset_param_weights_49];
  }
  for (int i = 0; i < __xlx_size_param_weights_49; ++i) {
    ((char*)__xlx_apatb_param_weights_49)[i*2+0] = __xlx_weights_49_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_49)[i*2+1] = __xlx_weights_49_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_50
  sc_bv<16>*__xlx_weights_50_output_buffer = new sc_bv<16>[__xlx_size_param_weights_50];
  for (int i = 0; i < __xlx_size_param_weights_50; ++i) {
    __xlx_weights_50_output_buffer[i] = __xlx_weights_50__input_buffer[i+__xlx_offset_param_weights_50];
  }
  for (int i = 0; i < __xlx_size_param_weights_50; ++i) {
    ((char*)__xlx_apatb_param_weights_50)[i*2+0] = __xlx_weights_50_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_50)[i*2+1] = __xlx_weights_50_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_51
  sc_bv<16>*__xlx_weights_51_output_buffer = new sc_bv<16>[__xlx_size_param_weights_51];
  for (int i = 0; i < __xlx_size_param_weights_51; ++i) {
    __xlx_weights_51_output_buffer[i] = __xlx_weights_51__input_buffer[i+__xlx_offset_param_weights_51];
  }
  for (int i = 0; i < __xlx_size_param_weights_51; ++i) {
    ((char*)__xlx_apatb_param_weights_51)[i*2+0] = __xlx_weights_51_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_51)[i*2+1] = __xlx_weights_51_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_52
  sc_bv<16>*__xlx_weights_52_output_buffer = new sc_bv<16>[__xlx_size_param_weights_52];
  for (int i = 0; i < __xlx_size_param_weights_52; ++i) {
    __xlx_weights_52_output_buffer[i] = __xlx_weights_52__input_buffer[i+__xlx_offset_param_weights_52];
  }
  for (int i = 0; i < __xlx_size_param_weights_52; ++i) {
    ((char*)__xlx_apatb_param_weights_52)[i*2+0] = __xlx_weights_52_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_52)[i*2+1] = __xlx_weights_52_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_53
  sc_bv<16>*__xlx_weights_53_output_buffer = new sc_bv<16>[__xlx_size_param_weights_53];
  for (int i = 0; i < __xlx_size_param_weights_53; ++i) {
    __xlx_weights_53_output_buffer[i] = __xlx_weights_53__input_buffer[i+__xlx_offset_param_weights_53];
  }
  for (int i = 0; i < __xlx_size_param_weights_53; ++i) {
    ((char*)__xlx_apatb_param_weights_53)[i*2+0] = __xlx_weights_53_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_53)[i*2+1] = __xlx_weights_53_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_54
  sc_bv<16>*__xlx_weights_54_output_buffer = new sc_bv<16>[__xlx_size_param_weights_54];
  for (int i = 0; i < __xlx_size_param_weights_54; ++i) {
    __xlx_weights_54_output_buffer[i] = __xlx_weights_54__input_buffer[i+__xlx_offset_param_weights_54];
  }
  for (int i = 0; i < __xlx_size_param_weights_54; ++i) {
    ((char*)__xlx_apatb_param_weights_54)[i*2+0] = __xlx_weights_54_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_54)[i*2+1] = __xlx_weights_54_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_55
  sc_bv<16>*__xlx_weights_55_output_buffer = new sc_bv<16>[__xlx_size_param_weights_55];
  for (int i = 0; i < __xlx_size_param_weights_55; ++i) {
    __xlx_weights_55_output_buffer[i] = __xlx_weights_55__input_buffer[i+__xlx_offset_param_weights_55];
  }
  for (int i = 0; i < __xlx_size_param_weights_55; ++i) {
    ((char*)__xlx_apatb_param_weights_55)[i*2+0] = __xlx_weights_55_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_55)[i*2+1] = __xlx_weights_55_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_56
  sc_bv<16>*__xlx_weights_56_output_buffer = new sc_bv<16>[__xlx_size_param_weights_56];
  for (int i = 0; i < __xlx_size_param_weights_56; ++i) {
    __xlx_weights_56_output_buffer[i] = __xlx_weights_56__input_buffer[i+__xlx_offset_param_weights_56];
  }
  for (int i = 0; i < __xlx_size_param_weights_56; ++i) {
    ((char*)__xlx_apatb_param_weights_56)[i*2+0] = __xlx_weights_56_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_56)[i*2+1] = __xlx_weights_56_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_57
  sc_bv<16>*__xlx_weights_57_output_buffer = new sc_bv<16>[__xlx_size_param_weights_57];
  for (int i = 0; i < __xlx_size_param_weights_57; ++i) {
    __xlx_weights_57_output_buffer[i] = __xlx_weights_57__input_buffer[i+__xlx_offset_param_weights_57];
  }
  for (int i = 0; i < __xlx_size_param_weights_57; ++i) {
    ((char*)__xlx_apatb_param_weights_57)[i*2+0] = __xlx_weights_57_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_57)[i*2+1] = __xlx_weights_57_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_58
  sc_bv<16>*__xlx_weights_58_output_buffer = new sc_bv<16>[__xlx_size_param_weights_58];
  for (int i = 0; i < __xlx_size_param_weights_58; ++i) {
    __xlx_weights_58_output_buffer[i] = __xlx_weights_58__input_buffer[i+__xlx_offset_param_weights_58];
  }
  for (int i = 0; i < __xlx_size_param_weights_58; ++i) {
    ((char*)__xlx_apatb_param_weights_58)[i*2+0] = __xlx_weights_58_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_58)[i*2+1] = __xlx_weights_58_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_59
  sc_bv<16>*__xlx_weights_59_output_buffer = new sc_bv<16>[__xlx_size_param_weights_59];
  for (int i = 0; i < __xlx_size_param_weights_59; ++i) {
    __xlx_weights_59_output_buffer[i] = __xlx_weights_59__input_buffer[i+__xlx_offset_param_weights_59];
  }
  for (int i = 0; i < __xlx_size_param_weights_59; ++i) {
    ((char*)__xlx_apatb_param_weights_59)[i*2+0] = __xlx_weights_59_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_59)[i*2+1] = __xlx_weights_59_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_60
  sc_bv<16>*__xlx_weights_60_output_buffer = new sc_bv<16>[__xlx_size_param_weights_60];
  for (int i = 0; i < __xlx_size_param_weights_60; ++i) {
    __xlx_weights_60_output_buffer[i] = __xlx_weights_60__input_buffer[i+__xlx_offset_param_weights_60];
  }
  for (int i = 0; i < __xlx_size_param_weights_60; ++i) {
    ((char*)__xlx_apatb_param_weights_60)[i*2+0] = __xlx_weights_60_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_60)[i*2+1] = __xlx_weights_60_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_61
  sc_bv<16>*__xlx_weights_61_output_buffer = new sc_bv<16>[__xlx_size_param_weights_61];
  for (int i = 0; i < __xlx_size_param_weights_61; ++i) {
    __xlx_weights_61_output_buffer[i] = __xlx_weights_61__input_buffer[i+__xlx_offset_param_weights_61];
  }
  for (int i = 0; i < __xlx_size_param_weights_61; ++i) {
    ((char*)__xlx_apatb_param_weights_61)[i*2+0] = __xlx_weights_61_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_61)[i*2+1] = __xlx_weights_61_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_62
  sc_bv<16>*__xlx_weights_62_output_buffer = new sc_bv<16>[__xlx_size_param_weights_62];
  for (int i = 0; i < __xlx_size_param_weights_62; ++i) {
    __xlx_weights_62_output_buffer[i] = __xlx_weights_62__input_buffer[i+__xlx_offset_param_weights_62];
  }
  for (int i = 0; i < __xlx_size_param_weights_62; ++i) {
    ((char*)__xlx_apatb_param_weights_62)[i*2+0] = __xlx_weights_62_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_62)[i*2+1] = __xlx_weights_62_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_63
  sc_bv<16>*__xlx_weights_63_output_buffer = new sc_bv<16>[__xlx_size_param_weights_63];
  for (int i = 0; i < __xlx_size_param_weights_63; ++i) {
    __xlx_weights_63_output_buffer[i] = __xlx_weights_63__input_buffer[i+__xlx_offset_param_weights_63];
  }
  for (int i = 0; i < __xlx_size_param_weights_63; ++i) {
    ((char*)__xlx_apatb_param_weights_63)[i*2+0] = __xlx_weights_63_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_63)[i*2+1] = __xlx_weights_63_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_64
  sc_bv<16>*__xlx_weights_64_output_buffer = new sc_bv<16>[__xlx_size_param_weights_64];
  for (int i = 0; i < __xlx_size_param_weights_64; ++i) {
    __xlx_weights_64_output_buffer[i] = __xlx_weights_64__input_buffer[i+__xlx_offset_param_weights_64];
  }
  for (int i = 0; i < __xlx_size_param_weights_64; ++i) {
    ((char*)__xlx_apatb_param_weights_64)[i*2+0] = __xlx_weights_64_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_64)[i*2+1] = __xlx_weights_64_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_65
  sc_bv<16>*__xlx_weights_65_output_buffer = new sc_bv<16>[__xlx_size_param_weights_65];
  for (int i = 0; i < __xlx_size_param_weights_65; ++i) {
    __xlx_weights_65_output_buffer[i] = __xlx_weights_65__input_buffer[i+__xlx_offset_param_weights_65];
  }
  for (int i = 0; i < __xlx_size_param_weights_65; ++i) {
    ((char*)__xlx_apatb_param_weights_65)[i*2+0] = __xlx_weights_65_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_65)[i*2+1] = __xlx_weights_65_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_66
  sc_bv<16>*__xlx_weights_66_output_buffer = new sc_bv<16>[__xlx_size_param_weights_66];
  for (int i = 0; i < __xlx_size_param_weights_66; ++i) {
    __xlx_weights_66_output_buffer[i] = __xlx_weights_66__input_buffer[i+__xlx_offset_param_weights_66];
  }
  for (int i = 0; i < __xlx_size_param_weights_66; ++i) {
    ((char*)__xlx_apatb_param_weights_66)[i*2+0] = __xlx_weights_66_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_66)[i*2+1] = __xlx_weights_66_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_67
  sc_bv<16>*__xlx_weights_67_output_buffer = new sc_bv<16>[__xlx_size_param_weights_67];
  for (int i = 0; i < __xlx_size_param_weights_67; ++i) {
    __xlx_weights_67_output_buffer[i] = __xlx_weights_67__input_buffer[i+__xlx_offset_param_weights_67];
  }
  for (int i = 0; i < __xlx_size_param_weights_67; ++i) {
    ((char*)__xlx_apatb_param_weights_67)[i*2+0] = __xlx_weights_67_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_67)[i*2+1] = __xlx_weights_67_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_68
  sc_bv<16>*__xlx_weights_68_output_buffer = new sc_bv<16>[__xlx_size_param_weights_68];
  for (int i = 0; i < __xlx_size_param_weights_68; ++i) {
    __xlx_weights_68_output_buffer[i] = __xlx_weights_68__input_buffer[i+__xlx_offset_param_weights_68];
  }
  for (int i = 0; i < __xlx_size_param_weights_68; ++i) {
    ((char*)__xlx_apatb_param_weights_68)[i*2+0] = __xlx_weights_68_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_68)[i*2+1] = __xlx_weights_68_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_69
  sc_bv<16>*__xlx_weights_69_output_buffer = new sc_bv<16>[__xlx_size_param_weights_69];
  for (int i = 0; i < __xlx_size_param_weights_69; ++i) {
    __xlx_weights_69_output_buffer[i] = __xlx_weights_69__input_buffer[i+__xlx_offset_param_weights_69];
  }
  for (int i = 0; i < __xlx_size_param_weights_69; ++i) {
    ((char*)__xlx_apatb_param_weights_69)[i*2+0] = __xlx_weights_69_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_69)[i*2+1] = __xlx_weights_69_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_70
  sc_bv<16>*__xlx_weights_70_output_buffer = new sc_bv<16>[__xlx_size_param_weights_70];
  for (int i = 0; i < __xlx_size_param_weights_70; ++i) {
    __xlx_weights_70_output_buffer[i] = __xlx_weights_70__input_buffer[i+__xlx_offset_param_weights_70];
  }
  for (int i = 0; i < __xlx_size_param_weights_70; ++i) {
    ((char*)__xlx_apatb_param_weights_70)[i*2+0] = __xlx_weights_70_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_70)[i*2+1] = __xlx_weights_70_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_71
  sc_bv<16>*__xlx_weights_71_output_buffer = new sc_bv<16>[__xlx_size_param_weights_71];
  for (int i = 0; i < __xlx_size_param_weights_71; ++i) {
    __xlx_weights_71_output_buffer[i] = __xlx_weights_71__input_buffer[i+__xlx_offset_param_weights_71];
  }
  for (int i = 0; i < __xlx_size_param_weights_71; ++i) {
    ((char*)__xlx_apatb_param_weights_71)[i*2+0] = __xlx_weights_71_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_71)[i*2+1] = __xlx_weights_71_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_72
  sc_bv<16>*__xlx_weights_72_output_buffer = new sc_bv<16>[__xlx_size_param_weights_72];
  for (int i = 0; i < __xlx_size_param_weights_72; ++i) {
    __xlx_weights_72_output_buffer[i] = __xlx_weights_72__input_buffer[i+__xlx_offset_param_weights_72];
  }
  for (int i = 0; i < __xlx_size_param_weights_72; ++i) {
    ((char*)__xlx_apatb_param_weights_72)[i*2+0] = __xlx_weights_72_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_72)[i*2+1] = __xlx_weights_72_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_73
  sc_bv<16>*__xlx_weights_73_output_buffer = new sc_bv<16>[__xlx_size_param_weights_73];
  for (int i = 0; i < __xlx_size_param_weights_73; ++i) {
    __xlx_weights_73_output_buffer[i] = __xlx_weights_73__input_buffer[i+__xlx_offset_param_weights_73];
  }
  for (int i = 0; i < __xlx_size_param_weights_73; ++i) {
    ((char*)__xlx_apatb_param_weights_73)[i*2+0] = __xlx_weights_73_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_73)[i*2+1] = __xlx_weights_73_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_74
  sc_bv<16>*__xlx_weights_74_output_buffer = new sc_bv<16>[__xlx_size_param_weights_74];
  for (int i = 0; i < __xlx_size_param_weights_74; ++i) {
    __xlx_weights_74_output_buffer[i] = __xlx_weights_74__input_buffer[i+__xlx_offset_param_weights_74];
  }
  for (int i = 0; i < __xlx_size_param_weights_74; ++i) {
    ((char*)__xlx_apatb_param_weights_74)[i*2+0] = __xlx_weights_74_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_74)[i*2+1] = __xlx_weights_74_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_75
  sc_bv<16>*__xlx_weights_75_output_buffer = new sc_bv<16>[__xlx_size_param_weights_75];
  for (int i = 0; i < __xlx_size_param_weights_75; ++i) {
    __xlx_weights_75_output_buffer[i] = __xlx_weights_75__input_buffer[i+__xlx_offset_param_weights_75];
  }
  for (int i = 0; i < __xlx_size_param_weights_75; ++i) {
    ((char*)__xlx_apatb_param_weights_75)[i*2+0] = __xlx_weights_75_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_75)[i*2+1] = __xlx_weights_75_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_76
  sc_bv<16>*__xlx_weights_76_output_buffer = new sc_bv<16>[__xlx_size_param_weights_76];
  for (int i = 0; i < __xlx_size_param_weights_76; ++i) {
    __xlx_weights_76_output_buffer[i] = __xlx_weights_76__input_buffer[i+__xlx_offset_param_weights_76];
  }
  for (int i = 0; i < __xlx_size_param_weights_76; ++i) {
    ((char*)__xlx_apatb_param_weights_76)[i*2+0] = __xlx_weights_76_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_76)[i*2+1] = __xlx_weights_76_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_77
  sc_bv<16>*__xlx_weights_77_output_buffer = new sc_bv<16>[__xlx_size_param_weights_77];
  for (int i = 0; i < __xlx_size_param_weights_77; ++i) {
    __xlx_weights_77_output_buffer[i] = __xlx_weights_77__input_buffer[i+__xlx_offset_param_weights_77];
  }
  for (int i = 0; i < __xlx_size_param_weights_77; ++i) {
    ((char*)__xlx_apatb_param_weights_77)[i*2+0] = __xlx_weights_77_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_77)[i*2+1] = __xlx_weights_77_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_78
  sc_bv<16>*__xlx_weights_78_output_buffer = new sc_bv<16>[__xlx_size_param_weights_78];
  for (int i = 0; i < __xlx_size_param_weights_78; ++i) {
    __xlx_weights_78_output_buffer[i] = __xlx_weights_78__input_buffer[i+__xlx_offset_param_weights_78];
  }
  for (int i = 0; i < __xlx_size_param_weights_78; ++i) {
    ((char*)__xlx_apatb_param_weights_78)[i*2+0] = __xlx_weights_78_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_78)[i*2+1] = __xlx_weights_78_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_79
  sc_bv<16>*__xlx_weights_79_output_buffer = new sc_bv<16>[__xlx_size_param_weights_79];
  for (int i = 0; i < __xlx_size_param_weights_79; ++i) {
    __xlx_weights_79_output_buffer[i] = __xlx_weights_79__input_buffer[i+__xlx_offset_param_weights_79];
  }
  for (int i = 0; i < __xlx_size_param_weights_79; ++i) {
    ((char*)__xlx_apatb_param_weights_79)[i*2+0] = __xlx_weights_79_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_79)[i*2+1] = __xlx_weights_79_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_80
  sc_bv<16>*__xlx_weights_80_output_buffer = new sc_bv<16>[__xlx_size_param_weights_80];
  for (int i = 0; i < __xlx_size_param_weights_80; ++i) {
    __xlx_weights_80_output_buffer[i] = __xlx_weights_80__input_buffer[i+__xlx_offset_param_weights_80];
  }
  for (int i = 0; i < __xlx_size_param_weights_80; ++i) {
    ((char*)__xlx_apatb_param_weights_80)[i*2+0] = __xlx_weights_80_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_80)[i*2+1] = __xlx_weights_80_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_81
  sc_bv<16>*__xlx_weights_81_output_buffer = new sc_bv<16>[__xlx_size_param_weights_81];
  for (int i = 0; i < __xlx_size_param_weights_81; ++i) {
    __xlx_weights_81_output_buffer[i] = __xlx_weights_81__input_buffer[i+__xlx_offset_param_weights_81];
  }
  for (int i = 0; i < __xlx_size_param_weights_81; ++i) {
    ((char*)__xlx_apatb_param_weights_81)[i*2+0] = __xlx_weights_81_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_81)[i*2+1] = __xlx_weights_81_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_82
  sc_bv<16>*__xlx_weights_82_output_buffer = new sc_bv<16>[__xlx_size_param_weights_82];
  for (int i = 0; i < __xlx_size_param_weights_82; ++i) {
    __xlx_weights_82_output_buffer[i] = __xlx_weights_82__input_buffer[i+__xlx_offset_param_weights_82];
  }
  for (int i = 0; i < __xlx_size_param_weights_82; ++i) {
    ((char*)__xlx_apatb_param_weights_82)[i*2+0] = __xlx_weights_82_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_82)[i*2+1] = __xlx_weights_82_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_83
  sc_bv<16>*__xlx_weights_83_output_buffer = new sc_bv<16>[__xlx_size_param_weights_83];
  for (int i = 0; i < __xlx_size_param_weights_83; ++i) {
    __xlx_weights_83_output_buffer[i] = __xlx_weights_83__input_buffer[i+__xlx_offset_param_weights_83];
  }
  for (int i = 0; i < __xlx_size_param_weights_83; ++i) {
    ((char*)__xlx_apatb_param_weights_83)[i*2+0] = __xlx_weights_83_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_83)[i*2+1] = __xlx_weights_83_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_84
  sc_bv<16>*__xlx_weights_84_output_buffer = new sc_bv<16>[__xlx_size_param_weights_84];
  for (int i = 0; i < __xlx_size_param_weights_84; ++i) {
    __xlx_weights_84_output_buffer[i] = __xlx_weights_84__input_buffer[i+__xlx_offset_param_weights_84];
  }
  for (int i = 0; i < __xlx_size_param_weights_84; ++i) {
    ((char*)__xlx_apatb_param_weights_84)[i*2+0] = __xlx_weights_84_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_84)[i*2+1] = __xlx_weights_84_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_85
  sc_bv<16>*__xlx_weights_85_output_buffer = new sc_bv<16>[__xlx_size_param_weights_85];
  for (int i = 0; i < __xlx_size_param_weights_85; ++i) {
    __xlx_weights_85_output_buffer[i] = __xlx_weights_85__input_buffer[i+__xlx_offset_param_weights_85];
  }
  for (int i = 0; i < __xlx_size_param_weights_85; ++i) {
    ((char*)__xlx_apatb_param_weights_85)[i*2+0] = __xlx_weights_85_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_85)[i*2+1] = __xlx_weights_85_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_86
  sc_bv<16>*__xlx_weights_86_output_buffer = new sc_bv<16>[__xlx_size_param_weights_86];
  for (int i = 0; i < __xlx_size_param_weights_86; ++i) {
    __xlx_weights_86_output_buffer[i] = __xlx_weights_86__input_buffer[i+__xlx_offset_param_weights_86];
  }
  for (int i = 0; i < __xlx_size_param_weights_86; ++i) {
    ((char*)__xlx_apatb_param_weights_86)[i*2+0] = __xlx_weights_86_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_86)[i*2+1] = __xlx_weights_86_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_87
  sc_bv<16>*__xlx_weights_87_output_buffer = new sc_bv<16>[__xlx_size_param_weights_87];
  for (int i = 0; i < __xlx_size_param_weights_87; ++i) {
    __xlx_weights_87_output_buffer[i] = __xlx_weights_87__input_buffer[i+__xlx_offset_param_weights_87];
  }
  for (int i = 0; i < __xlx_size_param_weights_87; ++i) {
    ((char*)__xlx_apatb_param_weights_87)[i*2+0] = __xlx_weights_87_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_87)[i*2+1] = __xlx_weights_87_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_88
  sc_bv<16>*__xlx_weights_88_output_buffer = new sc_bv<16>[__xlx_size_param_weights_88];
  for (int i = 0; i < __xlx_size_param_weights_88; ++i) {
    __xlx_weights_88_output_buffer[i] = __xlx_weights_88__input_buffer[i+__xlx_offset_param_weights_88];
  }
  for (int i = 0; i < __xlx_size_param_weights_88; ++i) {
    ((char*)__xlx_apatb_param_weights_88)[i*2+0] = __xlx_weights_88_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_88)[i*2+1] = __xlx_weights_88_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_89
  sc_bv<16>*__xlx_weights_89_output_buffer = new sc_bv<16>[__xlx_size_param_weights_89];
  for (int i = 0; i < __xlx_size_param_weights_89; ++i) {
    __xlx_weights_89_output_buffer[i] = __xlx_weights_89__input_buffer[i+__xlx_offset_param_weights_89];
  }
  for (int i = 0; i < __xlx_size_param_weights_89; ++i) {
    ((char*)__xlx_apatb_param_weights_89)[i*2+0] = __xlx_weights_89_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_89)[i*2+1] = __xlx_weights_89_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_90
  sc_bv<16>*__xlx_weights_90_output_buffer = new sc_bv<16>[__xlx_size_param_weights_90];
  for (int i = 0; i < __xlx_size_param_weights_90; ++i) {
    __xlx_weights_90_output_buffer[i] = __xlx_weights_90__input_buffer[i+__xlx_offset_param_weights_90];
  }
  for (int i = 0; i < __xlx_size_param_weights_90; ++i) {
    ((char*)__xlx_apatb_param_weights_90)[i*2+0] = __xlx_weights_90_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_90)[i*2+1] = __xlx_weights_90_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_91
  sc_bv<16>*__xlx_weights_91_output_buffer = new sc_bv<16>[__xlx_size_param_weights_91];
  for (int i = 0; i < __xlx_size_param_weights_91; ++i) {
    __xlx_weights_91_output_buffer[i] = __xlx_weights_91__input_buffer[i+__xlx_offset_param_weights_91];
  }
  for (int i = 0; i < __xlx_size_param_weights_91; ++i) {
    ((char*)__xlx_apatb_param_weights_91)[i*2+0] = __xlx_weights_91_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_91)[i*2+1] = __xlx_weights_91_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_92
  sc_bv<16>*__xlx_weights_92_output_buffer = new sc_bv<16>[__xlx_size_param_weights_92];
  for (int i = 0; i < __xlx_size_param_weights_92; ++i) {
    __xlx_weights_92_output_buffer[i] = __xlx_weights_92__input_buffer[i+__xlx_offset_param_weights_92];
  }
  for (int i = 0; i < __xlx_size_param_weights_92; ++i) {
    ((char*)__xlx_apatb_param_weights_92)[i*2+0] = __xlx_weights_92_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_92)[i*2+1] = __xlx_weights_92_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_93
  sc_bv<16>*__xlx_weights_93_output_buffer = new sc_bv<16>[__xlx_size_param_weights_93];
  for (int i = 0; i < __xlx_size_param_weights_93; ++i) {
    __xlx_weights_93_output_buffer[i] = __xlx_weights_93__input_buffer[i+__xlx_offset_param_weights_93];
  }
  for (int i = 0; i < __xlx_size_param_weights_93; ++i) {
    ((char*)__xlx_apatb_param_weights_93)[i*2+0] = __xlx_weights_93_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_93)[i*2+1] = __xlx_weights_93_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_94
  sc_bv<16>*__xlx_weights_94_output_buffer = new sc_bv<16>[__xlx_size_param_weights_94];
  for (int i = 0; i < __xlx_size_param_weights_94; ++i) {
    __xlx_weights_94_output_buffer[i] = __xlx_weights_94__input_buffer[i+__xlx_offset_param_weights_94];
  }
  for (int i = 0; i < __xlx_size_param_weights_94; ++i) {
    ((char*)__xlx_apatb_param_weights_94)[i*2+0] = __xlx_weights_94_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_94)[i*2+1] = __xlx_weights_94_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_95
  sc_bv<16>*__xlx_weights_95_output_buffer = new sc_bv<16>[__xlx_size_param_weights_95];
  for (int i = 0; i < __xlx_size_param_weights_95; ++i) {
    __xlx_weights_95_output_buffer[i] = __xlx_weights_95__input_buffer[i+__xlx_offset_param_weights_95];
  }
  for (int i = 0; i < __xlx_size_param_weights_95; ++i) {
    ((char*)__xlx_apatb_param_weights_95)[i*2+0] = __xlx_weights_95_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_95)[i*2+1] = __xlx_weights_95_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_96
  sc_bv<16>*__xlx_weights_96_output_buffer = new sc_bv<16>[__xlx_size_param_weights_96];
  for (int i = 0; i < __xlx_size_param_weights_96; ++i) {
    __xlx_weights_96_output_buffer[i] = __xlx_weights_96__input_buffer[i+__xlx_offset_param_weights_96];
  }
  for (int i = 0; i < __xlx_size_param_weights_96; ++i) {
    ((char*)__xlx_apatb_param_weights_96)[i*2+0] = __xlx_weights_96_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_96)[i*2+1] = __xlx_weights_96_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_97
  sc_bv<16>*__xlx_weights_97_output_buffer = new sc_bv<16>[__xlx_size_param_weights_97];
  for (int i = 0; i < __xlx_size_param_weights_97; ++i) {
    __xlx_weights_97_output_buffer[i] = __xlx_weights_97__input_buffer[i+__xlx_offset_param_weights_97];
  }
  for (int i = 0; i < __xlx_size_param_weights_97; ++i) {
    ((char*)__xlx_apatb_param_weights_97)[i*2+0] = __xlx_weights_97_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_97)[i*2+1] = __xlx_weights_97_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_98
  sc_bv<16>*__xlx_weights_98_output_buffer = new sc_bv<16>[__xlx_size_param_weights_98];
  for (int i = 0; i < __xlx_size_param_weights_98; ++i) {
    __xlx_weights_98_output_buffer[i] = __xlx_weights_98__input_buffer[i+__xlx_offset_param_weights_98];
  }
  for (int i = 0; i < __xlx_size_param_weights_98; ++i) {
    ((char*)__xlx_apatb_param_weights_98)[i*2+0] = __xlx_weights_98_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_98)[i*2+1] = __xlx_weights_98_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_99
  sc_bv<16>*__xlx_weights_99_output_buffer = new sc_bv<16>[__xlx_size_param_weights_99];
  for (int i = 0; i < __xlx_size_param_weights_99; ++i) {
    __xlx_weights_99_output_buffer[i] = __xlx_weights_99__input_buffer[i+__xlx_offset_param_weights_99];
  }
  for (int i = 0; i < __xlx_size_param_weights_99; ++i) {
    ((char*)__xlx_apatb_param_weights_99)[i*2+0] = __xlx_weights_99_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_99)[i*2+1] = __xlx_weights_99_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_100
  sc_bv<16>*__xlx_weights_100_output_buffer = new sc_bv<16>[__xlx_size_param_weights_100];
  for (int i = 0; i < __xlx_size_param_weights_100; ++i) {
    __xlx_weights_100_output_buffer[i] = __xlx_weights_100__input_buffer[i+__xlx_offset_param_weights_100];
  }
  for (int i = 0; i < __xlx_size_param_weights_100; ++i) {
    ((char*)__xlx_apatb_param_weights_100)[i*2+0] = __xlx_weights_100_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_100)[i*2+1] = __xlx_weights_100_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_101
  sc_bv<16>*__xlx_weights_101_output_buffer = new sc_bv<16>[__xlx_size_param_weights_101];
  for (int i = 0; i < __xlx_size_param_weights_101; ++i) {
    __xlx_weights_101_output_buffer[i] = __xlx_weights_101__input_buffer[i+__xlx_offset_param_weights_101];
  }
  for (int i = 0; i < __xlx_size_param_weights_101; ++i) {
    ((char*)__xlx_apatb_param_weights_101)[i*2+0] = __xlx_weights_101_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_101)[i*2+1] = __xlx_weights_101_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_102
  sc_bv<16>*__xlx_weights_102_output_buffer = new sc_bv<16>[__xlx_size_param_weights_102];
  for (int i = 0; i < __xlx_size_param_weights_102; ++i) {
    __xlx_weights_102_output_buffer[i] = __xlx_weights_102__input_buffer[i+__xlx_offset_param_weights_102];
  }
  for (int i = 0; i < __xlx_size_param_weights_102; ++i) {
    ((char*)__xlx_apatb_param_weights_102)[i*2+0] = __xlx_weights_102_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_102)[i*2+1] = __xlx_weights_102_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_103
  sc_bv<16>*__xlx_weights_103_output_buffer = new sc_bv<16>[__xlx_size_param_weights_103];
  for (int i = 0; i < __xlx_size_param_weights_103; ++i) {
    __xlx_weights_103_output_buffer[i] = __xlx_weights_103__input_buffer[i+__xlx_offset_param_weights_103];
  }
  for (int i = 0; i < __xlx_size_param_weights_103; ++i) {
    ((char*)__xlx_apatb_param_weights_103)[i*2+0] = __xlx_weights_103_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_103)[i*2+1] = __xlx_weights_103_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_104
  sc_bv<16>*__xlx_weights_104_output_buffer = new sc_bv<16>[__xlx_size_param_weights_104];
  for (int i = 0; i < __xlx_size_param_weights_104; ++i) {
    __xlx_weights_104_output_buffer[i] = __xlx_weights_104__input_buffer[i+__xlx_offset_param_weights_104];
  }
  for (int i = 0; i < __xlx_size_param_weights_104; ++i) {
    ((char*)__xlx_apatb_param_weights_104)[i*2+0] = __xlx_weights_104_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_104)[i*2+1] = __xlx_weights_104_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_105
  sc_bv<16>*__xlx_weights_105_output_buffer = new sc_bv<16>[__xlx_size_param_weights_105];
  for (int i = 0; i < __xlx_size_param_weights_105; ++i) {
    __xlx_weights_105_output_buffer[i] = __xlx_weights_105__input_buffer[i+__xlx_offset_param_weights_105];
  }
  for (int i = 0; i < __xlx_size_param_weights_105; ++i) {
    ((char*)__xlx_apatb_param_weights_105)[i*2+0] = __xlx_weights_105_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_105)[i*2+1] = __xlx_weights_105_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_106
  sc_bv<16>*__xlx_weights_106_output_buffer = new sc_bv<16>[__xlx_size_param_weights_106];
  for (int i = 0; i < __xlx_size_param_weights_106; ++i) {
    __xlx_weights_106_output_buffer[i] = __xlx_weights_106__input_buffer[i+__xlx_offset_param_weights_106];
  }
  for (int i = 0; i < __xlx_size_param_weights_106; ++i) {
    ((char*)__xlx_apatb_param_weights_106)[i*2+0] = __xlx_weights_106_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_106)[i*2+1] = __xlx_weights_106_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_107
  sc_bv<16>*__xlx_weights_107_output_buffer = new sc_bv<16>[__xlx_size_param_weights_107];
  for (int i = 0; i < __xlx_size_param_weights_107; ++i) {
    __xlx_weights_107_output_buffer[i] = __xlx_weights_107__input_buffer[i+__xlx_offset_param_weights_107];
  }
  for (int i = 0; i < __xlx_size_param_weights_107; ++i) {
    ((char*)__xlx_apatb_param_weights_107)[i*2+0] = __xlx_weights_107_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_107)[i*2+1] = __xlx_weights_107_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_108
  sc_bv<16>*__xlx_weights_108_output_buffer = new sc_bv<16>[__xlx_size_param_weights_108];
  for (int i = 0; i < __xlx_size_param_weights_108; ++i) {
    __xlx_weights_108_output_buffer[i] = __xlx_weights_108__input_buffer[i+__xlx_offset_param_weights_108];
  }
  for (int i = 0; i < __xlx_size_param_weights_108; ++i) {
    ((char*)__xlx_apatb_param_weights_108)[i*2+0] = __xlx_weights_108_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_108)[i*2+1] = __xlx_weights_108_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_109
  sc_bv<16>*__xlx_weights_109_output_buffer = new sc_bv<16>[__xlx_size_param_weights_109];
  for (int i = 0; i < __xlx_size_param_weights_109; ++i) {
    __xlx_weights_109_output_buffer[i] = __xlx_weights_109__input_buffer[i+__xlx_offset_param_weights_109];
  }
  for (int i = 0; i < __xlx_size_param_weights_109; ++i) {
    ((char*)__xlx_apatb_param_weights_109)[i*2+0] = __xlx_weights_109_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_109)[i*2+1] = __xlx_weights_109_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_110
  sc_bv<16>*__xlx_weights_110_output_buffer = new sc_bv<16>[__xlx_size_param_weights_110];
  for (int i = 0; i < __xlx_size_param_weights_110; ++i) {
    __xlx_weights_110_output_buffer[i] = __xlx_weights_110__input_buffer[i+__xlx_offset_param_weights_110];
  }
  for (int i = 0; i < __xlx_size_param_weights_110; ++i) {
    ((char*)__xlx_apatb_param_weights_110)[i*2+0] = __xlx_weights_110_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_110)[i*2+1] = __xlx_weights_110_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_111
  sc_bv<16>*__xlx_weights_111_output_buffer = new sc_bv<16>[__xlx_size_param_weights_111];
  for (int i = 0; i < __xlx_size_param_weights_111; ++i) {
    __xlx_weights_111_output_buffer[i] = __xlx_weights_111__input_buffer[i+__xlx_offset_param_weights_111];
  }
  for (int i = 0; i < __xlx_size_param_weights_111; ++i) {
    ((char*)__xlx_apatb_param_weights_111)[i*2+0] = __xlx_weights_111_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_111)[i*2+1] = __xlx_weights_111_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_112
  sc_bv<16>*__xlx_weights_112_output_buffer = new sc_bv<16>[__xlx_size_param_weights_112];
  for (int i = 0; i < __xlx_size_param_weights_112; ++i) {
    __xlx_weights_112_output_buffer[i] = __xlx_weights_112__input_buffer[i+__xlx_offset_param_weights_112];
  }
  for (int i = 0; i < __xlx_size_param_weights_112; ++i) {
    ((char*)__xlx_apatb_param_weights_112)[i*2+0] = __xlx_weights_112_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_112)[i*2+1] = __xlx_weights_112_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_113
  sc_bv<16>*__xlx_weights_113_output_buffer = new sc_bv<16>[__xlx_size_param_weights_113];
  for (int i = 0; i < __xlx_size_param_weights_113; ++i) {
    __xlx_weights_113_output_buffer[i] = __xlx_weights_113__input_buffer[i+__xlx_offset_param_weights_113];
  }
  for (int i = 0; i < __xlx_size_param_weights_113; ++i) {
    ((char*)__xlx_apatb_param_weights_113)[i*2+0] = __xlx_weights_113_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_113)[i*2+1] = __xlx_weights_113_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_114
  sc_bv<16>*__xlx_weights_114_output_buffer = new sc_bv<16>[__xlx_size_param_weights_114];
  for (int i = 0; i < __xlx_size_param_weights_114; ++i) {
    __xlx_weights_114_output_buffer[i] = __xlx_weights_114__input_buffer[i+__xlx_offset_param_weights_114];
  }
  for (int i = 0; i < __xlx_size_param_weights_114; ++i) {
    ((char*)__xlx_apatb_param_weights_114)[i*2+0] = __xlx_weights_114_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_114)[i*2+1] = __xlx_weights_114_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_115
  sc_bv<16>*__xlx_weights_115_output_buffer = new sc_bv<16>[__xlx_size_param_weights_115];
  for (int i = 0; i < __xlx_size_param_weights_115; ++i) {
    __xlx_weights_115_output_buffer[i] = __xlx_weights_115__input_buffer[i+__xlx_offset_param_weights_115];
  }
  for (int i = 0; i < __xlx_size_param_weights_115; ++i) {
    ((char*)__xlx_apatb_param_weights_115)[i*2+0] = __xlx_weights_115_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_115)[i*2+1] = __xlx_weights_115_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_116
  sc_bv<16>*__xlx_weights_116_output_buffer = new sc_bv<16>[__xlx_size_param_weights_116];
  for (int i = 0; i < __xlx_size_param_weights_116; ++i) {
    __xlx_weights_116_output_buffer[i] = __xlx_weights_116__input_buffer[i+__xlx_offset_param_weights_116];
  }
  for (int i = 0; i < __xlx_size_param_weights_116; ++i) {
    ((char*)__xlx_apatb_param_weights_116)[i*2+0] = __xlx_weights_116_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_116)[i*2+1] = __xlx_weights_116_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_117
  sc_bv<16>*__xlx_weights_117_output_buffer = new sc_bv<16>[__xlx_size_param_weights_117];
  for (int i = 0; i < __xlx_size_param_weights_117; ++i) {
    __xlx_weights_117_output_buffer[i] = __xlx_weights_117__input_buffer[i+__xlx_offset_param_weights_117];
  }
  for (int i = 0; i < __xlx_size_param_weights_117; ++i) {
    ((char*)__xlx_apatb_param_weights_117)[i*2+0] = __xlx_weights_117_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_117)[i*2+1] = __xlx_weights_117_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_118
  sc_bv<16>*__xlx_weights_118_output_buffer = new sc_bv<16>[__xlx_size_param_weights_118];
  for (int i = 0; i < __xlx_size_param_weights_118; ++i) {
    __xlx_weights_118_output_buffer[i] = __xlx_weights_118__input_buffer[i+__xlx_offset_param_weights_118];
  }
  for (int i = 0; i < __xlx_size_param_weights_118; ++i) {
    ((char*)__xlx_apatb_param_weights_118)[i*2+0] = __xlx_weights_118_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_118)[i*2+1] = __xlx_weights_118_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_119
  sc_bv<16>*__xlx_weights_119_output_buffer = new sc_bv<16>[__xlx_size_param_weights_119];
  for (int i = 0; i < __xlx_size_param_weights_119; ++i) {
    __xlx_weights_119_output_buffer[i] = __xlx_weights_119__input_buffer[i+__xlx_offset_param_weights_119];
  }
  for (int i = 0; i < __xlx_size_param_weights_119; ++i) {
    ((char*)__xlx_apatb_param_weights_119)[i*2+0] = __xlx_weights_119_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_119)[i*2+1] = __xlx_weights_119_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_120
  sc_bv<16>*__xlx_weights_120_output_buffer = new sc_bv<16>[__xlx_size_param_weights_120];
  for (int i = 0; i < __xlx_size_param_weights_120; ++i) {
    __xlx_weights_120_output_buffer[i] = __xlx_weights_120__input_buffer[i+__xlx_offset_param_weights_120];
  }
  for (int i = 0; i < __xlx_size_param_weights_120; ++i) {
    ((char*)__xlx_apatb_param_weights_120)[i*2+0] = __xlx_weights_120_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_120)[i*2+1] = __xlx_weights_120_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_121
  sc_bv<16>*__xlx_weights_121_output_buffer = new sc_bv<16>[__xlx_size_param_weights_121];
  for (int i = 0; i < __xlx_size_param_weights_121; ++i) {
    __xlx_weights_121_output_buffer[i] = __xlx_weights_121__input_buffer[i+__xlx_offset_param_weights_121];
  }
  for (int i = 0; i < __xlx_size_param_weights_121; ++i) {
    ((char*)__xlx_apatb_param_weights_121)[i*2+0] = __xlx_weights_121_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_121)[i*2+1] = __xlx_weights_121_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_122
  sc_bv<16>*__xlx_weights_122_output_buffer = new sc_bv<16>[__xlx_size_param_weights_122];
  for (int i = 0; i < __xlx_size_param_weights_122; ++i) {
    __xlx_weights_122_output_buffer[i] = __xlx_weights_122__input_buffer[i+__xlx_offset_param_weights_122];
  }
  for (int i = 0; i < __xlx_size_param_weights_122; ++i) {
    ((char*)__xlx_apatb_param_weights_122)[i*2+0] = __xlx_weights_122_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_122)[i*2+1] = __xlx_weights_122_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_123
  sc_bv<16>*__xlx_weights_123_output_buffer = new sc_bv<16>[__xlx_size_param_weights_123];
  for (int i = 0; i < __xlx_size_param_weights_123; ++i) {
    __xlx_weights_123_output_buffer[i] = __xlx_weights_123__input_buffer[i+__xlx_offset_param_weights_123];
  }
  for (int i = 0; i < __xlx_size_param_weights_123; ++i) {
    ((char*)__xlx_apatb_param_weights_123)[i*2+0] = __xlx_weights_123_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_123)[i*2+1] = __xlx_weights_123_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_124
  sc_bv<16>*__xlx_weights_124_output_buffer = new sc_bv<16>[__xlx_size_param_weights_124];
  for (int i = 0; i < __xlx_size_param_weights_124; ++i) {
    __xlx_weights_124_output_buffer[i] = __xlx_weights_124__input_buffer[i+__xlx_offset_param_weights_124];
  }
  for (int i = 0; i < __xlx_size_param_weights_124; ++i) {
    ((char*)__xlx_apatb_param_weights_124)[i*2+0] = __xlx_weights_124_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_124)[i*2+1] = __xlx_weights_124_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_125
  sc_bv<16>*__xlx_weights_125_output_buffer = new sc_bv<16>[__xlx_size_param_weights_125];
  for (int i = 0; i < __xlx_size_param_weights_125; ++i) {
    __xlx_weights_125_output_buffer[i] = __xlx_weights_125__input_buffer[i+__xlx_offset_param_weights_125];
  }
  for (int i = 0; i < __xlx_size_param_weights_125; ++i) {
    ((char*)__xlx_apatb_param_weights_125)[i*2+0] = __xlx_weights_125_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_125)[i*2+1] = __xlx_weights_125_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_126
  sc_bv<16>*__xlx_weights_126_output_buffer = new sc_bv<16>[__xlx_size_param_weights_126];
  for (int i = 0; i < __xlx_size_param_weights_126; ++i) {
    __xlx_weights_126_output_buffer[i] = __xlx_weights_126__input_buffer[i+__xlx_offset_param_weights_126];
  }
  for (int i = 0; i < __xlx_size_param_weights_126; ++i) {
    ((char*)__xlx_apatb_param_weights_126)[i*2+0] = __xlx_weights_126_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_126)[i*2+1] = __xlx_weights_126_output_buffer[i].range(15, 8).to_uint();
  }
// print __xlx_apatb_param_weights_127
  sc_bv<16>*__xlx_weights_127_output_buffer = new sc_bv<16>[__xlx_size_param_weights_127];
  for (int i = 0; i < __xlx_size_param_weights_127; ++i) {
    __xlx_weights_127_output_buffer[i] = __xlx_weights_127__input_buffer[i+__xlx_offset_param_weights_127];
  }
  for (int i = 0; i < __xlx_size_param_weights_127; ++i) {
    ((char*)__xlx_apatb_param_weights_127)[i*2+0] = __xlx_weights_127_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_weights_127)[i*2+1] = __xlx_weights_127_output_buffer[i].range(15, 8).to_uint();
  }
}
