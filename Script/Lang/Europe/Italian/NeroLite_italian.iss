[Languages]
#ifdef Nero8
Name: italian; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ita.rtf
#endif
#ifdef Nero7
Name: italian; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ita.rtf
#endif

[Files]
;Italian
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ITA.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('italian'); BeforeInstall: AddLanguage('ITA'); Flags: ignoreversion replacesameversion
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ITA.chm; DestName: NeroProductSetup_ITA.chm;  DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('italian'); BeforeInstall: AddLanguage('ITA'); Flags: ignoreversion replacesameversion
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroITA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian')
Source: Bin\[FILELOCATION]Core\NeroITA.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResITA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian')
Source: Custom\Help\NeroBurningRom_ITA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ITA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-ITA.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('italian')
Source: Custom\Help\NeroCoverDesigner_ITA.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-ITA.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('italian')
Source: Custom\Help\NeroWaveEditor_ITA.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ITA.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ITA.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
	#endif
#endif

[Registry]
;Italian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ITA; Languages: italian; Flags: uninsdeletekey
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ITA; Languages: italian; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: ITA; Components: nero_core; Languages: italian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: ITA; Languages: italian; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: ITA; Components: nero_toolkit\nero_cdspeed; Languages: italian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: ITA; Components: nero_toolkit\nero_drivespeed; Languages: italian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: ITA; Components: nero_toolkit\nero_infotool; Languages: italian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: ITA; Components: nero_waveedit; Languages: italian; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Italian
Name: nero_lang\italian; Description: {cm:Comp_Nero_lang_italian}; Languages: not italian

[CustomMessages]
;Italian
;Setup Wizard - Registration dialog
italian.CustomFormCaption=Informazioni proprietario
italian.CustomFormDescription=Per favore inserisci le tue informazioni.
italian.RegistrationInfo=Per favore personalizza la tua copia di Nero {#NeroMajorVersion} inserendo il tuo nome ed%nil tuo numero di serie.
italian.RegistrationWelcome=Grazie per aver acquistato la tua copia di Nero.
italian.RegistrationWelcomeCaption=Benvenuto a Nero
italian.RegistrationCaption=Registrazione
italian.NeroShopCaption=Nessun numero di serie?
italian.NeroShop=Negozio online di Nero 
italian.NeroShopURL=http://www.nero.com/ita/catalog.html
italian.RegistrationName=Nome:
italian.RegistrationOrg=Organizzazione:
italian.RegistrationSerial=Numero di serie:
;Filetype descriptions - Nero CoverDesigner
italian.CDC_Description=Documento Nero CoverDesigner
italian.NCD_Description=Documento Nero CoverDesigner
italian.NCT_Description=Modello Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
italian.CUE_Description=File Immagine CD
italian.IMG_Description=File Immagine CD
italian.ISO_Description=File Immagine CD
italian.NAB_Description=Compilation Audiolibro CD-ROM
italian.NHF_Description=Compilation HFS-CD
italian.NHV_Description=Compilation HD-BURN-Video
italian.NMD_Description=Compilation MiniDVD
italian.NR3_Description=Compilation CD-ROM (MP3)
italian.NR4_Description=Compilation CD-ROM (AAC)
italian.NRA_Description=Compilation Audio-CD
italian.NRB_Description=Compilation CD-ROM (Avvio)
italian.NRC_Description=Compilation CD-rom (UDF/ISO)
italian.NRD_Description=Compilation DVD-Video
italian.NRE_Description=Compilation CD Extra
italian.NRG_Description=File Immagine CD
italian.NRH_Description=Compilation CD-ROM Ibrido
italian.NRI_Description=Compilation CD-ROM (ISO)
italian.NRJ_Description=Compilation JukeBox
italian.NRM_Description=Compilation Mixed-Mode-CD
italian.NRS_Description=Compilation CD-ROM (Avvio EFI)
italian.NRU_Description=Compilation CD-ROM (UDF)
italian.NRV_Description=Compilation Video-CD
italian.NRW_Description=Compilation CD-ROM WMA
italian.NSD_Description=Compilation Super Video CD
;Setup Component Description
italian.Comp_Nero_lang=Lingua
italian.Comp_Nero_lang_english=Inglese
italian.Comp_Nero_lang_italian=Italiano
italian.Comp_Nero_Sounds=Suoni
;Setup register filetypes
italian.FileAssociations=Registra tipi di File:
italian.AssocImageFileExt=Associa Nero con i tipi predefiniti di file immagine di CD
language_italian=italian
