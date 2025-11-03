@echo off
setLOCAL enabledelayedexpansion

:: Definições de variáveis
set MSX_COMPILER="C:\git\msx_projetos\msxbas2rom\msxbas2rom.exe"
set OPENMSX_PATH="C:\Program Files\openMSX\openmsx.exe"
:: set MACHINE="Gradiente_Expert_XP-800"
set MACHINE="Boosted_MSX2_EN"
set PROJECT_DIR="C:\git\msx_projetos\bbaby20\src\"
set OUTPUT_BAS="C:\git\msx_projetos\bbaby20\bin\bbaby.bas"
set ROM_PATH="C:\git\msx_projetos\bbaby20\bin\bbaby[ASCII8].rom"


:: Limpa o arquivo de saída .bas, se existir
echo. > "%OUTPUT_BAS%"

:: Concatena todos os arquivos .bas do diretório de entrada
for %%F in ("%PROJECT_DIR%\*.bas") do (
    if /i not "%%F" == %OUTPUT_BAS% (
        type "%%F" >> %OUTPUT_BAS%
    )
)

:: Compila o arquivo .bas para .rom
"%MSX_COMPILER%" -c -x %OUTPUT_BAS%

:: Executa no OpenMSX
@echo off
title Iniciando MSX...
echo ========================================
echo Iniciando o openMSX com %ROM_PATH%
echo Máquina  = %MACHINE%
echo ========================================

%OPENMSX_PATH% -machine %MACHINE% -cart %ROM_PATH%
::%OPENMSX_PATH% -machine %MACHINE% -ext %ROM_PATH% 

echo.
echo Emulador encerrado.
pause