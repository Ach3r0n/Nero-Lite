@echo off
title Preprocessing...

::set path to inno setup
for /f "tokens=3 skip=3 delims=	" %%i in (
	'reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup 5_is1" /v "Inno Setup: App Path"'
) do (
	set InnoSetupPath=%%i
)
if not exist "%InnoSetupPath%" set InnoSetupPath=%programfiles%\Inno Setup\Inno Setup 5


pushd ".."

::get Nero Version
call Script\Include\getNeroVersion.cmd

::generate Dutch Lite Setup Script
copy /y Script\Lang\Europe\Dutch\NeroLite_dutch.iss Script\Include\NeroLite_dutch_lite.iss > NUL
copy /y Script\Include\defines.iss + Script\NeroLite_base.iss NeroLite_main.iss > NUL
start /B /WAIT "PreProcessing - NeroLite_dutch_lite.iss" /low "%InnoSetupPath%\iscc.exe" "NeroLite_main.iss" /dLite /dNeroVersion=%neroversion% > NUL
copy /y Script\bom.iss+NeroLite_dutch_lite.iss NeroLite_dutch_lite_tmp.iss > NUL
del /f /q NeroLite_dutch_lite.iss > NUL
ren NeroLite_dutch_lite_tmp.iss NeroLite_dutch_lite.iss > NUL
echo.
del /f /q NeroLite_main.iss > NUL
::generate Dutch Micro Setup Script
copy /y Script\Lang\Europe\Dutch\NeroLite_dutch.iss Script\Include\NeroLite_dutch_micro.iss > NUL
copy /y Script\Include\defines.iss + Script\NeroLite_base.iss NeroLite_main.iss > NUL
start /B /WAIT "PreProcessing - NeroLite_dutch_micro.iss" /low "%InnoSetupPath%\iscc.exe" "NeroLite_main.iss" /dMicro /dNeroVersion=%neroversion% > NUL
copy /y Script\bom.iss+NeroLite_dutch_micro.iss NeroLite_dutch_micro_tmp.iss > NUL
del /f /q NeroLite_dutch_micro.iss > NUL
ren NeroLite_dutch_micro_tmp.iss NeroLite_dutch_micro.iss > NUL
echo.
del /f /q NeroLite_main.iss > NUL
popd
pause
