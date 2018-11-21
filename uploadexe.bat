@echo %1
dir myprjwindows
cd myprjwindows
cpack --config CPackConfig.cmake
dir
