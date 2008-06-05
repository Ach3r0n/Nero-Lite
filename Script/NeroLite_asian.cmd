@echo off
title Preprocessing...

::set path to inno setup
for /f "tokens=3 skip=3 delims=	" %%i in (
	'reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup 5_is1" /v "Inno Setup: App Path"'
) do (
	set InnoSetupPath=%%i
)
if not exist "%InnoSetupPath%" set InnoSetupPath=%programfiles%\Inno Setup\Inno Setup 5

pushd ".\Lang\Asian"
::generate asian include file
if exist NeroLite_asian.iss (
	del /f /q NeroLite_asian.iss > NUL
)
echo. > NeroLite_asian.iss
for /f %%i in ('dir /b /ad /on') do (
	if exist %%i\neroLite_%%i.iss (
		copy /b /y NeroLite_asian.iss+%%i\neroLite_%%i.iss NeroLite_asian.iss > NUL
	)
)
popd
pushd ".."

::get Nero Version
call Script\Include\getNeroVersion.cmd

::generate Asian Lite Setup Script
copy /y Script\Lang\Asian\NeroLite_asian.iss Script\Include\NeroLite_asian_lite.iss > NUL
copy /y Script\NeroLite_base.iss NeroLite_main.iss > NUL

start /B /WAIT "PreProcessing - NeroLite_asian_lite.iss" /low "%InnoSetupPath%\iscc.exe" "NeroLite_main.iss" /dLite /dNeroVersion=%neroversion% > NUL

echo.
del /f /q NeroLite_main.iss > NUL
::generate Asian Micro Setup Script
copy /y Script\Lang\Asian\NeroLite_asian.iss Script\Include\NeroLite_asian_micro.iss > NUL
copy /y Script\NeroLite_base.iss NeroLite_main.iss > NUL

start /B /WAIT "PreProcessing - NeroLite_asian_micro.iss" /low "%InnoSetupPath%\iscc.exe" "NeroLite_main.iss" /dMicro /dNeroVersion=%neroversion% > NUL

echo.
del /f /q NeroLite_main.iss > NUL
popd
pause
