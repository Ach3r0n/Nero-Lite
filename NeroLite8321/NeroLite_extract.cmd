@echo off
set neroversion=8.3.2.1
set setuptype=update
Tools\7-zip\7za x -y Nero-%neroversion%_all_%setuptype%.exe -o"%TEMP%\Nero%neroversion:.=%"
echo.
echo Choose advanced installation, abort after language selection dialog.
echo This is necessary otherwise Nero can't be extracted!
echo.
pause
"%TEMP%\Nero%neroversion:.=%\SetupX.exe"
msiexec /a "%TEMP%\Nero%neroversion:.=%\Data\nero.msi" TARGETDIR="%CD%\Bin" /qb-!
rd /s /q "%TEMP%\Nero%neroversion:.=%"
exit
