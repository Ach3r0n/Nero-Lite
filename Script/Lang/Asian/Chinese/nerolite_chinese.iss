[Languages]
#ifdef Nero8
Name: chinese_simpl; MessagesFile: compiler:Languages\ChineseSimpl.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_chs.rtf
Name: chinese_trad; MessagesFile: compiler:Languages\ChineseTrad.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_cht.rtf
#endif
#ifdef Nero7
Name: chinese_simpl; MessagesFile: compiler:Languages\ChineseSimpl.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_chs.rtf
Name: chinese_trad; MessagesFile: compiler:Languages\ChineseTrad.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_cht.rtf
#endif

[Files]
;Chinese (Simpl.)
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_CHS.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('chinese_simpl'); BeforeInstall: AddLanguage('CHS');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_CHS.chm; DestName: NeroProductSetup_CHS.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('chinese_simpl'); BeforeInstall: AddLanguage('CHS');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroCHS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl')
Source: Bin\[FILELOCATION]Core\NeroCHS.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResCHS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl')
Source: Custom\Help\NeroBurningRom_CHS.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl');
Source: Custom\Help\NeroExpress_CHS.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-CHS.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_simpl')
Source: Custom\Help\NeroCoverDesigner_CHS.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_simpl');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-CHS.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_simpl')
Source: Custom\Help\NeroWaveEditor_CHS.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_simpl');
Source: Custom\Help\NeroBurnRights_CHS.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('chinese_simpl');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_CHS.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('chinese_simpl');
	#endif
#endif

;Chinese (Trad.)
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_CHT.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('chinese_trad'); BeforeInstall: AddLanguage('CHT');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_CHT.chm; DestName: NeroProductSetup_CHT.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('chinese_trad'); BeforeInstall: AddLanguage('CHT');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroCHT.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad')
Source: Bin\[FILELOCATION]Core\NeroCHT.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResCHT.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad')
Source: Custom\Help\NeroBurningRom_CHT.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad');
Source: Custom\Help\NeroExpress_CHT.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-CHT.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_trad')
Source: Custom\Help\NeroCoverDesigner_CHT.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_trad');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-CHT.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_trad')
Source: Custom\Help\NeroWaveEditor_CHT.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_trad');
Source: Custom\Help\NeroBurnRights_CHT.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('chinese_trad');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_CHT.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('chinese_trad');
	#endif
#endif

[Registry]
;Chinese (Simpl.)
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CHS; Languages: chinese_simpl; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: CHS; Components: nero_core; Languages: chinese_simpl; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: CHS; Languages: chinese_simpl; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: CHS; Components: nero_toolkit\nero_cdspeed; Languages: chinese_simpl; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: CHS; Components: nero_toolkit\nero_drivespeed; Languages: chinese_simpl; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: CHS; Components: nero_toolkit\nero_infotool; Languages: chinese_simpl; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: CHS; Components: nero_waveedit; Languages: chinese_simpl; Flags: uninsdeletekey
	#endif
#endif

;Chinese (Trad.)
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CHT; Languages: chinese_trad; Flags: uninsdeletekey
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CHT; Languages: chinese_trad; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: CHT; Components: nero_core; Languages: chinese_trad; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: CHT; Languages: chinese_trad; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: CHT; Components: nero_toolkit\nero_cdspeed; Languages: chinese_trad; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: CHT; Components: nero_toolkit\nero_drivespeed; Languages: chinese_trad; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: CHT; Components: nero_toolkit\nero_infotool; Languages: chinese_trad; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: CHT; Components: nero_waveedit; Languages: chinese_trad; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Chinese (Simpl.)
Name: nero_lang\chinese_simpl; Description: {cm:Comp_Nero_lang_chinese_simpl}; Languages: not chinese_simpl
;Chinese (Trad.)
Name: nero_lang\chinese_trad; Description: {cm:Comp_Nero_lang_chinese_trad}; Languages: not Chinese_trad

