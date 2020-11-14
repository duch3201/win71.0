@echo off
:main
call Logon_UI.bat
goto repeat

:repeat
cd /
cd C:\Users\%username%\win71\boot\Log
set /P %WTOC%=<log.txt
::WTOC = What Type Of Crash
if %WTOC% == 01x283446202 (goto CT01)
if not goto repeat
if %WTOC% == 05x218592720 goto CT05
if not goto repeat
if %WTOC% == 10x194772044 goto CT10
if not goto repeat
if %WTOC% == 20x106821547 goto CT20
if not goto repeat

:CT01
cd /
cd C:\Users\%username%\win71\boot
call cr1.bat

:CT05
cd C:\Users\%username%\win71\boot
call cr05.bat

:CT10
cd C:\Users\%username%\win71\boot
call cr10.bat

:CT20
cd C:\Users\%username%\win71\boot	
call cr20.bat