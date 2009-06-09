@echo off
setlocal enabledelayedexpansion enableextensions
title Micromize...
set neroversion=9
::push to subdirectory
pushd Custom

::merge version specific files
if %neroversion% LSS 8 (
copy /y ResourceScripts\Nero7\*.txt ResourceScripts\ > NUL
) else (
copy /y ResourceScripts\Nero8\*.txt ResourceScripts\ > NUL
)
echo Micromize:

::MSI FilePaths
if %neroversion% == 9 (
::set CommonFiles.MsiFilePath=^[FILELOCATION^]Common Files\Lib\NT
set HomeComponents.MsiFilePath=PFiles\Nero\Nero 9\Nero Burning ROM\NFD
set NeroSetup.MsiFilePath=Nero\AdvrCntr4
set SetupX.MsiFilePath=Nero\Nero ProductInstaller 4
set NeroCore.MsiFilePath=PFiles\Nero\Nero 9\Nero Burning ROM
set CoverDesigner.MsiFilePath=PFiles\Nero\Nero 9\Nero CoverDesigner
set WaveEditor.MsiFilePath=Nero\Nero 9\Nero WaveEditor
set BurnRights.MsiFilePath=Nero\Nero 9\Nero BurnRights
set DiscSpeed.MsiFilePath=Nero\Nero 9\Nero DiscSpeed
set DriveSpeed.MsiFilePath=Nero\Nero 9\Nero DriveSpeed
set InfoTool.MsiFilePath=Nero\Nero 9\Nero InfoTool
)
if %neroversion% LSS 9 (
set CommonFiles.MsiFilePath=^[FILELOCATION^]Common Files\Lib\NT
set HomeComponents.MsiFilePath=^[FILELOCATION^]Nero Home Components\NT
set NeroSetup.MsiFilePath=^[FILELOCATION^]\Setup
set SetupX.MsiFilePath=^[FILELOCATION^]
set NeroCore.MsiFilePath=^[FILELOCATION^]Core
set CoverDesigner.MsiFilePath=^[FILELOCATION^]Nero CoverDesigner
set WaveEditor.MsiFilePath=^[FILELOCATION^]Nero WaveEditor
set BurnRights.MsiFilePath=^[FILELOCATION^]\Nero BurnRights
set InfoTool.MsiFilePath=^[FILELOCATION^]\Nero InfoTool
)
if %neroversion% == 8 (
set DiscSpeed.MsiFilePath=^[FILELOCATION^]\Nero CD-DVD Speed
set DriveSpeed.MsiFilePath=^[FILELOCATION^]\Nero Toolkit DriveSpeed
)
if %neroversion% == 7 (
	set CDSpeed.MsiFilePath=^[FILELOCATION^]\Nero CD-DVD Speed
	set DriveSpeed.MsiFilePath=^[FILELOCATION^]\Nero DriveSpeed
)


::Nero shared files
if %neroversion% LSS 8 (
	call :MICROMIZE advrcntr2.dll "%CommonFiles.MsiFilePath%" english
	call :MICROMIZE advrcntr2.dll "%CommonFiles.MsiFilePath%"
) else (
	call :MICROMIZE advrcntr3.dll "%CommonFiles.MsiFilePath%" english
	call :MICROMIZE advrcntr3.dll "%CommonFiles.MsiFilePath%"
)
call :MICROMIZE neropatentactivation.exe "%CommonFiles.MsiFilePath%"
call :MICROMIZE nerofiledialog.dll "%HomeComponents.MsiFilePath%" english
call :MICROMIZE nerofiledialog.dll "%HomeComponents.MsiFilePath%"

::Nero ControlCenter
if %neroversion% == 8 (
	call :MICROMIZE nps.dll "%NeroSetup.MsiFilePath%" english
)
if %neroversion% LSS 9 (
call :MICROMIZE nps.dll "%NeroSetup.MsiFilePath%"
)
call :MICROMIZE setupx.exe "%SetupX.MsiFilePath%" english
call :MICROMIZE setupx.exe "%SetupX.MsiFilePath%"

::Nero Burning Rom
call :MICROMIZE nero.exe "%NeroCore.MsiFilePath%"
call :MICROMIZE *.nls "%NeroCore.MsiFilePath%"

