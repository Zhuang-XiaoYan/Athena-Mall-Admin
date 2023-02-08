@echo off
echo.
echo package web project and generate war/jar package file
echo.

%~d0
cd %~dp0

cd ..
call mvn clean package -Dmaven.test.skip=true

pause