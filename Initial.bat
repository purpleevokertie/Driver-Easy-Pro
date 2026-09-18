@echo off
setlocal

set LOG_DIR=logs

if not exist "%LOG_DIR%" (
    mkdir "%LOG_DIR%"
)

set REPORT=%LOG_DIR%\system_log.txt

echo System Log > "%REPORT%"
echo ========== >> "%REPORT%"
echo Date: %DATE% >> "%REPORT%"
echo Time: %TIME% >> "%REPORT%"
echo. >> "%REPORT%"

echo Computer Name >> "%REPORT%"
hostname >> "%REPORT%"
echo. >> "%REPORT%"

echo Current User >> "%REPORT%"
echo %USERNAME% >> "%REPORT%"
echo. >> "%REPORT%"

echo Current Directory >> "%REPORT%"
cd >> "%REPORT%"
echo. >> "%REPORT%"

echo Directory Contents >> "%REPORT%"
dir /b >> "%REPORT%"

echo.
echo Report created successfully.
echo File: %REPORT%

pause