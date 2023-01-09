@ECHO OFF
pushd %~dp0\..
call .\premake\bin\premake5.exe vs2022 ..\..\premake5.lua
popd
PAUSE