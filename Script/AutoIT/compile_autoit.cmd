@echo off
"%programfiles%\AutoIt3\Beta\Aut2Exe\Aut2Exe.exe" /in configlicense.au3 /out "..\..\Setup\configlicense.exe" /nopack
::push to script dir
pushd ..
call "Include\signfile.cmd" "..\Setup\configlicense.exe"
popd
pause
exit
