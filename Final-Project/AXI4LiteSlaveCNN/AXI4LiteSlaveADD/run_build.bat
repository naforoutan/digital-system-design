@echo off
setlocal

if defined XILINX_VIVADO (
    set "VIVADO=%XILINX_VIVADO%\bin\vivado.bat"
) else (
    set "VIVADO=C:\Xilinx\Vivado\2018.2\bin\vivado.bat"
)

if not exist "%VIVADO%" (
    echo Vivado 2018.2 was not found at:
    echo %VIVADO%
    echo Set XILINX_VIVADO or edit run_build.bat.
    pause
    exit /b 1
)

cd /d "%~dp0"
call "%VIVADO%" -mode tcl -source build_final_project.tcl
endlocal
