@echo off
goto appname
:appname
timeout /T 1 /NOBREAK >nul
cls
title MyOS - App Name
echo Title - version ?.?.?
echo 1 - a
echo 2 - b
echo 3 - c
set /p d=Command 
if %d% == 1 (your command here)
if %d% == 2 (your command here)
if %d% == 3 (your command here)
echo text
timeout /T 1 /NOBREAK >nul
goto appname
(your schedule here)