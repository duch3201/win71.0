@echo off
:cr10
title :(
color 0f
cls
cd soundss
echo A error acured and system needs to reboot
ping localhost -n 1 >nul
echo system version %_ver%
ping localhost -n 1 >nul
echo error code 0x0000010
ping localhost -n 1 >nul
echo os state: unsafe
ping localhost -n 1 >nul
echo Panic:we hanging here
ping localhost -n 1 >nul.
echo just colecting crash info 
ping localhost -n 4 >nul
echo 1
ping localhost -n 2 >nul
echo 2
ping localhost -n 1 >nul
echo 5
ping localhost -n 4 >nul
echo 7
ping localhost -n 5 >nul
echo 90
ping localhost -n 6 >nul
echo 99
ping localhost -n 7 >nul
echo 100
ping localhost -n 1 >nul
echo done
ping localhost -n 3 >nul
goto :exit