::Nero CoverDesigner
call :MICROMIZE CoverDes.exe "%CoverDesigner.MsiFilePath%"
call :MICROMIZE CoverEdCtrl.ocx "%CoverDesigner.MsiFilePath%"
call :MICROMIZE CoverEdExtension.dll "%CoverDesigner.MsiFilePath%"
call :MICROMIZE *.nls "%CoverDesigner.MsiFilePath%"

::Nero WaveEditor
call :MICROMIZE audioeffectlibrary.dll "%WaveEditor.MsiFilePath%"
call :MICROMIZE controls.dll "%WaveEditor.MsiFilePath%"
call :MICROMIZE dxbridge.dll "%WaveEditor.MsiFilePath%"
call :MICROMIZE dxenum.exe "%WaveEditor.MsiFilePath%"
call :MICROMIZE vstbridge.dll "%WaveEditor.MsiFilePath%"
call :MICROMIZE waveedit.exe "%WaveEditor.MsiFilePath%"
call :MICROMIZE waveedit.dll "%WaveEditor.MsiFilePath%"
call :MICROMIZE *.nls "%WaveEditor.MsiFilePath%"

::Nero Toolkit
call :MICROMIZE neroburnrights.cpl "%BurnRights.MsiFilePath%"
call :MICROMIZE neroburnrights.exe "%BurnRights.MsiFilePath%"
if %neroversion% LSS 8 (
	call :MICROMIZE cdspeed.exe "%CDSpeed.MsiFilePath%"
) else (
	call :MICROMIZE discspeed.exe "%DiscSpeed.MsiFilePath%"
)
call :MICROMIZE drivespeed.exe "%DriveSpeed.MsiFilePath%"
call :MICROMIZE infotool.exe "%InfoTool.MsiFilePath%"

echo Done.
echo.
goto :EOF

:MICROMIZE
set filename=%~1
set filepath=%~2
::change script location for english builds
if "%~3"=="english" (
	set resscript=%filename:.=_%_eng.txt
	set outputpath=%filepath%\English
) else (
	set resscript=%filename:.=_%.txt
	set outputpath=%filepath%
)

::check if wildmark is entered
if %filename:~0,1%==^* (
	for /F "TOKENS=1* delims=" %%a in ( 'dir /B "..\Bin\%filepath%\%filename%"' ) do (
		set resscript.tmp=%%~na
		set resscript.tmp=!resscript.tmp:.=_!_nls.txt
		set resscript.log=!resscript.tmp:~0,-3!log
		
		set resscript.src=%%~na
		set resscript.src=!resscript.src:_=!
		set resscript.src=!resscript.src:-=!
		set resscript.src=!resscript.src:~0,-3!_nls.txt
		
		pushd ResourceScripts
		echo [FILENAMES] > !resscript.tmp!
		echo Exe=%%a >> !resscript.tmp!
		echo SaveAs=%%a >> !resscript.tmp!
		echo Log=Log\!resscript.log! >> !resscript.tmp!
	
		copy /b !resscript.tmp!+!resscript.src! !resscript.tmp! > NUL
		popd
		call :MICROMIZE %%a "%filepath%"
	)
	goto :EOF
)

::Display File Status
if "%~3"=="english" (
	echo 	%filename% ^(%3^)... 
) else (
	echo 	%filename%...
)

::create directories if not exist
if not exist "Log" md "Log" > NUL
if not exist "Bin\%outputpath%" md "Bin\%outputpath%"
copy /y "..\Bin\%filepath%\%filename%" "%filename%" > NUL
..\Tools\Reshack\ResHacker.exe -script "ResourceScripts\%resscript%" > NUL
if not errorlevel 0 call :RESHACKPROBLEM
::push to project directory
pushd ..
call Script\Include\signfile.cmd "Custom\%filename%" > NUL
popd
if not errorlevel 0 call :CHECKFILE
move /y "%filename%" "Bin\%outputpath%" > NUL
goto :EOF

:CHECKFILE
if %neroversion% LSS 8 (
	if not %filename%==cdspeed.exe (
		goto :SIGNINGPROBLEM
	)
) else (
	goto :SIGNINGPROBLEM
)
GOTO :EOF

:RESHACKPROBLEM
echo Error: failed reshacking file %filename%
pause
goto :EOF

:SIGNINGPROBLEM
echo Warning: failed signing file %filename%
GOTO :EOF

popd