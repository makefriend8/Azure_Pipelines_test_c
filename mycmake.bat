@echo helle world
mkdir myprjwindows
cd myprjwindows
cmake .. -G "Visual Studio 15 Win64"
cmake --build . --config Release
dir
cpack --help
cpack --version
cpack  --config CPackConfig.cmake
