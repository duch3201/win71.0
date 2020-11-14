@echo off
title booting
color 07

:booting

echo ...===....................===....==.......===............===......============.....======
echo ....===..................===.............===.===........===..............===....===..===
echo .....===......===.......===.....==......===....===.....===............===...........===
echo ......===...===.===...===......==......===......===...===..........===.............===
echo .......===...........===......==......===........===.===........===...............===
echo please wait starting the os
ping localhost -n 10 >>nul
cd sounds
set "file=test.wav"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
cscript.exe //nologo sound.vbs
cd /
cd C:\Users\%username%\win71\boot
call win71.bat
exit


rem           _      _____ _ 
rem __      _(_)_ __|___  / |
rem \ \ /\ / / | '_ \  / /| |
rem  \ V  V /| | | | |/ / | |
rem   \_/\_/ |_|_| |_/_/  |_|
                         
