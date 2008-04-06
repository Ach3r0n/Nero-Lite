 
[Languages]
Name: chinese_simpl; MessagesFile: compiler:Languages\chinesesimpl.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_chs.rtf
Name: chinese_trad; MessagesFile: compiler:Languages\chinesetrad.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_cht.rtf

[Files]
;Chinese (Simpl.)
Source: Custom\Help\NeroControlCenter_CHS.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('chinese_simpl'); BeforeInstall: AddLanguage('CHS'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroCHS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl')
Source: Bin\[FILELOCATION]Core\NeroCHS.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResCHS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl')
Source: Custom\Help\NeroBurningRom_CHS.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_CHS.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_simpl'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-CHS.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_simpl')
Source: Custom\Help\NeroCoverDesigner_CHS.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_simpl'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-CHS.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_simpl')
Source: Custom\Help\NeroWaveEditor_CHS.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_simpl'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_CHS.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('chinese_simpl'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_CHS.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('chinese_simpl'); Flags: ignoreversion replacesameversion
#endif
;Chinese (Trad.)
Source: Custom\Help\NeroControlCenter_CHT.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('chinese_trad'); BeforeInstall: AddLanguage('CHT'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroCHT.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad')
Source: Bin\[FILELOCATION]Core\NeroCHT.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResCHT.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad')
Source: Custom\Help\NeroBurningRom_CHT.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_CHT.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('chinese_trad'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-CHT.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_trad')
Source: Custom\Help\NeroCoverDesigner_CHT.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('chinese_trad'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-CHT.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_trad')
Source: Custom\Help\NeroWaveEditor_CHT.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('chinese_trad'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_CHT.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('chinese_trad'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_CHT.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('chinese_trad'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Chinese (Simpl.)
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CHS; Languages: chinese_simpl; Flags: uninsdeletekey
;Chinese (Trad.)
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CHT; Languages: chinese_trad; Flags: uninsdeletekey

[Components]
;Chinese (Simpl.)
Name: nero_lang\chinese_simpl; Description: {cm:Comp_Nero_lang_chinese_simpl}; Languages: not chinese_simpl
;Chinese (Trad.)
Name: nero_lang\chinese_trad; Description: {cm:Comp_Nero_lang_chinese_trad}; Languages: not Chinese_trad

[CustomMessages]
;Chinese (Simpl.)
;Setup Wizard - Registration dialog
chinese_simpl.CustomFormCaption=ÓÃ»§ĞÅÏ¢
chinese_simpl.CustomFormDescription=ÇëÊäÈëÄúµÄĞÅÏ¢¡£
chinese_simpl.RegistrationInfo=Çë¸öĞÔ»¯ÄúµÄ Nero 8 ¸±±¾£¬·½·¨ÊÇÊäÈëÄúµÄĞÕÃûºÍĞòÁĞºÅ¡£
chinese_simpl.RegistrationWelcome=¸ĞĞ»Äú¹ºÂò Nero ¸±±¾¡£
chinese_simpl.RegistrationWelcomeCaption=»¶Ó­Ê¹ÓÃ Nero
chinese_simpl.RegistrationCaption=×¢²á
chinese_simpl.NeroShopCaption=Ã»ÓĞĞòÁĞºÅÔõÃ´°ì£¿
chinese_simpl.NeroShop=Nero ÔÚÏßÉÌµê 
chinese_simpl.NeroShopURL=http://www.nero.com/chs/catalog.html
chinese_simpl.RegistrationName=Ãû×Ö:
chinese_simpl.RegistrationOrg=¹«Ë¾:
chinese_simpl.RegistrationSerial=ĞòÁĞºÅ:
;Filetype descriptions - Nero CoverDesigner
chinese_simpl.CDC_Description=Nero CD·âÃæÎÄµµ
chinese_simpl.NCD_Description=Nero CD·âÃæÎÄµµ
chinese_simpl.NCT_Description=Nero CD·âÃæÄ£°å
;Filetype descriptions - Nero Burning Rom
chinese_simpl.CUE_Description=Ó³ÏñÎÄ¼ş
chinese_simpl.IMG_Description=Ó³ÏñÎÄ¼ş
chinese_simpl.ISO_Description=Ó³ÏñÎÄ¼ş
chinese_simpl.NAB_Description=ÓĞÉù¶ÁÎï CD ±àÒë
chinese_simpl.NHF_Description=HFS ¹âÅÌ±àÒë
chinese_simpl.NHV_Description=HD-BURN ÊÓÆµ±àÒë
chinese_simpl.NMD_Description=miniDVD ±àÒë
chinese_simpl.NR3_Description=MP3 CD ±àÒë
chinese_simpl.NR4_Description=AAC CD ±àÒë
chinese_simpl.NRA_Description=ÒôÀÖ CD ±àÒë
chinese_simpl.NRB_Description=¿ÉÒıµ¼ CD ±àÒë
chinese_simpl.NRC_Description=CD ±àÒë(UDF/ISO)
chinese_simpl.NRD_Description=DVD ÊÓÆµ±àÒë
chinese_simpl.NRE_Description=CD-Extra ±àÒë
chinese_simpl.NRG_Description=Nero Ó³ÏñÎÄ¼ş
chinese_simpl.NRH_Description=Hybird CD ±àÒë
chinese_simpl.NRI_Description=CD ±àÒë(ISO)
chinese_simpl.NRJ_Description=JukeBox ±àÒë
chinese_simpl.NRM_Description=»ìºÏÄ£Ê½ CD ±àÒë
chinese_simpl.NRS_Description=EFI ¿ÉÒıµ¼ CD ±àÒë
chinese_simpl.NRU_Description=CD ±àÒë(UDF)
chinese_simpl.NRV_Description=VCD ±àÒë
chinese_simpl.NRW_Description=WMA CD ±àÒë
chinese_simpl.NSD_Description=³¬¼¶ VCD ±àÒë
;Setup Component Description
chinese_simpl.Comp_Nero_lang=ÓïÑÔ
chinese_simpl.Comp_Nero_lang_english=Ó¢ÎÄ
chinese_simpl.Comp_Nero_lang_chinese_simpl=¼òÌåÖĞÎÄ
chinese_simpl.Comp_Nero_Sounds=ÉùÒô
;Setup register filetypes
chinese_simpl.FileAssociations=×¢²áÎÄ¼şÀàĞÍ:
chinese_simpl.AssocImageFileExt=½«±ê×¼µÄÓ³ÏñÎÄ¼ş¹ØÁªµ½ Nero
;Chinese (Trad.)
;Setup Wizard - Registration dialog
chinese_trad.CustomFormCaption=«È¤á¸ê°T
chinese_trad.CustomFormDescription=½Ğ¿é¤J±zªºµù¥U¸ê°T¡C
chinese_trad.RegistrationInfo=½Ğ¿é¤J±zªº¨Ï¥ÎªÌ¦WºÙ©M±zªº Nero 7 §Ç¸¹¡C
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
chinese_trad.CUE_Description=¥úºĞ¬M¹³ÀÉ®×
chinese_trad.IMG_Description=¥úºĞ¬M¹³ÀÉ®×
chinese_trad.ISO_Description=¥úºĞ¬M¹³ÀÉ®×
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
chinese_trad.NRG_Description=¥úºĞ¬M¹³ÀÉ®×
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
chinese_trad.AssocImageFileExt=±N¥úºĞ¬M¹³ÀÉ©M Nero ÃöÁp¡C
[Languages]
Name: japanese; MessagesFile: compiler:Languages\japanese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_jpn.rtf

[Files]
;Nero Language Support
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('japanese'); BeforeInstall: AddLanguage('JPN'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroJPN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('japanese')
Source: Bin\[FILELOCATION]Core\NeroJPN.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('japanese')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResJPN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('japanese')
Source: Custom\Help\NeroBurningRom_JPN.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('japanese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_JPN.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('japanese'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-JPN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('japanese')
Source: Custom\Help\NeroCoverDesigner_JPN.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('japanese'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-JPN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('japanese')
Source: Custom\Help\NeroWaveEditor_JPN.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('japanese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_JPN.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('japanese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_JPN.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('japanese'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Japanese
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: JPN; Languages: japanese; Flags: uninsdeletekey

[Components]
;Japanese
Name: nero_lang\japanese; Description: {cm:Comp_Nero_lang_japanese}; Languages: not japanese

[CustomMessages]
;Japanese
;Setup Wizard - Registration dialog
japanese.CustomFormCaption=‚¨‹q‚³‚ñ‚Ì“o˜^î•ñ
japanese.CustomFormDescription=“o˜^î•ñ‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢B
japanese.RegistrationInfo=‚¨–¼‘O‚ÆƒVƒŠƒAƒ‹ƒiƒ“ƒo[‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢B
japanese.RegistrationWelcome=Nero ‚Ì‚²w“ü‚ ‚è‚ª‚Æ‚¤‚²‚´‚¢‚Ü‚·B
japanese.RegistrationWelcomeCaption=Nero ‚Ö‚æ‚¤‚±‚»
japanese.RegistrationCaption=“o˜^
japanese.NeroShopCaption=ƒVƒŠƒAƒ‹ƒiƒ“ƒo[‚ğ‚¨‚¿‚Ü‚¹‚ñ‚©?
japanese.NeroShop=Nero ƒIƒ“ƒ‰ƒCƒ“ƒXƒgƒA[i‰pŒêj
japanese.NeroShopURL=http://www.nero.com/jpn/catalog.html
japanese.RegistrationName=‚¨–¼‘OF
japanese.RegistrationOrg=Š‘®F
japanese.RegistrationSerial=ƒVƒŠƒAƒ‹ƒiƒ“ƒo[
;Filetype descriptions - Nero CoverDesigner
japanese.CDC_Description=Nero CoverDesigner ƒtƒ@ƒCƒ‹
japanese.NCD_Description=Nero CoverDesigner ƒtƒ@ƒCƒ‹
japanese.NCT_Description=Nero CoverDesigner ƒTƒ“ƒvƒ‹ƒtƒ@ƒCƒ‹
;Filetype descriptions - Nero Burning Rom
japanese.CUE_Description=CD ƒCƒ[ƒWƒtƒ@ƒCƒ‹
japanese.IMG_Description=CD ƒCƒ[ƒWƒtƒ@ƒCƒ‹
japanese.ISO_Description=CD ƒCƒ[ƒWƒtƒ@ƒCƒ‹
japanese.NAB_Description=Audiobook CD-ROM •ÒW
japanese.NHF_Description=HFS-CD •ÒWƒc[ƒ‹
japanese.NHV_Description=HD-BURN-Video •ÒW
japanese.NMD_Description=MiniDVD •ÒW
japanese.NR3_Description=CD-ROM •ÒW (MP3)
japanese.NR4_Description=CD-ROM •ÒW (AAC)
japanese.NRA_Description=Audio-CD •ÒW
japanese.NRB_Description=CD-ROM •ÒW (Boot)
japanese.NRC_Description=CD-ROM •ÒW (UDF/ISO)
japanese.NRD_Description=DVD-Video •ÒW
japanese.NRE_Description=CD Extra •ÒW
japanese.NRG_Description=CD ƒCƒ[ƒWƒtƒ@ƒCƒ‹
japanese.NRH_Description=Hybrid CD-ROM •ÒW
japanese.NRI_Description=CD-ROM •ÒW (ISO)
japanese.NRJ_Description=JukeBox •ÒW
japanese.NRM_Description=ƒ~ƒbƒNƒXƒ‚[ƒh•ÒW
japanese.NRS_Description=CD-ROM (EFI Boot) •ÒW
japanese.NRU_Description=CD-ROM •ÒW (UDF)
japanese.NRV_Description=Video CD •ÒW
japanese.NRW_Description=WMA CD-ROM •ÒW
japanese.NSD_Description=Super Video CD •ÒW
;Setup Component Description
japanese.Comp_Nero_lang=Œ¾Œê
japanese.Comp_Nero_lang_english=‰pŒê
japanese.Comp_Nero_lang_japanese=“ú–{Œê
japanese.Comp_Nero_Sounds=ƒTƒEƒ“ƒh
;Setup register filetypes
japanese.FileAssociations=ƒtƒ@ƒCƒ‹‚ÌŠÖ˜A‚ğ•t‚«‚Ü‚·F
japanese.AssocImageFileExt=ƒCƒ[ƒWƒtƒ@ƒCƒ‹‚Æ Nero ‚ÌŠÖ˜AB
[Languages]
Name: korean; MessagesFile: compiler:Languages\korean.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_KOR.rtf

[Files]
;Korean
Source: Custom\Help\NeroControlCenter_KOR.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('korean'); BeforeInstall: AddLanguage('KOR'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroKOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Bin\[FILELOCATION]Core\NeroKOR.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResKOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Custom\Help\NeroBurningRom_KOR.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_KOR.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-KOR.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('korean')
Source: Custom\Help\NeroCoverDesigner_KOR.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-KOR.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('korean')
Source: Custom\Help\NeroWaveEditor_KOR.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_KOR.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_KOR.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Korean
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: KOR; Languages: korean; Flags: uninsdeletekey

[Components]
;Korean
Name: nero_lang\korean; Description: {cm:Comp_Nero_lang_korean}; Languages: not korean

[CustomMessages]
;Korean
;Setup Wizard - Registration dialog
korean.CustomFormCaption=Customer Information
korean.CustomFormDescription=Please enter your information.
korean.RegistrationInfo=Please personalize your copy of Nero 8 by entering your name and%nyour serial number.
korean.RegistrationWelcome=Thanks for purchasing your copy of Nero.
korean.RegistrationWelcomeCaption=Welcome to Nero
korean.RegistrationCaption=Registration
korean.NeroShopCaption=No Serial number?
korean.NeroShop=Nero Online Shop 
korean.NeroShopURL=http://www.nero.com/kor/catalog.html
korean.RegistrationName=Name:
korean.RegistrationOrg=Organization:
korean.RegistrationSerial=Serial number:
;Filetype descriptions - Nero CoverDesigner
korean.CDC_Description=Nero CoverDesigner Document
korean.NCD_Description=Nero CoverDesigner Document
korean.NCT_Description=Nero CoverDesigner Template
;Filetype descriptions - Nero Burning Rom
korean.CUE_Description=CD-Image file
korean.IMG_Description=CD-Image file
korean.ISO_Description=CD-Image file
korean.NAB_Description=Audiobook CD-ROM Compilation
korean.NHF_Description=HFS-CD Compilation
korean.NHV_Description=HD-BURN-Video Compilation
korean.NMD_Description=MiniDVD Compilation
korean.NR3_Description=CD-ROM Compilation (MP3)
korean.NR4_Description=CD-ROM Compilation (AAC)
korean.NRA_Description=Audio-CD Compilation
korean.NRB_Description=CD-ROM Compilation (Boot)
korean.NRC_Description=CD-ROM Compilation (UDF/ISO)
korean.NRD_Description=DVD-Video Compilation
korean.NRE_Description=CD Extra Compilation
korean.NRG_Description=CD-Image file
korean.NRH_Description=Hybrid CD-ROM Compilation
korean.NRI_Description=CD-ROM Compilation (ISO)
korean.NRJ_Description=JukeBox Compilation
korean.NRM_Description=Mixed-Mode-CD Compilation
korean.NRS_Description=CD-ROM Compilation (EFI Boot)
korean.NRU_Description=CD-ROM Compilation (UDF)
korean.NRV_Description=Video-CD Compilation
korean.NRW_Description=WMA CD-ROM Compilation
korean.NSD_Description=Super Video CD Compilation
[Languages]
Name: russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
;Russian
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('russian'); BeforeInstall: AddLanguage('RUS'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroRUS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Bin\[FILELOCATION]Core\NeroRUS.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResRUS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-RUS.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('russian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-RUS.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('russian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Russian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: RUS; Languages: russian; Flags: uninsdeletekey

[Components]
;Russian
Name: nero_lang\russian; Description: {cm:Comp_Nero_lang_russian}; Languages: not russian

[CustomMessages]
;Russian
;Setup Wizard - Registration dialog
russian.CustomFormCaption=Èíôîğìàöèÿ î ïîòğåáèòåëå
russian.CustomFormDescription=Ïîæàëóéñòà, ââåäèòå èíôîğìàöèş î ñåáå.
russian.RegistrationInfo=Ïåğñîíàëèçèğóéòå Âàøó êîïèş Nero 8 ââåäÿ ñâîå èìÿ è%nñâîé ñåğèéíûé íîìåğ.
russian.RegistrationWelcome=Ñïàñèáî çà ïğèîáğåòåíèå Âàøåé êîïèè  Nero.
russian.RegistrationWelcomeCaption=Äîáğî ïîæàëîâàòü â Nero
russian.RegistrationCaption=Ğåãèñòğàöèÿ
russian.NeroShopCaption=Áåç ñåğèéíîãî íîìåğà?
russian.NeroShop=Îíëàéí ìàãàçèí Nero 
russian.NeroShopURL=http://www.nero.com/ena/catalog.html
russian.RegistrationName=Èìÿ:
russian.RegistrationOrg=Îğãàíèçàöèÿ:
russian.RegistrationSerial=Ñåğèéíûé íîìåğ:
;Filetype descriptions - Nero CoverDesigner
russian.CDC_Description=Äîêóìåíò Nero CoverDesigner
russian.NCD_Description=Äîêóìåíò Nero CoverDesigner
russian.NCT_Description=Øàáëîí Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
russian.CUE_Description=Ôàéë îáğàçà CD
russian.IMG_Description=Ôàéë îáğàçà CD
russian.ISO_Description=Ôàéë îáğàçà CD
russian.NAB_Description=Êîìïèëÿöèÿ Audiobook CD-ROM
russian.NHF_Description=Êîìïèëÿöèÿ HFS-CD
russian.NHV_Description=HD-BURN-Video
russian.NMD_Description=Êîìïèëÿöèÿ MiniDVD
russian.NR3_Description=Êîìïèëÿöèÿ CD-ROM (MP3)
russian.NR4_Description=Êîìïèëÿöèÿ CD-ROM (AAC)
russian.NRA_Description=Êîìïèëÿöèÿ Audio-CD
russian.NRB_Description=Êîìïèëÿöèÿ CD-ROM (Boot)
russian.NRC_Description=Êîìïèëÿöèÿ CD-rom (UDF/ISO)
russian.NRD_Description=Êîìïèëÿöèÿ DVD-Video
russian.NRE_Description=Êîìïèëÿöèÿ CD Extra
russian.NRG_Description=Ôàéë îáğàçà CD
russian.NRH_Description=Êîìïèëÿöèÿ Hybrid CD-ROM
russian.NRI_Description=Êîìïèëÿöèÿ CD-ROM (ISO)
russian.NRJ_Description=Êîìïèëÿöèÿ JukeBox
russian.NRM_Description=Êîìïèëÿöèÿ Mixed-Mode-CD
russian.NRS_Description=Êîìïèëÿöèÿ CD-ROM (EFI Boot)
russian.NRU_Description=Êîìïèëÿöèÿ CD-ROM (UDF)
russian.NRV_Description=Êîìïèëÿöèÿ Video-CD
russian.NRW_Description=Êîìïèëÿöèÿ WMA CD-ROM
russian.NSD_Description=Êîìïèëÿöèÿ Super Video CD
;Setup Component Description
russian.Comp_Nero_lang=ßçûê
russian.Comp_Nero_lang_english=Àíãëèéñêèé
russian.Comp_Nero_lang_russian=Ğóññêèé
russian.Comp_Nero_Sounds=Çâóêè
;Setup register filetypes
russian.FileAssociations=Ğåãèñòğàöèÿ òèïîâ ôàéëîâ:
russian.AssocImageFileExt=Àññîöèèğîâàòü Nero ñî ñòàíäàğòíûìè ôàéëàìè îáğàçîâ CD
[Languages]
Name: thai; MessagesFile: compiler:Default.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[LangOptions]
thai.LanguageName=Thai
thai.LanguageID=$041E
thai.LanguageCodepage=874

[Files]
;Thai
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('thai'); BeforeInstall: AddLanguage('THA'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroTHA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('thai')
Source: Bin\[FILELOCATION]Core\NeroTHA.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('thai')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResTHA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('thai')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('thai'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('thai'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-THA.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('thai')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('thai'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-THA.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('thai')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('thai'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('thai'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('thai'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Thai
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: THA; Languages: thai; Flags: uninsdeletekey

[Components]
;Thai
Name: nero_lang\thai; Description: {cm:Comp_Nero_lang_thai}; Languages: not thai

[CustomMessages]
;Thai
;Setup Wizard - Registration dialog
thai.CustomFormCaption=¢éÍÁÙÅ¼Ùéãªé§Ò¹
thai.CustomFormDescription=¡ÃØ³Ò¡ÃÍ¡¢éÍÁÙÅ¢Í§¤Ø³
thai.RegistrationInfo=¡ÃØ³ÒÅ§·ĞàºÕÂ¹¼ÅÔµÀÑ³±ì´éÇÂª×èÍáÅĞËÁÒÂàÅ¢«ÕàÃÕÂÅ¢Í§·èÒ¹
thai.RegistrationWelcome=¢Íº¤Ø³·Õè¤Ø³Ê¹ÑºÊ¹Ø¹¼ÅÔµÀÑ³±ì¢Í§ Nero
thai.RegistrationWelcomeCaption=ÂÔ¹´ÕµéÍ¹ÃÑºÊÙè Nero
thai.RegistrationCaption=¡ÒÃÅ§·ĞàºÕÂ¹
thai.NeroShopCaption=¤Ø³ÁÕËÁÒÂàÅ¢«ÕàÃÕÂÅËÃ×ÍäÁè
thai.NeroShop=ÃéÒ¹¤éÒÍÍ¹äÅ¹ì¢Í§ Nero 
thai.NeroShopURL=http://www.nero.com/eng/catalog.html
thai.RegistrationName=ª×èÍ:
thai.RegistrationOrg=Ë¹èÇÂ§Ò¹:
thai.RegistrationSerial=ËÁÒÂàÅ¢«ÕàÃÕÂÅ:
;Filetype descriptions - Nero CoverDesigner
thai.CDC_Description=Nero CoverDesigner Document
thai.NCD_Description=Nero CoverDesigner Document
thai.NCT_Description=Nero CoverDesigner Template
;Filetype descriptions - Nero Burning Rom
thai.CUE_Description=CD-Image file
thai.IMG_Description=CD-Image file
thai.ISO_Description=CD-Image file
thai.NAB_Description=Audiobook CD-ROM Compilation
thai.NHF_Description=HFS-CD Compilation
thai.NHV_Description=HD-BURN-Video Compilation
thai.NMD_Description=MiniDVD Compilation
thai.NR3_Description=CD-ROM Compilation (MP3)
thai.NR4_Description=CD-ROM Compilation (AAC)
thai.NRA_Description=Audio-CD Compilation
thai.NRB_Description=CD-ROM Compilation (Boot)
thai.NRC_Description=CD-rom Compilation (UDF/ISO)
thai.NRD_Description=DVD-Video Compilation
thai.NRE_Description=CD Extra Compilation
thai.NRG_Description=CD-Image file
thai.NRH_Description=Hybrid CD-ROM Compilation
thai.NRI_Description=CD-ROM Compilation (ISO)
thai.NRJ_Description=JukeBox Compilation
thai.NRM_Description=Mixed-Mode-CD Compilation
thai.NRS_Description=CD-ROM (EFI Boot) Compilation
thai.NRU_Description=CD-ROM Compilation (UDF)
thai.NRV_Description=Video-CD Compilation
thai.NRW_Description=WMA CD-ROM Compilation
thai.NSD_Description=Super Video CD Compilation
;Setup Component Description
thai.Comp_Nero_lang=ÀÒÉÒ
thai.Comp_Nero_lang_english=ÀÒÉÒÍÑ§¡ÄÉ
thai.Comp_Nero_lang_thai=ÀÒÉÒä·Â
thai.Comp_Nero_Sounds=àÊÕÂ§
;Setup register filetypes
thai.FileAssociations=Å§·ĞàºÕÂ¹¹ÒÁÊ¡ØÅ¢Í§ä¿Åì:
thai.AssocImageFileExt=à»Ô´ä¿Åì«Õ´ÕÍÔÁàÍ¨´éÇÂ¹ÕâÃ
[Languages]
Name: turkish; MessagesFile: compiler:Languages\turkish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf

[Files]
;Turkish
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('turkish'); BeforeInstall: AddLanguage('TRK'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroTRK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish')
Source: Bin\[FILELOCATION]Core\NeroTRK.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResTRK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('turkish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-TRK.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('turkish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('turkish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-TRK.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('turkish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('turkish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('turkish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('turkish'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Turkish
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: TRK; Languages: Turkish; Flags: uninsdeletekey

[Components]
;Turkish
Name: nero_lang\turkish; Description: {cm:Comp_Nero_lang_Turkish}; Languages: not Turkish

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
