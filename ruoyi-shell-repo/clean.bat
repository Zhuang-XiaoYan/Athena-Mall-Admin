@echo off
echo.
echo clean create file path。
echo.

%~d0
cd %~dp0

cd ..
call mvn clean

pause