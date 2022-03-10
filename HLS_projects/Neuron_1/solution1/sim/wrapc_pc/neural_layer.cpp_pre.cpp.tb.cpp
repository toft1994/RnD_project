// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/neural_layer.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/neural_layer.cpp"
# 1 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/1_neuron_layer.hpp" 1
       
# 1 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/defines.hpp" 1
       
# 3 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/1_neuron_layer.hpp" 2



void nnlayer(short int input[256], short int output[256], short int weights[256*256], short int bias[256], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation);
# 2 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/neural_layer.cpp" 2
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstring" 1 3
# 39 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstring" 3
       
# 40 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstring" 3

# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 1 3
# 196 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3

# 196 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  typedef long long unsigned int size_t;
  typedef long long int ptrdiff_t;


  typedef decltype(nullptr) nullptr_t;

}
# 218 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
# 495 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/os_defines.h" 1 3
# 496 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3


# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/cpu_defines.h" 1 3
# 499 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3
# 42 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstring" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 1 3
# 9 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 12 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
# 88 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3
             
# 97 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3
             
# 13 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3
# 44 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 14 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 275 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 1 3
# 9 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 565 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
# 566 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
# 567 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 10 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 99 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3
}



#pragma pack(pop)
# 276 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 534 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
extern "C" {




void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 11 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long intptr_t;
# 75 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long ptrdiff_t;
# 106 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
typedef __time64_t time_t;
# 422 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 10 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 2 3
# 21 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 3
extern "C" {
# 45 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;




}


# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 1 3
# 9 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 2 3
# 23 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h" 3
extern "C" {


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) strcpy_s(char (&_Dest)[__size], const char * _Source) { return strcpy_s(_Dest,__size,_Source); } }
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) strncpy_s(char (&_Dest)[__size], const char * _Source, size_t _MaxCount) { return strncpy_s(_Dest,__size,_Source,_MaxCount); } }
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) _strncpy_s_l(char (&_Dest)[__size], const char * _Source, size_t _MaxCount, _locale_t _Locale) { return _strncpy_s_l(_Dest,__size,_Source,_MaxCount,_Locale); } };
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) strcat_s(char (&_Dest)[__size], const char * _Source) { return strcat_s(_Dest,__size,_Source); } }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t (&_Dest)[__size], const wchar_t * _Source) { return wcscpy_s(_Dest,__size,_Source); } }
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t (&_Dest)[__size], const wchar_t * _Source) { return wcscat_s(_Dest,__size,_Source); } }

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t (&_Dest)[__size], const wchar_t * _Source, size_t _MaxCount) { return wcsncpy_s(_Dest,__size,_Source,_MaxCount); } };
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  extern "C++" { template <size_t __size> inline errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t (&_Dest)[__size], const wchar_t * _Source, size_t _MaxCount, _locale_t _Locale) { return _wcsncpy_s_l(_Dest,__size,_Source,_MaxCount,_Locale); } };
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val, size_t _Count,_locale_t _Locale);

  inline __attribute__((__always_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }



}
# 191 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/string.h" 2 3
# 43 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstring" 2 3
# 71 "C:/Xilinx/Vitis_HLS/2021.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstring" 3
namespace std
{


  using ::memchr;
  using ::memcmp;
  using ::memcpy;
  using ::memmove;
  using ::memset;
  using ::strcat;
  using ::strcmp;
  using ::strcoll;
  using ::strcpy;
  using ::strcspn;
  using ::strerror;
  using ::strlen;
  using ::strncat;
  using ::strncmp;
  using ::strncpy;
  using ::strspn;
  using ::strtok;
  using ::strxfrm;
  using ::strchr;
  using ::strpbrk;
  using ::strrchr;
  using ::strstr;


  inline void*
  memchr(void* __s, int __c, size_t __n)
  { return __builtin_memchr(__s, __c, __n); }

  inline char*
  strchr(char* __s, int __n)
  { return __builtin_strchr(__s, __n); }

  inline char*
  strpbrk(char* __s1, const char* __s2)
  { return __builtin_strpbrk(__s1, __s2); }

  inline char*
  strrchr(char* __s, int __n)
  { return __builtin_strrchr(__s, __n); }

  inline char*
  strstr(char* __s1, const char* __s2)
  { return __builtin_strstr(__s1, __s2); }



}
# 3 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/neural_layer.cpp" 2


# 4 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/neural_layer.cpp"
const int size = 256;
const int max_size = 256;
const int max_weight_size = 256*256;

void relu(short int* data, unsigned char numOfNeurons) {
#pragma HLS inline
 for (unsigned char i = 0; i < numOfNeurons; i++)
 {
#pragma HLS PIPELINE
  if (data[i] < 0)
  {
   data[i] = 0;
  }
 }
}

void nnlayer(short int input_[256], short int output[256], short int weights_[256*256], short int bias_[256], unsigned short int numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation) {
#pragma HLS INTERFACE mode=s_axilite port=input_
#pragma HLS INTERFACE mode=s_axilite port=output
#pragma HLS INTERFACE mode=s_axilite port=weights_
#pragma HLS INTERFACE mode=s_axilite port=bias_
#pragma HLS INTERFACE mode=s_axilite port=numOfInNeurons
#pragma HLS INTERFACE mode=s_axilite port=numOfOutNeurons
#pragma HLS INTERFACE mode=s_axilite port=activation
#pragma HLS INTERFACE mode=s_axilite port=return
 static unsigned short int outNeurons = 0;
 static unsigned short int weightIndexAdded = 0;
 static short int input[256];
 static short int weights[256*256];
 static short int bias[256];

  memcpy(input,(const short int*)input_,256*sizeof(short int));
  memcpy(weights,(const short int*)weights_,256*256*sizeof(short int));
  memcpy(bias,(const short int*)bias_,256*sizeof(short int));

 for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++) {
  output[outNeurons] = bias[outNeurons];
 }

 for (outNeurons = 0; outNeurons < numOfOutNeurons; outNeurons++)
 {
  for (short int inNeurons = 0; inNeurons < numOfInNeurons; inNeurons++)
  {
#pragma HLS PIPELINE
   output[outNeurons] += (weights[inNeurons+weightIndexAdded] * input[inNeurons]);
  }
  weightIndexAdded+=numOfInNeurons;
 }




}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_nnlayer_ir(short *, short *, short *, short *, unsigned short, unsigned short, unsigned char);
#ifdef __cplusplus
extern "C"
#endif
void nnlayer_hw_stub(short *input_, short *output, short *weights_, short *bias_, unsigned short numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation){
nnlayer(input_, output, weights_, bias_, numOfInNeurons, numOfOutNeurons, activation);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_nnlayer_sw(short *input_, short *output, short *weights_, short *bias_, unsigned short numOfInNeurons, unsigned short numOfOutNeurons, unsigned char activation){
apatb_nnlayer_ir(input_, output, weights_, bias_, numOfInNeurons, numOfOutNeurons, activation);
return ;
}
#endif
# 56 "C:/Users/jespe/Desktop/Uni_Civil_10_Semester/RnD/HLS_projects/Neuron_1/neural_layer.cpp"

