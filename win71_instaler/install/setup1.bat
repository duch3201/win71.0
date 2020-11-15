@echo off
:setup
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
cd win71/boot
rem Powershell.exe -executionpolicy remotesigned -File  C:\Users\%username%\Desktop\win71_instaler\installtemp.ps1 
xcopy C:\Users\%username%\Desktop\win71_instaler\instal C:\Wtemp /e /k /v rem installs temp files needed for the installation
if errorlevel 15 goto error
if errorlevel 2 goto error
if errorlevel 3 goto error
cd /
echo  please wait instaling
cd C:\win71
xcopy c:\Wtemp C:\win71 /e /k /v
ping localhost -n 4 >> null
xcopy C:\win71\boot\apps\win71.bat C:\Users\%username%\Desktop /e /k /v
if errorlevel 15 goto error
if errorlevel 2 goto error
if errorlevel 3 goto error
goto reboot

:reboot
cd C:\Users\%username%\Desktop\win71_instaler
if errorlevel 15 goto error
if errorlevel 2 goto error
if errorlevel 3 goto error
call oobe.bat
REM REM exit

:error
cls
title error
echo sorry an error accured and the system stoped the installation
echo error code= 0x%errorlevel%
pause
exit