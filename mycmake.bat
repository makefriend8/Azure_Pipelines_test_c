curl -O https://nchc.dl.sourceforge.net/project/nsis/NSIS%203/3.05/nsis-3.05-setup.exe
dir
nsis-3.05-setup.exe /S
@echo helle world
@echo $(githubtoken)
@echo %1
mkdir myprjwindows
cd myprjwindows
cmake .. -G "Visual Studio 15 Win64"
cmake --build . --config Release
dir
cpack  --config CPackConfig.cmake
