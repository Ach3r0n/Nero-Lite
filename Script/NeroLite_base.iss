;
;Nero 7/8 Lite Setup script for InnoSetup 5.3.x, depending on ISPP and ISSI.
;
;Copyright (C) 2007-2010 Klaas Nekeman
;

[Setup]
AllowNoIcons=true
AppId=Nero{#NeroVersion}Lite
AppName=Nero {#NeroVersion} {#NeroSetupType}
AppCopyright=Nero
AppPublisher=UpdatePack.nl
AppPublisherURL=http://updatepack.nl
AppVerName=Nero {#NeroVersion} {#NeroSetupType} {#NeroFileVersion}
AppVersion={#NeroFileVersion}
ChangesAssociations=true
Compression=lzma2/ultra64
DefaultDirName={pf}\Nero
DefaultGroupName=Nero
DisableWelcomePage=Yes
FlatComponentsList=false
InternalCompressLevel=ultra64
MinVersion=0,5.0sp4
OutputBaseFilename=Nero-{#NeroFileVersion}_{#NeroSetupLocale}_{#Lowercase(NeroSetupType)}
OutputDir=.\Output
SetupIconFile=Custom\Resources\Icons\Nero{#NeroVersion}\nps_dll_128.ico
ShowLanguageDialog=auto
ShowComponentSizes=false
SignTool=signcode -cn "Klaas Nekeman" -i http://updatepack.nl
SignedUninstaller=true
SignedUninstallerDir=.\Setup
SolidCompression=true
UninstallDisplayIcon={cf}\{#RegPublisherName}\Nero Web\nps.dll
UninstallDisplayName=Nero {#NeroVersion} {#NeroSetupType}
UserInfoPage=false
VersionInfoCompany=UpdatePack.nl
VersionInfoCopyright=Klaas Nekeman
VersionInfoDescription=Nero {#NeroVersion} {#NeroSetupType}
VersionInfoProductName=Nero {#NeroSetupType}
VersionInfoProductVersion={#NeroFileVersion}
AppMutex=NeroActiv,NeroSplashScreenMutex
VersionInfoVersion=1.20.1.1
DisableReadyMemo=true
UninstallFilesDir={app}\Installer

[Languages]
Name: english; MessagesFile: compiler:Default.isl; LicenseFile: {#NeroSetup_MsiFilePath}\EULA_eng.rtf

[Files]
;Hack to fix Final Wizard Dialog Bitmap (ISSI bug)
Source: Setup\Nero{#NeroVersion}\nerosidebarbig.bmp; DestDir: {tmp}; DestName: WizardBitmapImage2.bmp; Flags: ignoreversion dontcopy noencryption

;AutoItX 3.3.6.0
Source: Setup\autoitx3.dll; DestDir: {tmp}; Flags: dontcopy

;SQLite 3.6.23
Source: Setup\sqlite3.dll; DestDir: {tmp}; Flags: dontcopy

;MFC71 Redistributable
#if NeroVersion == 7
Source: Bin\[FILELOCATION]Redist\mfc71.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
Source: Bin\[FILELOCATION]Redist\mfc71u.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
Source: Bin\[FILELOCATION]Redist\msvcp71.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
Source: Bin\[FILELOCATION]Redist\msvcr71.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
#endif

;VC++ 2005 SP1 Redistributable
#if NeroVersion >= 8
Source: Setup\vcredist.msi; DestDir: {tmp}; Flags: dontcopy
#endif

;GDI+ Redistributable (5.1.3102.5581)
Source: Setup\gdiplus.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall; OnlyBelowVersion: 0,5.01.2600

;BCGControlBar library
#if NeroVersion == 7
Source: Bin\[FILELOCATION]Redist\BCGCBPRO86071.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860un71.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860un71.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
#else
Source: Bin\[FILELOCATION]Redist\BCGCBPRO86080.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860u80.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860u80.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
#endif
Source: Bin\[FILELOCATION]Redist\BCGPOleAcc.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt

;Pegasus Imaging Support
Source: {#ImagXPress_MsiFilePath}\imagX7.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: {#ImagXPress_MsiFilePath}\imagXpr7.dll; DestDir: {sys}; Flags: sharedfile restartreplace regserver uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: {#ImagXPress_MsiFilePath}\imagXR7.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: {#ImagXPress_MsiFilePath}\imagXRA7.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: {#ImagXPress_MsiFilePath}\TwnLib4.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}

;Nero Toolkit
#ifndef Micro
#if NeroVersion == 7
Source: Custom\{#DiscSpeed_MsiFilePath}\CDSpeed.exe; DestDir: {app}\Nero Toolkit\Nero CD-DVD Speed; Components: nero_toolkit\nero_cdspeed
Source: Custom\Help\CDSpeed_eng.chm; DestDir: {app}\Nero Toolkit\Nero CD-DVD Speed; Components: nero_toolkit\nero_cdspeed
#else
Source: Custom\{#DiscSpeed_MsiFilePath}\DiscSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed
#endif
Source: Custom\{#DriveSpeed_MsiFilePath}\DriveSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DriveSpeed; Components: nero_toolkit\nero_drivespeed; Flags: restartreplace uninsrestartdelete
Source: Custom\{#InfoTool_MsiFilePath}\InfoTool.exe; DestDir: {app}\Nero Toolkit\Nero InfoTool; Components: nero_toolkit\nero_infotool
Source: Custom\{#BurnRights_MsiFilePath}\NeroBurnRights.exe; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights
Source: {#BurnRights_MsiFilePath}\NeroCo.dll; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights
#endif

;Nero Product Activation
#ifdef Micro_English
Source: Custom\{#CommonFilesLibNT_MsiFilePath}\English\AdvrCntr?.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
#else
Source: Custom\{#CommonFilesLibNT_MsiFilePath}\AdvrCntr?.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
#endif
;Installation database
Source: Setup\NeroInst.db; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace uninsrestartdelete
;Nero Patent Activation
Source: Custom\{#CommonFilesLibNT_MsiFilePath}\NeroPatentActivation.exe; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: {#CommonFilesLibNT_MsiFilePath}\btc-bar.gif; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd
Source: {#CommonFilesLibNT_MsiFilePath}\logo.gif; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd
Source: {#CommonFilesLibNT_MsiFilePath}\patentactivationfax.htm; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd
#if NeroVersion == 8
Source: {#CommonFilesLibNT_MsiFilePath}\NeroAPIGlueLayerUnicode.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero Lib
#if NeroVersion == 7
Source: {#CommonFilesLib_MsiFilePath}\ShellManager.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#else
Source: {#CommonFilesLib_MsiFilePath}\ShellManager3.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#endif
Source: {#CommonFilesLib_MsiFilePath}\DriveLocker.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
Source: {#CommonFilesLib2_MsiFilePath}\NeroVMRModules.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core

;Nero Control Center
#ifdef Micro_English
Source: Custom\Bin\[FILELOCATION]\English\SetupX.exe; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
	#if NeroVersion == 8
Source: Custom\Bin\[FILELOCATION]\Setup\English\nps.dll; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
	#else
Source: Custom\Bin\[FILELOCATION]\Setup\nps.dll; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
	#endif
#else
Source: Custom\Bin\[FILELOCATION]\SetupX.exe; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
Source: Custom\Bin\[FILELOCATION]\Setup\nps.dll; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
#endif

;Nero Extended FileDialog
#if NeroVersion <= 8
#ifdef Micro_English
Source: Custom\Bin\[FILELOCATION]Nero Home Components\NT\English\NeroFileDialog.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#else
Source: Custom\Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialog.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#endif
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogCF.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
;Nero Extended FileDialog (Vista)
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogIDLPS.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core; MinVersion: 0,6.0
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogVista.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core; MinVersion: 0,6.0
#endif

;Nero Core
Source: Custom\{#NeroCore_MsiFilePath}\nero.exe; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\CDI\*; DestDir: {app}\Nero Burning ROM\CDI; Components: nero_core
Source: {#NeroCore_MsiFilePath}\DosBootimage.IMA; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\nero.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uCDCopy.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uDVDREALLOC.DLL; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uFATImporter.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uGENCUSH.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uGeneratr.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uGenFAT.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\ugeniso.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uGenUDF.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uGenUDF2.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uimage.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uImageGen.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uISOFS.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uMMC.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uNeroErr.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\unewtrf.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uTMPVImporter.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uUDFImporter.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uneroDB.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\uNeRSDB.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\wnaspi32.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core

;Nero Anti-Virus support
Source: {#NeroCore_MsiFilePath}\NeDwFileHelper.exe; DestDir: {app}\Nero Burning ROM; Components: nero_core

;Nero LabelFlash
#ifndef Micro
Source: {#NeroCore_MsiFilePath}\LLS.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core
#endif

;Nero Audio Filters
Source: {#NeroCore_MsiFilePath}\KARAOKE.DLL; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_audioplugins
Source: {#NeroCore_MsiFilePath}\uEqualize.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_audioplugins

;Nero Sounds
Source: {#NeroCore_MsiFilePath}\Boo.wav; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\DingDong.wav; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: {#NeroCore_MsiFilePath}\Trumpet1.wav; DestDir: {app}\Nero Burning ROM; Components: nero_core

;Nero VideoCD Support
Source: {#NeroCore_MsiFilePath}\uNeVCDEngine.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_videocd
Source: {#NeroCore_MsiFilePath}\uVCDMenu.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_videocd
Source: {#NeroCore_MsiFilePath}\uVMpegEnc.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeAudio2.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt uninsrestartdelete restartreplace; Components: nero_core\nero_videocd

;E-AC3/TrueHD Audio Support
#if NeroVersion == 7
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeDtsDec.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeEacDec.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeMlpDec.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\Neroapl.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
#endif

#if NeroVersion <= 8
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeSplitter.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeMP4Splitter.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeVideo.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: {#CommonFilesLib2_MsiFilePath}\NeEm2a.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
Source: {#CommonFilesLib2_MsiFilePath}\NeEm2v.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
Source: {#CommonFilesLib2_MsiFilePath}\uNeroMediaCon.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
#endif
#if NeroVersion == 7
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NDParser.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeRender.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
#endif

;Note: CoverEdCtrl.ocx necessary for LabelFlash and VCD/SVCD support
#ifndef Micro
Source: Custom\{#CoverDesigner_MsiFilePath}\CoverEdCtrl.ocx; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd and (not nero_coverdes)
;CoverEdCtrl.ocx must be placed in Nero CoverDesigner directory to work
Source: Custom\{#CoverDesigner_MsiFilePath}\CoverEdCtrl.ocx; DestDir: {app}\Nero CoverDesigner; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_coverdes
#else
Source: Custom\{#CoverDesigner_MsiFilePath}\CoverEdCtrl.ocx; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
#endif

;Nero Audio Plugin Manager
#if NeroVersion == 8
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AudioPluginMgr.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins\Mgr; Components: nero_core\nero_audioplugins {#emit nero_waveedit}
#endif
#if NeroVersion == 7
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AudioPluginMgr.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core\nero_audioplugins {#emit nero_waveedit}
#endif

;Nero Audio Plugins - AC3
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AC3.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - AIFF
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\Aiff.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Audible Audiobook
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AReadyLB_Nero.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\Audible.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - MP3+Pro
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PRO.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
#if NeroVersion == 7
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PRO_dmo.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PRO_hlp.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero Audio Plugins - Ogg Vorbis
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\ogg.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Wave
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\Wav.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Wave Convertor
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\DefConvertor.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Windows Media
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\msaxp.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Nero Digital
Source: {#CommonFilesLib_MsiFilePath}\ndaudio.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: {#CommonFilesLib_MsiFilePath}\NeroIPP.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Custom\{#CommonFilesLib_MsiFilePath}\NeroDigitalExt.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: restartreplace regserver sharedfile uninsrestartdelete uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\NeroDigital.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Lame MP3 Encoder
#ifndef Micro
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PP.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
;Lame 3.98
Source: Custom\AudioPlugins\lame_enc.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero Audio Plugins - MauSau
#ifndef Micro
Source: Custom\MauSau\*; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins\mausau; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero CoverDesigner
#ifndef Micro
Source: Custom\{#CoverDesigner_MsiFilePath}\CoverDes.exe; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: {#CoverDesigner_MsiFilePath}\def.dat; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: {#CoverDesigner_MsiFilePath}\stocks.dat; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: {#CoverDesigner_MsiFilePath}\Templates\*; DestDir: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes
#endif

;Nero WaveEditor
#ifndef Micro
Source: Custom\{#WaveEditor_MsiFilePath}\AudioEffectLibrary.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\{#WaveEditor_MsiFilePath}\Controls.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit

Source: Custom\{#WaveEditor_MsiFilePath}\DXBridge.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\{#WaveEditor_MsiFilePath}\DXEnum.exe; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit
Source: Custom\{#WaveEditor_MsiFilePath}\VSTBridge.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit

Source: Custom\{#WaveEditor_MsiFilePath}\waveedit.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\{#WaveEditor_MsiFilePath}\waveedit.exe; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit
#endif

[Dirs]
;Force creation of DrWeb subdirectory, otherwise Anti-Virus libs don't get installed
Name: {commonappdata}\Nero\DrWeb; Components: nero_core

[Icons]
;Nero Toolkit
#ifndef Micro
Name: {group}\Nero Toolkit\Nero BurnRights; Filename: {app}\Nero Toolkit\Nero BurnRights\neroburnrights.exe; Components: nero_toolkit\nero_burnrights
#if NeroVersion <= 7
Name: {group}\Nero Toolkit\Nero CD-DVD Speed; Filename: {app}\Nero Toolkit\Nero CD-DVD Speed\cdspeed.exe; Components: nero_toolkit\nero_cdspeed
#endif
#if NeroVersion >= 8
Name: {group}\Nero Toolkit\Nero DiscSpeed; Filename: {app}\Nero Toolkit\Nero DiscSpeed\discspeed.exe; Components: nero_toolkit\nero_discspeed
#endif
Name: {group}\Nero Toolkit\Nero DriveSpeed; Filename: {app}\Nero Toolkit\Nero DriveSpeed\drivespeed.exe; Components: nero_toolkit\nero_drivespeed
Name: {group}\Nero Toolkit\Nero InfoTool; Filename: {app}\Nero Toolkit\Nero InfoTool\infotool.exe; Components: nero_toolkit\nero_infotool
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

#if NeroVersion == 7
;Nero ProductSetup
Name: {group}\Setup\Nero ProductSetup; Filename: {cf}\{#RegPublisherName}\Nero Web\SetupX.exe; Parameters: "MODE=""update"""; IconFilename: {cf}\{#RegPublisherName}\Nero Web\nps.dll; IconIndex: 0
#else
;Nero ControlCenter
Name: {group}\Setup\Nero ControlCenter; Filename: {cf}\{#RegPublisherName}\Nero Web\SetupX.exe; Parameters: "MODE=""update"""; IconFilename: {cf}\{#RegPublisherName}\Nero Web\nps.dll; IconIndex: 0
#endif

[Registry]
;Registration Details
Root: HKLM; Subkey: Software\{#RegPublisherName}; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}; ValueType: string; ValueName: ProductCode; ValueData: Nero {#NeroVersion} {#NeroSetupType}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}; ValueType: string; ValueName: ProductVersion; ValueData: {#NeroFileVersion}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}\Info; ValueType: string; ValueName: User; ValueData: {code:getName}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}\Info; ValueType: string; ValueName: Company; ValueData: {code:getOrganisation}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}\Info; ValueType: string; ValueName: EulaAccepted; ValueData: 1; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroVersion}\Info; ValueType: string; ValueName: MissingFilesState; ValueData: 0; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: AutomaticUpdate; ValueData: 0; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: DONOTRUNSETUPX; ValueData: 0; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: LastAutomaticUpdateCheck; ValueData: $ffffffff; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: LastUpdateCheck; ValueData: $ffffffff; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation; ValueType: none; Flags: uninsdeletekey

#if NeroVersion == 8
Root: HKCU; Subkey: Software\{#RegPublisherName}; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\{#RegPublisherName}; ValueType: none; Flags: uninsdeletekeyifempty
#endif

;Windows Vista Compatibility
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Info; ValueType: dword; ValueName: OS_MajorVersion; ValueData: 6; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Info; ValueType: dword; ValueName: OS_MinorVersion; ValueData: 0; Flags: uninsdeletekey; MinVersion: 0,6.0

#if NeroVersion == 7
Root: HKLM; Subkey: Software\{#RegPublisherName}\Nero - Burning Rom; ValueType: none; Flags: uninsdeletekey; Components: nero_core
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero - Burning Rom; ValueType: none; Flags: uninsdeletekey; Components: nero_core
#endif

#if NeroVersion == 8
;Nero Burning Rom - Tweaks (Note tweaks get only installed for current user)
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero8\Nero - Burning Rom\General; ValueType: dword; ValueName: bShowAllCompilationTypes; ValueData: 1; Components: nero_core; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero8\Nero - Burning Rom\Recorder; ValueType: dword; ValueName: ShowSingleRecorderSpeed; ValueData: 1; Components: nero_core; Flags: uninsdeletekey

;Nero CoverDesigner
#ifndef Micro
Root: HKLM; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer; ValueType: none; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: DocTemplates; ValueData: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: DocTemplates; ValueData: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: Docs; ValueData: {commondocs}; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: Docs; ValueData: {userdocs}; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: ImportFiles; ValueData: {commondocs}; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero8\Cover Designer\DefaultSettings; ValueType: string; ValueName: ImportFiles; ValueData: {userdocs}; Components: nero_coverdes; Flags: uninsdeletekey
#endif
#endif

;Nero CoverDesigner
#if NeroVersion == 7
#ifndef Micro
Root: HKLM; Subkey: Software\{#RegPublisherName}\Cover Designer; ValueType: none; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Cover Designer\DefaultSettings; ValueType: string; ValueName: DocTemplates; ValueData: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes; Flags: uninsdeletekey
#endif
#endif

;Nero WaveEditor
#ifndef Micro
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared\AudioEffects\DXPlugins; ValueName: DXEnum; ValueData: {app}\Nero WaveEditor\; ValueType: string; Components: nero_waveedit; Flags: uninsdeletekey
#if NeroVersion == 8
Root: HKLM; SubKey: Software\{#RegPublisherName}\Shared\AudioEffects; ValueType: string; ValueName: {{71CD24C5-9704-4D1F-86E8-F1E7AE677E43}; ValueData: Audio Effects; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\{#RegPublisherName}\Shared\AudioEffects; ValueType: string; ValueName: {{6D32D183-28B4-4253-9858-A3F12C62CE66}; ValueData: DirectX Effects; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\{#RegPublisherName}\Shared\AudioEffects; ValueType: string; ValueName: {{F1F60FDD-97EA-43F1-920F-6EE61F32F435}; ValueData: VST Effects; Flags: uninsdeletekey
#endif
#endif

;Nero Shared Settings
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: AudioPlugin; ValueData: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: DriveLocker; ValueData: {cf}\{#RegPublisherName}\Lib\DriveLocker.dll; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: Lib; ValueData: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: uninsdeletekey
#if NeroVersion == 8
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: AudioPluginManager; ValueData: {cf}\{#RegPublisherName}\AudioPlugins\Mgr; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: AudioPluginManager; ValueData: {app}\Nero Burning ROM; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: uninsdeletekey
#endif
#ifndef Micro
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared32; ValueType: string; ValueName: LLS; ValueData: {app}\Nero Burning ROM\LLS.dll; Components: nero_coverdes; Flags: uninsdeletekey
#endif

;Application path - Nero Burning Rom
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\Nero.exe; ValueType: string; ValueData: {app}\Nero Burning ROM\Nero.exe; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\Nero.exe; ValueType: string; ValueData: {app}\Nero Burning ROM; Components: nero_core; ValueName: Path; Flags: uninsdeletekey

;Application path - CoverDesigner (Required to display CoverDesigner links in Nero Express)
#ifndef Micro
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\NCoverEd.exe; ValueType: string; ValueData: {app}\Nero CoverDesigner\CoverDes.exe; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\App Paths\NCoverEd.exe; ValueType: string; ValueData: {app}\Nero CoverDesigner; Components: nero_coverdes; ValueName: Path; Tasks: ; Languages: ; Flags: uninsdeletekey
#endif

;Nero file associations - Nero Burning Rom
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\Shell\Open; ValueType: string; ValueData: Nero Burning ROM; Components: nero_core; ValueName: FriendlyAppName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\nero.exe\Shell\Open\Command; ValueType: string; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Components: nero_core; Flags: uninsdeletekey

;Public file types
Root: HKLM; SubKey: Software\Classes\.cue; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.cue; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.cue\OpenWithProgids; ValueType: binary; ValueName: NeroBurningROM.Files{#NeroVersion}.cue; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.cue; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.cue; ValueType: string; ValueData: {cm:CUE_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.cue; ValueType: string; ValueData: {cm:CUE_Description}; ValueName: FriendlyTypeName; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.cue\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.cue\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.img; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.img; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.img\OpenWithProgids; ValueType: binary; ValueName: NeroBurningROM.Files{#NeroVersion}.img; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.img; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.img; ValueType: string; ValueData: {cm:IMG_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.img; ValueType: string; ValueData: {cm:IMG_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.img\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.img\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.iso; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.iso; Components: nero_core; Flags: uninsdeletekeyifempty uninsdeletevalue; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.iso\OpenWithProgids; ValueType: binary; ValueName: NeroBurningROM.Files{#NeroVersion}.iso; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.iso; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.iso; ValueType: string; ValueData: {cm:ISO_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.iso; ValueType: string; ValueData: {cm:ISO_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.iso\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.iso\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

;Private file types
Root: HKLM; SubKey: Software\Classes\.nab; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nab; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nab; ValueType: string; ValueData: {cm:NAB_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nab; ValueType: string; ValueData: {cm:NAB_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nab\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,17; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nab\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nhf; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nhf; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhf; ValueType: string; ValueData: {cm:NHF_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhf; ValueType: string; ValueData: {cm:NHF_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhf\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,3; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhf\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nhv; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nhv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhv; ValueType: string; ValueData: {cm:NHV_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhv; ValueType: string; ValueData: {cm:NHV_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhv\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nhv\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nmd; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nmd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nmd; ValueType: string; ValueData: {cm:NMD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nmd; ValueType: string; ValueData: {cm:NMD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nmd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nmd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nr3; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nr3; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr3; ValueType: string; ValueData: {cm:NR3_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr3; ValueType: string; ValueData: {cm:NR3_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr3\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,15; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr3\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nr4; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nr4; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr4; ValueType: string; ValueData: {cm:NR4_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr4; ValueType: string; ValueData: {cm:NR4_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr4\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,18; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nr4\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nra; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nra; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nra; ValueType: string; ValueData: {cm:NRA_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nra; ValueType: string; ValueData: {cm:NRA_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nra\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,4; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nra\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrb; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrb; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrb; ValueType: string; ValueData: {cm:NRB_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrb; ValueType: string; ValueData: {cm:NRB_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrb\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrb\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrc; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrc; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrc; ValueType: string; ValueData: {cm:NRC_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrc; ValueType: string; ValueData: {cm:NRC_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrc\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrc\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrd; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrd; ValueType: string; ValueData: {cm:NRD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrd; ValueType: string; ValueData: {cm:NRD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nre; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nre; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nre; ValueType: string; ValueData: {cm:NRE_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nre; ValueType: string; ValueData: {cm:NRE_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nre\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,17; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nre\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrg; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrg; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrg; ValueType: string; ValueData: {cm:NRG_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrg; ValueType: string; ValueData: {cm:NRG_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrg\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrg\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrh; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrh; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrh; ValueType: string; ValueData: {cm:NRH_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrh; ValueType: string; ValueData: {cm:NRH_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrh\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,3; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrh\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nri; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nri; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nri; ValueType: string; ValueData: {cm:NRI_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nri; ValueType: string; ValueData: {cm:NRI_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nri\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nri\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrj; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrj; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrj; ValueType: string; ValueData: {cm:NRJ_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrj; ValueType: string; ValueData: {cm:NRJ_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrj\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,4; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrj\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrm; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrm; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrm; ValueType: string; ValueData: {cm:NRM_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrm; ValueType: string; ValueData: {cm:NRM_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrm\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,7; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrm\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrs; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrs; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrs; ValueType: string; ValueData: {cm:NRS_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrs; ValueType: string; ValueData: {cm:NRS_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrs\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrs\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nru; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nru; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nru; ValueType: string; ValueData: {cm:NRU_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nru; ValueType: string; ValueData: {cm:NRU_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nru\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nru\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrv; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrv; ValueType: string; ValueData: {cm:NRV_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrv; ValueType: string; ValueData: {cm:NRV_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrv\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrv\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrw; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nrw; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrw; ValueType: string; ValueData: {cm:NRW_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrw; ValueType: string; ValueData: {cm:NRW_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrw\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,16; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nrw\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nsd; ValueType: string; ValueData: NeroBurningROM.Files{#NeroVersion}.nsd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nsd; ValueType: string; ValueData: {cm:NSD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nsd; ValueType: string; ValueData: {cm:NSD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nsd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroVersion}.nsd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

;Nero file associations - Nero CoverDesigner
#ifndef Micro
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\Shell\Open; ValueType: string; ValueData: Nero CoverDesigner; Components: nero_coverdes; ValueName: FriendlyAppName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\Shell\Open\Command; ValueType: string; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Components: nero_coverdes; Flags: uninsdeletekey

Root: HKLM; SubKey: Software\Classes\.cdc; ValueType: string; ValueData: CoverDesigner.Files{#NeroVersion}.cdc; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.cdc; ValueType: string; ValueData: {cm:CDC_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.cdc; ValueType: string; ValueData: {cm:CDC_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.cdc\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files{#NeroVersion}.cdc\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\.ncd; ValueType: string; ValueData: CoverDesigner.Files{#NeroVersion}.ncd; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.ncd; ValueType: string; ValueData: {cm:NCD_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.ncd; ValueType: string; ValueData: {cm:NCD_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files{#NeroVersion}.ncd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.ncd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\.nct; ValueType: string; ValueData: CoverDesigner.Files{#NeroVersion}.nct; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.nct; ValueType: string; ValueData: {cm:NCT_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.nct; ValueType: string; ValueData: {cm:NCT_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroVersion}.nct\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files{#NeroVersion}.nct\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
#endif

;Uninstall cleanup
Root: HKLM; Subkey: Software\Ahead\Shared; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKLM; Subkey: Software\Ahead; ValueType: none; Flags: dontcreatekey uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Ahead\CDSpeed; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; SubKey: Software\Ahead\DriveSpeed; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; SubKey: Software\Ahead\InfoTool; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\NeroFileDialog; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; SubKey: Software\Ahead\Nero WaveEditor; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; Subkey: Software\Ahead; ValueType: none; Flags: dontcreatekey uninsdeletekeyifempty
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKLM; Subkey: Software\Nero; ValueType: none; Flags: dontcreatekey uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; Subkey: Software\Nero\Nero8; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; Subkey: Software\Nero\Shared; ValueType: none; Flags: dontcreatekey uninsdeletekey
Root: HKCU; Subkey: Software\Nero; ValueType: none; Flags: dontcreatekey uninsdeletekeyifempty
#endif

[UninstallDelete]
Name: {cf}\{#RegPublisherName}\Lib\rollback.db; Type: files
Name: {cf}\{#RegPublisherName}\Lib; Type: dirifempty
Name: {cf}\{#RegPublisherName}; Type: dirifempty
Name: {commonappdata}\Nero; Type: filesandordirs
Name: {%USERPROFILE}\nro.log; Type: filesandordirs
#if NeroVersion == 8
Name: {userappdata}\Nero\Nero8\Nero Burning ROM\UserImages.bmp; Type: files
Name: {userappdata}\Nero\Nero8\Nero Burning ROM; Type: dirifempty
Name: {userappdata}\Nero\Nero8; Type: dirifempty
Name: {userappdata}\Nero; Type: dirifempty
#endif

[Messages]
BeveledLabel=©2010 Klaas Nekeman

[CustomMessages]
;Evaluation serials expired!
EvalSerial=
issiUrl=http://updatepack.nl
issiUrlText=UpdatePack.nl
;English
;Setup Wizard - Registration dialog
english.CustomFormCaption=Customer Information
english.CustomFormDescription=Please enter your information.
english.RegistrationInfo=Please personalize your copy of Nero {#NeroVersion} by entering your name and%nyour serial number.
english.RegistrationWelcome=Thanks for purchasing your copy of Nero.
english.RegistrationWelcomeCaption=Welcome to Nero
english.RegistrationCaption=Registration
english.NeroShopCaption=No Serial number?
english.NeroShop=Nero Online Shop
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
;Installer mutex
english.SetupIsRunningWarning=Another instance of this setup is already running!

[Components]
;Nero Burning ROM
Name: nero_core; Description: Nero Burning ROM; Types: compact full

;Nero Audio Plugins
Name: nero_core\nero_audioplugins; Description: Nero Audio Plug-ins; Types: compact full

;MauSau Audio Plugins
#ifndef Micro
Name: nero_core\nero_audioplugins\mausau; Description: MauSau Audio Plug-ins; Types: full; Flags: dontinheritcheck
#endif

;Nero VideoCD/SVCD + E-AC3/TrueHD support
#if NeroVersion == 7
Name: nero_core\nero_videocd; Description: Nero VideoCD and E-AC3/TrueHD Support; Types: compact full
#else
Name: nero_core\nero_videocd; Description: Nero VideoCD Support; Types: compact full
#endif

;Nero CoverDesigner
#ifndef Micro
Name: nero_coverdes; Description: Nero CoverDesigner; Types: full
#endif

;Nero WaveEditor
#ifndef Micro
Name: nero_waveedit; Description: Nero WaveEditor; Types: full
#endif

;Nero Toolkit
#ifndef Micro
Name: nero_toolkit; Description: Nero Toolkit; Types: full
Name: nero_toolkit\nero_burnrights; Description: Nero BurnRights; Types: full
#if NeroVersion <= 7
Name: nero_toolkit\nero_cdspeed; Description: Nero CD-DVD Speed; Types: full
#else
Name: nero_toolkit\nero_discspeed; Description: Nero DiscSpeed; Types: full
#endif
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
const installer_mutex_name = 'nero_lite_setup_mutex';

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
NeroLogPath: String;

#include "Script\Include\autoitx_func.iss"
#include "Script\Include\msi_func.iss"
#include "Script\Include\sqlite3_func.iss"

#include "Script\Include\activation.iss"

procedure AddLanguage(langid: String);
var
	s, ValueData:	String;
begin
#if NeroVersion == 8
	if RegQueryStringValue(HKLM,'Software\Nero\Nero8\Shared',
		'InstalledLanguages', ValueData) then
#endif
#if NeroVersion == 7
	if RegQueryStringValue(HKLM,'Software\Ahead\Installation\Families\Nero 7\Languages',
		'Installed', ValueData) then
#endif
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
	end;
	s := s + langid + ';';
#if NeroVersion == 8
	RegWriteStringValue(HKLM,'Software\Nero\Nero8\Shared',
		'InstalledLanguages', s);
#endif
#if NeroVersion == 7
	RegWriteStringValue(HKLM,'Software\Ahead\Installation\Families\Nero 7\Languages',
		'Installed', s);
#endif
end;

function CheckLanguage(lang_select: String): Boolean;
begin
	if IsComponentSelected('nero_lang\' + lang_select) or
		(CompareText(lang_select, ActiveLanguage()) = 0)
	then
		Result := True
	else
		Result := False
end;

procedure Update_ProductDB();
var
	db: Longword;
	query: String;
	FileId: Array of Integer;
	FileName: Array of String;
	FilePath: string;
	i: Integer;
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
					repeat
						query := 'INSERT OR REPLACE INTO MsiAction VALUES(' +
							InttoStr(i) + ',' +
						#if NeroVersion == 8
							'65,' +
						#endif
						#if NeroVersion == 7
							'8,' +
						#endif
							InttoStr(FileId[i]) + ',' +
							'"' + FileName[i] + '",' +
							'"' + FilePath + '\' + FileName[i] +
							'")';
						sqlite3_exec(db, query, 0, 0, 0);
						FilePath := ActivationPath;
						i := i + 1;
					until i = 5;
				end;
			sqlite3_close(db);
		end;
end;

#include "Script\Include\customform.iss"

procedure CurStepChanged(CurStep: TSetupStep);
var
#ifndef Nero7
	UnattendedFlag: String;
	ResultCode: Integer;
#endif
	NCC_PID: Longint;
	AddLicenseButton, EnterSerialButton,
		SerialEditBox, NeroWindowTitle: String;
	RetHandle: String;
	i: Integer;
begin
	case CurStep of
		ssInstall:
			begin
			#if NeroVersion >= 8
				//Install VC++ 2005 SP1 Redistributable if necessary
				if MsiQueryProductState('{837b34e3-7c30-493c-8f6a-2b0f04e2912c}') <> 5 then
					begin
						ExtractTemporaryFile('vcredist.msi');
						if WizardSilent() then
							UnattendedFlag := '/qn'
						else
							UnattendedFlag := '/qb-!';
						Exec('msiexec.exe', '/i "' + ExpandConstant('{tmp}') + '\vcredist.msi" ' + UnattendedFlag, '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
						BringToFrontAndRestore();
					end;
			#endif
				NeroPath := ExpandConstant('{app}');
				Update_ProductDB();
			end;
		ssPostInstall:
			begin
			//Run activation utility if necessary
				if CheckSerialIsNew() then
					begin
					//Window Controls
						#if NeroVersion >= 8
						NeroWindowTitle := '[TITLE:Nero ControlCenter; CLASS:#32770]';
						#else
						NeroWindowTitle := '[TITLE:Nero ProductSetup; CLASS:#32770]';
						#endif
						AddLicenseButton := '[CLASS:Button; INSTANCE:12;]';
						EnterSerialButton := '[ID:1; CLASS:Button; INSTANCE:1;]';
						SerialEditBox := '[ID:10008; CLASS:Edit; INSTANCE:1;]';
					//Close SetupX.exe process if already exists
						if AU3_ProcessExists('SetupX.exe') <> 0 then
							begin
								AU3_ProcessClose('SetupX.exe');
								Sleep(1000);
							end;
					//Launch Nero ControlCenter
						NCC_PID := AU3_Run(ExpandConstant('{cf}') + '\{#RegPublisherName}\Nero Web\SetupX.exe MODE="update"', chr(0), 0);
						if NCC_PID <> 0 then
							begin
							//Wait until Nero ControlCenter is ready
								if AU3_WinWait(NeroWindowTitle, chr(0), 10) <> 0 then
									begin
										i := 0;
										repeat
											RetHandle := StringOfChar(#0, 255);
											AU3_ControlGetHandle('[LAST]', chr(0), AddLicenseButton, RetHandle, 255);
											RetHandle := TrimRight(RetHandle);
											Sleep(10);
											i := i + 1;
										until (Length(RetHandle) > 0) or (i > 500);
										if (Length(RetHandle) > 0) then
											begin
												Sleep(500);
											//Press Add License button
												AU3_ControlClick(NeroWindowTitle, chr(0), AddLicenseButton, chr(0), 1, 0, 0);
											//Wait for serial dialog
												i := 0;
												repeat
													RetHandle := StringOfChar(#0, 255);
													AU3_ControlGetHandle(NeroWindowTitle, chr(0), SerialEditBox, RetHandle, 255);
													AU3_WinSetState(NeroWindowTitle, chr(0), 0);
													RetHandle := TrimRight(RetHandle);
													Sleep(10);
													i := i + 1;
												until (Length(RetHandle) > 0) or (i > 500);
												if (Length(RetHandle) > 0) then
													begin
													//Enter serial
														Sleep(100);
														AU3_ControlSetText(NeroWindowTitle, chr(0), SerialEditBox, ExpandConstant('{code:getSerial}'));
														Sleep(100);
														AU3_ControlClick(NeroWindowTitle, chr(0), EnterSerialButton, chr(0), 1, 0, 0);
														Sleep(2500);
													end;
											end;
									end;
							end;
					//Close Nero ControlCenter
						AU3_ProcessClose('SetupX.exe');
						#if NeroVersion == 7
					//Don't ask to update Nero components on startup
						RegWriteStringValue(HKLM,'Software\Ahead\Installation\Families\Nero 7\Info',
							'MissingFilesState', '0');
						#endif
					end;
				FinishedInstall := True;
			end;
	end;
end;

procedure ISSI_InitializeWizard();
begin
#if NeroVersion >= 8
//Detect Windows Installer 2
	if not IsMsiRequiredVersion(2,0) then
		begin
			MsgBox('Nero {#NeroVersion} {#NeroSetupType} requires Microsoft Windows Installer 2.0 or newer to be installed first.', mbError, mb_OK);
			Abort();
		end;
#endif
//Set global vars
	CommonNeroPath := ExpandConstant('{cf}') + '\{#RegPublisherName}';
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
//Cleanup setup logs
	NeroLogPath := ExpandConstant('{%USERPROFILE}') + '\nro.log'
	if DirExists(NeroLogPath) then
		DelTree(NeroLogPath, True, True, True);
end;

function InitializeSetup(): Boolean;
begin
	Result := true;
	if CheckForMutexes(installer_mutex_name) then
		begin
			if not WizardSilent() then
				MsgBox(ExpandConstant('{cm:SetupIsRunningWarning,Nero {#NeroVersion} {#NeroSetupType}}'), mbError, MB_OK);
			Result := false;
		end
	else
		CreateMutex(installer_mutex_name);
end;

function InitializeUninstall(): Boolean;
begin
	Result := True;
	if CheckForMutexes(installer_mutex_name) then
		begin
			if not WizardSilent() then
				MsgBox(ExpandConstant('{cm:SetupIsRunningWarning,Nero {#NeroVersion} {#NeroSetupType}}'), mbError, MB_OK);
			Result := false;
		end
	else
		CreateMutex(installer_mutex_name);
end;

#include ISSI_IncludePath+"\_issi.isi"

#ifdef LocaleIncludeFileName
#expr SaveToFile(AddBackslash(SourcePath) + LocaleIncludeFileName)
#expr DeleteFile("Script\Include\" + LocaleIncludeFileName)
#pragma error "Completed preprocessing script. You can now proceed building " + AddBackslash(SourcePath) + LocaleIncludeFileName
#endif
