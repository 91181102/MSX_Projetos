@echo off
title Criando Rom MSX...
set OPENMSX_PATH="C:\git\msx_projetos\msxbas2rom\msxbas2rom.exe"
set BASFILE="C:\git\msx_projetos\bbaby.bas"

echo ========================================
echo Iniciando o MSXBas2Rom com %BASFILE%
echo ========================================

%OPENMSX_PATH% %BASFILE%

echo.
echo Conversao encerrada.
pause
