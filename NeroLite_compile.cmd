@echo off
setlocal enabledelayedexpansion
::get Nero Version
call "Script\Include\getNeroVersion.cmd"

::set path to inno setup
for /f "tokens=3 skip=3 delims=	" %%i in (
	'reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup 5_is1" /v "Inno Setup: App Path"'
) do (
	rem set InnoSetupPath=%%i
)
if not exist "%InnoSetupPath%" set InnoSetupPath=%programfiles%\Inno Setup\Inno Setup 5

@for /f %%i in ('dir /b *.iss') do (
	set setupname=%%~ni
	set setupname=!setupname:~8!
	set setupname=Nero-%neroversion%!setupname!.exe
	title Compiling !setupname!...
	start /B /WAIT "Compiling !setupname!" /low "%InnoSetupPath%\iscc.exe" "%%~fi"
	call "Script\Include\signfile.cmd" "Output\!setupname!"
	del %%i
)
pause
exit