[Languages]
#if NeroVersion == 8
Name: turkish; MessagesFile: compiler:Languages\Turkish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#if NeroVersion == 7
Name: turkish; MessagesFile: compiler:Languages\Turkish.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Turkish
#if NeroVersion == 8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('turkish'); BeforeInstall: AddLanguage('TRK');
#endif
#if NeroVersion == 7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('turkish'); BeforeInstall: AddLanguage('TRK');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroTRK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish')
Source: Bin\[FILELOCATION]Core\NeroTRK.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResTRK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish');
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-TRK.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('turkish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('turkish');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-TRK.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('turkish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('turkish');
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('turkish');
	#if NeroVersion == 8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('turkish');
	#endif
#endif

[Registry]
;Turkish
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: TRK; Languages: turkish; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: TRK; Components: nero_core; Languages: turkish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: TRK; Languages: turkish; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: TRK; Components: nero_toolkit\nero_cdspeed; Languages: turkish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: TRK; Components: nero_toolkit\nero_drivespeed; Languages: turkish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: TRK; Components: nero_toolkit\nero_infotool; Languages: turkish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: TRK; Components: nero_waveedit; Languages: turkish; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Turkish
Name: nero_lang\turkish; Description: {cm:Comp_Nero_lang_turkish}; Languages: not turkish

[CustomMessages]
;Turkish
;Setup Wizard - Registration dialog
turkish.CustomFormCaption=Müsteri Bilgisi
turkish.CustomFormDescription=Bilgilerinizi giriniz
turkish.RegistrationInfo=Kullanici adinizi ve seri numaranizi girerek Nero'yu kisisellestirin.
turkish.RegistrationWelcome=Nero'yu satin aldiginiz için tesekkürler.
turkish.RegistrationWelcomeCaption=Nero'ya hosgeldiniz
turkish.RegistrationCaption=Kayit
turkish.NeroShopCaption=Seri numarasi yok mu?
turkish.NeroShop=Nero Online Satis 
turkish.NeroShopURL=http://www.nero.com/eng/catalog.html
turkish.RegistrationName=Isim:
turkish.RegistrationOrg=Organizasyon:
turkish.RegistrationSerial=Seri numarasi:
;Filetype descriptions - Nero CoverDesigner
turkish.CDC_Description=Nero CoverDesigner Document
turkish.NCD_Description=Nero CoverDesigner Document
turkish.NCT_Description=Nero CoverDesigner Sablonu
;Filetype descriptions - Nero Burning Rom
turkish.CUE_Description=CD-Kalip dosyasi
turkish.IMG_Description=CD-Kalip dosyasi
turkish.ISO_Description=CD-Kalip dosyasi
turkish.NAB_Description=Audiobook CD-ROM Derlemesi
turkish.NHF_Description=HFS-CD Derlemesi
turkish.NHV_Description=HD-BURN-Video Derlemesi
turkish.NMD_Description=MiniDVD Derlemesi
turkish.NR3_Description=CD-ROM Derlemesi (MP3)
turkish.NR4_Description=CD-ROM Derlemesi (AAC)
turkish.NRA_Description=Audio-CD Derlemesi
turkish.NRB_Description=CD-ROM Derlemesi (Boot)
turkish.NRC_Description=CD-rom Derlemesi (UDF/ISO)
turkish.NRD_Description=DVD-Video Derlemesi
turkish.NRE_Description=CD Extra Derlemesi
turkish.NRG_Description=CD-Kalip dosyasi
turkish.NRH_Description=Hybrid CD-ROM Derlemesi
turkish.NRI_Description=CD-ROM Derlemesi (ISO)
turkish.NRJ_Description=JukeBox Derlemesi
turkish.NRM_Description=Mixed-Mode-CD Derlemesi
turkish.NRS_Description=CD-ROM (EFI Boot) Derlemesi
turkish.NRU_Description=CD-ROM Derlemesi (UDF)
turkish.NRV_Description=Video-CD Derlemesi
turkish.NRW_Description=WMA CD-ROM Derlemesi
turkish.NSD_Description=Super Video CD Derlemesi
;Setup Component Description
turkish.Comp_Nero_lang=Dil
turkish.Comp_Nero_lang_english=Ingilizce
turkish.Comp_Nero_lang_turkish=Türkçe
turkish.Comp_Nero_Sounds=Ses
;Setup register filetypes
turkish.FileAssociations=Dosya türlerini kaydet:
turkish.AssocImageFileExt=Nero'yu Standard CD kaliplariyla iliskilendir
