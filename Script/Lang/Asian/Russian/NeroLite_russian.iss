[Languages]
#ifdef Nero8
Name: russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Russian
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('russian'); BeforeInstall: AddLanguage('RUS');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('russian'); BeforeInstall: AddLanguage('RUS');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroRUS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Bin\[FILELOCATION]Core\NeroRUS.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResRUS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian');
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-RUS.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('russian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('russian');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-RUS.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('russian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('russian');
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('russian');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('russian');
	#endif
#endif

[Registry]
;Russian
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: RUS; Languages: russian; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: RUS; Components: nero_core; Languages: russian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: RUS; Languages: russian; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: RUS; Components: nero_toolkit\nero_cdspeed; Languages: russian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: RUS; Components: nero_toolkit\nero_drivespeed; Languages: russian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: RUS; Components: nero_toolkit\nero_infotool; Languages: russian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: RUS; Components: nero_waveedit; Languages: russian; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Russian
Name: nero_lang\russian; Description: {cm:Comp_Nero_lang_russian}; Languages: not russian

[CustomMessages]
;Russian
;Setup Wizard - Registration dialog
russian.CustomFormCaption=Информация о потребителе
russian.CustomFormDescription=Пожалуйста, введите информацию о себе.
russian.RegistrationInfo=Персонализируйте Вашу копию Nero {#NeroMajorVersion} введя свое имя и%nсвой серийный номер.
russian.RegistrationWelcome=Спасибо за приобретение Вашей копии  Nero.
russian.RegistrationWelcomeCaption=Добро пожаловать в Nero
russian.RegistrationCaption=Регистрация
russian.NeroShopCaption=Без серийного номера?
russian.NeroShop=Онлайн магазин Nero 
russian.NeroShopURL=http://www.nero.com/ena/catalog.html
russian.RegistrationName=Имя:
russian.RegistrationOrg=Организация:
russian.RegistrationSerial=Серийный номер:
;Filetype descriptions - Nero CoverDesigner
russian.CDC_Description=Документ Nero CoverDesigner
russian.NCD_Description=Документ Nero CoverDesigner
russian.NCT_Description=Шаблон Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
russian.CUE_Description=Файл образа CD
russian.IMG_Description=Файл образа CD
russian.ISO_Description=Файл образа CD
russian.NAB_Description=Компиляция Audiobook CD-ROM
russian.NHF_Description=Компиляция HFS-CD
russian.NHV_Description=HD-BURN-Video
russian.NMD_Description=Компиляция MiniDVD
russian.NR3_Description=Компиляция CD-ROM (MP3)
russian.NR4_Description=Компиляция CD-ROM (AAC)
russian.NRA_Description=Компиляция Audio-CD
russian.NRB_Description=Компиляция CD-ROM (Boot)
russian.NRC_Description=Компиляция CD-rom (UDF/ISO)
russian.NRD_Description=Компиляция DVD-Video
russian.NRE_Description=Компиляция CD Extra
russian.NRG_Description=Файл образа CD
russian.NRH_Description=Компиляция Hybrid CD-ROM
russian.NRI_Description=Компиляция CD-ROM (ISO)
russian.NRJ_Description=Компиляция JukeBox
russian.NRM_Description=Компиляция Mixed-Mode-CD
russian.NRS_Description=Компиляция CD-ROM (EFI Boot)
russian.NRU_Description=Компиляция CD-ROM (UDF)
russian.NRV_Description=Компиляция Video-CD
russian.NRW_Description=Компиляция WMA CD-ROM
russian.NSD_Description=Компиляция Super Video CD
;Setup Component Description
russian.Comp_Nero_lang=Язык
russian.Comp_Nero_lang_english=Английский
russian.Comp_Nero_lang_russian=Русский
russian.Comp_Nero_Sounds=Звуки
;Setup register filetypes
russian.FileAssociations=Регистрация типов файлов:
russian.AssocImageFileExt=Ассоциировать Nero со стандартными файлами образов CD
