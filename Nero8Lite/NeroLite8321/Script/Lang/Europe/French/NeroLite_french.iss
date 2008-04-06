[Languages]
Name: french; MessagesFile: compiler:Languages\French.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_fra.rtf

[Files]
;French
Source: Custom\Help\NeroControlCenter_FRA.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('french'); BeforeInstall: AddLanguage('FRA'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroFRA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Bin\[FILELOCATION]Core\NeroFRA.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResFRA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Custom\Help\NeroBurningRom_FRA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_FRA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-FRA.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('french')
Source: Custom\Help\NeroCoverDesigner_FRA.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-FRA.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('french')
Source: Custom\Help\NeroWaveEditor_FRA.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_FRA.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_FRA.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;French
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: FRA; Languages: french; Flags: uninsdeletekey

[Components]
;French
Name: nero_lang\french; Description: {cm:Comp_Nero_lang_french}; Languages: not french

[CustomMessages]
;French
;Setup Wizard - Registration dialog
french.NeroShop=Boutique en ligne Nero�
french.CustomFormCaption=Information Utilisateur
french.CustomFormDescription=Veuillez entrer vos informations.
french.RegistrationInfo=Veuillez personnaliser votre copie de Nero 8 en saisissant votre nom%net votre num�ro de s�rie.
french.RegistrationWelcome=Merci d'enregistrer votre copie de Nero.
french.RegistrationWelcomeCaption=Nero vous souhaite la bienvenue
french.RegistrationCaption=Enregistrement
french.NeroShopCaption=Pas de num�ro de s�rie?
french.NeroShopURL=http://www.nero.com/fra/catalog.html
french.RegistrationName=Nom:
french.RegistrationOrg=Soci�t�:
french.RegistrationSerial=Num�ro de s�rie:
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
french.NHV_Description=Compilation HD-BURN-Vid�o
french.NMD_Description=Compilation mini-DVD
french.NR3_Description=Compilation CD-ROM (MP3)
french.NR4_Description=Compilation CD-ROM (AAC)
french.NRA_Description=Compilation CD audio
french.NRB_Description=CD-ROM (Amorce) Compilation
french.NRC_Description=CD-ROM (UDF/ISO) Compilation
french.NRD_Description=Compilation DVD-Vid�o
french.NRE_Description=Compilation CD EXTRA
french.NRG_Description=Fichiers Image
french.NRH_Description=Compilation CD-ROM (hybride)
french.NRI_Description=Compilation CD-ROM (ISO)
french.NRJ_Description=Compilation JukeBox
french.NRM_Description=Compilation CD mode mixte
french.NRS_Description=Compilation CD-ROM (Amor�age EFI)
french.NRU_Description=Compilation CD-ROM (UDF)
french.NRV_Description=Compilation CD Vid�o
french.NRW_Description=Compilation CD-ROM (WMA)
french.NSD_Description=Compilation Super Vid�o CD
;Setup Wizard Component Description
french.Comp_Nero_lang=Langue
french.Comp_Nero_lang_french=Fran�ais
french.Comp_Nero_lang_english=Anglais
french.Comp_Nero_Sounds=Sons
;Setup Wizard Extra Tasks
french.FileAssociations=Enregistrement types de fichiers:
french.AssocImageFileExt=Associer Nero avec les Fichiers Image standard.
