[Languages]
#ifdef Nero8
Name: czech; MessagesFile: compiler:Languages\Czech.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: czech; MessagesFile: compiler:Languages\Czech.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Czech
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('czech'); BeforeInstall: AddLanguage('CSY'); Flags: ignoreversion replacesameversion
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('czech'); BeforeInstall: AddLanguage('CSY'); Flags: ignoreversion replacesameversion
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroCSY.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech')
Source: Bin\[FILELOCATION]Core\NeroCSY.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResCSY.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-CSY.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('czech')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-CSY.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('czech')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
	#endif
#endif

[Registry]
;Czech
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CSY; Languages: czech; Flags: uninsdeletekey
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CSY; Languages: czech; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: CSY; Components: nero_core; Languages: czech; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: CSY; Languages: czech; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: CSY; Components: nero_toolkit\nero_cdspeed; Languages: czech; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: CSY; Components: nero_toolkit\nero_drivespeed; Languages: czech; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: CSY; Components: nero_toolkit\nero_infotool; Languages: czech; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: CSY; Components: nero_waveedit; Languages: czech; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Czech
Name: nero_lang\czech; Description: {cm:Comp_Nero_lang_czech}; Languages: not czech

[CustomMessages]
;Czech
;Setup Wizard - Registration dialog
czech.CustomFormCaption=Zákaznícké informace
czech.CustomFormDescription=Vložte, prosím, vaše informace.
czech.RegistrationInfo=Upravte, prosím, svoji kopii Nero {#NeroMajorVersion} zadáním vašeho jména a%nsériového císla.
czech.RegistrationWelcome=Dekujeme vám za zakoupení kopie Nero.
czech.RegistrationWelcomeCaption=Nero - Vítejte...
czech.RegistrationCaption=Registrace
czech.NeroShopCaption=Žádné sériové císlo?
czech.NeroShop=Nero online obchod 
czech.NeroShopURL=http://www.nero.com/eng/catalog.html
czech.RegistrationName=Jméno:
czech.RegistrationOrg=Organizace:
czech.RegistrationSerial=Sériové císlo:
;Filetype descriptions - Nero CoverDesigner
czech.CDC_Description=Nero CoverDesigner dokument
czech.NCD_Description=Nero CoverDesigner dokument
czech.NCT_Description=Nero CoverDesigner šablóna
;Filetype descriptions - Nero Burning Rom
czech.CUE_Description=CD-Image soubor
czech.IMG_Description=CD-Image soubor
czech.ISO_Description=CD-Image soubor
czech.NAB_Description=Kompilace Audiobook CD-ROM
czech.NHF_Description=Kompilace HFS-CD
czech.NHV_Description=Kompilace HD-BURN-Video
czech.NMD_Description=Kompilace MiniDVD
czech.NR3_Description=Kompilace CD-ROM (MP3)
czech.NR4_Description=Kompilace CD-ROM (AAC)
czech.NRA_Description=Kompilace Audio-CD
czech.NRB_Description=Kompilace CD-ROM (bootovatelný)
czech.NRC_Description=Kompilace CD-rom (UDF/ISO)
czech.NRD_Description=Kompilace DVD-Video
czech.NRE_Description=Kompilace CD Extra
czech.NRG_Description=CD-Image soubor
czech.NRH_Description=Kompilace Hybrid CD-ROM
czech.NRI_Description=Kompilace CD-ROM (ISO)
czech.NRJ_Description=Kompilace JukeBox
czech.NRM_Description=Kompilace Mixed-Mode-CD
czech.NRS_Description=Kompilace CD-ROM (EFI Boot)
czech.NRU_Description=Kompilace CD-ROM (UDF)
czech.NRV_Description=Kompilace Video-CD
czech.NRW_Description=Kompilace WMA CD-ROM
czech.NSD_Description=Kompilace Super Video CD
;Setup Component Description
czech.Comp_Nero_lang=Jazyk
czech.Comp_Nero_lang_english=Anglický
czech.Comp_Nero_lang_czech=Ceský
czech.Comp_Nero_Sounds=Zvuky
;Setup register filetypes
czech.FileAssociations=Registrovat soubory typu:
czech.AssocImageFileExt=Priradit Nerovi standardní CD obrazy
