 
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
chinese_simpl.CustomFormCaption=用户信息
chinese_simpl.CustomFormDescription=请输入您的信息。
chinese_simpl.RegistrationInfo=请个性化您的 Nero 8 副本，方法是输入您的姓名和序列号。
chinese_simpl.RegistrationWelcome=感谢您购买 Nero 副本。
chinese_simpl.RegistrationWelcomeCaption=欢迎使用 Nero
chinese_simpl.RegistrationCaption=注册
chinese_simpl.NeroShopCaption=没有序列号怎么办？
chinese_simpl.NeroShop=Nero 在线商店�
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
chinese_trad.CustomFormCaption=め戈癟
chinese_trad.CustomFormDescription=叫块眤爹戈癟
chinese_trad.RegistrationInfo=叫块眤ㄏノ嘿㎝眤 Nero 7 腹
chinese_trad.RegistrationWelcome=稰谅眤潦禦 Nero
chinese_trad.RegistrationWelcomeCaption=舧ㄏノ Nero
chinese_trad.RegistrationCaption=爹
chinese_trad.NeroShopCaption=⊿Τ爹腹盾?
chinese_trad.NeroShop=Nero 絬坝┍ (璣ゅ)�
chinese_trad.NeroShopURL=http://www.nero.com/cht/catalog.html
chinese_trad.RegistrationName=ㄏノ嘿:
chinese_trad.RegistrationOrg=舱麓:
chinese_trad.RegistrationSerial=腹:
;Filetype descriptions - Nero CoverDesigner
chinese_trad.CDC_Description=Nero CoverDesigner ゅン
chinese_trad.NCD_Description=Nero CoverDesigner ゅン
chinese_trad.NCT_Description=Nero CoverDesigner 絛セ
;Filetype descriptions - Nero Burning Rom
chinese_trad.CUE_Description=盒琈钩郎
chinese_trad.IMG_Description=盒琈钩郎
chinese_trad.ISO_Description=盒琈钩郎
chinese_trad.NAB_Description=Audiobook CD-ROM 絪胯
chinese_trad.NHF_Description=HFS-CD 絪胯竟
chinese_trad.NHV_Description=HD-BURN-Video 絪胯
chinese_trad.NMD_Description=MiniDVD 絪胯
chinese_trad.NR3_Description=CD-ROM 絪胯 (MP3)
chinese_trad.NR4_Description=CD-ROM 絪胯 (AAC)
chinese_trad.NRA_Description=Audio-CD 絪胯
chinese_trad.NRB_Description=CD-ROM 絪胯 (Boot)
chinese_trad.NRC_Description=CD-ROM 絪胯 (UDF/ISO)
chinese_trad.NRD_Description=DVD-Video 絪胯
chinese_trad.NRE_Description=CD Extra 絪胯
chinese_trad.NRG_Description=盒琈钩郎
chinese_trad.NRH_Description=Hybrid CD-ROM 絪胯
chinese_trad.NRI_Description=CD-ROM 絪胯 (ISO)
chinese_trad.NRJ_Description=JukeBox 絪胯
chinese_trad.NRM_Description=睼家Α CD 絪胯
chinese_trad.NRS_Description=CD-ROM (EFI Boot) 絪胯
chinese_trad.NRU_Description=CD-ROM 絪胯 (UDF)
chinese_trad.NRV_Description=紇钩 CD 絪胯
chinese_trad.NRW_Description=WMA CD-ROM 絪胯
chinese_trad.NSD_Description=Super Video CD 絪胯
;Setup Component Description
chinese_trad.Comp_Nero_lang=粂ē
chinese_trad.Comp_Nero_lang_english=璣ゅ
chinese_trad.Comp_Nero_lang_chinese_trad=いゅ (羉砰)
chinese_trad.Comp_Nero_Sounds=
;Setup register filetypes
chinese_trad.FileAssociations=爹郎闽羛:
chinese_trad.AssocImageFileExt=盢盒琈钩郎㎝ Nero 闽羛
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
japanese.CustomFormCaption=偍媞偝傫偺搊榐忣曬
japanese.CustomFormDescription=搊榐忣曬傪擖椡偟偰偔偩偝偄丅
japanese.RegistrationInfo=偍柤慜偲僔儕傾儖僫儞僶乕傪擖椡偟偰偔偩偝偄丅
japanese.RegistrationWelcome=Nero 偺偛峸擖偁傝偑偲偆偛偞偄傑偡丅
japanese.RegistrationWelcomeCaption=Nero 傊傛偆偙偦
japanese.RegistrationCaption=搊榐
japanese.NeroShopCaption=僔儕傾儖僫儞僶乕傪偍帩偪傑偣傫偐?
japanese.NeroShop=Nero 僆儞儔僀儞僗僩傾乕乮塸岅乯
japanese.NeroShopURL=http://www.nero.com/jpn/catalog.html
japanese.RegistrationName=偍柤慜丗
japanese.RegistrationOrg=強懏丗
japanese.RegistrationSerial=僔儕傾儖僫儞僶乕
;Filetype descriptions - Nero CoverDesigner
japanese.CDC_Description=Nero CoverDesigner 僼傽僀儖
japanese.NCD_Description=Nero CoverDesigner 僼傽僀儖
japanese.NCT_Description=Nero CoverDesigner 僒儞僾儖僼傽僀儖
;Filetype descriptions - Nero Burning Rom
japanese.CUE_Description=CD 僀儊乕僕僼傽僀儖
japanese.IMG_Description=CD 僀儊乕僕僼傽僀儖
japanese.ISO_Description=CD 僀儊乕僕僼傽僀儖
japanese.NAB_Description=Audiobook CD-ROM 曇廤
japanese.NHF_Description=HFS-CD 曇廤僣乕儖
japanese.NHV_Description=HD-BURN-Video 曇廤
japanese.NMD_Description=MiniDVD 曇廤
japanese.NR3_Description=CD-ROM 曇廤 (MP3)
japanese.NR4_Description=CD-ROM 曇廤 (AAC)
japanese.NRA_Description=Audio-CD 曇廤
japanese.NRB_Description=CD-ROM 曇廤 (Boot)
japanese.NRC_Description=CD-ROM 曇廤 (UDF/ISO)
japanese.NRD_Description=DVD-Video 曇廤
japanese.NRE_Description=CD Extra 曇廤
japanese.NRG_Description=CD 僀儊乕僕僼傽僀儖
japanese.NRH_Description=Hybrid CD-ROM 曇廤
japanese.NRI_Description=CD-ROM 曇廤 (ISO)
japanese.NRJ_Description=JukeBox 曇廤
japanese.NRM_Description=儈僢僋僗儌乕僪曇廤
japanese.NRS_Description=CD-ROM (EFI Boot) 曇廤
japanese.NRU_Description=CD-ROM 曇廤 (UDF)
japanese.NRV_Description=Video CD 曇廤
japanese.NRW_Description=WMA CD-ROM 曇廤
japanese.NSD_Description=Super Video CD 曇廤
;Setup Component Description
japanese.Comp_Nero_lang=尵岅
japanese.Comp_Nero_lang_english=塸岅
japanese.Comp_Nero_lang_japanese=擔杮岅
japanese.Comp_Nero_Sounds=僒僂儞僪
;Setup register filetypes
japanese.FileAssociations=僼傽僀儖偺娭楢傪晅偒傑偡丗
japanese.AssocImageFileExt=僀儊乕僕僼傽僀儖偲 Nero 偺娭楢丅
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
korean.NeroShop=Nero Online Shop�
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
russian.CustomFormCaption=软纛痨圉�� � 镱蝠遽栩咫�
russian.CustomFormDescription=项驵塍轳蜞, 忖邃栩� 桧纛痨圉棹 � 皴徨.
russian.RegistrationInfo=襄瘃铐嚯桤桊箝蝈 锣 觐镨� Nero 8 忖邃� 疋铄 桁� �%n疋铋 皴痂轫 眍戾�.
russian.RegistrationWelcome=扬囫栳� 玎 镳桀狃弪屙桢 锣� 觐镨�  Nero.
russian.RegistrationWelcomeCaption=念狃� 镱驵腩忄螯 � Nero
russian.RegistrationCaption=绣汨耱疣鲨�
russian.NeroShopCaption=铃� 皴痂轫钽� 眍戾疣?
russian.NeroShop=雾豚轫 爨汔玷� Nero�
russian.NeroShopURL=http://www.nero.com/ena/catalog.html
russian.RegistrationName=褥�:
russian.RegistrationOrg=勿汔龛玎鲨�:
russian.RegistrationSerial=彦痂轫 眍戾�:
;Filetype descriptions - Nero CoverDesigner
russian.CDC_Description=念牦戾眚 Nero CoverDesigner
russian.NCD_Description=念牦戾眚 Nero CoverDesigner
russian.NCT_Description=剜犭铐 Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
russian.CUE_Description=脏殡 钺疣玎 CD
russian.IMG_Description=脏殡 钺疣玎 CD
russian.ISO_Description=脏殡 钺疣玎 CD
russian.NAB_Description=暑祜桦�鲨� Audiobook CD-ROM
russian.NHF_Description=暑祜桦�鲨� HFS-CD
russian.NHV_Description=HD-BURN-Video
russian.NMD_Description=暑祜桦�鲨� MiniDVD
russian.NR3_Description=暑祜桦�鲨� CD-ROM (MP3)
russian.NR4_Description=暑祜桦�鲨� CD-ROM (AAC)
russian.NRA_Description=暑祜桦�鲨� Audio-CD
russian.NRB_Description=暑祜桦�鲨� CD-ROM (Boot)
russian.NRC_Description=暑祜桦�鲨� CD-rom (UDF/ISO)
russian.NRD_Description=暑祜桦�鲨� DVD-Video
russian.NRE_Description=暑祜桦�鲨� CD Extra
russian.NRG_Description=脏殡 钺疣玎 CD
russian.NRH_Description=暑祜桦�鲨� Hybrid CD-ROM
russian.NRI_Description=暑祜桦�鲨� CD-ROM (ISO)
russian.NRJ_Description=暑祜桦�鲨� JukeBox
russian.NRM_Description=暑祜桦�鲨� Mixed-Mode-CD
russian.NRS_Description=暑祜桦�鲨� CD-ROM (EFI Boot)
russian.NRU_Description=暑祜桦�鲨� CD-ROM (UDF)
russian.NRV_Description=暑祜桦�鲨� Video-CD
russian.NRW_Description=暑祜桦�鲨� WMA CD-ROM
russian.NSD_Description=暑祜桦�鲨� Super Video CD
;Setup Component Description
russian.Comp_Nero_lang=哏
russian.Comp_Nero_lang_english=理汶栝耜栝
russian.Comp_Nero_lang_russian=畜耨觇�
russian.Comp_Nero_Sounds=氢箨�
;Setup register filetypes
russian.FileAssociations=绣汨耱疣鲨� 蜩镱� 羿殡钼:
russian.AssocImageFileExt=礼耦鲨桊钼囹� Nero 耦 耱囗溧痱睇扈 羿殡囔� 钺疣珙� CD
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
thai.CustomFormCaption=㈤土倥假殂б�
thai.CustomFormDescription=∶爻摇猛、橥临泞艇へ�
thai.RegistrationInfo=∶爻遗Х朽赫鹿寂缘姥潮齑榍陋阻歪判肆衣嗯锗谜屡⑼Х枰�
thai.RegistrationWelcome=⑼氦爻氛瑜爻使押使毓寂缘姥潮膦艇 Nero
thai.RegistrationWelcomeCaption=略勾盏橥姑押寿� Nero
thai.RegistrationCaption=∫门Х朽赫鹿
thai.NeroShopCaption=へ沉账烈锣泞嗝章潘米弯凌
thai.NeroShop=瞄夜ら彝凸渑轨⑼� Nero�
thai.NeroShopURL=http://www.nero.com/eng/catalog.html
thai.RegistrationName=柰:
thai.RegistrationOrg=斯枨搂夜:
thai.RegistrationSerial=肆衣嗯锗谜屡:
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
thai.Comp_Nero_lang=酪梢
thai.Comp_Nero_lang_english=酪梢脱А纳
thai.Comp_Nero_lang_thai=酪梢浞�
thai.Comp_Nero_Sounds=嗍章�
;Setup register filetypes
thai.FileAssociations=脓沸嗪章构伊省嘏⑼т颗�:
thai.AssocImageFileExt=嗷源淇澎凑驮拎通撮锹拐饷
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
turkish.CustomFormCaption=M黶teri Bilgisi
turkish.CustomFormDescription=Bilgilerinizi giriniz
turkish.RegistrationInfo=Kullanici adinizi ve seri numaranizi girerek Nero'yu kisisellestirin.
turkish.RegistrationWelcome=Nero'yu satin aldiginiz i鏸n tesekk黵ler.
turkish.RegistrationWelcomeCaption=Nero'ya hosgeldiniz
turkish.RegistrationCaption=Kayit
turkish.NeroShopCaption=Seri numarasi yok mu?
turkish.NeroShop=Nero Online Satis�
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
turkish.Comp_Nero_lang_turkish=T黵k鏴
turkish.Comp_Nero_Sounds=Ses
;Setup register filetypes
turkish.FileAssociations=Dosya t黵lerini kaydet:
turkish.AssocImageFileExt=Nero'yu Standard CD kaliplariyla iliskilendir
