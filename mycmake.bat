choco install nsis -y
@echo helle world
mkdir myprjwindows
cd myprjwindows
cmake .. -G "Visual Studio 15 Win64"
cmake --build . --config Release
dir
cpack  --config CPackConfig.cmake
