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
japanese.CustomFormCaption=お客さんの登録情報
japanese.CustomFormDescription=登録情報を入力してください。
japanese.RegistrationInfo=お名前とシリアルナンバーを入力してください。
japanese.RegistrationWelcome=Nero のご購入ありがとうございます。
japanese.RegistrationWelcomeCaption=Nero へようこそ
japanese.RegistrationCaption=登録
japanese.NeroShopCaption=シリアルナンバーをお持ちませんか?
japanese.NeroShop=Nero オンラインストアー（英語）
japanese.NeroShopURL=http://www.nero.com/jpn/catalog.html
japanese.RegistrationName=お名前：
japanese.RegistrationOrg=所属：
japanese.RegistrationSerial=シリアルナンバー
;Filetype descriptions - Nero CoverDesigner
japanese.CDC_Description=Nero CoverDesigner ファイル
japanese.NCD_Description=Nero CoverDesigner ファイル
japanese.NCT_Description=Nero CoverDesigner サンプルファイル
;Filetype descriptions - Nero Burning Rom
japanese.CUE_Description=CD イメージファイル
japanese.IMG_Description=CD イメージファイル
japanese.ISO_Description=CD イメージファイル
japanese.NAB_Description=Audiobook CD-ROM 編集
japanese.NHF_Description=HFS-CD 編集ツール
japanese.NHV_Description=HD-BURN-Video 編集
japanese.NMD_Description=MiniDVD 編集
japanese.NR3_Description=CD-ROM 編集 (MP3)
japanese.NR4_Description=CD-ROM 編集 (AAC)
japanese.NRA_Description=Audio-CD 編集
japanese.NRB_Description=CD-ROM 編集 (Boot)
japanese.NRC_Description=CD-ROM 編集 (UDF/ISO)
japanese.NRD_Description=DVD-Video 編集
japanese.NRE_Description=CD Extra 編集
japanese.NRG_Description=CD イメージファイル
japanese.NRH_Description=Hybrid CD-ROM 編集
japanese.NRI_Description=CD-ROM 編集 (ISO)
japanese.NRJ_Description=JukeBox 編集
japanese.NRM_Description=ミックスモード編集
japanese.NRS_Description=CD-ROM (EFI Boot) 編集
japanese.NRU_Description=CD-ROM 編集 (UDF)
japanese.NRV_Description=Video CD 編集
japanese.NRW_Description=WMA CD-ROM 編集
japanese.NSD_Description=Super Video CD 編集
;Setup Component Description
japanese.Comp_Nero_lang=言語
japanese.Comp_Nero_lang_english=英語
japanese.Comp_Nero_lang_japanese=日本語
japanese.Comp_Nero_Sounds=サウンド
;Setup register filetypes
japanese.FileAssociations=ファイルの関連を付きます：
japanese.AssocImageFileExt=イメージファイルと Nero の関連。
