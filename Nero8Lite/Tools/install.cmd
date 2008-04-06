title Inno Setup 5.2.3
::Inno Setup 5.2.3
if exist "%programfiles%\Inno Setup\Inno Setup 5\ISCmplr.dls" (
	del /f /q "%programfiles%\Inno Setup\Inno Setup 5\ISCmplr.dll"
	ren "%programfiles%\Inno Setup\Inno Setup 5\ISCmplr.dls" "IsCmplr.dll" 
)
inno\isetup-5.2.3.exe /NORESTART /VERYSILENT /NOICONS /DIR="%programfiles%\Inno Setup\Inno Setup 5"
::Inno Setup PreProcessor 5.2.3
ren "%programfiles%\Inno Setup\Inno Setup 5\ISCmplr.dll" "IsCmplr.dls" 
7-zip\7za x -y -o"%programfiles%\Inno Setup\Inno Setup 5" "inno\ISPP-5.2.3.7z"
::Additional languages
7-zip\7za x -y -o"%programfiles%\Inno Setup\Inno Setup 5\Languages\" "inno\Languages.7z"
::Inno Setup Script Includes 5.1.9.0
inno\ISSI-Setup-5.1.9.exe /NORESTART /VERYSILENT /NOICONS /DIR="%programfiles%\Inno Setup\ISSI"
::Inno Setup Form Designer 2.0.8
inno\isfd208.exe /NORESTART /VERYSILENT /NOICONS /DIR="%programfiles%\Inno Setup\ISFD"
::ISTool 5.2.1
inno\istool-5.2.1.exe /NORESTART /VERYSILENT /NOICONS /DIR="%programfiles%\Inno Setup\ISTool"
md "%APPDATA%\ISTool\"
del /f /q "%APPDATA%\ISTool\ISTool.ini"
echo [prefs] >> "%APPDATA%\ISTool\ISTool.ini"
echo InnoFolder=%programfiles%\Inno Setup\Inno Setup 5 >> "%APPDATA%\ISTool\ISTool.ini"
::E-book Essential Pascal 2.01
xcopy /i /y "inno\EssentialPascal.pdf" "%programfiles%\Inno Setup\Documentation\"
::Shortcuts
for /f "tokens=3 skip=3 delims=	" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Programs"') do set Programs=%%i
md "%Programs%\Inno Setup\"
shortcut /a:c /f:"%Programs%\Inno Setup\Inno Setup Compiler.lnk" /t:"%programfiles%\Inno Setup\Inno Setup 5\Compil32.exe"
shortcut /a:c /f:"%Programs%\Inno Setup\Inno Setup Form Designer.lnk" /t:"%programfiles%\Inno Setup\ISFD\ISFD.exe"
shortcut /a:c /f:"%Programs%\Inno Setup\ISTool.lnk" /t:"%programfiles%\Inno Setup\ISTool\ISTool.exe"
shortcut /a:c /f:"%Programs%\Inno Setup\Essential Pascal.lnk" /t:"%programfiles%\Inno Setup\Documentation\EssentialPascal.pdf"
::Cleaning stuff
for /f "tokens=3 skip=3 delims=	" %%i in ('reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common Programs"') do set CommonPrograms=%%i
rd /s /q "%CommonPrograms%\Inno Setup Script Includes\"
rd /s /q "%CommonPrograms%\ISTool\"
exit