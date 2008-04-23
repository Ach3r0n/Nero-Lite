[Languages]
#ifdef Nero8
Name: danish; MessagesFile: compiler:Languages\Danish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: danish; MessagesFile: compiler:Languages\Danish.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Danish
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('danish'); BeforeInstall: AddLanguage('DAN'); Flags: ignoreversion replacesameversion
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('danish'); BeforeInstall: AddLanguage('DAN'); Flags: ignoreversion replacesameversion
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroDAN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish')
Source: Bin\[FILELOCATION]Core\NeroDAN.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResDAN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-DAN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('danish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-DAN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('danish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
	#endif
#endif

[Registry]
;Danish
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: DAN; Languages: danish; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: DAN; Components: nero_core; Languages: danish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: DAN; Languages: danish; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: DAN; Components: nero_toolkit\nero_cdspeed; Languages: danish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: DAN; Components: nero_toolkit\nero_drivespeed; Languages: danish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: DAN; Components: nero_toolkit\nero_infotool; Languages: danish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: DAN; Components: nero_waveedit; Languages: danish; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Danish
Name: nero_lang\danish; Description: {cm:Comp_Nero_lang_danish}; Languages: not danish

[CustomMessages]
;Danish
;Setup Wizard - Registration dialog
danish.CustomFormCaption=Customer Information
danish.CustomFormDescription=Please enter your information.
danish.RegistrationInfo=Please personalize your copy of Nero {#NeroMajorVersion} by entering your name and%nyour serial number.
danish.RegistrationWelcome=Thanks for purchasing your copy of Nero.
danish.RegistrationWelcomeCaption=Welcome to Nero
danish.RegistrationCaption=Registration
danish.NeroShopCaption=No Serial number?
danish.NeroShop=Nero Online Shop 
danish.NeroShopURL=http://www.nero.com/eng/catalog.html
danish.RegistrationName=Name:
danish.RegistrationOrg=Organization:
danish.RegistrationSerial=Serial number:
;Filetype descriptions - Nero CoverDesigner
danish.CDC_Description=Nero CoverDesigner Document
danish.NCD_Description=Nero CoverDesigner Document
danish.NCT_Description=Nero CoverDesigner Template
;Filetype descriptions - Nero Burning Rom
danish.CUE_Description=CD-Image file
danish.IMG_Description=CD-Image file
danish.ISO_Description=CD-Image file
danish.NAB_Description=Audiobook CD-ROM Compilation
danish.NHF_Description=HFS-CD Compilation
danish.NHV_Description=HD-BURN-Video Compilation
danish.NMD_Description=MiniDVD Compilation
danish.NR3_Description=CD-ROM Compilation (MP3)
danish.NR4_Description=CD-ROM Compilation (AAC)
danish.NRA_Description=Audio-CD Compilation
danish.NRB_Description=CD-ROM Compilation (Boot)
danish.NRC_Description=CD-ROM Compilation (UDF/ISO)
danish.NRD_Description=DVD-Video Compilation
danish.NRE_Description=CD Extra Compilation
danish.NRG_Description=CD-Image file
danish.NRH_Description=Hybrid CD-ROM Compilation
danish.NRI_Description=CD-ROM Compilation (ISO)
danish.NRJ_Description=JukeBox Compilation
danish.NRM_Description=Mixed-Mode-CD Compilation
danish.NRS_Description=CD-ROM Compilation (EFI Boot)
danish.NRU_Description=CD-ROM Compilation (UDF)
danish.NRV_Description=Video-CD Compilation
danish.NRW_Description=WMA CD-ROM Compilation
danish.NSD_Description=Super Video CD Compilation
