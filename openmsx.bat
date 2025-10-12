@echo off
title Iniciando MSX...
set OPENMSX_PATH="C:\Program Files\openMSX\openmsx.exe"
set ROM_PATH="C:\git\msx_projetos\bbaby.rom"
set MACHINE="Gradiente_Expert_XP-800"

echo ========================================
echo  Iniciando o openMSX com %ROM_PATH%
echo Máquina  = %MACHINE%
echo ========================================

%OPENMSX_PATH% -machine %MACHINE% -cart %ROM_PATH%

echo.
echo Emulador encerrado.
pause