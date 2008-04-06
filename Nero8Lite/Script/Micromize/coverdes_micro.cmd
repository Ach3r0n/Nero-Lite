@echo off

::note push to script directory
pushd ".."

if not exist ".\Log" md "Log"
::coverdes.exe
if not exist "..\Custom\Bin\Nero CoverDesigner" md "..\Custom\Bin\Nero CoverDesigner"
copy /y "..\Bin\[FILELOCATION]Nero CoverDesigner\CoverDes.exe" ".\coverdes.exe"
..\Tools\Reshack\ResHacker.exe -script "ResourceScripts\coverdes_exe.txt"
call "Include\signfile.cmd" "coverdes.exe"
move /y "coverdes.exe" "..\Custom\Bin\Nero CoverDesigner"
::CoverEdCtrl.ocx
if not exist "..\Custom\Bin\Nero CoverDesigner" md "..\Custom\Bin\Nero CoverDesigner"
copy /y "..\Bin\[FILELOCATION]Nero CoverDesigner\CoverEdCtrl.ocx" ".\CoverEdCtrl.ocx"
..\Tools\Reshack\ResHacker.exe -script "ResourceScripts\CoverEdCtrl_ocx.txt"
call "Include\signfile.cmd" "CoverEdCtrl.ocx"
move /y "CoverEdCtrl.ocx" "..\Custom\Bin\Nero CoverDesigner"
::CoverEdExtension.dll
if not exist "Bin\Nero CoverDesigner" md "..\Custom\Bin\Nero CoverDesigner"
copy /y "..\Bin\[FILELOCATION]Nero CoverDesigner\CoverEdExtension.dll" ".\CoverEdExtension.dll"
..\Tools\Reshack\ResHacker.exe -script "ResourceScripts\CoverEdExtension_dll.txt"
call "Include\signfile.cmd" "CoverEdExtension.dll"
move /y "CoverEdExtension.dll" "..\Custom\Bin\Nero CoverDesigner"

::covered-*.nls
if not exist "..\Custom\Bin\Nero CoverDesigner" md "..\Custom\Bin\Nero CoverDesigner"
FOR /F "TOKENS=1* delims=" %%a IN ( 'dir /B ^"..\Bin\[FILELOCATION]Nero CoverDesigner\*.nls^"' ) DO (
	SET langres.nls=%%a
	CALL :PROCESSNLS
)

popd
pause
exit

GOTO :EOF

:PROCESSNLS
set resscript.txt=%langres.nls:.=_%.txt
copy /y "..\Bin\[FILELOCATION]Nero CoverDesigner\%langres.nls%" ".\%langres.nls%"
echo [FILENAMES] > %resscript.txt%
echo Exe=%langres.nls% >> %resscript.txt%
echo SaveAs=%langres.nls% >> %resscript.txt%
echo Log="Log\%resscript.txt:~0,-3%log" >> %resscript.txt%
copy /b %resscript.txt%+"ResourceScripts\covered_nls.txt"
..\Tools\Reshack\ResHacker.exe -script "%resscript.txt%"
del /f /q "%resscript.txt%"
call "Include\signfile.cmd" "%langres.nls%"
move /y "%langres.nls%" "..\Custom\Bin\Nero CoverDesigner"
GOTO :EOF