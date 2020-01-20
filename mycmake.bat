@echo helle world
mkdir myprjwindows
cd myprjwindows
cmake .. -G "Visual Studio 15 Win64"
cmake --build . --config Release 
"C:\Program Files\CMake\bin\cpack.exe" --config CPackConfig.cmake
