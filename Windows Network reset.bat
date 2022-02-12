@echo off

TITLE Common windows network issues fix

net session >nul 2>&1
if not %errorLevel% == 0 (
	echo.
	echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
	echo This script must be run as administrator to work properly!  
	echo Run this script as administrator. "Run As Administrator".
	echo ##########################################################
	pause
	exit /b 1
) else (
	echo Success: Administrative permissions confirmed.
	echo.
)

echo Performing operations. Please wait...
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1
ipconfig /release >nul 2>&1
::ipconfig /renew >nul 2>&1
netsh winsock reset >nul 2>&1
netsh int ip reset >nul 2>&1
echo.
echo Success!! Please restart your pc and reconnect to network Ezzz.
echo.
echo.
pause