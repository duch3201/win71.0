@echo off
:setup

rem save the original directory

SET ORIGINAL=%CD%

rem title setup
rem echo hello! before we begin please type your name

echo hello! are you sure you want to install?
set /p Command= Y/N
if %Command% == Y goto install
 if %Command% == N goto exit
pause

:exit
echo exiting
ping localhost -n 2 >>null
exit

:install
cls
title instaling
cd /
mkdir Wtemp
cd /
mkdir win71
cd win71
mkdir boot
cd boot
echo .
rem Powershell.exe -executionpolicy remotesigned -File  C:\Users\%username%\Desktop\win71_instaler\installtemp.ps1 
echo .

rem installs temp files needed for the installation

xcopy %original%\install C:\Wtemp\ /e /k /v 
echo .
if errorlevel 15 goto error
echo .
if errorlevel 2 goto error
echo .
if errorlevel 3 goto error
echo .
echo !
cd /
echo  please wait instaling
cd C:\win71
xcopy c:\Wtemp C:\win71 /e /k /v
echo !
ping localhost -n 4 >> null

xcopy C:\win71\boot\win71.bat C:\Users\%username%\Desktop /e /k /v
echo !
if errorlevel 15 goto error
if errorlevel 2 goto error
if errorlevel 3 goto error
goto reboot

:reboot
cd %original%
if errorlevel 15 goto error
if errorlevel 2 goto error
if errorlevel 3 goto error
call oobe.bat
REM REM exit

:error
rem cls
title error
echo sorry an error accured and the system stoped the installation
echo error code= 0x%errorlevel%
pause
exit