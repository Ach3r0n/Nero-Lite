@echo off

::note push to script directory
pushd ".."

if not exist ".\Log" md "Log"

::neroburnrights.cpl
if not exist "..\Custom\Bin\Nero Toolkit\Nero BurnRights" md "..\Custom\Bin\Nero Toolkit\Nero BurnRights"
copy /y "..\Bin\[FILELOCATION]\Nero BurnRights\neroburnrights.cpl" ".\neroburnrights.cpl"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\burnrights_cpl.txt"
call "Include\signfile.cmd" "neroburnrights.cpl"
move /y "neroburnrights.cpl" "..\Custom\Bin\Nero Toolkit\Nero BurnRights"

::neroburnrights.exe
if not exist "..\Custom\Bin\Nero Toolkit\Nero BurnRights" md "..\Custom\Bin\Nero Toolkit\Nero BurnRights"
copy /y "..\Bin\[FILELOCATION]\Nero BurnRights\neroburnrights.exe" ".\neroburnrights.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\burnrights_exe.txt"
call "Include\signfile.cmd" "neroburnrights.exe"
move /y "neroburnrights.exe" "..\Custom\Bin\Nero Toolkit\Nero BurnRights"

::discspeed.exe
if not exist "..\Custom\Bin\Nero Toolkit\Nero DiscSpeed" md "..\Custom\Bin\Nero Toolkit\Nero DiscSpeed"
copy /y "..\Bin\[FILELOCATION]\Nero CD-DVD Speed\discspeed.exe" ".\discspeed.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\discspeed_exe.txt"
call "Include\signfile.cmd" "discspeed.exe"
move /y "discspeed.exe" "..\Custom\Bin\Nero Toolkit\Nero DiscSpeed"

::drivespeed.exe
if not exist "..\Custom\Bin\Nero Toolkit\Nero DriveSpeed" md "..\Custom\Bin\Nero Toolkit\Nero DriveSpeed"
copy /y "..\Bin\[FILELOCATION]\Nero Toolkit DriveSpeed\drivespeed.exe" ".\drivespeed.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\drivespeed_exe.txt"
call "Include\signfile.cmd" "drivespeed.exe"
move /y "drivespeed.exe" "..\Custom\Bin\Nero Toolkit\Nero DriveSpeed"

::infotool.exe
if not exist "..\Custom\Bin\Nero Toolkit\Nero InfoTool" md "..\Custom\Bin\Nero Toolkit\Nero InfoTool"
copy /y "..\Bin\[FILELOCATION]\Nero InfoTool\infotool.exe" ".\infotool.exe"
..\Tools\Reshack\ResHacker.exe -script ".\ResourceScripts\infotool_exe.txt"
call "Include\signfile.cmd" "infotool.exe"
move /y "infotool.exe" "..\Custom\Bin\Nero Toolkit\Nero InfoTool"

popd
pause
exit