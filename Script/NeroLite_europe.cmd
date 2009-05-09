@echo off
title Preprocessing...

::set path to inno setup
for /f "tokens=3 skip=3 delims=	" %%i in (
	'reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup 5_is1" /v "Inno Setup: App Path"'
) do (
	set InnoSetupPath=%%i
)
if not exist "%InnoSetupPath%" set InnoSetupPath=%programfiles%\Inno Setup\Inno Setup 5

pushd ".\Lang\Europe"
::generate european include file
if exist NeroLite_europe.iss (
	del /f /q NeroLite_europe.iss > NUL
)
echo. > NeroLite_europe.iss
for /f %%i in ('dir /b /ad /on') do (
	if exist %%i\neroLite_%%i.iss (
		copy /b /y NeroLite_europe.iss+%%i\neroLite_%%i.iss NeroLite_europe.iss > NUL
	)
)
popd
pushd ".."

::get Nero Version
call Script\Include\getNeroVersion.cmd

::generate European Lite Setup Script
copy /y Script\Lang\Europe\NeroLite_europe.iss Script\Include\NeroLite_europe_lite.iss > NUL
copy /y Script\Include\defines.iss + Script\NeroLite_base.iss NeroLite_main.iss > NUL
start /B /WAIT "PreProcessing - NeroLite_europe_lite.iss" /low "%InnoSetupPath%\iscc.exe" "NeroLite_main.iss" /dLite /dNeroVersion=%neroversion% > NUL
copy /y Script\bom.iss+NeroLite_europe_lite.iss NeroLite_europe_lite_tmp.iss > NUL
del /f /q NeroLite_europe_lite.iss > NUL
ren NeroLite_europe_lite_tmp.iss NeroLite_europe_lite.iss > NUL
echo.
del /f /q NeroLite_main.iss > NUL
::generate European Micro Setup Script
copy /y Script\Lang\Europe\NeroLite_europe.iss Script\Include\NeroLite_europe_micro.iss > NUL
copy /y Script\Include\defines.iss + Script\NeroLite_base.iss NeroLite_main.iss > NUL
start /B /WAIT "PreProcessing - NeroLite_europe_micro.iss" /low "%InnoSetupPath%\iscc.exe" "NeroLite_main.iss" /dMicro /dNeroVersion=%neroversion% > NUL
copy /y Script\bom.iss+NeroLite_europe_micro.iss NeroLite_europe_micro_tmp.iss > NUL
del /f /q NeroLite_europe_micro.iss > NUL
ren NeroLite_europe_micro_tmp.iss NeroLite_europe_micro.iss > NUL
echo.
del /f /q NeroLite_main.iss > NUL
popd
pause