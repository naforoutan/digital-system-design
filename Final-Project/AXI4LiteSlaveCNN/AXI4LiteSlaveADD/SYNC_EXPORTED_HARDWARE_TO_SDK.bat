@echo off
setlocal
cd /d "%~dp0"

echo Close Xilinx SDK before continuing.
echo Synchronizing the latest exported HDF and its matching bitstream to hw_platform_0...
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\sync_sdk_platform.ps1" -ProjectRoot "%~dp0"
if errorlevel 1 (
    echo.
    echo SDK PLATFORM SYNC FAILED.
    pause
    exit /b 1
)

echo.
echo Now open SDK, run Project ^> Clean, then Project ^> Build All.
pause
endlocal
