[Languages]
#if NeroVersion == 8
Name: french; MessagesFile: compiler:Languages\French.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_fra.rtf
#endif
#if NeroVersion == 7
Name: french; MessagesFile: compiler:Languages\French.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_fra.rtf
#endif

[Files]
;French
#if NeroVersion == 8
Source: Custom\Help\NeroControlCenter_FRA.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('french'); BeforeInstall: AddLanguage('FRA');
#endif
#if NeroVersion == 7
Source: Custom\Help\NeroControlCenter_FRA.chm; DestName: NeroProductSetup_FRA.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('french'); BeforeInstall: AddLanguage('FRA');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroFRA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Bin\[FILELOCATION]Core\NeroFRA.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResFRA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Custom\Help\NeroBurningRom_FRA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french');
Source: Custom\Help\NeroExpress_FRA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-FRA.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('french')
Source: Custom\Help\NeroCoverDesigner_FRA.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('french');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-FRA.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('french')
Source: Custom\Help\NeroWaveEditor_FRA.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('french');
Source: Custom\Help\NeroBurnRights_FRA.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('french');
	#if NeroVersion == 8
Source: Custom\Help\NeroDiscSpeed_FRA.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('french');
	#endif
#endif

[Registry]
;French
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: FRA; Languages: french; Flags: uninsdeletekey
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: FRA; Languages: french; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: FRA; Components: nero_core; Languages: french; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: FRA; Languages: french; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: FRA; Components: nero_toolkit\nero_cdspeed; Languages: french; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: FRA; Components: nero_toolkit\nero_drivespeed; Languages: french; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: FRA; Components: nero_toolkit\nero_infotool; Languages: french; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: FRA; Components: nero_waveedit; Languages: french; Flags: uninsdeletekey
	#endif
#endif

[Components]
;French
Name: nero_lang\french; Description: {cm:Comp_Nero_lang_french}; Languages: not french

[CustomMessages]
;French
;Setup Wizard - Registration dialog
french.NeroShop=Boutique en ligne Nero 
french.CustomFormCaption=Information Utilisateur
french.CustomFormDescription=Veuillez entrer vos informations.
french.RegistrationInfo=Veuillez personnaliser votre copie de Nero {#NeroMajorVersion} en saisissant votre nom%net votre numéro de série.
french.RegistrationWelcome=Merci d'enregistrer votre copie de Nero.
french.RegistrationWelcomeCaption=Nero vous souhaite la bienvenue
french.RegistrationCaption=Enregistrement
french.NeroShopCaption=Pas de numéro de série?
french.NeroShopURL=http://www.nero.com/fra/catalog.html
french.RegistrationName=Nom:
french.RegistrationOrg=Société:
french.RegistrationSerial=Numéro de série:
;Filetype descriptions - Nero CoverDesigner
french.CDC_Description=Document de jaquette CD Nero
french.NCD_Description=Document de jaquette CD Nero
french.NCT_Description=Nero Cover Designer Template
;Filetype descriptions - Nero Burning Rom
french.CUE_Description=Fichiers Image
french.IMG_Description=Fichiers Image
french.ISO_Description=Fichiers Image
french.NAB_Description=Compilation CD Audiobook
french.NHF_Description=Compilation CD HFS
french.NHV_Description=Compilation HD-BURN-Vidéo
french.NMD_Description=Compilation mini-DVD
french.NR3_Description=Compilation CD-ROM (MP3)
french.NR4_Description=Compilation CD-ROM (AAC)
french.NRA_Description=Compilation CD audio
french.NRB_Description=CD-ROM (Amorce) Compilation
french.NRC_Description=CD-ROM (UDF/ISO) Compilation
french.NRD_Description=Compilation DVD-Vidéo
french.NRE_Description=Compilation CD EXTRA
french.NRG_Description=Fichiers Image
french.NRH_Description=Compilation CD-ROM (hybride)
french.NRI_Description=Compilation CD-ROM (ISO)
french.NRJ_Description=Compilation JukeBox
french.NRM_Description=Compilation CD mode mixte
french.NRS_Description=Compilation CD-ROM (Amorçage EFI)
french.NRU_Description=Compilation CD-ROM (UDF)
french.NRV_Description=Compilation CD Vidéo
french.NRW_Description=Compilation CD-ROM (WMA)
french.NSD_Description=Compilation Super Vidéo CD
;Setup Wizard Component Description
french.Comp_Nero_lang=Langue
french.Comp_Nero_lang_french=Français
french.Comp_Nero_lang_english=Anglais
french.Comp_Nero_Sounds=Sons
;Setup Wizard Extra Tasks
french.FileAssociations=Enregistrement types de fichiers:
french.AssocImageFileExt=Associer Nero avec les Fichiers Image standard.
