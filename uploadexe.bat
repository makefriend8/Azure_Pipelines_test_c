@echo %1
dir myprjwindows
cd myprjwindows
"C:\Program Files\CMake\bin\cpack.exe" --config CPackConfig.cmake
dir
gittoken=%1
curl -XPOST -H "Content-Type: application/zip" -H "Authorization: token %1" -H "Accept: application/vnd.github.v3+json"  --data-binary @Tutorial-1.0.1-win64.exe "https://uploads.github.com/repos/makefriend8/Azure_Pipelines_test_c/releases/14070624/assets?name=Tutorial-1.0.1-win64.exe"