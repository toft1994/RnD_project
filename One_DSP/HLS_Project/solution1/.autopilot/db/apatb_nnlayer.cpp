#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_input_r "../tv/cdatafile/c.nnlayer.autotvin_input_r.dat"
#define AUTOTB_TVOUT_input_r "../tv/cdatafile/c.nnlayer.autotvout_input_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_r "../tv/cdatafile/c.nnlayer.autotvin_output_r.dat"
#define AUTOTB_TVOUT_output_r "../tv/cdatafile/c.nnlayer.autotvout_output_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_bias "../tv/cdatafile/c.nnlayer.autotvin_bias.dat"
#define AUTOTB_TVOUT_bias "../tv/cdatafile/c.nnlayer.autotvout_bias.dat"
// wrapc file define:
#define AUTOTB_TVIN_weights "../tv/cdatafile/c.nnlayer.autotvin_weights.dat"
#define AUTOTB_TVOUT_weights "../tv/cdatafile/c.nnlayer.autotvout_weights.dat"
// wrapc file define:
#define AUTOTB_TVIN_numOfInNeurons "../tv/cdatafile/c.nnlayer.autotvin_numOfInNeurons.dat"
#define AUTOTB_TVOUT_numOfInNeurons "../tv/cdatafile/c.nnlayer.autotvout_numOfInNeurons.dat"
// wrapc file define:
#define AUTOTB_TVIN_numOfOutputNeurons "../tv/cdatafile/c.nnlayer.autotvin_numOfOutputNeurons.dat"
#define AUTOTB_TVOUT_numOfOutputNeurons "../tv/cdatafile/c.nnlayer.autotvout_numOfOutputNeurons.dat"
// wrapc file define:
#define AUTOTB_TVIN_activation "../tv/cdatafile/c.nnlayer.autotvin_activation.dat"
#define AUTOTB_TVOUT_activation "../tv/cdatafile/c.nnlayer.autotvout_activation.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_input_r "../tv/rtldatafile/rtl.nnlayer.autotvout_input_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_r "../tv/rtldatafile/rtl.nnlayer.autotvout_output_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bias "../tv/rtldatafile/rtl.nnlayer.autotvout_bias.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_weights "../tv/rtldatafile/rtl.nnlayer.autotvout_weights.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_numOfInNeurons "../tv/rtldatafile/rtl.nnlayer.autotvout_numOfInNeurons.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_numOfOutputNeurons "../tv/rtldatafile/rtl.nnlayer.autotvout_numOfOutputNeurons.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_activation "../tv/rtldatafile/rtl.nnlayer.autotvout_activation.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  input_r_depth = 0;
  output_r_depth = 0;
  bias_depth = 0;
  weights_depth = 0;
  numOfInNeurons_depth = 0;
  numOfOutputNeurons_depth = 0;
  activation_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{input_r " << input_r_depth << "}\n";
  total_list << "{output_r " << output_r_depth << "}\n";
  total_list << "{bias " << bias_depth << "}\n";
  total_list << "{weights " << weights_depth << "}\n";
  total_list << "{numOfInNeurons " << numOfInNeurons_depth << "}\n";
  total_list << "{numOfOutputNeurons " << numOfOutputNeurons_depth << "}\n";
  total_list << "{activation " << activation_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int input_r_depth;
    int output_r_depth;
    int bias_depth;
    int weights_depth;
    int numOfInNeurons_depth;
    int numOfOutputNeurons_depth;
    int activation_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s2__ { char data[2]; };
extern "C" void nnlayer_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, short, short, char);

extern "C" void apatb_nnlayer_hw(volatile void * __xlx_apatb_param_input_r, volatile void * __xlx_apatb_param_output_r, volatile void * __xlx_apatb_param_bias, volatile void * __xlx_apatb_param_weights, short __xlx_apatb_param_numOfInNeurons, short __xlx_apatb_param_numOfOutputNeurons, char __xlx_apatb_param_activation) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<16> tr(128);
aesl_fh.read(AUTOTB_TVOUT_PC_output_r, tr.p, tr.tbytes);
tr.reorder();
tr.send<2>((char*)__xlx_apatb_param_output_r, 128);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_r);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > output_r_pc_buffer(128);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "output_r");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_r_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "output_r" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 128; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_output_r)[j*2+0] = output_r_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_output_r)[j*2+1] = output_r_pc_buffer[i].range(15, 8).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_input_r = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_input_r, 'b');
transaction<16> tr(128);
  __xlx_offset_byte_param_input_r = 0*2;
  if (__xlx_apatb_param_input_r) {
tr.import<2>((char*)__xlx_apatb_param_input_r, 128, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_input_r, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.input_r_depth);
#else
// print input_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_input_r, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_input_r = 0*2;
  if (__xlx_apatb_param_input_r) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_input_r)[j];
