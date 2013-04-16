;Detect Nero Version
#if FileExists("Bin\[FILELOCATION]Core\nero.exe")
	#define NeroFileVersion GetFileVersion("Bin\[FILELOCATION]Core\nero.exe")
#endif

#ifdef NeroFileVersion
	#define NeroVersion Int(Copy(NeroVersion,1,1))
#endif

#if NeroVersion <= 7
	#define RegPublisherName "Ahead"
#else
	#define RegPublisherName "Nero"
#endif

#if NeroVersion == 7
	#define NeroSetup_MsiFilePath "Bin\[FILELOCATION]Target\Setup"
	#define DriveSpeed_MsiFilePath "Bin\[FILELOCATION]\Nero DriveSpeed"
#endif

#if NeroVersion == 8
	#define NeroSetup_MsiFilePath "Bin\[FILELOCATION]Target\Data\Setup"
	#define DriveSpeed_MsiFilePath "Bin\[FILELOCATION]\Nero Toolkit DriveSpeed"
#endif

#if NeroVersion <= 8
	#define ImagXPress_MsiFilePath "Bin\[FILELOCATION]Redist"
	#define NeroCore_MsiFilePath "Bin\[FILELOCATION]Core"
	#define CoverDesigner_MsiFilePath "Bin\[FILELOCATION]Nero CoverDesigner"
	#define WaveEditor_MsiFilePath "Bin\[FILELOCATION]Nero WaveEditor"
	#define CommonFilesLibNT_MsiFilePath "Bin\[FILELOCATION]Common Files\Lib\NT"
	#define CommonFilesLib_MsiFilePath "Bin\[FILELOCATION]Common Files\Lib"
	#define CommonFilesLib2_MsiFilePath "Bin\[FILELOCATION]\Common Files\Lib"
	#define DiscSpeed_MsiFilePath "Bin\[FILELOCATION]\Nero CD-DVD Speed"
	#define InfoTool_MsiFilePath "Bin\[FILELOCATION]\Nero InfoTool"
	#define BurnRights_MsiFilePath "Bin\[FILELOCATION]\Nero BurnRights"
#endif

#define ISSI_URL
#define ISSI_URLText

#define ISSI_UseMyInitializeWizard

#define ISSI_WizardBitmapImage "Setup\Nero" + str(NeroVersion) + "\nerosidebarbig.bmp"
#define ISSI_WizardBitmapImage_x 190
#define ISSI_WizardSmallBitmapImage "Setup\Nero" + str(NeroVersion) + "\nerotopbar.bmp"
#define ISSI_WizardSmallBitmapImage_x 206

#sub ProcessFoundFile
	#define public LocaleIncludeFileName Lowercase(FindGetFileName(FindHandle))
#endsub

;Detect generated include filename
#define FindHandle
#define FindResult
#define Mask "Script\Include\NeroLite_*_*.iss"

#for {FindHandle = FindResult = FindFirst(Mask, 0); FindResult; FindResult = FindNext(FindHandle)} ProcessFoundFile
#if FindHandle
	#expr FindClose(FindHandle)
#endif

;Set language and setuptype
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
