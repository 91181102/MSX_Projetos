@echo off
title Iniciando MSX...
set OPENMSX_PATH="C:\Program Files\openMSX\openmsx.exe"
set BASFILE="C:\git\msx_projetos\bbaby.bas"
set MACHINE="Gradiente_Expert_XP-800"

echo ========================================
echo  Iniciando o openMSX com %BASFILE%
echo Maquina  = %MACHINE%
echo ========================================

%OPENMSX% -machine %MACHINE% -script "load \"%BASFILE%\":run"

echo.
echo Emulador encerrado.
pause