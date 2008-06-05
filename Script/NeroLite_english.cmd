@echo off
title Preprocessing...

::get Nero Version
call Include\getNeroVersion.cmd

::set path to inno setup
for /f "tokens=3 skip=3 delims=	" %%i in (
	'reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup 5_is1" /v "Inno Setup: App Path"'
) do (
	set InnoSetupPath=%%i
)
if not exist "%InnoSetupPath%" set InnoSetupPath=%programfiles%\Inno Setup\Inno Setup 5

pushd ".."
::generate English Lite Setup Script
copy /y Script\Lang\English\NeroLite_english.iss Script\Include\NeroLite_english_lite.iss > NUL
copy /y Script\NeroLite_base.iss NeroLite_main.iss > NUL
start /B /WAIT "PreProcessing - NeroLite_english_lite.iss" /low "%InnoSetupPath%\iscc.exe" NeroLite_main.iss /dLite /dNeroVersion=%neroversion% > NUL
echo.
del /f /q NeroLite_main.iss > NUL
::generate English Micro Setup Script
copy /y Script\Lang\English\NeroLite_english.iss Script\Include\NeroLite_english_micro.iss > NUL
copy /y Script\NeroLite_base.iss NeroLite_main.iss > NUL
start /B /WAIT "PreProcessing - NeroLite_english_micro.iss" /low "%InnoSetupPath%\iscc.exe" NeroLite_main.iss /dMicro /dNeroVersion=%neroversion% > NUL
echo.
del /f /q NeroLite_main.iss > NUL
popd
pause