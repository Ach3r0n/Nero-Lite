[Languages]
Name: portuguese; MessagesFile: compiler:Languages\portuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_PTG.rtf
Name: portuguese_brazilian; MessagesFile: compiler:Languages\brazilianportuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_PTG.rtf

[Files]
;Portuguese
Source: Custom\Help\NeroControlCenter_PTG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('portuguese'); BeforeInstall: AddLanguage('PTG'); Flags: ignoreversion replacesameversion
Source: Bin\[FILELOCATION]Core\NeroPTG.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Custom\Bin\[FILELOCATION]Core\NeroPTG.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPTG.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroBurningRom_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-PTG.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroCoverDesigner_PTG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-PTG.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroWaveEditor_PTG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_PTG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_PTG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
#endif

;Portuguese Brazilian
Source: Custom\Help\NeroControlCenter_PTB.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('portuguese_brazilian'); BeforeInstall: AddLanguage('PTB'); Flags: ignoreversion replacesameversion
Source: Bin\[FILELOCATION]Core\NeroPTB.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Bin\[FILELOCATION]Core\NeroPTB.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPTB.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroBurningRom_PTB.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-PTB.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroCoverDesigner_PTB.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-PTB.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroWaveEditor_PTG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_PTG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_PTG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Portuguese
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PTG; Languages: portuguese; Flags: uninsdeletekey
;Portuguese Brazilian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PTB; Languages: portuguese_brazilian; Flags: uninsdeletekey

[Components]
;Portuguese
Name: nero_lang\portuguese; Description: {cm:Comp_Nero_lang_portuguese}; Languages: not portuguese
;Portuguese Brazilian
Name: nero_lang\portuguese_brazilian; Description: {cm:Comp_Nero_lang_portuguese_brazilian}; Languages: not portuguese_brazilian

[CustomMessages]
;Portuguese Brazilian
;Setup Wizard - Registration dialog
portuguese_brazilian.CustomFormCaption=Informa��es sobre o cliente
portuguese_brazilian.CustomFormDescription=Por favor digite suas informa��es
portuguese_brazilian.RegistrationInfo=Personalize sua c�pia do Nero 8 fornecendo seu nome e seu n�mero serial.
portuguese_brazilian.RegistrationWelcome=Obrigado por registrar sua c�pia do Nero.
portuguese_brazilian.RegistrationWelcomeCaption=Bem Vindo ao Nero
portuguese_brazilian.RegistrationCaption=Registro
portuguese_brazilian.NeroShopCaption=Sem o n�mero serial?
portuguese_brazilian.NeroShop=Loja Online do Nero�
portuguese_brazilian.NeroShopURL=http://www.nero.com/ptb/catalog.html
portuguese_brazilian.RegistrationName=Nome:
portuguese_brazilian.RegistrationOrg=Empresa:
portuguese_brazilian.RegistrationSerial=N�mero serial:
;Filetype descriptions - Nero CoverDesigner
portuguese_brazilian.CDC_Description=Documentos do Nero CoverDesigner
portuguese_brazilian.NCD_Description=Documentos do Nero CoverDesigne
portuguese_brazilian.NCT_Description=Modelos do Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
portuguese_brazilian.CUE_Description=Arquivos de Imagem
portuguese_brazilian.IMG_Description=Arquivos de Imagem
portuguese_brazilian.ISO_Description=Arquivos de Imagem
portuguese_brazilian.NAB_Description=Compila��o de CD-ROM (Audiobook)
portuguese_brazilian.NHF_Description=Compila��o de CD HFS
portuguese_brazilian.NHV_Description=Compila��o de V�deo HD-BURN
portuguese_brazilian.NMD_Description=Compila��o de miniDVD
portuguese_brazilian.NR3_Description=Compila��o de CD-ROM (MP3)
portuguese_brazilian.NR4_Description=Compila��o de CD-ROM (AAC)
portuguese_brazilian.NRA_Description=Compila��o de CD de �udio
portuguese_brazilian.NRB_Description=Compila��o de CD-ROM (Inicializa��o)
portuguese_brazilian.NRC_Description=Compila��o de CD-ROM (UDF/ISO)
portuguese_brazilian.NRD_Description=Compila��o de DVD de V�deo
portuguese_brazilian.NRE_Description=Compila��o de CD Extra
portuguese_brazilian.NRG_Description=Arquivos de Imagem
portuguese_brazilian.NRH_Description=Compila��o de CD-ROM (H�brido)
portuguese_brazilian.NRI_Description=Compila��o de CD-ROM (ISO)
portuguese_brazilian.NRJ_Description=Compila��o de JukeBox
portuguese_brazilian.NRM_Description=Compila��o de CD Mixed Mode
portuguese_brazilian.NRS_Description=Compila��o de CD-ROM (Inicializa��o EFI)
portuguese_brazilian.NRU_Description=Compila��o de CD-ROM (UDF)
portuguese_brazilian.NRV_Description=Compila��o de CD de V�deo
portuguese_brazilian.NRW_Description=Compila��o de CD-ROM (WMA)
portuguese_brazilian.NSD_Description=Compila��o de CD de Super V�deo
;Setup Component Description
portuguese_brazilian.Comp_Nero_lang=Idioma
portuguese_brazilian.Comp_Nero_lang_english=Ingl�s
portuguese_brazilian.Comp_Nero_lang_portuguese_brazilian=Portugu�s Brasileiro
portuguese_brazilian.Comp_Nero_lang_portuguese=Portugu�s
portuguese_brazilian.Comp_Nero_Sounds=Sons
;Setup register filetypes
portuguese_brazilian.FileAssociations=Registrar arquivos do tipo:
portuguese_brazilian.AssocImageFileExt=Associar o Nero aos Arquivos de Imagem Padr�o
