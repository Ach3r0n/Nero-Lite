[Languages]
#ifdef Nero8
Name: spanish; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_esp.rtf
Name: spanish_latin_american; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_esm.rtf
#endif
#ifdef Nero7
Name: spanish; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_esp.rtf
Name: spanish_latin_american; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_esm.rtf
#endif

[LangOptions]
spanish_latin_american.LanguageName=Espa<00F1>ol (Latino Americano)

[Files]
;Spanish
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ESP.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('spanish'); BeforeInstall: AddLanguage('ESP');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ESP.chm; DestName: NeroProductSetup_ESP.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('spanish'); BeforeInstall: AddLanguage('ESP');
#endif
Source: Bin\[FILELOCATION]Core\NeroESP.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish')
Source: Custom\Bin\[FILELOCATION]Core\NeroESP.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResESP.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish')
Source: Custom\Help\NeroBurningRom_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish');
Source: Custom\Help\NeroExpress_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-ESP.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish')
Source: Custom\Help\NeroCoverDesigner_ESP.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-ESP.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish')
Source: Custom\Help\NeroWaveEditor_ESP.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish');
Source: Custom\Help\NeroBurnRights_ESP.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('spanish');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ESP.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('spanish');
	#endif
#endif

;Spanish Latin American
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ESP.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('spanish_latin_american'); BeforeInstall: AddLanguage('ESL');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ESP.chm; DestName: NeroProductSetup_ESP.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('spanish_latin_american'); BeforeInstall: AddLanguage('ESL');
#endif
Source: Bin\[FILELOCATION]Core\NeroESL.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Bin\[FILELOCATION]Core\NeroESL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResESL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Help\NeroBurningRom_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american');
Source: Custom\Help\NeroExpress_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-ESL.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Help\NeroCoverDesigner_ESP.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish_latin_american');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-ESL.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Help\NeroWaveEditor_ESP.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish_latin_american');
Source: Custom\Help\NeroBurnRights_ESP.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('spanish_latin_american');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ESP.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('spanish_latin_american');
	#endif
#endif

[Registry]
;Spanish
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ESP; Languages: spanish; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: ESP; Components: nero_core; Languages: spanish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: ESP; Languages: spanish; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: ESP; Components: nero_toolkit\nero_cdspeed; Languages: spanish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: ESP; Components: nero_toolkit\nero_drivespeed; Languages: spanish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: ESP; Components: nero_toolkit\nero_infotool; Languages: spanish; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: ESP; Components: nero_waveedit; Languages: spanish; Flags: uninsdeletekey
	#endif
#endif

;Spanish Latin American
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ESL; Languages: spanish_latin_american; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: ESL; Components: nero_core; Languages: spanish_latin_american; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: ESL; Languages: spanish_latin_american; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: ESL; Components: nero_toolkit\nero_cdspeed; Languages: spanish_latin_american; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: ESL; Components: nero_toolkit\nero_drivespeed; Languages: spanish_latin_american; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: ESL; Components: nero_toolkit\nero_infotool; Languages: spanish_latin_american; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: ESL; Components: nero_waveedit; Languages: spanish_latin_american; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Spanish
Name: nero_lang\spanish; Description: {cm:Comp_Nero_lang_spanish}; Languages: not spanish
;Spanish Latin American
Name: nero_lang\spanish_latin_american; Description: {cm:Comp_Nero_lang_spanish_latin_american}; Languages: not spanish_latin_american

[CustomMessages]
;Spanish
;Setup Wizard - Registration dialog
spanish.CustomFormCaption=Información de Cliente
spanish.CustomFormDescription=Por favor introduzca sus datos.
spanish.RegistrationInfo=Por favor personalice su copia de Nero {#NeroMajorVersion} introduciendo su nombre y%nsu número de serie a continuación.
spanish.RegistrationWelcome=Gracias por comprar su copia de Nero.
spanish.RegistrationWelcomeCaption=Bienvenido a Nero
spanish.RegistrationCaption=Registro
spanish.NeroShopCaption=No tiene número de serie?
spanish.NeroShop=Tienda Online de Nero 
spanish.NeroShopURL=http://www.nero.com/esp/catalog.html
spanish_latin_american.NeroShopURL=http://www.nero.com/esl/catalog.html
spanish.RegistrationName=Nombre:
spanish.RegistrationOrg=Organización:
spanish.RegistrationSerial=Número de Serie:
;Filetype descriptions - Nero CoverDesigner
spanish.CDC_Description=Nero Cover Designer Documento
spanish.NCD_Description=Nero Cover Designer Documento
spanish.NCT_Description=Nero Cover Designer Plantilla
;Filetype descriptions - Nero Burning Rom
spanish.CUE_Description=Archivos de imagen
spanish.IMG_Description=Archivos de imagen
spanish.ISO_Description=Archivos de imagen
spanish.NAB_Description=Compilación de CD Audiobook
spanish.NHF_Description=Compilación de CD HFS
spanish.NHV_Description=Compilación de HD-BURN de Vídeo
spanish.NMD_Description=Compilación de MiniDVD
spanish.NR3_Description=Compilación de CD-ROM (MP3)
spanish.NR4_Description=Compilación de CD-ROM (AAC)
spanish.NRA_Description=Compilación de CD de audio
spanish.NRB_Description=Compilación de CD-ROM (Arranque)
spanish.NRC_Description=Compilación de CD-ROM (UDF/ISO)
spanish.NRD_Description=Compilación de DVD-Vídeo
spanish.NRE_Description=Compilación de CD EXTRA
spanish.NRG_Description=Compilación de CD
spanish.NRH_Description=Compilación de CD-ROM (Híbrida)
spanish.NRI_Description=Compilación de CD-ROM (ISO)
spanish.NRJ_Description=Compilación JukeBox
spanish.NRM_Description=Compilación de CD en modo mixto
spanish.NRS_Description=Compilación de CD-ROM (Arranque EFI)
spanish.NRU_Description=Compilación de CD-ROM (UDF)
spanish.NRV_Description=Compilación de vídeo CD
spanish.NRW_Description=Compilación de CD-ROM (WMA)
spanish.NSD_Description=Compilación de CD de supervídeo
;Setup Component Description
spanish.Comp_Nero_lang=Idiomas
spanish.Comp_Nero_lang_english=Inglés
spanish.Comp_Nero_lang_spanish=Español
spanish.Comp_Nero_lang_spanish_latin_american=Español Latino Americano
spanish.Comp_Nero_Sounds=Sonidos
;Setup register filetypes
spanish.FileAssociations=Asociación de archivos:
spanish.AssocImageFileExt=Asociar Nero con los formatos de Imagen de CD más comunes
