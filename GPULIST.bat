@echo off
powershell -version 5.0 -executionpolicy bypass -command "&.\gpulist.ps1 
devicelist.exe --list-devices
pause