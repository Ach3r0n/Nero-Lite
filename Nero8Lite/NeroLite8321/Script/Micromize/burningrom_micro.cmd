@echo on
::note push to script directory
pushd ".."

if not exist ".\Log" md "Log"

::nero.exe
if not exist "..\Custom\Bin\Core" md "..\Custom\Bin\Core"
copy /y "..\Bin\[FILELOCATION]Core\nero.exe" ".\nero.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\nero_exe.txt"
call "include\signfile.cmd" "nero.exe"
move /y "nero.exe" "..\Custom\Bin\Core"

::advrcntr3.dll (english)
if not exist "..\Custom\Bin\Common Files\Lib\English" md "..\Custom\Bin\Common Files\Lib\English"
copy /y "..\Bin\[FILELOCATION]Common Files\Lib\NT\AdvrCntr3.dll" ".\AdvrCntr3.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\advrcntr3_dll_eng.txt"
call "Include\signfile.cmd" "AdvrCntr3.dll"
move /y "AdvrCntr3.dll" "..\Custom\Bin\Common Files\Lib\English"
::advrcntr3.dll
copy /y "..\Bin\[FILELOCATION]Common Files\Lib\NT\AdvrCntr3.dll" ".\AdvrCntr3.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\advrcntr3_dll.txt"
call "Include\signfile.cmd" "AdvrCntr3.dll"
move /y "AdvrCntr3.dll" "..\Custom\Bin\Common Files\Lib"

::neropatentactivation.exe
copy /y "..\Bin\[FILELOCATION]Common Files\Lib\NT\NeroPatentActivation.exe" ".\NeroPatentActivation.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\npa_exe.txt"
call "Include\signfile.cmd" "NeroPatentActivation.exe"
move /y "NeroPatentActivation.exe" "..\Custom\Bin\Common Files\Lib"

::nerofiledialog.dll (english)
if not exist "..\Custom\Bin\Common Files\Lib\English" md "..\Custom\Bin\Common Files\Lib\English"
copy /y "..\Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialog.dll" ".\NeroFileDialog.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\nerofiledialog_dll_eng.txt"
call "Include\signfile.cmd" "NeroFileDialog.dll"
move /y "NeroFileDialog.dll" "..\Custom\Bin\Common Files\Lib\English"
::nerofiledialog.dll
copy /y "..\Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialog.dll" ".\NeroFileDialog.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\nerofiledialog_dll.txt"
call "Include\signfile.cmd" "NeroFileDialog.dll"
move /y "NeroFileDialog.dll" "..\Custom\Bin\Common Files\Lib"

::nero*.nls
if not exist "..\Custom\Bin\Core" md "..\Custom\Bin\Core"
for /f "tokens=1* delims=" %%a IN ( 'dir /b ^"..\Bin\[FILELOCATION]Core\*.nls^"' ) DO (
	set langres.nls=%%a
	call :PROCESSNLS
)

popd
pause

GOTO :EOF

:PROCESSNLS
set resscript.txt=%langres.nls:.=_%.txt
copy /y "..\Bin\[FILELOCATION]Core\%langres.nls%" ".\%langres.nls%"
echo [FILENAMES] > %resscript.txt%
echo Exe=%langres.nls% >> %resscript.txt%
echo SaveAs=%langres.nls% >> %resscript.txt%
echo Log="Log\%resscript.txt:~0,-3%log" >> %resscript.txt%
copy /b %resscript.txt%+".\ResourceScripts\nero_nls.txt"
..\Tools\Reshack\ResHacker.exe -script "%resscript.txt%"
del /f /q "%resscript.txt%"
call "Include\signfile.cmd" "%langres.nls%"
move /y "%langres.nls%" "..\Custom\Bin\Core"
goto :EOF