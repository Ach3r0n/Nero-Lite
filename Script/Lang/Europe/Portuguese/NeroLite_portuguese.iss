[Languages]
#ifdef Nero8
Name: portuguese; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ptg.rtf
Name: portuguese_brazilian; MessagesFile: compiler:Languages\BrazilianPortuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ptg.rtf
#endif
#ifdef Nero7
Name: portuguese; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ptg.rtf
Name: portuguese_brazilian; MessagesFile: compiler:Languages\BrazilianPortuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ptg.rtf
#endif

[Files]
;Portuguese
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_PTG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('portuguese'); BeforeInstall: AddLanguage('PTG');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_PTG.chm; DestName: NeroProductSetup_PTG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('portuguese'); BeforeInstall: AddLanguage('PTG');
#endif
Source: Bin\[FILELOCATION]Core\NeroPTG.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Custom\Bin\[FILELOCATION]Core\NeroPTG.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPTG.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroBurningRom_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese');
Source: Custom\Help\NeroExpress_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-PTG.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroCoverDesigner_PTG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-PTG.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroWaveEditor_PTG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese');
Source: Custom\Help\NeroBurnRights_PTG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('portuguese');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_PTG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('portuguese');
	#endif
#endif

;Portuguese Brazilian
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_PTB.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('portuguese_brazilian'); BeforeInstall: AddLanguage('PTB');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_PTB.chm; DestName: NeroProductSetup_PTB.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('portuguese_brazilian'); BeforeInstall: AddLanguage('PTB');
#endif
Source: Bin\[FILELOCATION]Core\NeroPTB.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Bin\[FILELOCATION]Core\NeroPTB.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPTB.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroBurningRom_PTB.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian');
Source: Custom\Help\NeroExpress_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-PTB.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroCoverDesigner_PTB.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese_brazilian');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-PTB.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroWaveEditor_PTG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese_brazilian');
Source: Custom\Help\NeroBurnRights_PTG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('portuguese_brazilian');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_PTG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('portuguese_brazilian');
	#endif
#endif

[Registry]
;Portuguese
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PTG; Languages: portuguese; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: PTG; Components: nero_core; Languages: portuguese; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: PTG; Languages: portuguese; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: PTG; Components: nero_toolkit\nero_cdspeed; Languages: portuguese; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: PTG; Components: nero_toolkit\nero_drivespeed; Languages: portuguese; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: PTG; Components: nero_toolkit\nero_infotool; Languages: portuguese; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: PTG; Components: nero_waveedit; Languages: portuguese; Flags: uninsdeletekey
	#endif
#endif

;Portuguese Brazilian
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PTB; Languages: portuguese_brazilian; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: PTB; Components: nero_core; Languages: portuguese_brazilian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: PTB; Languages: portuguese_brazilian; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: PTB; Components: nero_toolkit\nero_cdspeed; Languages: portuguese_brazilian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: PTB; Components: nero_toolkit\nero_drivespeed; Languages: portuguese_brazilian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: PTB; Components: nero_toolkit\nero_infotool; Languages: portuguese_brazilian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: PTB; Components: nero_waveedit; Languages: portuguese_brazilian; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Portuguese
Name: nero_lang\portuguese; Description: {cm:Comp_Nero_lang_portuguese}; Languages: not portuguese
;Portuguese Brazilian
Name: nero_lang\portuguese_brazilian; Description: {cm:Comp_Nero_lang_portuguese_brazilian}; Languages: not portuguese_brazilian

[CustomMessages]
;Portuguese Brazilian
;Setup Wizard - Registration dialog
portuguese_brazilian.CustomFormCaption=Informações sobre o cliente
portuguese_brazilian.CustomFormDescription=Por favor digite suas informações
portuguese_brazilian.RegistrationInfo=Personalize sua cópia do Nero {#NeroMajorVersion} fornecendo seu nome e seu número serial.
portuguese_brazilian.RegistrationWelcome=Obrigado por registrar sua cópia do Nero.
portuguese_brazilian.RegistrationWelcomeCaption=Bem Vindo ao Nero
portuguese_brazilian.RegistrationCaption=Registro
portuguese_brazilian.NeroShopCaption=Sem o número serial?
portuguese_brazilian.NeroShop=Loja Online do Nero 
portuguese_brazilian.NeroShopURL=http://www.nero.com/ptb/catalog.html
portuguese_brazilian.RegistrationName=Nome:
portuguese_brazilian.RegistrationOrg=Empresa:
portuguese_brazilian.RegistrationSerial=Número serial:
;Filetype descriptions - Nero CoverDesigner
portuguese_brazilian.CDC_Description=Documentos do Nero CoverDesigner
portuguese_brazilian.NCD_Description=Documentos do Nero CoverDesigne
portuguese_brazilian.NCT_Description=Modelos do Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
portuguese_brazilian.CUE_Description=Arquivos de Imagem
portuguese_brazilian.IMG_Description=Arquivos de Imagem
portuguese_brazilian.ISO_Description=Arquivos de Imagem
portuguese_brazilian.NAB_Description=Compilação de CD-ROM (Audiobook)
portuguese_brazilian.NHF_Description=Compilação de CD HFS
portuguese_brazilian.NHV_Description=Compilação de Vídeo HD-BURN
portuguese_brazilian.NMD_Description=Compilação de miniDVD
portuguese_brazilian.NR3_Description=Compilação de CD-ROM (MP3)
portuguese_brazilian.NR4_Description=Compilação de CD-ROM (AAC)
portuguese_brazilian.NRA_Description=Compilação de CD de Áudio
portuguese_brazilian.NRB_Description=Compilação de CD-ROM (Inicialização)
portuguese_brazilian.NRC_Description=Compilação de CD-ROM (UDF/ISO)
portuguese_brazilian.NRD_Description=Compilação de DVD de Vídeo
portuguese_brazilian.NRE_Description=Compilação de CD Extra
portuguese_brazilian.NRG_Description=Arquivos de Imagem
portuguese_brazilian.NRH_Description=Compilação de CD-ROM (Híbrido)
portuguese_brazilian.NRI_Description=Compilação de CD-ROM (ISO)
portuguese_brazilian.NRJ_Description=Compilação de JukeBox
portuguese_brazilian.NRM_Description=Compilação de CD Mixed Mode
portuguese_brazilian.NRS_Description=Compilação de CD-ROM (Inicialização EFI)
portuguese_brazilian.NRU_Description=Compilação de CD-ROM (UDF)
portuguese_brazilian.NRV_Description=Compilação de CD de Vídeo
portuguese_brazilian.NRW_Description=Compilação de CD-ROM (WMA)
portuguese_brazilian.NSD_Description=Compilação de CD de Super Vídeo
;Setup Component Description
portuguese_brazilian.Comp_Nero_lang=Idioma
portuguese_brazilian.Comp_Nero_lang_english=Inglês
portuguese_brazilian.Comp_Nero_lang_portuguese_brazilian=Português Brasileiro
portuguese_brazilian.Comp_Nero_lang_portuguese=Português
portuguese_brazilian.Comp_Nero_Sounds=Sons
;Setup register filetypes
portuguese_brazilian.FileAssociations=Registrar arquivos do tipo:
portuguese_brazilian.AssocImageFileExt=Associar o Nero aos Arquivos de Imagem Padrão
