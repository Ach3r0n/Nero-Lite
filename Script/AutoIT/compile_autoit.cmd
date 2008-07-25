@echo off
pushd ..\..
"%programfiles%\AutoIt3\Beta\Aut2Exe\Aut2Exe.exe" /in "Script\AutoIT\configlicense.au3" /out "Setup\configlicense.exe" /nopack
call "Script\Include\signfile.cmd" "Setup\configlicense.exe"
popd
pause
exit