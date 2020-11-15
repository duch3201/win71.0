@echo off
cls

:setup
title out of the box experience
cls
echo welcome to win71
echo let's start with your account name.
set /p account=
pause
echo great! Now time for the account password.
set /p password=
pause
cls
rem echo do you want to know some more information about your system? 
rem todo ***start***







rem todo ***end***

echo Hold on we are configuring some files needed for the first boot.
SLEEP 1
cd /
cd win71/boot/Users
sleep 1
mkdir account1
cd account1
sleep 3
echo %account%>Name.txt
echo %password%>Password.txt
sleep 4
cls
echo Just a moment. 
sleep 15 rem just to seem realistic

title setup is done!
echo the setup is done. 
pause -n 

cd/
cd C:\Users\%username%\Desktop
start win71.bat
exit
