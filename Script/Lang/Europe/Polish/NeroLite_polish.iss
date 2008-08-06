[Languages]
#ifdef Nero8
Name: polish; MessagesFile: compiler:Languages\Polish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: polish; MessagesFile: compiler:Languages\Polish.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Polish
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('polish'); BeforeInstall: AddLanguage('PLK');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('polish'); BeforeInstall: AddLanguage('PLK');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroPLK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish')
Source: Bin\[FILELOCATION]Core\NeroPLK.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPLK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish');
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-PLK.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('polish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('polish');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-PLK.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('polish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('polish');
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('polish');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('polish');
	#endif
#endif

[Registry]
;Polish
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PLK; Languages: polish; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: PLK; Components: nero_core; Languages: polish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: PLK; Languages: polish; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: PLK; Components: nero_toolkit\nero_cdspeed; Languages: polish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: PLK; Components: nero_toolkit\nero_drivespeed; Languages: polish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: PLK; Components: nero_toolkit\nero_infotool; Languages: polish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: PLK; Components: nero_waveedit; Languages: polish; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Polish
Name: nero_lang\polish; Description: {cm:Comp_Nero_lang_polish}; Languages: not polish

[CustomMessages]
;Polish
;Setup Wizard - Registration dialog
polish.CustomFormCaption=Dane Klienta
polish.CustomFormDescription=Wpisz swoje dane
polish.RegistrationInfo=Spersonalizuj swoja kopie poprzez wpisanie swego imienia i%nnumeru seryjnego.
polish.RegistrationWelcome=Dziekuje za zakupienie Nero.
polish.RegistrationWelcomeCaption=Witaj w Nero
polish.RegistrationCaption=Rejestracja
polish.NeroShopCaption=Brak numeru?
polish.NeroShop=Nero Online Shop 
polish.NeroShopURL=http://www.nero.com/plk/catalog.html
polish.RegistrationName=Imie:
polish.RegistrationOrg=Organizacja:
polish.RegistrationSerial=Numer Seryjny:
;Filetype descriptions - Nero CoverDesigner
polish.CDC_Description=Nero CoverDesigner Dokument
polish.NCD_Description=Nero CoverDesigner Dokument
polish.NCT_Description=Nero CoverDesigner Szablon
;Filetype descriptions - Nero Burning Rom
polish.CUE_Description=CD-Image Plik
polish.IMG_Description=CD-Image Plik
polish.ISO_Description=CD-Image Plik
polish.NAB_Description=Audiobook CD-ROM Kompilacja
polish.NHF_Description=HFS-CD Kompilacja
polish.NHV_Description=HD-BURN-Video Kompilacja
polish.NMD_Description=MiniDVD Kompilacja
polish.NR3_Description=CD-ROM Kompilacja (MP3)
polish.NR4_Description=CD-ROM Kompilacja (AAC)
polish.NRA_Description=Audio-CD Kompilacja
polish.NRB_Description=CD-ROM Kompilacja (Boot)
polish.NRC_Description=CD-Rom Kompilacja (UDF/ISO)
polish.NRD_Description=DVD-Video Kompilacja
polish.NRE_Description=CD Extra Kompilacja
polish.NRG_Description=CD-Image Plik
polish.NRH_Description=Hybrid CD-ROM Kompilacja
polish.NRI_Description=CD-ROM Kompilacja (ISO)
polish.NRJ_Description=JukeBox Kompilacja
polish.NRM_Description=Mixed-Mode-CD Kompilacja
polish.NRS_Description=CD-ROM (EFI Boot) Kompilacja
polish.NRU_Description=CD-ROM Kompilacja (UDF)
polish.NRV_Description=Video-CD Kompilacja
polish.NRW_Description=WMA CD-ROM Kompilacja
polish.NSD_Description=Super Video CD Kompilacja
;Setup Component Description
polish.Comp_Nero_lang=Jezyk
polish.Comp_Nero_lang_english=Angielsko
polish.Comp_Nero_lang_polish=Polski
polish.Comp_Nero_Sounds=Dzwieki
;Setup register filetypes
polish.FileAssociations=Skojarz Typy Plików:
polish.AssocImageFileExt=Skojarz z Nero standardowe pliki CD-Image
