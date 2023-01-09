#pragma once

#ifdef SM_DEBUG
  #define LOGGING_ENABLED
#else
  #error "Testing Debug"
#endif

#if SM_WINDOWS
  //#define SM_API __dllspec(dllexport);
#else 
  //#define SM_API __dllspec(dllimport);
#endif