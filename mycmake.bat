@echo helle world
@echo $(githubtoken)
@echo %1
mkdir myprj
cd myprj
cmake .. -G "Visual Studio 15 Win64"