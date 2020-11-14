@echo off


:cr1
title :(
color 0f
echo a error acured and system needed to restart error code 0x0000001 >> C:\users\%username%\desktop\win71\error1.txt
if exist goto  cr3
:cr3
cls
cd sounds
set "file=mincr.wav"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
cscript.exe //nologo sound.vbs
echo A error acured and system needs to reboot
ping localhost -n 1 >nul
echo system version %_ver%
ping localhost -n 1 >nul
echo error code 0x0000001
ping localhost -n 1 >nul
echo os state: user made error
ping localhost -n 1 >nul
echo Panic:we hanging here.
ping localhost -n 1 >nul
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
goto :exit1