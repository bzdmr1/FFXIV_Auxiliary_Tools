@echo off
setlocal enabledelayedexpansion
set tempPath=%~dp0
set tempPath=!tempPath:~,-1!
echo %tempPath%
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v SoumaTriggerFolder /t REG_SZ /d "%tempPath%" /f
pause