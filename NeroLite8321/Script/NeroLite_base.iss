;
;Nero 8 Lite Setup script for InnoSetup 5.2.x,
;This script also requires ISPP and ISSI!
;
;Copyright (C) 2008 - Klaas Nekeman
;

[ISSI]
#define ISSI_IncludePath ReadReg(HKLM, "Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup Script Includes_is1","InstallLocation", GetEnv("ProgramFiles") + "\Inno Setup\ISSI")
#define ISSI_UseMyInitializeWizard
#define ISSI_WizardSmallBitmapImage_x 206
#define ISSI_WizardSmallBitmapImage "Setup\nerotopbar.bmp"
#define ISSI_WizardBitmapImage "Setup\nerosidebarbig.bmp"
#define ISSI_WizardBitmapImage_x 190
#define ISSI_WizardBitmapImage2 "Setup\nerosidebarbig.bmp"
#define ISSI_WizardBitmapImage2_x 190
#define ISSI_URL
#define ISSI_URLText

;Detect Nero Lite / Micro
#define FindHandle
#define FindResult
#define Mask "Script\Include\NeroLite_*_*.iss"

#sub ProcessFoundFile
  #define public LocaleIncludeFileName Lowercase(FindGetFileName(FindHandle))
#endsub

#for {FindHandle = FindResult = FindFirst(Mask, 0); FindResult; FindResult = FindNext(FindHandle)} ProcessFoundFile


;Manually override setuptype
#ifndef LocaleIncludeFileName
	#define Lite
	#define NeroSetupLocale "english"
#else
	#define NeroSetupLocale Copy(LocaleIncludeFileName, 10, RPos("_", LocaleIncludeFileName) - 10)
	#if Pos("_lite", LocaleIncludeFileName) != 0
		#define Lite
	#else
		#define Micro
	#endif
#endif

#ifdef Lite
	#define Lite
	#define NeroSetupType "Lite"
	#define nero_coverdes "nero_coverdes"
	#define nero_waveedit "nero_waveedit"
#endif

#ifdef Micro
	#if NeroSetupLocale == "english"
		#define Micro_English
	#endif
	#define NeroSetupType "Micro"
	#define nero_coverdes
	#define nero_waveedit
#endif

;Set Nero version
#define NeroVersion "8.3.2.1"

