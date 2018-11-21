choco install nsis -y
@echo helle world
@echo $(githubtoken)
@echo %1
mkdir myprjwindows
cd myprjwindows
cmake .. -G "Visual Studio 15 Win64"