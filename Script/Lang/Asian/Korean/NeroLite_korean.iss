[Languages]
#if NeroVersion == 8
Name: korean; MessagesFile: compiler:Languages\Korean.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_kor.rtf
#endif
#if NeroVersion == 7
Name: korean; MessagesFile: compiler:Languages\Korean.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_kor.rtf
#endif

[Files]
;Korean
#if NeroVersion == 8
Source: Custom\Help\NeroControlCenter_KOR.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('korean'); BeforeInstall: AddLanguage('KOR');
#endif
#if NeroVersion == 7
Source: Custom\Help\NeroControlCenter_KOR.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('korean'); BeforeInstall: AddLanguage('KOR');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroKOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Bin\[FILELOCATION]Core\NeroKOR.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResKOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Custom\Help\NeroBurningRom_KOR.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean');
Source: Custom\Help\NeroExpress_KOR.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-KOR.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('korean')
Source: Custom\Help\NeroCoverDesigner_KOR.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('korean');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-KOR.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('korean')
Source: Custom\Help\NeroWaveEditor_KOR.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('korean');
Source: Custom\Help\NeroBurnRights_KOR.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('korean');
	#if NeroVersion == 8
Source: Custom\Help\NeroDiscSpeed_KOR.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('korean');
	#endif
#endif

[Registry]
;Korean
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: KOR; Languages: korean; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: KOR; Components: nero_core; Languages: korean; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: KOR; Languages: korean; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: KOR; Components: nero_toolkit\nero_cdspeed; Languages: korean; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: KOR; Components: nero_toolkit\nero_drivespeed; Languages: korean; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: KOR; Components: nero_toolkit\nero_infotool; Languages: korean; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: KOR; Components: nero_waveedit; Languages: korean; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Korean
Name: nero_lang\korean; Description: {cm:Comp_Nero_lang_korean}; Languages: not korean

[CustomMessages]
;Korean
;Setup Wizard - Registration dialog
korean.CustomFormCaption=Customer Information
korean.CustomFormDescription=Please enter your information.
korean.RegistrationInfo=Please personalize your copy of Nero {#NeroMajorVersion} by entering your name and%nyour serial number.
korean.RegistrationWelcome=Thanks for purchasing your copy of Nero.
korean.RegistrationWelcomeCaption=Welcome to Nero
korean.RegistrationCaption=Registration
korean.NeroShopCaption=No Serial number?
korean.NeroShop=Nero Online Shop 
korean.NeroShopURL=http://www.nero.com/kor/catalog.html
korean.RegistrationName=Name:
korean.RegistrationOrg=Organization:
korean.RegistrationSerial=Serial number:
;Filetype descriptions - Nero CoverDesigner
korean.CDC_Description=Nero CoverDesigner Document
korean.NCD_Description=Nero CoverDesigner Document
korean.NCT_Description=Nero CoverDesigner Template
;Filetype descriptions - Nero Burning Rom
korean.CUE_Description=CD-Image file
korean.IMG_Description=CD-Image file
korean.ISO_Description=CD-Image file
korean.NAB_Description=Audiobook CD-ROM Compilation
korean.NHF_Description=HFS-CD Compilation
korean.NHV_Description=HD-BURN-Video Compilation
korean.NMD_Description=MiniDVD Compilation
korean.NR3_Description=CD-ROM Compilation (MP3)
korean.NR4_Description=CD-ROM Compilation (AAC)
korean.NRA_Description=Audio-CD Compilation
korean.NRB_Description=CD-ROM Compilation (Boot)
korean.NRC_Description=CD-ROM Compilation (UDF/ISO)
korean.NRD_Description=DVD-Video Compilation
korean.NRE_Description=CD Extra Compilation
korean.NRG_Description=CD-Image file
korean.NRH_Description=Hybrid CD-ROM Compilation
korean.NRI_Description=CD-ROM Compilation (ISO)
korean.NRJ_Description=JukeBox Compilation
korean.NRM_Description=Mixed-Mode-CD Compilation
korean.NRS_Description=CD-ROM Compilation (EFI Boot)
korean.NRU_Description=CD-ROM Compilation (UDF)
korean.NRV_Description=Video-CD Compilation
korean.NRW_Description=WMA CD-ROM Compilation
korean.NSD_Description=Super Video CD Compilation
