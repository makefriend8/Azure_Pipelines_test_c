#!/bin/bash 
# This is a very simple example
echo ls
mkdir myprj
cd myprj
cmake ..
ls
make
ls
cpack --config CPackConfig.cmake