aesl_fh.write(AUTOTB_TVIN_input_r, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(128, &tcl_file.input_r_depth);
aesl_fh.write(AUTOTB_TVIN_input_r, end_str());
}

#endif
unsigned __xlx_offset_byte_param_output_r = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_output_r, 'b');
transaction<16> tr(128);
  __xlx_offset_byte_param_output_r = 0*2;
  if (__xlx_apatb_param_output_r) {
tr.import<2>((char*)__xlx_apatb_param_output_r, 128, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_output_r, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.output_r_depth);
#else
// print output_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_output_r, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_output_r = 0*2;
  if (__xlx_apatb_param_output_r) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_output_r)[j];
aesl_fh.write(AUTOTB_TVIN_output_r, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(128, &tcl_file.output_r_depth);
aesl_fh.write(AUTOTB_TVIN_output_r, end_str());
}

#endif
unsigned __xlx_offset_byte_param_bias = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_bias, 'b');
transaction<16> tr(128);
  __xlx_offset_byte_param_bias = 0*2;
  if (__xlx_apatb_param_bias) {
tr.import<2>((char*)__xlx_apatb_param_bias, 128, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_bias, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.bias_depth);
#else
// print bias Transactions
{
aesl_fh.write(AUTOTB_TVIN_bias, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_bias = 0*2;
  if (__xlx_apatb_param_bias) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_bias)[j];
aesl_fh.write(AUTOTB_TVIN_bias, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(128, &tcl_file.bias_depth);
aesl_fh.write(AUTOTB_TVIN_bias, end_str());
}

#endif
unsigned __xlx_offset_byte_param_weights = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_weights, 'b');
transaction<16> tr(16384);
  __xlx_offset_byte_param_weights = 0*2;
  if (__xlx_apatb_param_weights) {
tr.import<2>((char*)__xlx_apatb_param_weights, 16384, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_weights, tr.p, tr.tbytes);
}

  tcl_file.set_num(16384, &tcl_file.weights_depth);
#else
// print weights Transactions
{
aesl_fh.write(AUTOTB_TVIN_weights, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights = 0*2;
  if (__xlx_apatb_param_weights) {
    for (int j = 0  - 0, e = 16384 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_weights)[j];
aesl_fh.write(AUTOTB_TVIN_weights, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(16384, &tcl_file.weights_depth);
aesl_fh.write(AUTOTB_TVIN_weights, end_str());
}

#endif
// print numOfInNeurons Transactions
{
aesl_fh.write(AUTOTB_TVIN_numOfInNeurons, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)&__xlx_apatb_param_numOfInNeurons);
aesl_fh.write(AUTOTB_TVIN_numOfInNeurons, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.numOfInNeurons_depth);
aesl_fh.write(AUTOTB_TVIN_numOfInNeurons, end_str());
}

// print numOfOutputNeurons Transactions
{
aesl_fh.write(AUTOTB_TVIN_numOfOutputNeurons, begin_str(AESL_transaction));
{
    sc_bv<16> __xlx_tmp_lv = *((short*)&__xlx_apatb_param_numOfOutputNeurons);
aesl_fh.write(AUTOTB_TVIN_numOfOutputNeurons, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.numOfOutputNeurons_depth);
aesl_fh.write(AUTOTB_TVIN_numOfOutputNeurons, end_str());
}

// print activation Transactions
{
aesl_fh.write(AUTOTB_TVIN_activation, begin_str(AESL_transaction));
{
    sc_bv<8> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_activation);
aesl_fh.write(AUTOTB_TVIN_activation, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.activation_depth);
aesl_fh.write(AUTOTB_TVIN_activation, end_str());
}

CodeState = CALL_C_DUT;
nnlayer_hw_stub_wrapper(__xlx_apatb_param_input_r, __xlx_apatb_param_output_r, __xlx_apatb_param_bias, __xlx_apatb_param_weights, __xlx_apatb_param_numOfInNeurons, __xlx_apatb_param_numOfOutputNeurons, __xlx_apatb_param_activation);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_output_r, 'b');
transaction<16> tr(128);
  __xlx_offset_byte_param_output_r = 0*2;
  if (__xlx_apatb_param_output_r) {
tr.import<2>((char*)__xlx_apatb_param_output_r, 128, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_output_r, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.output_r_depth);
#else
// print output_r Transactions
{
aesl_fh.write(AUTOTB_TVOUT_output_r, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_output_r = 0*2;
  if (__xlx_apatb_param_output_r) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_output_r)[j];
aesl_fh.write(AUTOTB_TVOUT_output_r, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(128, &tcl_file.output_r_depth);
aesl_fh.write(AUTOTB_TVOUT_output_r, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
