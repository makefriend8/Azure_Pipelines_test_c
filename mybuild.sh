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
gittoken=%1
echo $gittoken
curl -XPOST -H "Content-Type: application/zip" -H "Authorization: token $gittoken" -H "Accept: application/vnd.github.v3+json"  --data-binary @Tutorial-1.0.1-Linux.sh "https://uploads.github.com/repos/makefriend8/Azure_Pipelines_test_c/releases/14070624/assets?name=Tutorial-1.0.1-Linux.sh"
