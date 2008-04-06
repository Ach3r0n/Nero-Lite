@echo off

::note push to script directory
pushd ".."

if not exist ".\Log" md "Log"

::audioeffectlibrary.dll
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\audioeffectlibrary.dll" ".\audioeffectlibrary.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\audioeffectlibrary_dll.txt"
call "Include\signfile.cmd" "audioeffectlibrary.dll"
move /y "audioeffectlibrary.dll" "..\Custom\Bin\Nero WaveEditor"

::controls.dll
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\controls.dll" ".\controls.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\controls_dll.txt"
call "Include\signfile.cmd" "controls.dll"
move /y "controls.dll" "..\Custom\Bin\Nero WaveEditor"

::dxbridge.dll
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\dxbridge.dll" ".\dxbridge.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\dxbridge_dll.txt"
call "Include\signfile.cmd" "dxbridge.dll"
move /y "dxbridge.dll" "..\Custom\Bin\Nero WaveEditor"

::dxenum.exe
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\dxenum.exe" ".\dxenum.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\dxenum_exe.txt"
call "Include\signfile.cmd" "dxenum.exe"
move /y "dxenum.exe" "..\Custom\Bin\Nero WaveEditor"

::vstbridge.dll
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\vstbridge.dll" ".\vstbridge.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\vstbridge_dll.txt"
call "Include\signfile.cmd" "vstbridge.dll"
move /y "vstbridge.dll" "..\Custom\Bin\Nero WaveEditor"

::waveedit.exe
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\waveedit.exe" ".\waveedit.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\waveedit_exe.txt"
call "Include\signfile.cmd" "waveedit.exe"
move /y "waveedit.exe" "..\Custom\Bin\Nero WaveEditor"

::waveedit.dll
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\waveedit.dll" ".\waveedit.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\waveedit_dll.txt"
call "Include\signfile.cmd" "waveedit.dll"
move /y "waveedit.dll" "..\Custom\Bin\Nero WaveEditor"

::WaveEdit-*.nls
if not exist "..\Custom\Bin\Nero WaveEditor" md "..\Custom\Bin\Nero WaveEditor"
FOR /F "TOKENS=1* delims=" %%a IN ( 'dir /B ^"..\Bin\[FILELOCATION]Nero WaveEditor\*.nls^"' ) DO (
	SET langres.nls=%%a
	CALL :PROCESSNLS
)

popd
pause
exit

GOTO :EOF

:PROCESSNLS
set resscript.txt=%langres.nls:.=_%.txt
copy /y "..\Bin\[FILELOCATION]Nero WaveEditor\%langres.nls%" ".\%langres.nls%"
echo [FILENAMES] > %resscript.txt%
echo Exe=%langres.nls% >> %resscript.txt%
echo SaveAs=%langres.nls% >> %resscript.txt%
echo Log="Log\%resscript.txt:~0,-3%log" >> %resscript.txt%
copy /b %resscript.txt%+".\ResourceScripts\waveedit_nls.txt"
..\Tools\Reshack\ResHacker.exe -script "%resscript.txt%"
del /f /q "%resscript.txt%"
call "Include\signfile.cmd" "%langres.nls%"
move /y "%langres.nls%" "..\Custom\Bin\Nero WaveEditor"
GOTO :EOF