[Setup]
AppName=Nero 8 {#NeroSetupType}
AppId=Nero8Lite
AppVerName=Nero 8 {#NeroSetupType} {#NeroVersion}
AppVersion={#NeroVersion}
AppPublisher=Updatepack.nl
AppPublisherURL=http://updatepack.nl
DefaultDirName={pf}\Nero
DefaultGroupName=Nero
AllowNoIcons=true
OutputBaseFilename=Nero-{#NeroVersion}_{#NeroSetupLocale}_{#Lowercase(NeroSetupType)}
OutputDir=.\Output
SetupIconFile=Setup\nerosetup.ico
UninstallDisplayIcon={cf}\Nero\Nero Web\nps.dll
Compression=lzma/max
ShowLanguageDialog=yes
ShowUndisplayableLanguages=no
VersionInfoVersion=1.16.0.2
VersionInfoProductName=Nero {#NeroSetupType}
VersionInfoProductVersion={#NeroVersion}
VersionInfoCompany=Updatepack.nl
VersionInfoDescription=Nero 8 {#NeroSetupType}
VersionInfoCopyright=Klaas Nekeman
UserInfoPage=false
ChangesAssociations=true
FlatComponentsList=false
SolidCompression=true
MinVersion=0,5.0.2195sp3
SignedUninstaller=true
SignedUninstallerDir=.\Setup

[Languages]
Name: english; MessagesFile: compiler:Default.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;SQLite 3.5.7
Source: Setup\sqlite3.dll; DestDir: {tmp}; Flags: dontcopy

;VC++2005 SP1 redistributable (NOTE: .NET 2.0SP1 VC++ redist does not work)
Source: Setup\vcredist.msi; DestDir: {tmp}; Flags: dontcopy

;Hack to fix Final Wizard Dialog Bitmap (ISSI bug)
Source: Setup\nerosidebarbig.bmp; DestDir: {tmp}; DestName: WizardBitmapImage2.bmp; Flags: ignoreversion dontcopy noencryption

;GDI+
Source: Bin\[FILELOCATION]Redist\gdiplus.dll; DestDir: {cf}\Nero\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt; OnlyBelowVersion: 0,5.01.2600

;AutoIT activate utility
Source: Setup\configlicense.exe; DestDir: {tmp}; Flags: dontcopy

;BCGControlBar library
Source: Bin\[FILELOCATION]Redist\BCGCBPRO86080.dll; DestDir: {cf}\Nero\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860u80.dll; DestDir: {cf}\Nero\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGPOleAcc.dll; DestDir: {cf}\Nero\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860u80.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt

;Pegasus Imaging Support
Source: Bin\[FILELOCATION]Redist\imagX7.dll; DestDir: {sys}; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\imagXpr7.dll; DestDir: {sys}; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\imagXR7.dll; DestDir: {sys}; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\imagXRA7.dll; DestDir: {sys}; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\TwnLib4.dll; DestDir: {sys}; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}


;Nero Toolkit
#ifndef Micro
Source: Custom\Bin\Nero Toolkit\Nero DiscSpeed\DiscSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed
Source: Custom\Bin\Nero Toolkit\Nero DriveSpeed\DriveSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DriveSpeed; Components: nero_toolkit\nero_drivespeed
Source: Custom\Bin\Nero Toolkit\Nero InfoTool\InfoTool.exe; DestDir: {app}\Nero Toolkit\Nero InfoTool; Components: nero_toolkit\nero_infotool
Source: Custom\Bin\Nero Toolkit\Nero BurnRights\NeroBurnRights.exe; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights
Source: Bin\[FILELOCATION]\Nero BurnRights\NeroCo.dll; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights
#endif

;Nero Anti-Virus database (Copy from AllUsers\Nero\DrWeb)
#ifndef Micro
Source: Custom\DrWeb\*; DestDir: {commonappdata}\Nero\DrWeb; Components: nero_core\anti_virus
#endif

;Nero Product Activation
#ifdef Micro_English
Source: Custom\Bin\Common Files\Lib\English\AdvrCntr3.dll; DestDir: {cf}\Nero\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
#else
Source: Custom\Bin\Common Files\Lib\AdvrCntr3.dll; DestDir: {cf}\Nero\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
#endif
;Installation databases
Source: Setup\NeroInst.db; DestDir: {cf}\Nero\Lib; Flags: restartreplace
Source: Setup\Rollback.db; DestDir: {cf}\Nero\Lib; Flags: onlyifdoesntexist restartreplace
;Nero Patent Activation
Source: Custom\Bin\Common Files\Lib\NeroPatentActivation.exe; DestDir: {cf}\Nero\Lib; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\btc-bar.gif; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\logo.gif; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\patentactivationfax.htm; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\NeroAPIGlueLayerUnicode.dll; DestDir: {cf}\Nero\Lib; Flags: sharedfile uninsnosharedfileprompt

;Nero Lib
Source: Bin\[FILELOCATION]Common Files\Lib\ShellManager3.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
Source: Bin\[FILELOCATION]Common Files\Lib\DriveLocker.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
Source: Bin\[FILELOCATION]\Common Files\Lib\NeroVMRModules.dll; DestDir: {cf}\Nero\Lib; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core

;Nero Extended FileDialog
#ifdef Micro_English
Source: Custom\Bin\Common Files\Lib\English\NeroFileDialog.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#else
Source: Custom\Bin\Common Files\Lib\NeroFileDialog.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#endif
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogCF.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
;Nero Extended FileDialog (Vista)
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogIDLPS.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core; MinVersion: 0,6.0
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogVista.dll; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core; MinVersion: 0,6.0

;Nero Control Center
#ifdef Micro_English
Source: Custom\Bin\Nero ControlCenter\English\nps.dll; DestDir: {cf}\Nero\Nero Web; Flags: restartreplace
Source: Custom\Bin\Nero ControlCenter\English\SetupX.exe; DestDir: {cf}\Nero\Nero Web; Flags: restartreplace
#else
Source: Custom\Bin\Nero ControlCenter\nps.dll; DestDir: {cf}\Nero\Nero Web; Flags: restartreplace
Source: Custom\Bin\Nero ControlCenter\SetupX.exe; DestDir: {cf}\Nero\Nero Web; Flags: restartreplace
#endif

;Nero Core
Source: Bin\[FILELOCATION]Core\CDI\*; DestDir: {app}\Nero Burning ROM\CDI; Components: nero_core
Source: Bin\[FILELOCATION]Core\DosBootimage.IMA; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Custom\Bin\Core\nero.exe; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\nero.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uCDCopy.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uMMC.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uNeroErr.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uNeRSDB.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\unewtrf.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uUDFImporter.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uDVDREALLOC.DLL; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uISOFS.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uGENCUSH.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uGeneratr.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uGenFAT.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\ugeniso.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uGenUDF.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uGenUDF2.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uimage.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\uImageGen.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\wnaspi32.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core

;Nero Anti-Virus support
Source: Bin\[FILELOCATION]Core\NeDwFileHelper.exe; DestDir: {app}\Nero Burning ROM; Components: nero_core

;Nero LabelFlash
#ifndef Micro
Source: Bin\[FILELOCATION]Core\LLS.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
#endif

;Nero Local Database support
Source: Bin\[FILELOCATION]Core\uneroDB.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core

;Nero Audio Filters
Source: Bin\[FILELOCATION]Core\uEqualize.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_audioplugins
Source: Bin\[FILELOCATION]Core\KARAOKE.DLL; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_audioplugins

;Nero Sounds
#ifndef Micro
Source: Bin\[FILELOCATION]Core\Boo.wav; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\DingDong.wav; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Bin\[FILELOCATION]Core\Trumpet1.wav; DestDir: {app}\Nero Burning ROM; Components: nero_core
#endif

;Nero VideoCD Support
Source: Bin\[FILELOCATION]Core\uNeVCDEngine.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Core\uVMpegEnc.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Core\uVCDMenu.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeAudio2.ax; DestDir: {cf}\Nero\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeSplitter.ax; DestDir: {cf}\Nero\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeMP4Splitter.ax; DestDir: {cf}\Nero\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeVideo.ax; DestDir: {cf}\Nero\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\Lib\NeEm2a.dll; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]\Common Files\Lib\NeEm2v.dll; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]\Common Files\Lib\uNeroMediaCon.dll; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt

;Note: CoverEdCtrl.ocx necessary for LabelFlash and VCD/SVCD support
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEdCtrl.ocx; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd and (not nero_coverdes)
;CoverEdCtrl.ocx must be placed in Nero CoverDesigner directory to work
Source: Custom\Bin\Nero CoverDesigner\CoverEdCtrl.ocx; DestDir: {app}\Nero CoverDesigner; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_coverdes
#else
Source: Custom\Bin\Nero CoverDesigner\CoverEdCtrl.ocx; DestDir: {cf}\Nero\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
#endif

;Nero Audio Plugin Manager
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AudioPluginMgr.dll; DestDir: {cf}\Nero\AudioPlugins\Mgr; Components: nero_core\nero_audioplugins {#emit nero_waveedit}

;Nero Audio Plugins - AC3
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AC3.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - AIFF
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\Aiff.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Audible Audiobook
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AReadyLB_Nero.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\Audible.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - MP3+Pro
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PRO.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Ogg Vorbis
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\ogg.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Wave
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\Wav.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Wave Convertor
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\DefConvertor.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Windows Media
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\msaxp.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Nero Digital
Source: Bin\[FILELOCATION]Common Files\Lib\ndaudio.dll; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\Lib\NeroIPP.dll; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\Lib\NeroDigitalExt.dll; DestDir: {cf}\Nero\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: regserver sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\NeroDigital.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Lame MP3 Encoder
#ifndef Micro
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PP.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\lame_enc.dll; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero Audio Plugins - MauSau
#ifndef Micro
Source: Custom\MauSau\*; DestDir: {cf}\Nero\AudioPlugins; Components: nero_core\nero_audioplugins\mausau; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero CoverDesigner
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverDes.exe; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: Bin\[FILELOCATION]Nero CoverDesigner\def.dat; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: Bin\[FILELOCATION]Nero CoverDesigner\stocks.dat; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: Bin\[FILELOCATION]Nero CoverDesigner\Templates\*; DestDir: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes
#endif

;Nero WaveEditor
#ifndef Micro
Source: Custom\Bin\Nero WaveEditor\AudioEffectLibrary.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\Nero WaveEditor\Controls.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\Nero WaveEditor\DXBridge.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\Nero WaveEditor\DXEnum.exe; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit
Source: Custom\Bin\Nero WaveEditor\VSTBridge.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\Nero WaveEditor\waveedit.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\Nero WaveEditor\waveedit.exe; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit
#endif

[Dirs]
;Force creation of DrWeb subdirectory, otherwise Anti-Virus libs don't get installed
Name: {commonappdata}\Nero\DrWeb; Components: nero_core

[Icons]
;Nero Toolkit
#ifndef Micro
Name: {group}\Extra\Nero BurnRights; Filename: {app}\Nero Toolkit\Nero BurnRights\neroburnrights.exe; Components: nero_toolkit\nero_burnrights
Name: {group}\Extra\Nero DiscSpeed; Filename: {app}\Nero Toolkit\Nero DiscSpeed\discspeed.exe; Components: nero_toolkit\nero_discspeed
Name: {group}\Extra\Nero DriveSpeed; Filename: {app}\Nero Toolkit\Nero DriveSpeed\drivespeed.exe; Components: nero_toolkit\nero_drivespeed
Name: {group}\Extra\Nero InfoTool; Filename: {app}\Nero Toolkit\Nero InfoTool\infotool.exe; Components: nero_toolkit\nero_infotool
#endif

;Nero Burning Rom
Name: {group}\Nero Burning ROM; Filename: {app}\Nero Burning ROM\nero.exe; Components: nero_core

;Nero Express
Name: {group}\Nero Express; Filename: {app}\Nero Burning ROM\nero.exe; Parameters: /w; IconIndex: 1; Components: nero_core
Name: {commondesktop}\Nero Express; Filename: {app}\Nero Burning ROM\nero.exe; Parameters: /w; IconIndex: 1; Components: nero_core; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Nero Express; Filename: {app}\Nero Burning ROM\nero.exe; Parameters: /w; IconIndex: 1; Components: nero_core; Tasks: quicklaunchicon

;Nero CoverDesigner
#ifndef Micro
Name: {group}\Nero CoverDesigner; Filename: {app}\Nero CoverDesigner\CoverDes.exe; Components: nero_coverdes
#endif

;Nero WaveEditor
#ifndef Micro
Name: {group}\Nero WaveEditor; Filename: {app}\Nero WaveEditor\waveedit.exe; Components: nero_waveedit
#endif

;Nero ControlCenter
Name: {group}\Setup\Nero ControlCenter; Filename: {cf}\Nero\Nero Web\SetupX.exe; Parameters: "MODE=""update"""; IconFilename: {cf}\Nero\Nero Web\nps.dll; IconIndex: 0

[Registry]
;Registration Details
Root: HKCU; Subkey: Software\Nero; ValueType: none; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\Nero\Installation; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\Nero\Installation\Families; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8; ValueType: none; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8; ValueType: string; ValueName: ProductCode; ValueData: Nero 8 {#NeroSetupType}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8; ValueType: string; ValueName: ProductVersion; ValueData: {#NeroVersion}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8\Info; ValueType: string; ValueName: User; ValueData: {code:getName}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8\Info; ValueType: string; ValueName: Company; ValueData: {code:getOrganisation}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8\Info; ValueType: string; ValueName: EulaAccepted; ValueData: 1; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\Nero\Installation\Families\Nero 8\Info; ValueType: string; ValueName: MissingFilesState; ValueData: 0; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\Nero\Installation\Settings; ValueType: dword; ValueName: AutomaticUpdate; ValueData: 0; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Installation\Settings; ValueType: dword; ValueName: DONOTRUNSETUPX; ValueData: 0; Flags: uninsdeletekey

;Windows Vista Compatibility
Root: HKLM; Subkey: Software\Nero\Installation\Info; ValueType: dword; ValueName: OS_MajorVersion; ValueData: 6; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: HKLM; Subkey: Software\Nero\Installation\Info; ValueType: dword; ValueName: OS_MinorVersion; ValueData: 0; Flags: uninsdeletekey; MinVersion: 0,6.0

;Nero Burning Rom - Tweaks (Note tweaks get only installed for current user)
Root: HKCU; Subkey: Software\Nero\Nero8\Nero - Burning Rom\General; ValueType: dword; ValueName: bShowAllCompilationTypes; ValueData: 1; Components: nero_core; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Nero8\Nero - Burning Rom\Recorder; ValueType: dword; ValueName: ShowSingleRecorderSpeed; ValueData: 1; Components: nero_core; Flags: uninsdeletekey
;Nero Burning Rom - Sounds disabled by default
Root: HKCU; Subkey: Software\Nero\Nero8\Nero - Burning Rom\General; ValueName: CdChangeCheck; ValueData: 0; ValueType: dword; Components: nero_core; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Nero8\Nero - Burning Rom\General; ValueName: CdFailCheck; ValueData: 0; ValueType: dword; Components: nero_core; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Nero8\Nero - Burning Rom\General; ValueName: CdSuccessCheck; ValueData: 0; ValueType: dword; Components: nero_core; Flags: uninsdeletekey

;Nero CoverDesigner
#ifndef Micro
Root: HKLM; Subkey: Software\Nero\Nero8\Cover Designer; ValueType: none; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: DocTemplates; ValueData: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: DocTemplates; ValueData: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: Docs; ValueData: {commondocs}; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: Docs; ValueData: {userdocs}; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: ImportFiles; ValueData: {commondocs}; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: ImportFiles; ValueData: {userdocs}; Components: nero_coverdes; Flags: uninsdeletekey
#endif

;Application paths - Hack to access CoverDesigner from Nero Express
#ifndef Micro
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\NCoverEd.exe; ValueType: string; ValueData: {app}\Nero CoverDesigner\CoverDes.exe; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\NCoverEd.exe; ValueType: string; ValueData: {app}\Nero CoverDesigner; Components: nero_coverdes; ValueName: Path; Tasks: ; Languages: ; Flags: uninsdeletekey
#endif

;Nero WaveEditor
#ifndef Micro
Root: HKLM; Subkey: Software\Nero\Shared\AudioEffects\DXPlugins; ValueName: DXEnum; ValueData: {app}\Nero WaveEditor\; ValueType: string; Components: nero_waveedit; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Nero\Shared\AudioEffects; ValueType: string; ValueName: {{71CD24C5-9704-4D1F-86E8-F1E7AE677E43}; ValueData: Audio Effects; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Nero\Shared\AudioEffects; ValueType: string; ValueName: {{6D32D183-28B4-4253-9858-A3F12C62CE66}; ValueData: DirectX Effects; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Nero\Shared\AudioEffects; ValueType: string; ValueName: {{F1F60FDD-97EA-43F1-920F-6EE61F32F435}; ValueData: VST Effects; Flags: uninsdeletekey
#endif

;Nero Shared Settings
Root: HKLM; Subkey: Software\Nero\Shared; ValueType: string; ValueName: AudioPlugin; ValueData: {cf}\Nero\AudioPlugins; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Shared; ValueType: string; ValueName: DriveLocker; ValueData: {cf}\Nero\Lib\DriveLocker.dll; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Shared; ValueType: string; ValueName: Lib; ValueData: {cf}\Nero\Lib; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Nero\Shared; ValueType: string; ValueName: AudioPluginManager; ValueData: {cf}\Nero\AudioPlugins\Mgr; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: uninsdeletekey
#ifndef Micro
Root: HKLM; Subkey: Software\Nero\Shared32; ValueType: string; ValueName: LLS; ValueData: {app}\Nero Burning ROM\LLS.dll; Components: nero_coverdes; Flags: uninsdeletekey
#endif

;Application paths - Nero Burning Rom
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\Nero.exe; ValueType: string; ValueData: {app}\Nero Burning ROM\Nero.exe; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\Nero.exe; ValueType: string; ValueData: {app}\Nero Burning ROM; Components: nero_core; ValueName: Path; Flags: uninsdeletekey

;Nero FileAssociations - Nero Burning Rom
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\Shell\Open; ValueType: string; ValueData: Nero Burning ROM; Components: nero_core; ValueName: FriendlyAppName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\Shell\Open\Command; ValueType: string; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .cue; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .img; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .iso; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nhf; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nhv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nmd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nab; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nr3; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nr4; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nra; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrb; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrc; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nre; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrg; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrh; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nri; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrm; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrs; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nru; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nrw; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\SupportedTypes; ValueType: string; ValueName: .nsd; Components: nero_core; Flags: uninsdeletekey

Root: HKLM; SubKey: Software\Classes\.cue; ValueType: string; ValueData: NeroBurningROM.Files8.cue; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.cue\OpenWithProgIDs; ValueType: string; ValueName: NeroBurningROM.Files8.cue; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.cue; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.cue; ValueType: string; ValueData: {cm:CUE_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.cue; ValueType: string; ValueData: {cm:CUE_Description}; ValueName: FriendlyTypeName; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\NeroBurningROM.Files8.cue\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.cue\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

Root: HKLM; SubKey: Software\Classes\.img; ValueType: string; ValueData: NeroBurningROM.Files8.img; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.img\OpenWithProgIDs; ValueType: string; ValueName: NeroBurningROM.Files8.img; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.img; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.img; ValueType: string; ValueData: {cm:IMG_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.img; ValueType: string; ValueData: {cm:IMG_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.img\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.img\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

Root: HKLM; SubKey: Software\Classes\.iso; ValueType: string; ValueData: NeroBurningROM.Files8.iso; Components: nero_core; Flags: uninsdeletekeyifempty uninsdeletevalue; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.iso\OpenWithProgIDs; ValueType: string; ValueName: NeroBurningROM.Files8.iso; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.iso; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.iso; ValueType: string; ValueData: {cm:ISO_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.iso; ValueType: string; ValueData: {cm:ISO_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.iso\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.iso\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

Root: HKLM; SubKey: Software\Classes\.nab; ValueType: string; ValueData: NeroBurningROM.Files8.nab; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nab; ValueType: string; ValueData: {cm:NAB_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nab; ValueType: string; ValueData: {cm:NAB_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nab\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,17; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nab\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nhf; ValueType: string; ValueData: NeroBurningROM.Files8.nhf; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhf; ValueType: string; ValueData: {cm:NHF_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhf; ValueType: string; ValueData: {cm:NHF_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhf\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,3; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhf\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nhv; ValueType: string; ValueData: NeroBurningROM.Files8.nhv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhv; ValueType: string; ValueData: {cm:NHV_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhv; ValueType: string; ValueData: {cm:NHV_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhv\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nhv\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nmd; ValueType: string; ValueData: NeroBurningROM.Files8.nmd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nmd; ValueType: string; ValueData: {cm:NMD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nmd; ValueType: string; ValueData: {cm:NMD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nmd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nmd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nr3; ValueType: string; ValueData: NeroBurningROM.Files8.nr3; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr3; ValueType: string; ValueData: {cm:NR3_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr3; ValueType: string; ValueData: {cm:NR3_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr3\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,15; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr3\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nr4; ValueType: string; ValueData: NeroBurningROM.Files8.nr4; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr4; ValueType: string; ValueData: {cm:NR4_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr4; ValueType: string; ValueData: {cm:NR4_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr4\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,18; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nr4\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nra; ValueType: string; ValueData: NeroBurningROM.Files8.nra; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nra; ValueType: string; ValueData: {cm:NRA_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nra; ValueType: string; ValueData: {cm:NRA_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nra\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,4; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nra\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrb; ValueType: string; ValueData: NeroBurningROM.Files8.nrb; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrb; ValueType: string; ValueData: {cm:NRB_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrb; ValueType: string; ValueData: {cm:NRB_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrb\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrb\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrc; ValueType: string; ValueData: NeroBurningROM.Files8.nrc; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrc; ValueType: string; ValueData: {cm:NRC_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrc; ValueType: string; ValueData: {cm:NRC_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrc\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrc\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrd; ValueType: string; ValueData: NeroBurningROM.Files8.nrd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrd; ValueType: string; ValueData: {cm:NRD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrd; ValueType: string; ValueData: {cm:NRD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nre; ValueType: string; ValueData: NeroBurningROM.Files8.nre; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nre; ValueType: string; ValueData: {cm:NRE_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nre; ValueType: string; ValueData: {cm:NRE_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nre\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,17; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nre\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrg; ValueType: string; ValueData: NeroBurningROM.Files8.nrg; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrg; ValueType: string; ValueData: {cm:NRG_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrg; ValueType: string; ValueData: {cm:NRG_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrg\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrg\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrh; ValueType: string; ValueData: NeroBurningROM.Files8.nrh; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrh; ValueType: string; ValueData: {cm:NRH_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrh; ValueType: string; ValueData: {cm:NRH_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrh\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,3; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrh\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nri; ValueType: string; ValueData: NeroBurningROM.Files8.nri; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nri; ValueType: string; ValueData: {cm:NRI_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nri; ValueType: string; ValueData: {cm:NRI_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nri\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nri\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrj; ValueType: string; ValueData: NeroBurningROM.Files8.nrj; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrj; ValueType: string; ValueData: {cm:NRJ_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrj; ValueType: string; ValueData: {cm:NRJ_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrj\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,4; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrj\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrm; ValueType: string; ValueData: NeroBurningROM.Files8.nrm; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrm; ValueType: string; ValueData: {cm:NRM_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrm; ValueType: string; ValueData: {cm:NRM_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrm\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,7; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrm\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrs; ValueType: string; ValueData: NeroBurningROM.Files8.nrs; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrs; ValueType: string; ValueData: {cm:NRS_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrs; ValueType: string; ValueData: {cm:NRS_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrs\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrs\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nru; ValueType: string; ValueData: NeroBurningROM.Files8.nru; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nru; ValueType: string; ValueData: {cm:NRU_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nru; ValueType: string; ValueData: {cm:NRU_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nru\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nru\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrv; ValueType: string; ValueData: NeroBurningROM.Files8.nrv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrv; ValueType: string; ValueData: {cm:NRV_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrv; ValueType: string; ValueData: {cm:NRV_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrv\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrv\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrw; ValueType: string; ValueData: NeroBurningROM.Files8.nrw; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrw; ValueType: string; ValueData: {cm:NRW_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrw; ValueType: string; ValueData: {cm:NRW_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrw\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,16; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nrw\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nsd; ValueType: string; ValueData: NeroBurningROM.Files8.nsd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nsd; ValueType: string; ValueData: {cm:NSD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nsd; ValueType: string; ValueData: {cm:NSD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nsd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files8.nsd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

;Application paths - Hack to access CoverDesigner from Nero Express
#ifndef Micro
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\NCoverEd.exe; ValueType: string; ValueData: {app}\Nero CoverDesigner\CoverDes.exe; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\NCoverEd.exe; ValueType: string; ValueData: {app}\Nero CoverDesigner; Components: nero_coverdes; ValueName: Path; Tasks: ; Languages: ; Flags: uninsdeletekey
#endif

;Nero FileAssociations - Nero CoverDesigner
#ifndef Micro
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\Shell\Open; ValueType: string; ValueData: Nero CoverDesigner; Components: nero_coverdes; ValueName: FriendlyAppName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\Shell\Open\Command; ValueType: string; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\SupportedTypes; ValueType: string; Components: nero_coverdes; ValueName: .cdc; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\SupportedTypes; ValueType: string; Components: nero_coverdes; ValueName: .ncd; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\SupportedTypes; ValueType: string; Components: nero_coverdes; ValueName: .nct; Flags: uninsdeletekey
#endif

#ifndef Micro
Root: HKLM; SubKey: Software\Classes\.cdc; ValueType: string; ValueData: CoverDesigner.Files8.cdc; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.cdc; ValueType: string; ValueData: {cm:CDC_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.cdc; ValueType: string; ValueData: {cm:CDC_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.cdc\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files8.cdc\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\.ncd; ValueType: string; ValueData: CoverDesigner.Files8.ncd; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.ncd; ValueType: string; ValueData: {cm:NCD_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.ncd; ValueType: string; ValueData: {cm:NCD_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files8.ncd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.ncd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\.nct; ValueType: string; ValueData: CoverDesigner.Files8.nct; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.nct; ValueType: string; ValueData: {cm:NCT_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.nct; ValueType: string; ValueData: {cm:NCT_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files8.nct\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files8.nct\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
#endif

[UninstallDelete]
Name: {cf}\Nero\Lib\NeroInst.db; Type: files
Name: {cf}\Nero\Lib\Rollback.db; Type: files
Name: {cf}\Nero\Lib; Type: dirifempty
Name: {cf}\Nero; Type: dirifempty
Name: {commonappdata}\Nero\DrWeb\*; Type: files
Name: {commonappdata}\Nero\DrWeb; Type: dirifempty

[Messages]
BeveledLabel=�2008 Klaas Nekeman

[CustomMessages]
issiUrl=http://updatepack.nl
issiUrlText=Updatepack.nl
;Evaluation Serial (March 2008)
EvalSerial=8K24-6229-0105-7CE0-502X-M7K1-7C60
;English
;Setup Wizard - Registration dialog
english.CustomFormCaption=Customer Information
english.CustomFormDescription=Please enter your information.
english.RegistrationInfo=Please personalize your copy of Nero 8 by entering your name and%nyour serial number.
english.RegistrationWelcome=Thanks for purchasing your copy of Nero.
english.RegistrationWelcomeCaption=Welcome to Nero
english.RegistrationCaption=Registration
english.NeroShopCaption=No Serial number?
english.NeroShop=Nero Online Shop�
english.NeroShopURL=http://www.nero.com/eng/catalog.html
english.RegistrationName=Name:
english.RegistrationOrg=Organization:
english.RegistrationSerial=Serial number:
;Filetype descriptions - Nero CoverDesigner
english.CDC_Description=Nero CoverDesigner Document
english.NCD_Description=Nero CoverDesigner Document
english.NCT_Description=Nero CoverDesigner Template
;Filetype descriptions - Nero Burning Rom
english.CUE_Description=CD-Image file
english.IMG_Description=CD-Image file
english.ISO_Description=CD-Image file
english.NAB_Description=Audiobook CD-ROM Compilation
english.NHF_Description=HFS-CD Compilation
english.NHV_Description=HD-BURN-Video Compilation
english.NMD_Description=MiniDVD Compilation
english.NR3_Description=CD-ROM Compilation (MP3)
english.NR4_Description=CD-ROM Compilation (AAC)
english.NRA_Description=Audio-CD Compilation
english.NRB_Description=CD-ROM Compilation (Boot)
english.NRC_Description=CD-ROM Compilation (UDF/ISO)
english.NRD_Description=DVD-Video Compilation
english.NRE_Description=CD Extra Compilation
english.NRG_Description=CD-Image file
english.NRH_Description=Hybrid CD-ROM Compilation
english.NRI_Description=CD-ROM Compilation (ISO)
english.NRJ_Description=JukeBox Compilation
english.NRM_Description=Mixed-Mode-CD Compilation
english.NRS_Description=CD-ROM Compilation (EFI Boot)
english.NRU_Description=CD-ROM Compilation (UDF)
english.NRV_Description=Video-CD Compilation
english.NRW_Description=WMA CD-ROM Compilation
english.NSD_Description=Super Video CD Compilation
;Setup Component Description
english.Comp_Nero_lang=Additonal languages
english.Comp_Nero_lang_chinese_simpl=Chinese (simplified)
english.Comp_Nero_lang_chinese_trad=Chinese (traditional)
english.Comp_Nero_lang_czech=Czech
english.Comp_Nero_lang_danish=Danish
english.Comp_Nero_lang_dutch=Dutch
english.Comp_Nero_lang_english=English
english.Comp_Nero_lang_finnish=Finnish
english.Comp_Nero_lang_french=French
english.Comp_Nero_lang_german=German
english.Comp_Nero_lang_greek=Greek
english.Comp_Nero_lang_hungarian=Hungarian
english.Comp_Nero_lang_italian=Italian
english.Comp_Nero_lang_japanese=Japanese
english.Comp_Nero_lang_korean=Korean
english.Comp_Nero_lang_norwegian=Norwegian
english.Comp_Nero_lang_polish=Polish
english.Comp_Nero_lang_portuguese=Portuguese
english.Comp_Nero_lang_portuguese_brazilian=Portuguese Brazilian
english.Comp_Nero_lang_russian=Russian
english.Comp_Nero_lang_spanish=Spanish
english.Comp_Nero_lang_spanish_latin_american=Spanish Latin American
english.Comp_Nero_lang_slovak=Slovak
english.Comp_Nero_lang_slovenian=Slovenian
english.Comp_Nero_lang_swedish=Swedish
english.Comp_Nero_lang_thai=Thai
english.Comp_Nero_lang_turkish=Turkish
english.Comp_Nero_Sounds=Sounds
;Setup register filetypes
english.FileAssociations=Register File types:
english.AssocImageFileExt=Associate Nero with standard CD-Image files

[Components]
;Nero Burning ROM
Name: nero_core; Description: Nero Burning ROM; Types: compact full
;Anti-Virus libraries
#ifndef Micro
Name: nero_core\anti_virus; Description: Nero Anti-Virus; Types: full; Flags: dontinheritcheck
#endif

;Nero Audio Plugins
Name: nero_core\nero_audioplugins; Description: Nero Audio Plug-ins; Types: compact full

;MauSau Audio Plugins
#ifndef Micro
Name: nero_core\nero_audioplugins\mausau; Description: MauSau Audio Plug-ins; Types: full; Flags: dontinheritcheck
#endif

;Nero VideoCD/SVCD support
Name: nero_core\nero_videocd; Description: Nero VideoCD Support; Types: compact full; Languages: 

;Nero CoverDesigner
#ifndef Micro
Name: nero_coverdes; Description: Nero CoverDesigner; Types: full
#endif

;Nero WaveEditor
#ifndef Micro
Name: nero_waveedit; Description: Nero WaveEditor; Types: full; Languages: 
#endif

;Nero Toolkit
#ifndef Micro
Name: nero_toolkit; Description: Nero Toolkit; Types: full
Name: nero_toolkit\nero_burnrights; Description: Nero BurnRights; Types: full
Name: nero_toolkit\nero_discspeed; Description: Nero DiscSpeed; Types: full
Name: nero_toolkit\nero_drivespeed; Description: Nero DriveSpeed; Types: full
Name: nero_toolkit\nero_infotool; Description: Nero InfoTool; Types: full
#endif

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Components: nero_core
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Components: nero_core
Name: imagefile_assoc; Description: {cm:AssocImageFileExt}; GroupDescription: {cm:FileAssociations}; Flags: unchecked; Components: nero_core

;Include English Language by default
#if NeroSetupLocale != "english"
#include "Script\Lang\English\NeroLite_english.iss"
#endif

;Include language file
#ifdef LocaleIncludeFileName
#include "Script\Include\" + LocaleIncludeFileName
#endif

;Add additional language section if necessary
#if EntryCount("Languages") > 1
	#insert FindSectionEnd("Components")
Name: nero_lang; Description: {cm:Comp_Nero_lang}
;English
Name: nero_lang\english; Description: {cm:Comp_Nero_lang_english}; Languages: not english
	#append
#endif

[Code]
var
Label1: TLabel;
Label2: TLabel;
Label3: TLabel;
Label4: TLabel;
Label6: TLabel;
Label5: TLabel;
Label7: TLabel;
Label8: TLabel;
Label9: TLabel;
Edit1: TEdit;
Edit2: TEdit;
Edit3: TEdit;

FinishedInstall: Boolean;
PrevInstNeroDB: Boolean;
ActivationPath: String;
CommonNeroPath: String;
RollbackDB: String;
NeroPath: String;

#include "Script\Include\activation.iss"
#include "Script\Include\sqlite3_func.iss"
#include "Script\Include\msi_func.iss"

procedure AddLanguage(langid: String);
var
	s, ValueData:	String;
begin
	if RegQueryStringValue(HKLM,'Software\Nero\Nero8\Shared',
		'InstalledLanguages', ValueData) then
	begin
		if pos(langid, ValueData) = 0 then
			begin
				if Copy(ValueData,Length(ValueData),1) <> ';' then
					s := ValueData + ';'
				else
					s := ValueData;
			end
		else
			exit;
	end
	s := s + langid + ';';
	RegWriteStringValue(HKLM,'Software\Nero\Nero8\Shared',
		'InstalledLanguages', s);
end;

function CheckLanguage(lang_select: String): Boolean;
begin
	if
		IsComponentSelected('nero_lang\' + lang_select) or
			(CompareText(lang_select, ActiveLanguage()) = 0)
	then
		Result := True
	else
		Result := False
end;

procedure Update_ProductDB();
var
	db: longword;
	query: string;
	FileId: Array of Integer;
	FileName: Array of String;
	FilePath: string;
	i: integer;
begin
	if not DirExists(ActivationPath) then
		ForceDirectories(ActivationPath);
	if sqlite3_open(RollbackDB,db) = 0 then
	begin
		query := 'CREATE TABLE IF NOT EXISTS MsiAction(' +
					'MsiActionID integer,' +
					'ProductFamilyID integer,' +
					'FileID integer,' +
					'FileName varchar,' +
					'FilePath varchar,' +
					'PRIMARY KEY (' +
						'MsiActionID))';
		if sqlite3_exec(db, query, 0, 0, 0) = 0 then
		begin
			i := 0;
			FileId := [2473, 3724, 4948, 4949, 4950];
			FileName := ['SetupX.exe', 'NeroPatentActivation.exe', 'PatentActivationFax.htm', 'btc-bar.gif', 'logo.gif'];
			FilePath := CommonNeroPath + '\Nero Web';
			Repeat
				query := 'INSERT OR REPLACE INTO MsiAction VALUES(' +
							InttoStr(i) + ',' +
							'65,' +
							InttoStr(FileId[i]) + ',' +
							'"' + FileName[i] + '",' +
							'"' + FilePath + '\' + FileName[i] + '")';
				sqlite3_exec(db, query, 0, 0, 0);
				FilePath := ActivationPath;
				i := i + 1;
			Until i = 5;
		end;
		sqlite3_close(db);
	end;
end;

#include "Script\Include\customform.iss"

procedure CurStepChanged(CurStep: TSetupStep);
var
	ResultCode: Integer;
	UnattendedFlag: String;
begin
	case CurStep of
	ssInstall:
		begin
			//Install VC2005SP1 Redist if necessary
			if MsiQueryProductState('{7299052b-02a4-4627-81f2-1818da5d550d}') <> 5 then
				begin
					ExtractTemporaryFile('vcredist.msi');
					if WizardSilent() then
						UnattendedFlag := '/qn'
					else
						UnattendedFlag := '/qb-!';
					Exec('msiexec.exe', '/i "' + ExpandConstant('{tmp}') + '\vcredist.msi" ' + UnattendedFlag, '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
					BringToFrontAndRestore();
				end;
			NeroPath := ExpandConstant('{app}');
			Update_ProductDB();
		end;
	ssPostInstall:
		begin
			//Run activation utility if necessary
			ExtractTemporaryFile('configlicense.exe');
			if CheckSerialIsNew() then
				Exec(ExpandConstant('{tmp}\configlicense.exe'), ExpandConstant('{code:getSerial}'), '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
			FinishedInstall := True;
		end;
	end;
end;

procedure ISSI_InitializeWizard();
begin
	//Detect Windows Installer 2
	if not IsMsiRequiredVersion(2,0) then
		begin
			MsgBox('Nero 8 {#NeroSetupType} requires Microsoft Windows Installer 2.0 or newer to be installed first.', mbError, mb_OK);
			Abort();
		end;
	//Set global vars
	CommonNeroPath := ExpandConstant('{cf}') + '\Nero';
	ActivationPath := CommonNeroPath + '\Lib';
	RollbackDB := ActivationPath + '\Rollback.db';

	if FileExists(RollbackDB) then
		PrevInstNeroDB := True;

	CustomForm_CreatePage(wpWelcome);
end;


procedure DeinitializeSetup();
begin
	//Cleanup if setup is aborted
	if (not FinishedInstall) and (not PrevInstNeroDB) then
		begin
			if FileExists(RollbackDB) then
				DeleteFile(RollbackDB);
			if RemoveDir(ActivationPath) then
					RemoveDir(CommonNeroPath);
		end;
end;

#include ISSI_IncludePath+"\_issi.isi"

#ifdef LocaleIncludeFileName
#expr SaveToFile(AddBackslash(SourcePath) + LocaleIncludeFileName)
#expr DeleteFile("Script\Include\" + LocaleIncludeFileName)
#pragma error "Completed preprocessing script. You can now proceed building " + AddBackslash(SourcePath) + LocaleIncludeFileName
#endif