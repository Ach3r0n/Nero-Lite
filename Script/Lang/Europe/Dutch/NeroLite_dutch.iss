[Languages]
#ifdef Nero8
Name: dutch; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_nld.rtf
#endif
#ifdef Nero7
Name: dutch; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_nld.rtf
#endif

[Files]
;Dutch
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_NLD.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('dutch'); BeforeInstall: AddLanguage('NLD'); Flags: ignoreversion replacesameversion
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_NLD.chm; DestName: NeroProductSetup_NLD.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('dutch'); BeforeInstall: AddLanguage('NLD'); Flags: ignoreversion replacesameversion
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroNLD.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch')
Source: Bin\[FILELOCATION]Core\NeroNLD.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResNLD.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch')
Source: Custom\Help\NeroBurningRom_NLD.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_NLD.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-NLD.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('dutch')
Source: Custom\Help\NeroCoverDesigner_NLD.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-NLD.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('dutch')
Source: Custom\Help\NeroWaveEditor_NLD.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_NLD.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_NLD.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
	#endif
#endif

[Registry]
;Dutch
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: NLD; Languages: dutch; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: NLD; Components: nero_core; Languages: dutch; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: NLD; Languages: dutch; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: NLD; Components: nero_toolkit\nero_cdspeed; Languages: dutch; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: NLD; Components: nero_toolkit\nero_drivespeed; Languages: dutch; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: NLD; Components: nero_toolkit\nero_infotool; Languages: dutch; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: NLD; Components: nero_waveedit; Languages: dutch; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Dutch
Name: nero_lang\dutch; Description: {cm:Comp_Nero_lang_dutch}; Languages: not dutch

[CustomMessages]
;Dutch
;Setup Wizard - Registration dialog
dutch.CustomFormCaption=Klantgegevens
dutch.CustomFormDescription=Geef de benodigde gebruikersgegevens op.
dutch.RegistrationInfo=Registreer uw exemplaar van Nero {#NeroMajorVersion} door uw naam en%nserienummer in te voeren.
dutch.RegistrationWelcome=Bedankt voor de aankoop van uw exemplaar van Nero.
dutch.RegistrationWelcomeCaption=Welkom bij Nero
dutch.RegistrationCaption=Registratie
dutch.NeroShopCaption=Geen serienummer?
dutch.NeroShop=Nero Online Shop 
dutch.NeroShopURL=http://www.nero.com/eng/catalog.html
dutch.RegistrationName=Naam:
dutch.RegistrationOrg=Firma:
dutch.RegistrationSerial=Serienummer:
;Filetype descriptions - Nero CoverDesigner
dutch.CDC_Description=Nero CD Cover-document
dutch.NCD_Description=Nero CD Cover-document
dutch.NCT_Description=Nero CoverDesigner Sjabloon
;Filetype descriptions - Nero Burning Rom
dutch.CUE_Description=CD-image
dutch.IMG_Description=CD-image
dutch.ISO_Description=CD-image
dutch.NAB_Description=Audioboek-CD-compilatie
dutch.NHF_Description=HFS-CD-compilatie
dutch.NHV_Description=HD-BURN-Video-compilatie
dutch.NMD_Description=MiniDVD-compilatie
dutch.NR3_Description=CD-ROM-compilatie (MP3)
dutch.NR4_Description=CD-ROM-compilatie (AAC)
dutch.NRA_Description=Audio-CD-compilatie
dutch.NRB_Description=CD-ROM-compilatie (Opstartbaar)
dutch.NRC_Description=CD-ROM-compilatie (UDF/ISO)
dutch.NRD_Description=DVD-Video-compilatie
dutch.NRE_Description=CD-Extra-compilatie
dutch.NRG_Description=CD-image
dutch.NRH_Description=CD-ROM-compilatie (Hybride)
dutch.NRI_Description=CD-ROM-compilatie (ISO)
dutch.NRJ_Description=JukeBox-compilatie
dutch.NRM_Description=CD-compilatie met Gemengde modus
dutch.NRS_Description=CD-ROM-compilatie (EFI Boot)
dutch.NRU_Description=CD-ROM-compilatie (UDF)
dutch.NRV_Description=Video-CD-compilatie
dutch.NRW_Description=CD-ROM-compilatie (WMA)
dutch.NSD_Description=Super Video-CD-compilatie
;Setup Component Description
dutch.Comp_Nero_lang=Extra talen
dutch.Comp_Nero_lang_dutch=Nederlands
;dutch.Comp_Nero_lang_english=Engels
dutch.Comp_Nero_Sounds=Geluiden
;Setup register filetypes
dutch.FileAssociations=Bestandstypen registreren:
dutch.AssocImageFileExt=Associeer Nero met standaard CD-Image bestandstypen
