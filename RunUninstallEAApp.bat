@echo off
:: BatchGotAdmin

:: Output message to boot Battlefield 2042 and wait for Enter key
echo NOTE: This script will uninstall the "EA app" from your pc, after this has been done, boot Battlefield 2042 from Steam.
echo Press Enter to continue...
pause

:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
Powershell.exe -executionpolicy Bypass -File UninstallEAApp.ps1

:: Output message to boot Battlefield 2042
echo Please boot Battlefield 2042.
