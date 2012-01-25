@echo off
rem A web search for "return code 0xc0000135" turned up the information that this means 
rem nmake cannot find the compiler. Which means that you did not start nmake in a Visual 
rem Studio command shell. If you want to use a standard command shell you have to call 
rem vcvarsall.bat or similar in the VC directory of you Visual Studio installation. 
rem If it still does not work, check the INCLUDE and LIB environment variables. 
rem They sould contain ...\VC\INCLUDE and 
rem %ProgramFiles%\Microsoft SDKs\Windows\v6.0A\include and the corresponding LIB dirs.

rem PATH=%PATH%;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin
rem call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin\amd64\vcvars64.bat"

set INCLUDE=%INCLUDE%;C:\Users\ASgibnev\Desktop\Distr\openssl-0.9.8k_X64\include
set LIB=%INCLUDE%;C:\Users\ASgibnev\Desktop\Distr\openssl-0.9.8k_X64\lib;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Lib\x64;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\lib\amd64
set LIBPATH=%LIBPATH%;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Lib\x64;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\lib\amd64

rem set >set.log
rem nmake -f Makefile.mak clean
nmake -a -f Makefile.mak  BUILD_ON=WIN64 BUILD_FOR=WIN64 >aaa
