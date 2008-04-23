[Languages]
#ifdef Nero8
Name: norwegian; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: norwegian; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Norwegian
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('norwegian'); BeforeInstall: AddLanguage('NOR'); Flags: ignoreversion replacesameversion
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('norwegian'); BeforeInstall: AddLanguage('NOR'); Flags: ignoreversion replacesameversion
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroNOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian')
Source: Bin\[FILELOCATION]Core\NeroNOR.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResNOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-NOR.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('norwegian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-NOR.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('norwegian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
	#endif
#endif

[Registry]
;Norwegian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: NOR; Languages: norwegian; Flags: uninsdeletekey
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: NOR; Languages: norwegian; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: NOR; Components: nero_core; Languages: norwegian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: NOR; Languages: norwegian; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: NOR; Components: nero_toolkit\nero_cdspeed; Languages: norwegian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: NOR; Components: nero_toolkit\nero_drivespeed; Languages: norwegian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: NOR; Components: nero_toolkit\nero_infotool; Languages: norwegian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: NOR; Components: nero_waveedit; Languages: norwegian; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Norwegian
Name: nero_lang\norwegian; Description: {cm:Comp_Nero_lang_norwegian}; Languages: not norwegian

[CustomMessages]
;Norwegian
;Setup Wizard - Registration dialog
norwegian.CustomFormDescription=Vennligst fyll inn din bruker informasjon.
norwegian.CustomFormCaption=Bruker informasjon
norwegian.RegistrationInfo=Vennligst gjør din kopi av Nero {#NeroMajorVersion} personlig ved og taste inn navn og %ndin produkt nøkkel.
norwegian.RegistrationWelcome=Takk for at du har kjøpt en kopi av Nero.
norwegian.RegistrationWelcomeCaption=Velkommen til Nero
norwegian.RegistrationCaption=Registrering
norwegian.NeroShopCaption=Ingen Produkt nøkkel?
norwegian.NeroShop=Nero Online nettbutikk 
norwegian.NeroShopURL=http://www.nero.com/eng/catalog.html
norwegian.RegistrationName=Navn:
norwegian.RegistrationOrg=Organisasjon:
norwegian.RegistrationSerial=Produkt nøkkel:
;Filetype descriptions - Nero CoverDesigner
norwegian.CDC_Description=Nero CoverDesigner Dokument
norwegian.NCD_Description=Nero CoverDesigner Dokument
norwegian.NCT_Description=Nero CoverDesigner Mal
;Filetype descriptions - Nero Burning Rom
norwegian.CUE_Description=Image-filer
norwegian.IMG_Description=Image-filer
norwegian.ISO_Description=Image-filer
norwegian.NAB_Description=Audiobook CD-ROM Compilation
norwegian.NHF_Description=Kompilasjon for HFS CD
norwegian.NHV_Description=Kompilasjon for HD-BURN-Video
norwegian.NMD_Description=Kompilasjon for miniDVD
norwegian.NR3_Description=Kompilasjon for CD-ROM (MP3)
norwegian.NR4_Description=Kompilasjon for CD-ROM (AAC)
norwegian.NRA_Description=Kompilasjon av lyd-CD
norwegian.NRB_Description=Kompilasjon for CD-ROM (oppstartbar)
norwegian.NRC_Description=Kompilasjon for CD-ROM (UDF/ISO)
norwegian.NRD_Description=Kompilasjon for DVD-Video
norwegian.NRE_Description=Kompilasjon for CD EXTRA
norwegian.NRG_Description=Image-filer
norwegian.NRH_Description=Kompilasjon for CD-ROM (hybrid)
norwegian.NRI_Description=Kompilasjon for CD-ROM (ISO)
norwegian.NRJ_Description=Kompilasjon for JukeBox
norwegian.NRM_Description=Kompilasjon for Mixed Mode-CD
norwegian.NRS_Description=Kompilasjon for CD-ROM (EFI Boot)
norwegian.NRU_Description=Kompilasjon for CD-ROM (UDF)
norwegian.NRV_Description=Kompilasjon for Video-CD
norwegian.NRW_Description=Kompilasjon for CD-ROM (WMA)
norwegian.NSD_Description=Kompilasjon for Super Video CD
norwegian.Comp_Nero_lang=Språk
norwegian.Comp_Nero_lang_english=Engelsk
norwegian.Comp_Nero_lang_norwegian=Norsk
norwegian.Comp_Nero_Sounds=Lyder
;Setup register filetypes
norwegian.FileAssociations=Registrer Fil typer:
norwegian.AssocImageFileExt=Assoier Nero med standard CD-Image filer
