[Languages]
#if NeroVersion == 8
Name: greek; MessagesFile: compiler:Languages\Greek.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#if NeroVersion == 7
Name: greek; MessagesFile: compiler:Languages\Greek.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Greek
#if NeroVersion == 8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('greek'); BeforeInstall: AddLanguage('ELL')
#endif
#if NeroVersion == 7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('greek'); BeforeInstall: AddLanguage('ELL')
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroELL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Bin\[FILELOCATION]Core\NeroELL.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResELL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-ELL.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('greek')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('greek')
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-ELL.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('greek')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('greek')
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('greek')
	#if NeroVersion == 8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('greek')
	#endif
#endif

[Registry]
;Greek
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ELL; Languages: greek; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_core; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: ELL; Languages: greek; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_toolkit\nero_cdspeed; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_toolkit\nero_drivespeed; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_toolkit\nero_infotool; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_waveedit; Languages: greek; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Greek
Name: nero_lang\greek; Description: {cm:Comp_Nero_lang_greek}; Languages: not greek

[CustomMessages]
;Greek
;Setup Wizard - Registration dialog
greek.CustomFormCaption=Πληροφορίες πελάτη
greek.CustomFormDescription=Παρακαλώ συμπληρώστε τα στοιχεία σας
greek.RegistrationInfo=Παρακαλώ προσωποποιήστε το αντίγραφο του Nero {#NeroVersion} δηλώνοντας το όνομα σας και%nτον σειριακό σας αριθμό.
greek.RegistrationWelcomeCaption=Καλώς ήρθατε στο Nero
greek.RegistrationWelcome=Σας ευχαριστούμε που αγοράσατε το Nero.
greek.RegistrationCaption=Εγγραφή
greek.NeroShopCaption=Δεν έχετε σειριακό αριθμό ?
greek.NeroShop=Nero Online Shop 
greek.NeroShopURL=http://www.nero.com/eng/catalog.html
greek.RegistrationName=Όνομα:
greek.RegistrationOrg=Οργανισμός:
greek.RegistrationSerial=Σειριακός αριθμός:
;Filetype descriptions - Nero CoverDesigner
greek.CDC_Description=Nero CoverDesigner Έγγραφο
greek.NCD_Description=Nero CoverDesigner Έγγραφο
greek.NCT_Description=Nero CoverDesigner Περίγραμμα
;Filetype descriptions - Nero Burning Rom
greek.CUE_Description=CD-Εικονικό αρχείο
greek.IMG_Description=CD-Εικονικό αρχείο
greek.ISO_Description=CD-Εικονικό αρχείο
greek.NAB_Description=Audiobook CD-ROM Συλλογή
greek.NHF_Description=HFS-CD Συλλογή
greek.NHV_Description=HD-BURN-Συλλογή Βίντεο
greek.NMD_Description=MiniDVD Συλλογή
greek.NR3_Description=CD-ROM Συλλογή (MP3)
greek.NR4_Description=CD-ROM Συλλογή (AAC)
greek.NRA_Description=Audio-CD Συλλογή
greek.NRB_Description=CD-ROM Συλλογή (Boot)
greek.NRC_Description=CD-rom Συλλογή (UDF/ISO)
greek.NRD_Description=DVD-Video Συλλογή
greek.NRE_Description=CD Extra Συλλογή
greek.NRG_Description=CD-Εικονικό Αρχείο
greek.NRH_Description=Hybrid CD-ROM Συλλογή
greek.NRI_Description=CD-ROM Συλλογή (ISO)
greek.NRJ_Description=JukeBox Συλλογή
greek.NRM_Description=Μικτή λειτουργία CD Συλλογή
greek.NRS_Description=CD-ROM (EFI Boot) Συλλογή
greek.NRU_Description=CD-ROM Συλλογή (UDF)
greek.NRV_Description=Video-CD Συλλογή
greek.NRW_Description=WMA CD-ROM Συλλογή
greek.NSD_Description=Super Video CD Συλλογή
;Setup Component Description
greek.Comp_Nero_lang=Γλώσσα
greek.Comp_Nero_lang_greek=Ελληνικά
greek.Comp_Nero_lang_greek=Ελληνικά
greek.Comp_Nero_Sounds=Ήχοι
;Setup register filetypes
greek.FileAssociations=Ρυθμίστε τους τύπους των αρχείων:
greek.AssocImageFileExt=Συνδυάστε το Nero με τα CD-Εικονικών Αρχείων
;Installer mutex
greek.SetupIsRunningWarning=Η εγκατάσταση τρέχει ήδη!

