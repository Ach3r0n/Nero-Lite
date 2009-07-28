@echo off
::get Nero Version
rem call Script\Include\getNeroVersion.cmd

Tools\7-zip\7za x -y %nero_setup%.exe -o"%TEMP%\Nero%neroversion:.=%"
echo.
echo The Nero installer will launch to proceed extracting.
echo Choose Custom Installation method and press next.
echo When the language list shows up you must abort the installation process.
echo.
pause
"%TEMP%\Nero%neroversion:.=%\SetupX.exe"
if %neroversion% GEQ 8 (
msiexec /a "%TEMP%\Nero%neroversion:.=%\Data\nero.msi" TARGETDIR="%CD%\Bin" /qb-!
) else (
msiexec /a "%TEMP%\Nero%neroversion:.=%\Cab\nero.msi" TARGETDIR="%CD%\Bin" /qb-!
)
rd /s /q "%TEMP%\Nero%neroversion:.=%"

::micromize Nero files
call Script\Include\micromize.cmd
pause