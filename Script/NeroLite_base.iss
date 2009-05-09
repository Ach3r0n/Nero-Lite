;
;Nero 7/8 Lite Setup script for InnoSetup 5.3.x,
;This script also requires ISPP and ISSI!
;
;Copyright (C) 2009 - Klaas Nekeman
;

[Setup]
AllowNoIcons=true
AppId=Nero{#NeroMajorVersion}Lite
AppName=Nero {#NeroMajorVersion} {#NeroSetupType}
AppCopyright=Nero
AppPublisher=UpdatePack.nl
AppPublisherURL=http://updatepack.nl
AppVerName=Nero {#NeroMajorVersion} {#NeroSetupType} {#NeroVersion}
AppVersion={#NeroVersion}
ChangesAssociations=true
Compression=lzma/ultra
DefaultDirName={pf}\Nero
DefaultGroupName=Nero
FlatComponentsList=false
InternalCompressLevel=ultra
MinVersion=0,5.0sp4
OutputBaseFilename=Nero-{#NeroVersion}_{#NeroSetupLocale}_{#Lowercase(NeroSetupType)}
OutputDir=.\Output
SetupIconFile=Custom\Resources\Icons\Nero{#NeroMajorVersion}\nps_dll_128.ico
ShowLanguageDialog=yes
ShowComponentSizes=no
SignedUninstaller=true
SignedUninstallerDir=.\Setup
SolidCompression=true
UninstallDisplayIcon={cf}\{#RegPublisherName}\Nero Web\nps.dll
UninstallDisplayName=Nero {#NeroMajorVersion} {#NeroSetupType}
UserInfoPage=false
VersionInfoCompany=UpdatePack.nl
VersionInfoCopyright=Klaas Nekeman
VersionInfoDescription=Nero {#NeroMajorVersion} {#NeroSetupType}
VersionInfoProductName=Nero {#NeroSetupType}
VersionInfoProductVersion={#NeroVersion}
AppMutex=NeroActiv,NeroSplashScreenMutex
VersionInfoVersion=1.19.0.1

[Languages]
#ifdef Nero8
Name: english; MessagesFile: compiler:Default.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf
#endif
#ifdef Nero7
Name: english; MessagesFile: compiler:Default.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_eng.rtf
#endif

[Files]
;Hack to fix Final Wizard Dialog Bitmap (ISSI bug)
Source: Setup\Nero{#NeroMajorVersion}\nerosidebarbig.bmp; DestDir: {tmp}; DestName: WizardBitmapImage2.bmp; Flags: ignoreversion dontcopy noencryption

;AutoItX 3.3
Source: Setup\autoitx3.dll; DestDir: {tmp}; Flags: dontcopy

;SQLite 3.6.14
Source: Setup\sqlite3.dll; DestDir: {tmp}; Flags: dontcopy

#ifdef Nero7
;MFC71 Redistributable
Source: Bin\[FILELOCATION]Redist\mfc71.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
Source: Bin\[FILELOCATION]Redist\mfc71u.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
Source: Bin\[FILELOCATION]Redist\msvcp71.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
Source: Bin\[FILELOCATION]Redist\msvcr71.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsneveruninstall
#endif

#ifdef Nero8
;VC++ 2005 SP1 Redistributable
Source: Setup\vcredist.msi; DestDir: {tmp}; Flags: dontcopy
#endif

;GDI+ Redistributable (5.1.3102.5581)
Source: Setup\gdiplus.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile restartreplace uninsneveruninstall; OnlyBelowVersion: 0,5.01.2600

;BCGControlBar library
#ifdef Nero7
Source: Bin\[FILELOCATION]Redist\BCGCBPRO86071.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860un71.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860un71.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
#endif
#ifdef Nero8
Source: Bin\[FILELOCATION]Redist\BCGCBPRO86080.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860u80.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Redist\BCGCBPRO860u80.dll; DestDir: {app}\Nero Burning ROM; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt
#endif
Source: Bin\[FILELOCATION]Redist\BCGPOleAcc.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: sharedfile uninsnosharedfileprompt

;Pegasus Imaging Support
Source: Bin\[FILELOCATION]Redist\imagX7.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\imagXpr7.dll; DestDir: {sys}; Flags: sharedfile restartreplace regserver uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\imagXR7.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\imagXRA7.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}
Source: Bin\[FILELOCATION]Redist\TwnLib4.dll; DestDir: {sys}; Flags: sharedfile restartreplace uninsnosharedfileprompt; Components: nero_core\nero_videocd {#emit nero_coverdes}

;Nero Toolkit
#ifndef Micro
#ifdef Nero7
Source: Custom\Bin\[FILELOCATION]\Nero CD-DVD Speed\CDSpeed.exe; DestDir: {app}\Nero Toolkit\Nero CD-DVD Speed; Components: nero_toolkit\nero_cdspeed
Source: Custom\Help\CDSpeed_eng.chm; DestDir: {app}\Nero Toolkit\Nero CD-DVD Speed; Components: nero_toolkit\nero_cdspeed
Source: Custom\Bin\[FILELOCATION]\Nero DriveSpeed\DriveSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DriveSpeed; Components: nero_toolkit\nero_drivespeed; Flags: restartreplace uninsrestartdelete
#endif
#ifdef Nero8
Source: Custom\Bin\[FILELOCATION]\Nero CD-DVD Speed\DiscSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed
Source: Custom\Bin\[FILELOCATION]\Nero Toolkit DriveSpeed\DriveSpeed.exe; DestDir: {app}\Nero Toolkit\Nero DriveSpeed; Components: nero_toolkit\nero_drivespeed; Flags: restartreplace uninsrestartdelete
#endif
Source: Custom\Bin\[FILELOCATION]\Nero InfoTool\InfoTool.exe; DestDir: {app}\Nero Toolkit\Nero InfoTool; Components: nero_toolkit\nero_infotool
Source: Custom\Bin\[FILELOCATION]\Nero BurnRights\NeroBurnRights.exe; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights
Source: Bin\[FILELOCATION]\Nero BurnRights\NeroCo.dll; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights
#endif

;Nero Product Activation
#ifdef Micro_English
	#ifdef Nero7
Source: Custom\Bin\[FILELOCATION]Common Files\Lib\NT\English\AdvrCntr2.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
	#endif
	#ifdef Nero8
Source: Custom\Bin\[FILELOCATION]Common Files\Lib\NT\English\AdvrCntr3.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
	#endif
#else
	#ifdef Nero7
Source: Custom\Bin\[FILELOCATION]Common Files\Lib\NT\AdvrCntr2.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
	#endif
	#ifdef Nero8
Source: Custom\Bin\[FILELOCATION]Common Files\Lib\NT\AdvrCntr3.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace regserver sharedfile uninsnosharedfileprompt
	#endif
#endif

;Installation database
Source: Setup\NeroInst.db; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: restartreplace uninsrestartdelete
;Nero Patent Activation
Source: Custom\Bin\[FILELOCATION]Common Files\Lib\NT\NeroPatentActivation.exe; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\btc-bar.gif; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\logo.gif; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]Common Files\Lib\NT\patentactivationfax.htm; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd
#ifdef Nero8
Source: Bin\[FILELOCATION]Common Files\Lib\NT\NeroAPIGlueLayerUnicode.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero Lib
#ifdef Nero7
Source: Bin\[FILELOCATION]Common Files\Lib\ShellManager.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#endif
#ifdef Nero8
Source: Bin\[FILELOCATION]Common Files\Lib\ShellManager3.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#endif
Source: Bin\[FILELOCATION]Common Files\Lib\DriveLocker.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
Source: Bin\[FILELOCATION]\Common Files\Lib\NeroVMRModules.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core

;Nero Extended FileDialog
#ifdef Micro_English
Source: Custom\Bin\[FILELOCATION]Nero Home Components\NT\English\NeroFileDialog.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#else
Source: Custom\Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialog.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
#endif
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogCF.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core
;Nero Extended FileDialog (Vista)
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogIDLPS.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core; MinVersion: 0,6.0
Source: Bin\[FILELOCATION]Nero Home Components\NT\NeroFileDialogVista.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core; MinVersion: 0,6.0

;Nero Control Center
#ifdef Micro_English
Source: Custom\Bin\[FILELOCATION]\English\SetupX.exe; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
	#ifdef Nero8
Source: Custom\Bin\[FILELOCATION]\Setup\English\nps.dll; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
	#else
Source: Custom\Bin\[FILELOCATION]\Setup\nps.dll; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
	#endif
#else
Source: Custom\Bin\[FILELOCATION]\SetupX.exe; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
Source: Custom\Bin\[FILELOCATION]\Setup\nps.dll; DestDir: {cf}\{#RegPublisherName}\Nero Web; Flags: restartreplace
#endif

;Nero Core
Source: Bin\[FILELOCATION]Core\CDI\*; DestDir: {app}\Nero Burning ROM\CDI; Components: nero_core
Source: Bin\[FILELOCATION]Core\DosBootimage.IMA; DestDir: {app}\Nero Burning ROM; Components: nero_core
Source: Custom\Bin\[FILELOCATION]Core\nero.exe; DestDir: {app}\Nero Burning ROM; Components: nero_core
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
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeAudio2.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt uninsrestartdelete restartreplace; Components: nero_core\nero_videocd

;E-AC3/TrueHD Audio Support
#ifdef Nero7
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeDtsDec.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeEacDec.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeMlpDec.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\Neroapl.dll; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
#endif

Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeSplitter.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeMP4Splitter.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeVideo.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\Lib\NeEm2a.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]\Common Files\Lib\NeEm2v.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]\Common Files\Lib\uNeroMediaCon.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_videocd; Flags: sharedfile uninsnosharedfileprompt
#ifdef Nero7
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NDParser.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
Source: Bin\[FILELOCATION]\Common Files\DSFilter\NeRender.ax; DestDir: {cf}\{#RegPublisherName}\DSFilter; Flags: regserver sharedfile uninsnosharedfileprompt restartreplace uninsrestartdelete; Components: nero_core\nero_videocd
#endif

;Note: CoverEdCtrl.ocx necessary for LabelFlash and VCD/SVCD support
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEdCtrl.ocx; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd and (not nero_coverdes)
;CoverEdCtrl.ocx must be placed in Nero CoverDesigner directory to work
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEdCtrl.ocx; DestDir: {app}\Nero CoverDesigner; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_coverdes
#else
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEdCtrl.ocx; DestDir: {cf}\{#RegPublisherName}\Lib; Flags: regserver sharedfile uninsnosharedfileprompt; Components: nero_core\nero_videocd
#endif

;Nero Audio Plugin Manager
#ifdef Nero8
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\AudioPluginMgr.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins\Mgr; Components: nero_core\nero_audioplugins {#emit nero_waveedit}
#endif
#ifdef Nero7
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
#ifdef Nero7
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
Source: Bin\[FILELOCATION]Common Files\Lib\ndaudio.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\Lib\NeroIPP.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\Lib\NeroDigitalExt.dll; DestDir: {cf}\{#RegPublisherName}\Lib; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: restartreplace regserver sharedfile uninsrestartdelete uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\NeroDigital.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt

;Nero Audio Plugins - Lame MP3 Encoder
#ifndef Micro
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\mp3PP.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
Source: Bin\[FILELOCATION]Common Files\AudioPlugins\lame_enc.dll; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero Audio Plugins - MauSau
#ifndef Micro
Source: Custom\MauSau\*; DestDir: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core\nero_audioplugins\mausau; Flags: sharedfile uninsnosharedfileprompt
#endif

;Nero CoverDesigner
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverDes.exe; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: Bin\[FILELOCATION]Nero CoverDesigner\def.dat; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: Bin\[FILELOCATION]Nero CoverDesigner\stocks.dat; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes
Source: Bin\[FILELOCATION]Nero CoverDesigner\Templates\*; DestDir: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes
#endif

;Nero WaveEditor
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\AudioEffectLibrary.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\Controls.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\DXBridge.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\DXEnum.exe; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\VSTBridge.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\waveedit.dll; DestDir: {app}\Nero WaveEditor; Flags: regserver; Components: nero_waveedit
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\waveedit.exe; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit
#endif

[Dirs]
;Force creation of DrWeb subdirectory, otherwise Anti-Virus libs don't get installed
Name: {commonappdata}\Nero\DrWeb; Components: nero_core

[Icons]
;Nero Toolkit
#ifndef Micro
Name: {group}\Extra\Nero BurnRights; Filename: {app}\Nero Toolkit\Nero BurnRights\neroburnrights.exe; Components: nero_toolkit\nero_burnrights
#ifdef Nero7
Name: {group}\Extra\Nero CD-DVD Speed; Filename: {app}\Nero Toolkit\Nero CD-DVD Speed\cdspeed.exe; Components: nero_toolkit\nero_cdspeed
#endif
#ifdef Nero8
Name: {group}\Extra\Nero DiscSpeed; Filename: {app}\Nero Toolkit\Nero DiscSpeed\discspeed.exe; Components: nero_toolkit\nero_discspeed
#endif
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

#ifdef Nero7
;Nero ProductSetup
Name: {group}\Setup\Nero ProductSetup; Filename: {cf}\{#RegPublisherName}\Nero Web\SetupX.exe; Parameters: "MODE=""update"""; IconFilename: {cf}\{#RegPublisherName}\Nero Web\nps.dll; IconIndex: 0
#endif
#ifdef Nero8
;Nero ControlCenter
Name: {group}\Setup\Nero ControlCenter; Filename: {cf}\{#RegPublisherName}\Nero Web\SetupX.exe; Parameters: "MODE=""update"""; IconFilename: {cf}\{#RegPublisherName}\Nero Web\nps.dll; IconIndex: 0
#endif

[Registry]
;Registration Details
Root: HKLM; Subkey: Software\{#RegPublisherName}; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}; ValueType: string; ValueName: ProductCode; ValueData: Nero {#NeroMajorVersion} {#NeroSetupType}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}; ValueType: string; ValueName: ProductVersion; ValueData: {#NeroVersion}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info; ValueType: string; ValueName: User; ValueData: {code:getName}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info; ValueType: string; ValueName: Company; ValueData: {code:getOrganisation}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info; ValueType: string; ValueName: EulaAccepted; ValueData: 1; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info; ValueType: string; ValueName: MissingFilesState; ValueData: 0; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: AutomaticUpdate; ValueData: 0; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: DONOTRUNSETUPX; ValueData: 0; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: LastAutomaticUpdateCheck; ValueData: $ffffffff; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Settings; ValueType: dword; ValueName: LastUpdateCheck; ValueData: $ffffffff; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation; ValueType: none; Flags: uninsdeletekey

#ifdef Nero8
Root: HKCU; Subkey: Software\{#RegPublisherName}; ValueType: none; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: Software\{#RegPublisherName}; ValueType: none; Flags: uninsdeletekeyifempty
#endif

;Windows Vista Compatibility
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Info; ValueType: dword; ValueName: OS_MajorVersion; ValueData: 6; Flags: uninsdeletekey; MinVersion: 0,6.0
Root: HKLM; Subkey: Software\{#RegPublisherName}\Installation\Info; ValueType: dword; ValueName: OS_MinorVersion; ValueData: 0; Flags: uninsdeletekey; MinVersion: 0,6.0

#ifdef Nero7
Root: HKLM; Subkey: Software\{#RegPublisherName}\Nero - Burning Rom; ValueType: none; Flags: uninsdeletekey; Components: nero_core
Root: HKCU; Subkey: Software\{#RegPublisherName}\Nero - Burning Rom; ValueType: none; Flags: uninsdeletekey; Components: nero_core
#endif

#ifdef Nero8
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
#ifdef Nero7
#ifndef Micro
Root: HKLM; Subkey: Software\{#RegPublisherName}\Cover Designer; ValueType: none; Components: nero_coverdes; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Cover Designer\DefaultSettings; ValueType: string; ValueName: DocTemplates; ValueData: {app}\Nero CoverDesigner\Templates; Components: nero_coverdes; Flags: uninsdeletekey
#endif
#endif

;Nero WaveEditor
#ifndef Micro
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared\AudioEffects\DXPlugins; ValueName: DXEnum; ValueData: {app}\Nero WaveEditor\; ValueType: string; Components: nero_waveedit; Flags: uninsdeletekey
#ifdef Nero8
Root: HKLM; SubKey: Software\{#RegPublisherName}\Shared\AudioEffects; ValueType: string; ValueName: {{71CD24C5-9704-4D1F-86E8-F1E7AE677E43}; ValueData: Audio Effects; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\{#RegPublisherName}\Shared\AudioEffects; ValueType: string; ValueName: {{6D32D183-28B4-4253-9858-A3F12C62CE66}; ValueData: DirectX Effects; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\{#RegPublisherName}\Shared\AudioEffects; ValueType: string; ValueName: {{F1F60FDD-97EA-43F1-920F-6EE61F32F435}; ValueData: VST Effects; Flags: uninsdeletekey
#endif
#endif

;Nero Shared Settings
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: AudioPlugin; ValueData: {cf}\{#RegPublisherName}\AudioPlugins; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: DriveLocker; ValueData: {cf}\{#RegPublisherName}\Lib\DriveLocker.dll; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: Lib; ValueData: {cf}\{#RegPublisherName}\Lib; Components: nero_core; Flags: uninsdeletekey
#ifdef Nero8
Root: HKLM; Subkey: Software\{#RegPublisherName}\Shared; ValueType: string; ValueName: AudioPluginManager; ValueData: {cf}\{#RegPublisherName}\AudioPlugins\Mgr; Components: nero_core\nero_audioplugins {#emit nero_waveedit}; Flags: uninsdeletekey
#endif
#ifdef Nero7
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
Root: HKLM; SubKey: Software\Classes\.cue; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.cue; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.cue\OpenWithProgids; ValueType: binary; ValueName: NeroBurningROM.Files{#NeroMajorVersion}.cue; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.cue; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.cue; ValueType: string; ValueData: {cm:CUE_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.cue; ValueType: string; ValueData: {cm:CUE_Description}; ValueName: FriendlyTypeName; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.cue\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.cue\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.img; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.img; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.img\OpenWithProgids; ValueType: binary; ValueName: NeroBurningROM.Files{#NeroMajorVersion}.img; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.img; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.img; ValueType: string; ValueData: {cm:IMG_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.img; ValueType: string; ValueData: {cm:IMG_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.img\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.img\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.iso; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.iso; Components: nero_core; Flags: uninsdeletekeyifempty uninsdeletevalue; Tasks: imagefile_assoc
Root: HKLM; SubKey: Software\Classes\.iso\OpenWithProgids; ValueType: binary; ValueName: NeroBurningROM.Files{#NeroMajorVersion}.iso; Flags: uninsdeletekeyifempty uninsdeletevalue; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.iso; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.iso; ValueType: string; ValueData: {cm:ISO_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.iso; ValueType: string; ValueData: {cm:ISO_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.iso\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.iso\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

;Private file types
Root: HKLM; SubKey: Software\Classes\.nab; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nab; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nab; ValueType: string; ValueData: {cm:NAB_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nab; ValueType: string; ValueData: {cm:NAB_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nab\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,17; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nab\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nhf; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nhf; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhf; ValueType: string; ValueData: {cm:NHF_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhf; ValueType: string; ValueData: {cm:NHF_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhf\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,3; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhf\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nhv; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nhv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhv; ValueType: string; ValueData: {cm:NHV_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhv; ValueType: string; ValueData: {cm:NHV_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhv\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nhv\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nmd; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nmd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nmd; ValueType: string; ValueData: {cm:NMD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nmd; ValueType: string; ValueData: {cm:NMD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nmd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nmd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nr3; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nr3; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr3; ValueType: string; ValueData: {cm:NR3_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr3; ValueType: string; ValueData: {cm:NR3_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr3\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,15; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr3\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nr4; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nr4; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr4; ValueType: string; ValueData: {cm:NR4_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr4; ValueType: string; ValueData: {cm:NR4_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr4\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,18; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nr4\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nra; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nra; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nra; ValueType: string; ValueData: {cm:NRA_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nra; ValueType: string; ValueData: {cm:NRA_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nra\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,4; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nra\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrb; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrb; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrb; ValueType: string; ValueData: {cm:NRB_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrb; ValueType: string; ValueData: {cm:NRB_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrb\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrb\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrc; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrc; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrc; ValueType: string; ValueData: {cm:NRC_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrc; ValueType: string; ValueData: {cm:NRC_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrc\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrc\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrd; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrd; ValueType: string; ValueData: {cm:NRD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrd; ValueType: string; ValueData: {cm:NRD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nre; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nre; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nre; ValueType: string; ValueData: {cm:NRE_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nre; ValueType: string; ValueData: {cm:NRE_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nre\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,17; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nre\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrg; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrg; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrg; ValueType: string; ValueData: {cm:NRG_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrg; ValueType: string; ValueData: {cm:NRG_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrg\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,5; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrg\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrh; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrh; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrh; ValueType: string; ValueData: {cm:NRH_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrh; ValueType: string; ValueData: {cm:NRH_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrh\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,3; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrh\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nri; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nri; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nri; ValueType: string; ValueData: {cm:NRI_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nri; ValueType: string; ValueData: {cm:NRI_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nri\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nri\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrj; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrj; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrj; ValueType: string; ValueData: {cm:NRJ_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrj; ValueType: string; ValueData: {cm:NRJ_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrj\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,4; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrj\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrm; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrm; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrm; ValueType: string; ValueData: {cm:NRM_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrm; ValueType: string; ValueData: {cm:NRM_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrm\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,7; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrm\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrs; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrs; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrs; ValueType: string; ValueData: {cm:NRS_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrs; ValueType: string; ValueData: {cm:NRS_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrs\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrs\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nru; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nru; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nru; ValueType: string; ValueData: {cm:NRU_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nru; ValueType: string; ValueData: {cm:NRU_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nru\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,2; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nru\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrv; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrv; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrv; ValueType: string; ValueData: {cm:NRV_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrv; ValueType: string; ValueData: {cm:NRV_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrv\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrv\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nrw; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nrw; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrw; ValueType: string; ValueData: {cm:NRW_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrw; ValueType: string; ValueData: {cm:NRW_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrw\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,16; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nrw\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\.nsd; ValueType: string; ValueData: NeroBurningROM.Files{#NeroMajorVersion}.nsd; Components: nero_core; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nsd; ValueType: string; ValueData: {cm:NSD_Description}; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nsd; ValueType: string; ValueData: {cm:NSD_Description}; ValueName: FriendlyTypeName; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nsd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero Burning ROM\nero.exe,8; Flags: uninsdeletekey; Components: nero_core
Root: HKLM; SubKey: Software\Classes\NeroBurningROM.Files{#NeroMajorVersion}.nsd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero Burning ROM\nero.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_core

#ifndef Micro
;Nero file associations - Nero CoverDesigner
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\Shell\Open; ValueType: string; ValueData: Nero CoverDesigner; Components: nero_coverdes; ValueName: FriendlyAppName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\Applications\coverdes.exe\Shell\Open\Command; ValueType: string; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Components: nero_coverdes; Flags: uninsdeletekey

Root: HKLM; SubKey: Software\Classes\.cdc; ValueType: string; ValueData: CoverDesigner.Files{#NeroMajorVersion}.cdc; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.cdc; ValueType: string; ValueData: {cm:CDC_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.cdc; ValueType: string; ValueData: {cm:CDC_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.cdc\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.cdc\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\.ncd; ValueType: string; ValueData: CoverDesigner.Files{#NeroMajorVersion}.ncd; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.ncd; ValueType: string; ValueData: {cm:NCD_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.ncd; ValueType: string; ValueData: {cm:NCD_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.ncd\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.ncd\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\.nct; ValueType: string; ValueData: CoverDesigner.Files{#NeroMajorVersion}.nct; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.nct; ValueType: string; ValueData: {cm:NCT_Description}; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.nct; ValueType: string; ValueData: {cm:NCT_Description}; Components: nero_coverdes; ValueName: FriendlyTypeName; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.nct\Shell\Open\Command; ValueType: expandsz; ValueData: """{app}\Nero CoverDesigner\CoverDes.exe"" ""%1"""; Flags: uninsdeletekey; Components: nero_coverdes
Root: HKLM; Subkey: Software\Classes\CoverDesigner.Files{#NeroMajorVersion}.nct\DefaultIcon; ValueType: expandsz; ValueData: {app}\Nero CoverDesigner\CoverDes.exe,1; Flags: uninsdeletekey; Components: nero_coverdes
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
#ifdef Nero8
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

[Messages]
BeveledLabel=©2009 Klaas Nekeman

[CustomMessages]
#ifdef Nero8
;Evaluation serials expired!
EvalSerial=
#endif
#ifdef Nero7
EvalSerial=
#endif
issiUrl=http://updatepack.nl
issiUrlText=UpdatePack.nl
;English
;Setup Wizard - Registration dialog
english.CustomFormCaption=Customer Information
english.CustomFormDescription=Please enter your information.
english.RegistrationInfo=Please personalize your copy of Nero {#NeroMajorVersion} by entering your name and%nyour serial number.
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
Name: nero_core\nero_videocd; Description: Nero VideoCD and E-AC3/TrueHD Support; Types: compact full; Languages: 

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
#ifdef Nero7
Name: nero_toolkit\nero_cdspeed; Description: Nero CD-DVD Speed; Types: full
#endif
#ifdef Nero8
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
#ifdef Nero8
	if RegQueryStringValue(HKLM,'Software\Nero\Nero8\Shared',
		'InstalledLanguages', ValueData) then
#endif
#ifdef Nero7
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
#ifdef Nero8
	RegWriteStringValue(HKLM,'Software\Nero\Nero8\Shared',
		'InstalledLanguages', s);
#endif
#ifdef Nero7
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
						#ifdef Nero8
							'65,' +
						#endif
						#ifdef Nero7
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
#ifdef Nero8
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
			#ifdef Nero8
				//Install VC++ 2005 SP1 Redistributable if necessary
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
						#ifdef Nero8
						NeroWindowTitle := '[TITLE:Nero ControlCenter; CLASS:#32770]';
						#endif
						#ifdef Nero7
						NeroWindowTitle := '[TITLE:Nero ProductSetup; CLASS:#32770]';
						#endif
						AddLicenseButton := '[CLASS:Button; INSTANCE:12;]';
						EnterSerialButton := '[ID:1; CLASS:Button; INSTANCE:1;]';
						SerialEditBox := '[ID:10008; CLASS:Edit; INSTANCE:1;]';
					//Configure AutoIt
						AU3_AutoItSetOption('WinTitleMatchMode', 4);
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
											Sleep(250);
											i := i + 1;
										until (Length(RetHandle) > 0) or (i > 40);
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
						#ifdef Nero7
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
#ifdef Nero8
//Detect Windows Installer 2
	if not IsMsiRequiredVersion(2,0) then
		begin
			MsgBox('Nero {#NeroMajorVersion} {#NeroSetupType} requires Microsoft Windows Installer 2.0 or newer to be installed first.', mbError, mb_OK);
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
				MsgBox(ExpandConstant('{cm:SetupIsRunningWarning,Nero {#NeroMajorVersion} {#NeroSetupType}}'), mbError, MB_OK);
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
				MsgBox(ExpandConstant('{cm:SetupIsRunningWarning,Nero {#NeroMajorVersion} {#NeroSetupType}}'), mbError, MB_OK);
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