[CustomMessages]
;Chinese (Simpl.)
;Setup Wizard - Registration dialog
chinese_simpl.CustomFormCaption=ÓÃ»§ÐÅÏ¢
chinese_simpl.CustomFormDescription=ÇëÊäÈëÄúµÄÐÅÏ¢¡£
chinese_simpl.RegistrationInfo=Çë¸öÐÔ»¯ÄúµÄ Nero {#NeroMajorVersion} ¸±±¾£¬·½·¨ÊÇÊäÈëÄúµÄÐÕÃûºÍÐòÁÐºÅ¡£
chinese_simpl.RegistrationWelcome=¸ÐÐ»Äú¹ºÂò Nero ¸±±¾¡£
chinese_simpl.RegistrationWelcomeCaption=»¶Ó­Ê¹ÓÃ Nero
chinese_simpl.RegistrationCaption=×¢²á
chinese_simpl.NeroShopCaption=Ã»ÓÐÐòÁÐºÅÔõÃ´°ì£¿
chinese_simpl.NeroShop=Nero ÔÚÏßÉÌµê 
chinese_simpl.NeroShopURL=http://www.nero.com/chs/catalog.html
chinese_simpl.RegistrationName=Ãû×Ö:
chinese_simpl.RegistrationOrg=¹«Ë¾:
chinese_simpl.RegistrationSerial=ÐòÁÐºÅ:
;Filetype descriptions - Nero CoverDesigner
chinese_simpl.CDC_Description=Nero CD·âÃæÎÄµµ
chinese_simpl.NCD_Description=Nero CD·âÃæÎÄµµ
chinese_simpl.NCT_Description=Nero CD·âÃæÄ£°å
;Filetype descriptions - Nero Burning Rom
chinese_simpl.CUE_Description=Ó³ÏñÎÄ¼þ
chinese_simpl.IMG_Description=Ó³ÏñÎÄ¼þ
chinese_simpl.ISO_Description=Ó³ÏñÎÄ¼þ
chinese_simpl.NAB_Description=ÓÐÉù¶ÁÎï CD ±àÒë
chinese_simpl.NHF_Description=HFS ¹âÅÌ±àÒë
chinese_simpl.NHV_Description=HD-BURN ÊÓÆµ±àÒë
chinese_simpl.NMD_Description=miniDVD ±àÒë
chinese_simpl.NR3_Description=MP3 CD ±àÒë
chinese_simpl.NR4_Description=AAC CD ±àÒë
chinese_simpl.NRA_Description=ÒôÀÖ CD ±àÒë
chinese_simpl.NRB_Description=¿ÉÒýµ¼ CD ±àÒë
chinese_simpl.NRC_Description=CD ±àÒë(UDF/ISO)
chinese_simpl.NRD_Description=DVD ÊÓÆµ±àÒë
chinese_simpl.NRE_Description=CD-Extra ±àÒë
chinese_simpl.NRG_Description=Nero Ó³ÏñÎÄ¼þ
chinese_simpl.NRH_Description=Hybird CD ±àÒë
chinese_simpl.NRI_Description=CD ±àÒë(ISO)
chinese_simpl.NRJ_Description=JukeBox ±àÒë
chinese_simpl.NRM_Description=»ìºÏÄ£Ê½ CD ±àÒë
chinese_simpl.NRS_Description=EFI ¿ÉÒýµ¼ CD ±àÒë
chinese_simpl.NRU_Description=CD ±àÒë(UDF)
chinese_simpl.NRV_Description=VCD ±àÒë
chinese_simpl.NRW_Description=WMA CD ±àÒë
chinese_simpl.NSD_Description=³¬¼¶ VCD ±àÒë
;Setup Component Description
chinese_simpl.Comp_Nero_lang=ÓïÑÔ
chinese_simpl.Comp_Nero_lang_english=Ó¢ÎÄ
chinese_simpl.Comp_Nero_lang_chinese_simpl=¼òÌåÖÐÎÄ
chinese_simpl.Comp_Nero_Sounds=ÉùÒô
;Setup register filetypes
chinese_simpl.FileAssociations=×¢²áÎÄ¼þÀàÐÍ:
chinese_simpl.AssocImageFileExt=½«±ê×¼µÄÓ³ÏñÎÄ¼þ¹ØÁªµ½ Nero

;Chinese (Trad.)
;Setup Wizard - Registration dialog
chinese_trad.CustomFormCaption=«È¤á¸ê°T
chinese_trad.CustomFormDescription=½Ð¿é¤J±zªºµù¥U¸ê°T¡C
chinese_trad.RegistrationInfo=½Ð¿é¤J±zªº¨Ï¥ÎªÌ¦WºÙ©M±zªº Nero {#NeroMajorVersion} §Ç¸¹¡C
chinese_trad.RegistrationWelcome=·PÁÂ±zÁÊ¶R Nero¡C
chinese_trad.RegistrationWelcomeCaption=Åwªï¨Ï¥Î Nero
chinese_trad.RegistrationCaption=µù¥U
chinese_trad.NeroShopCaption=¨S¦³µù¥U§Ç¸¹¶Ü?
chinese_trad.NeroShop=Nero ½u¤W°Ó©± (­^¤å) 
chinese_trad.NeroShopURL=http://www.nero.com/cht/catalog.html
chinese_trad.RegistrationName=¨Ï¥ÎªÌ¦WºÙ:
chinese_trad.RegistrationOrg=²ÕÂ´:
chinese_trad.RegistrationSerial=§Ç¸¹:
;Filetype descriptions - Nero CoverDesigner
chinese_trad.CDC_Description=Nero CoverDesigner ¤å¥ó
chinese_trad.NCD_Description=Nero CoverDesigner ¤å¥ó
chinese_trad.NCT_Description=Nero CoverDesigner ½d¥»
;Filetype descriptions - Nero Burning Rom
chinese_trad.CUE_Description=¥úºÐ¬M¹³ÀÉ®×
chinese_trad.IMG_Description=¥úºÐ¬M¹³ÀÉ®×
chinese_trad.ISO_Description=¥úºÐ¬M¹³ÀÉ®×
chinese_trad.NAB_Description=Audiobook CD-ROM ½s¿è
chinese_trad.NHF_Description=HFS-CD ½s¿è¾¹
chinese_trad.NHV_Description=HD-BURN-Video ½s¿è
chinese_trad.NMD_Description=MiniDVD ½s¿è
chinese_trad.NR3_Description=CD-ROM ½s¿è (MP3)
chinese_trad.NR4_Description=CD-ROM ½s¿è (AAC)
chinese_trad.NRA_Description=Audio-CD ½s¿è
chinese_trad.NRB_Description=CD-ROM ½s¿è (Boot)
chinese_trad.NRC_Description=CD-ROM ½s¿è (UDF/ISO)
chinese_trad.NRD_Description=DVD-Video ½s¿è
chinese_trad.NRE_Description=CD Extra ½s¿è
chinese_trad.NRG_Description=¥úºÐ¬M¹³ÀÉ®×
chinese_trad.NRH_Description=Hybrid CD-ROM ½s¿è
chinese_trad.NRI_Description=CD-ROM ½s¿è (ISO)
chinese_trad.NRJ_Description=JukeBox ½s¿è
chinese_trad.NRM_Description=²V¦X¼Ò¦¡ CD ½s¿è
chinese_trad.NRS_Description=CD-ROM (EFI Boot) ½s¿è
chinese_trad.NRU_Description=CD-ROM ½s¿è (UDF)
chinese_trad.NRV_Description=¼v¹³ CD ½s¿è
chinese_trad.NRW_Description=WMA CD-ROM ½s¿è
chinese_trad.NSD_Description=Super Video CD ½s¿è
;Setup Component Description
chinese_trad.Comp_Nero_lang=»y¨¥
chinese_trad.Comp_Nero_lang_english=­^¤å
chinese_trad.Comp_Nero_lang_chinese_trad=¤¤¤å (ÁcÅé)
chinese_trad.Comp_Nero_Sounds=­µ®Ä
;Setup register filetypes
chinese_trad.FileAssociations=µù¥UÀÉ®×ÃöÁp:
chinese_trad.AssocImageFileExt=±N¥úºÐ¬M¹³ÀÉ©M Nero ÃöÁp¡C
