@echo off
goto Login
SetLocal EnableExtensions DisableDelayedExpansion

:Login
CD /D "C:\Users\%username%\win71\boot\Users\Account_Nr1" 2> NUL || GoTo :EOF
For %%G In (Name Password) Do (
    If Exist "Account_%%G.txt" (
        Set "Preset%%G="
        Set /P "Preset%%G=" 0< "Account_%%G.txt"
    ) Else GoTo :EOF) 
For %%G in (Name Password) Do If Not Defined Preset%%G GoTo :EOF
Title LogIn
ClS
Date /T
"%__AppDir__%timeout.exe" /T 2 1> NUL
ClS
For %%G In (name pass) Do Set "_%%G="
Set /P "_name=Please type your username here>"
(Set _name | "%__AppDir__%findstr.exe" /IR "^_name=%PresetName%$") 1> NUL 2>&1
If ErrorLevel 1 GoTo ICLogIn
Set /P "_pass=Please enter your password here>"
(Set _pass | "%__AppDir__%findstr.exe" /IR "^_pass=%PresetPassword%$") 1> NUL 2>&1
If Not ErrorLevel 1 GoTo MS
Echo Login Failed
Echo Press any key to close. . .
"%__AppDir__%timeout.exe" /T -1 1> NUL
GoTo :EOF

:ICLogin
Echo Create a LogIn
Timeout /T 3
GoTo :EOF

:MS
Echo Passed
Timeout /T 3

::cd /
::cd C:\Users\%username%\win71\boot\Logs
::echo 
::01x283446202>log.txt