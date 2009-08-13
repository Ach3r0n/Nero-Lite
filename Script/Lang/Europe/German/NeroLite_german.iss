[Languages]
#if NeroVersion == 8
Name: german; MessagesFile: compiler:Languages\German.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_deu.rtf
#endif
#if NeroVersion == 7
Name: german; MessagesFile: compiler:Languages\German.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_deu.rtf
#endif

[Files]
;German
#if NeroVersion == 8
Source: Custom\Help\NeroControlCenter_DEU.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('german'); BeforeInstall: AddLanguage('DEU')
#endif
#if NeroVersion == 7
Source: Custom\Help\NeroControlCenter_DEU.chm; DestName: NeroProductSetup_DEU.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('german'); BeforeInstall: AddLanguage('DEU')
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroDEU.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Bin\[FILELOCATION]Core\NeroDEU.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResDEU.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Custom\Help\NeroBurningRom_DEU.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Custom\Help\NeroExpress_DEU.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-DEU.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('german')
Source: Custom\Help\NeroCoverDesigner_DEU.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('german')
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-DEU.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('german')
Source: Custom\Help\NeroWaveEditor_DEU.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('german')
Source: Custom\Help\NeroBurnRights_DEU.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('german')
	#if NeroVersion == 8
Source: Custom\Help\NeroDiscSpeed_DEU.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('german')
	#endif
#endif

[Registry]
;German
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: DEU; Languages: german; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: DEU; Components: nero_core; Languages: german; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: DEU; Languages: german; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: DEU; Components: nero_toolkit\nero_cdspeed; Languages: german; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: DEU; Components: nero_toolkit\nero_drivespeed; Languages: german; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: DEU; Components: nero_toolkit\nero_infotool; Languages: german; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: DEU; Components: nero_waveedit; Languages: german; Flags: uninsdeletekey
	#endif
#endif

[Components]
;German
Name: nero_lang\german; Description: {cm:Comp_Nero_lang_german}; Languages: not german

[CustomMessages]
;Setup Wizard - Registration dialog
german.NeroShop=Nero Online Kaufen
german.CustomFormCaption=Benutzerinformationen
german.CustomFormDescription=Bitte geben Sie Ihre Informationen ein.
german.RegistrationInfo=Bitte personalisieren Sie Ihre Kopie von Nero, indem Sie Ihren Namen und%nIhre Seriennummer eingeben.
german.RegistrationWelcome=Vielen Dank dass Sie Nero gekauft haben.
german.RegistrationWelcomeCaption=Willkommen bei Nero
german.RegistrationCaption=Registration
german.NeroShopCaption=Keine Seriennummer?
german.NeroShopURL=http://www.nero.com/deu/catalog.html
german.RegistrationName=Benutzername:
german.RegistrationOrg=Organisation:
german.RegistrationSerial=Seriennummer:
;Filetype descriptions - Nero CoverDesigner
german.CDC_Description=Nero CD-Cover-Dokument
german.NCD_Description=Nero CD-Cover-Dokument
german.NCT_Description=Nero CoverDesigner Vorlage
;Filetype descriptions - Nero Burning Rom
german.CUE_Description=Image Dateien
german.IMG_Description=Image Dateien
german.ISO_Description=Image Dateien
german.NAB_Description=Audio-CD-Zusammenstellung
german.NHF_Description=HFS CD-Zusammenstellung
german.NHV_Description=HD-BURN-Video-Zusammenstellung
german.NMD_Description=miniDVD-Zusammenstellung
german.NR3_Description=CD-ROM (MP3)-Zusammenstellung
german.NR4_Description=CD-ROM (AAC)-Zusammenstellung
german.NRA_Description=Audio-CD-Zusammenstellung
german.NRB_Description=CD-ROM (Boot)-Zusammenstellung
german.NRC_Description=CD-ROM (UDF/ISO)-Zusammenstellung
german.NRD_Description=DVD-Video-Zusammenstellung
german.NRE_Description=CD-EXTRA-Zusammenstellung
german.NRG_Description=Image Dateien
german.NRH_Description=CD-ROM (Hybrid)-Zusammenstellung
german.NRI_Description=CD-ROM (ISO)-Zusammenstellung
german.NRJ_Description=JukeBox-Zusammenstellung
german.NRM_Description=Mixmodus-CD-Zusammenstellung
german.NRS_Description=CD-ROM (EFI Boot)-Zusammenstellung
german.NRU_Description=CD-ROM (UDF)-Zusammenstellung
german.NRV_Description=Video-CD Compilation
german.NRW_Description=CD-ROM (WMA)-Zusammenstellung
german.NSD_Description=Super Video-CD-Zusammenstellung
;Setup Wizard Component Description
german.Comp_Nero_lang=Sprache
german.Comp_Nero_lang_dutch=Holländisch
german.Comp_Nero_lang_english=Englisch
german.Comp_Nero_lang_german=Deutsch
german.Comp_Nero_Sounds=Klänge
;Setup Wizard Extra Tasks
german.FileAssociations=Dateiverknüpfungen wählen:
german.AssocImageFileExt=Nero mit Standard CD-Images verknüpfen

