[ISSI]
#define ISSI_IncludePath ReadReg(HKLM, "Software\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup Script Includes_is1","InstallLocation", GetEnv("ProgramFiles") + "\Inno Setup\ISSI")

;Detect Nero Version
#ifndef NeroVersion
	#define NeroVersion GetFileVersion("Bin\[FILELOCATION]Core\nero.exe")
#endif

#ifdef NeroVersion
	#define NeroMajorVersion Int(Copy(NeroVersion,1,1))
	#define Nero + NeroMajorVersion
#endif

#ifdef Nero7
	#define RegPublisherName "Ahead"
#else
	#define RegPublisherName "Nero"
#endif

#define ISSI_UseMyInitializeWizard
#define ISSI_WizardSmallBitmapImage_x 206
#define ISSI_WizardSmallBitmapImage "Setup\Nero" + str(NeroMajorVersion) + "\nerotopbar.bmp"
#define ISSI_WizardBitmapImage "Setup\Nero" + str(NeroMajorVersion) + "\nerosidebarbig.bmp"
#define ISSI_WizardBitmapImage_x 190
#define ISSI_URL
#define ISSI_URLText

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
