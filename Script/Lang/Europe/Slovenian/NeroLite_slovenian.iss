[Languages]
#ifdef Nero8
Name: slovenian; MessagesFile: compiler:Languages\Slovenian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: slovenian; MessagesFile: compiler:Languages\Slovenian.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Slovenian
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('slovenian'); BeforeInstall: AddLanguage('SLV');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('slovenian'); BeforeInstall: AddLanguage('SLV');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroSLV.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian')
Source: Bin\[FILELOCATION]Core\NeroSLV.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResSLV.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian');
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-SLV.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('slovenian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('slovenian');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-SLV.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('slovenian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('slovenian');
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('slovenian');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('slovenian');
	#endif
#endif

[Registry]
;Slovenian
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: SLV; Languages: slovenian; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: SLV; Components: nero_core; Languages: slovenian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: SLV; Languages: slovenian; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: SLV; Components: nero_toolkit\nero_cdspeed; Languages: slovenian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: SLV; Components: nero_toolkit\nero_drivespeed; Languages: slovenian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: SLV; Components: nero_toolkit\nero_infotool; Languages: slovenian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: SLV; Components: nero_waveedit; Languages: slovenian; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Slovenian
Name: nero_lang\slovenian; Description: {cm:Comp_Nero_lang_slovenian}; Languages: not Slovenian

[CustomMessages]
;Slovenian
;Setup Wizard - Registration dialog
slovenian.CustomFormCaption=Podatki o stranki
slovenian.CustomFormDescription=Prosimo vnesite vaše podatke.
slovenian.RegistrationInfo=Prosimo vnesite podatke za vaš Nero {#NeroMajorVersion}, vpišite ime in%nvašo serijsko številko.
slovenian.RegistrationWelcome=Zahvaljujemo se vam za nakup programa.
slovenian.RegistrationWelcomeCaption=Pozdravljeni v Nero
slovenian.RegistrationCaption=Registracija
slovenian.NeroShopCaption=Nimate serijske številke?
slovenian.NeroShop=Nero spletna trgovina 
slovenian.NeroShopURL=http://www.nero.com/eng/catalog.html
slovenian.RegistrationName=Ime:
slovenian.RegistrationOrg=Organizacija:
slovenian.RegistrationSerial=Serijska številka:
;Filetype descriptions - Nero CoverDesigner
slovenian.CDC_Description=Nero CoverDesigner Dokument
slovenian.NCD_Description=Nero CoverDesigner Dokument
slovenian.NCT_Description=Nero CoverDesigner Predloga
;Filetype descriptions - Nero Burning Rom
slovenian.CUE_Description=CD-slika
slovenian.IMG_Description=CD-slika
slovenian.ISO_Description=CD-slika
slovenian.NAB_Description=Audiobook CD-ROM kompilacija
slovenian.NHF_Description=HFS-CD kompilacija
slovenian.NHV_Description=HD-BURN-Video kompilacija
slovenian.NMD_Description=MiniDVD kompilacija
slovenian.NR3_Description=CD-ROM kompilacija (MP3)
slovenian.NR4_Description=CD-ROM kompilacija (AAC)
slovenian.NRA_Description=Audio-CD kompilacija
slovenian.NRB_Description=CD-ROM kompilacija (Boot)
slovenian.NRC_Description=CD-ROM kompilacija (UDF/ISO)
slovenian.NRD_Description=DVD-Video kompilacija
slovenian.NRE_Description=CD Extra kompilacija
slovenian.NRG_Description=CD-slika
slovenian.NRH_Description=Hybrid CD-ROM kompilacija
slovenian.NRI_Description=CD-ROM kompilacija(ISO)
slovenian.NRJ_Description=JukeBox kompilacija
slovenian.NRM_Description=Mixed-Mode-CD kompilacija
slovenian.NRS_Description=CD-ROM (EFI Boot) kompilacija
slovenian.NRU_Description=CD-ROM kompilacija (UDF)
slovenian.NRV_Description=Video-CD kompilacija
slovenian.NRW_Description=WMA CD-ROM kompilacija
slovenian.NSD_Description=Super Video CD kompilacija
;Setup Component Description
slovenian.Comp_Nero_lang=Jezik
slovenian.Comp_Nero_lang_english=Anglešcina
slovenian.Comp_Nero_lang_slovenian=Slovenšcina
slovenian.Comp_Nero_Sounds=Zvoki
;Setup register filetypes
slovenian.FileAssociations=Registrirane vrste datotek:
slovenian.AssocImageFileExt=Registriraj vrste CD slik za Nero
