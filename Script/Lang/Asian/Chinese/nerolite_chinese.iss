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
chinese_simpl.CustomFormCaption=用户信息
chinese_simpl.CustomFormDescription=请输入您的信息。
chinese_simpl.RegistrationInfo=请个性化您的 Nero {#NeroMajorVersion} 副本，方法是输入您的姓名和序列号。
chinese_simpl.RegistrationWelcome=感谢您购买 Nero 副本。
chinese_simpl.RegistrationWelcomeCaption=欢迎使用 Nero
chinese_simpl.RegistrationCaption=注册
chinese_simpl.NeroShopCaption=没有序列号怎么办？
chinese_simpl.NeroShop=Nero 在线商店?
chinese_simpl.NeroShopURL=http://www.nero.com/chs/catalog.html
chinese_simpl.RegistrationName=名字:
chinese_simpl.RegistrationOrg=公司:
chinese_simpl.RegistrationSerial=序列号:
;Filetype descriptions - Nero CoverDesigner
chinese_simpl.CDC_Description=Nero CD封面文档
chinese_simpl.NCD_Description=Nero CD封面文档
chinese_simpl.NCT_Description=Nero CD封面模板
;Filetype descriptions - Nero Burning Rom
chinese_simpl.CUE_Description=映像文件
chinese_simpl.IMG_Description=映像文件
chinese_simpl.ISO_Description=映像文件
chinese_simpl.NAB_Description=有声读物 CD 编译
chinese_simpl.NHF_Description=HFS 光盘编译
chinese_simpl.NHV_Description=HD-BURN 视频编译
chinese_simpl.NMD_Description=miniDVD 编译
chinese_simpl.NR3_Description=MP3 CD 编译
chinese_simpl.NR4_Description=AAC CD 编译
chinese_simpl.NRA_Description=音乐 CD 编译
chinese_simpl.NRB_Description=可引导 CD 编译
chinese_simpl.NRC_Description=CD 编译(UDF/ISO)
chinese_simpl.NRD_Description=DVD 视频编译
chinese_simpl.NRE_Description=CD-Extra 编译
chinese_simpl.NRG_Description=Nero 映像文件
chinese_simpl.NRH_Description=Hybird CD 编译
chinese_simpl.NRI_Description=CD 编译(ISO)
chinese_simpl.NRJ_Description=JukeBox 编译
chinese_simpl.NRM_Description=混合模式 CD 编译
chinese_simpl.NRS_Description=EFI 可引导 CD 编译
chinese_simpl.NRU_Description=CD 编译(UDF)
chinese_simpl.NRV_Description=VCD 编译
chinese_simpl.NRW_Description=WMA CD 编译
chinese_simpl.NSD_Description=超级 VCD 编译
;Setup Component Description
chinese_simpl.Comp_Nero_lang=语言
chinese_simpl.Comp_Nero_lang_english=英文
chinese_simpl.Comp_Nero_lang_chinese_simpl=简体中文
chinese_simpl.Comp_Nero_Sounds=声音
;Setup register filetypes
chinese_simpl.FileAssociations=注册文件类型:
chinese_simpl.AssocImageFileExt=将标准的映像文件关联到 Nero

;Chinese (Trad.)
;Setup Wizard - Registration dialog
chinese_trad.CustomFormCaption=客戶資訊
chinese_trad.CustomFormDescription=請輸入您的註冊資訊。
chinese_trad.RegistrationInfo=請輸入您的使用者名稱和您的 Nero {#NeroMajorVersion} 序號。
chinese_trad.RegistrationWelcome=感謝您購買 Nero。
chinese_trad.RegistrationWelcomeCaption=歡迎使用 Nero
chinese_trad.RegistrationCaption=註冊
chinese_trad.NeroShopCaption=沒有註冊序號嗎?
chinese_trad.NeroShop=Nero 線上商店 (英文)?
chinese_trad.NeroShopURL=http://www.nero.com/cht/catalog.html
chinese_trad.RegistrationName=使用者名稱:
chinese_trad.RegistrationOrg=組織:
chinese_trad.RegistrationSerial=序號:
;Filetype descriptions - Nero CoverDesigner
chinese_trad.CDC_Description=Nero CoverDesigner 文件
chinese_trad.NCD_Description=Nero CoverDesigner 文件
chinese_trad.NCT_Description=Nero CoverDesigner 範本
;Filetype descriptions - Nero Burning Rom
chinese_trad.CUE_Description=光碟映像檔案
chinese_trad.IMG_Description=光碟映像檔案
chinese_trad.ISO_Description=光碟映像檔案
chinese_trad.NAB_Description=Audiobook CD-ROM 編輯
chinese_trad.NHF_Description=HFS-CD 編輯器
chinese_trad.NHV_Description=HD-BURN-Video 編輯
chinese_trad.NMD_Description=MiniDVD 編輯
chinese_trad.NR3_Description=CD-ROM 編輯 (MP3)
chinese_trad.NR4_Description=CD-ROM 編輯 (AAC)
chinese_trad.NRA_Description=Audio-CD 編輯
chinese_trad.NRB_Description=CD-ROM 編輯 (Boot)
chinese_trad.NRC_Description=CD-ROM 編輯 (UDF/ISO)
chinese_trad.NRD_Description=DVD-Video 編輯
chinese_trad.NRE_Description=CD Extra 編輯
chinese_trad.NRG_Description=光碟映像檔案
chinese_trad.NRH_Description=Hybrid CD-ROM 編輯
chinese_trad.NRI_Description=CD-ROM 編輯 (ISO)
chinese_trad.NRJ_Description=JukeBox 編輯
chinese_trad.NRM_Description=混合模式 CD 編輯
chinese_trad.NRS_Description=CD-ROM (EFI Boot) 編輯
chinese_trad.NRU_Description=CD-ROM 編輯 (UDF)
chinese_trad.NRV_Description=影像 CD 編輯
chinese_trad.NRW_Description=WMA CD-ROM 編輯
chinese_trad.NSD_Description=Super Video CD 編輯
;Setup Component Description
chinese_trad.Comp_Nero_lang=語言
chinese_trad.Comp_Nero_lang_english=英文
chinese_trad.Comp_Nero_lang_chinese_trad=中文 (繁體)
chinese_trad.Comp_Nero_Sounds=音效
;Setup register filetypes
chinese_trad.FileAssociations=註冊檔案關聯:
chinese_trad.AssocImageFileExt=將光碟映像檔和 Nero 關聯。

