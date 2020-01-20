rem curl -O https://superb-sea2.dl.sourceforge.net/project/nsis/NSIS%203/3.03/nsis-3.03-setup.exe
rem dir
rem nsis-3.03-setup.exe /S
@echo helle world
@echo $(githubtoken)
@echo %1
mkdir myprjwindows
cd myprjwindows
cmake .. -G "Visual Studio 15 Win64"
cmake --build . --config Release
cpack.exe  --config CPackConfig.cmake
