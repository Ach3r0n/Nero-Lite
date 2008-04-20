@echo off
::push to script dir
pushd Script
::get Nero Version
call Include\getNeroVersion.cmd
popd

Tools\7-zip\7za x -y %nero_setup%.exe -o"%TEMP%\Nero%neroversion:.=%"
echo.
echo Choose advanced installation, abort after language selection dialog.
echo This is necessary otherwise Nero can't be extracted!
echo.
pause
"%TEMP%\Nero%neroversion:.=%\SetupX.exe"
if %neroversion% GEQ 8 (
msiexec /a "%TEMP%\Nero%neroversion:.=%\Data\nero.msi" TARGETDIR="%CD%\Bin" /qb-!
) else (
msiexec /a "%TEMP%\Nero%neroversion:.=%\Cab\nero.msi" TARGETDIR="%CD%\Bin" /qb-!
)
rd /s /q "%TEMP%\Nero%neroversion:.=%"
pause