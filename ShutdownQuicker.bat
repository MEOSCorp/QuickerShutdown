@echo off
color 0F
echo Welcome To ShutdownQuicker! This App Will Help You With All Your Shutdowns And Make It Easier For Turning Off Your PC In Diffrent Ways.
echo Enter Shutdown For A List Of All Shutdowns!
setlocal enabledelayedexpansion

:main
set /p "cmd=C:\>"
if /i "%cmd%"=="Shutdown" goto :Help
if /i "%cmd%"=="Power Off" goto :poweroff
if /i "%cmd%"=="Restart" goto :Restart
if /i "%cmd%"=="Cancel" goto :Cancel
if /i "%cmd%"=="Firmware" goto :Firmware
if /i "%cmd%"=="RecoveryMode" goto :Recovery
if /i "%cmd%"=="FastBoot" goto :Fastboot
if /i "%cmd%"=="Copyright" goto :Copyright
echo Incorrect Shutdown!
goto :main

:Help
echo Shutdowns:
echo Power Off - Normal Shutdown
echo Restart - Normal Restart
echo Cancel - Cancel Any Shutdowns
echo Firmware - Restarts And Boots Into The Firmware User Interface (NOT WORKING ON SOME DEVICES!)
echo RecoveryMode - Goto The WindowsRE (RE Stands For Recovery)
echo FastBoot - Boot The Computer Up Quicker
echo Copyright - Credits And Copyright
echo Each Shutdown Takes 25 Secounds So You Can Cancel If You Need
echo You Should Run This App As Administartor
pause
goto :main

:poweroff
Shutdown /s /t 25
pause
goto :main

:Restart
shutdown /r /t 25
pause
goto :main

:cancel
shutdown /a
pause
goto :main

:Firmware
echo MAY NOT WORK ON ALL SYSTEMS!!!
shutdown /s /fw /t 25
pause
goto :main

:Recovery
shutdown /r /o /t 25
pause
goto :main

:FastBoot
shutdown /s /hybrid /t 25
pause
goto :main

:Copyright
echo Copyright (c) 2025,2025 MEOS Corp
echo Thank You For Using Our App!
echo We Injoyed Making It For You!
echo Do Not Do Piracy!
echo This Is 100% Owned By MEOS The Trademark,Copyright And Code Modifying This App Is ILLEGAL!
echo Donate By:
echo Going On PayPal
echo Searching MEOS
echo And Then Donate!
echo Bug Fixes And Requests At https://github.com/MEOSCorp/MEOS-Corp
echo ShutdownQuicker
echo Version 1.0.0
echo Credits:
echo Programming:
echo Dylan Harris
echo Spelling Corrections:
ECHO OpenAi
echo Functions:
echo Dylan Harris
pause
goto :main
