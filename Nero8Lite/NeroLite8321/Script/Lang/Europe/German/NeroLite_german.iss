[Languages]
Name: german; MessagesFile: compiler:Languages\German.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_deu.rtf

[Files]
;German
Source: Custom\Help\NeroControlCenter_DEU.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('german'); BeforeInstall: AddLanguage('DEU'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroDEU.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Bin\[FILELOCATION]Core\NeroDEU.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResDEU.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Custom\Help\NeroBurningRom_DEU.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_DEU.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-DEU.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('german')
Source: Custom\Help\NeroCoverDesigner_DEU.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-DEU.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('german')
Source: Custom\Help\NeroWaveEditor_DEU.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_DEU.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_DEU.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;German
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: DEU; Languages: german; Flags: uninsdeletekey

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
german.Comp_Nero_lang_dutch=Holl�ndisch
german.Comp_Nero_lang_english=Englisch
german.Comp_Nero_lang_german=Deutsch
german.Comp_Nero_Sounds=Kl�nge
;Setup Wizard Extra Tasks
german.FileAssociations=Dateiverkn�pfungen w�hlen:
german.AssocImageFileExt=Nero mit Standard CD-Images verkn�pfen
