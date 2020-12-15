@echo off
goto load

:iclogin
title incorect login
echo sorry but the password/username is incorect 
pause
goto login

:load
cls
rem imitation of loading the os
color 70
title boot
echo please wait...
timeout /t 3 >nul
cls
rem in here user types name he wants to be his account name

:login
cd /
cd C:\Users\%username%\win71\boot\Users\Account_Nr1
set /P Pname=<Account_Name.txt
set /P Ppassword=<Account_Password.txt
title login
echo %Pname%
echo %Ppassword%
echo welcome to windows 71
echo Before we begin please type your name
set /P _name=here:
echo enter password
set /P _pass=here:
if "%_name%" == "%Pname%" goto chck1

:chck1
if "%_pass%" == "%Ppassword%" goto ms (

else goto iclogin
)


rem ms=menu start

:ms 
title hello %name%
cls
echo %time%
echo hello %Pname% 
rem need to add more choice's for new apps
CHOICE /C HECAGIV /M "Press H for Help, E to exit C for Calender,A for calculator,G for games, I for instalation media V for txt boot."
goto opt%errorlevel%

:opt1
echo ______________________________________________
echo hello %_name%. welcome to windows71 the os based of MS-DOS.
echo the os is in 
echo right now there is not much you can do in here but im working
echo on abilty to add and remove apps like calculator notepad and most
echo imponrtantly abilty to add remove accounts or set passwords to them
pause
goto ms

:opt2
rem going to add "are you sure" segment 
rem done!
echo are you sure to leave?
set /p Command= Y.N
if %Command% == Y goto exit
if %Command% == N goto ms

:opt3
title calendar
cls
echo %time%
date
pause
goto ms

:cr1
call cr1.bat

:opt4
goto opt6
rem cd C:\Users\krzysztof\Desktop\krzysztof\OS
rem start calculator.bat
rem ping localhost -n 3 >nul
rem goto ms

:opt5
cls
title games
echo welcome to games land
echo choose a game
echo type q for quiz game.
echo to exit type "Exit"
set /p Command=
if %Command% == g goto gm1
if %Command% == Exit goto ms

:gm1
cd C:\Users\%username%\Desktop\win71
start game.bat
goto opt5

:mm
cls
title ?
echo are you sure to leave?
set /p Command= Y.N
if %Command% == Y goto ms
if %Command% == N goto opt6

:1
call cr05.bat

:opt6
call cr20.bat

:fix
rem need to fix
cd C:\Users\krzysztof\Desktop\win71\boot\update
if exist <update.bat> (
    rem file exists
	goto prepering
) else (
    rem file doesn't exist
	goto nuf
)

:update
color 07
title updating
ping localhost -n 4 >nul
echo instaling updates
echo please wait
ping localhost -n 6 >nul
cls
echo getting the os ready
ping localhost -n 10 >nul
goto b2s

:b2s
cd c:\users\%username%\desktop\win71_instaler
call setup.bat

:nuf
title no update found
echo no update found-error
echo make sure that update folder is in c:\users\%username%\desktop\win71\
echo if folder does not exist you need to add it manualy
ping localhost -n 4 >nul
pause
goto ms

:opt8
goto cr1

:opt9
goto 1

:opt10
goto cr10

:opt


:ver
echo please type version of the os you are using
set /p _ver=
goto ms
if ver =="1.0"
goto cr20




:cr10
call cr10.bat



:opt7
title ?
cls
echo are you sure?
set /p Command= (Y/N)
if %Command% == Y goto vm
if %Command% == N goto ms

:vm
cd C:\Users\krzysztof\Desktop\krzysztof\windows71\beta 1.0\win71
call vboot.bat


:exit1
ping localhost -n 4 >nul
exit





:cr20
call cr20.bat

:ad
cls
echo hello, world!
call admin.bat
