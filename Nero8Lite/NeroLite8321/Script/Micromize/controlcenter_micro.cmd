@echo off

::note push to script directory
pushd ".."

if not exist ".\Log" md "Log"

::nps.dll (english)
if not exist "..\Custom\Bin\Nero ControlCenter\English" md "..\Custom\Bin\Nero ControlCenter\English"
copy /y "..\Bin\[FILELOCATION]\Setup\nps.dll" ".\nps.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\nps_dll_eng.txt"
call "Include\signfile.cmd" "nps.dll"
move /y "nps.dll" "..\Custom\Bin\Nero ControlCenter\English"
::nps.dll
if not exist "..\Custom\Bin\Nero ControlCenter" md "..\Custom\Bin\Nero ControlCenter"
copy /y "..\Bin\[FILELOCATION]\Setup\nps.dll" ".\nps.dll"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\nps_dll.txt"
call "Include\signfile.cmd" "nps.dll"
move /y "nps.dll" "..\Custom\Bin\Nero ControlCenter"

::setupx.exe (english)
if not exist "..\Custom\Bin\Nero ControlCenter\English" md "..\Custom\Bin\Nero ControlCenter\English"
copy /y "..\Bin\[FILELOCATION]\setupx.exe" ".\setupx.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\setupx_exe_eng.txt"
call "Include\signfile.cmd" "setupx.exe"
move /y "setupx.exe" "..\Custom\Bin\Nero ControlCenter\English"
::setupx.exe
if not exist "..\Custom\Bin\Nero ControlCenter" md "..\Custom\Bin\Nero ControlCenter"
copy /y "..\Bin\[FILELOCATION]\setupx.exe" ".\setupx.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\setupx_exe.txt"
call "Include\signfile.cmd" "setupx.exe"
move /y "setupx.exe" "..\Custom\Bin\Nero ControlCenter"

popd
pause
exit