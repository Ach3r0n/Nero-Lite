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
thai.CustomFormCaption=ข้อมูลผู้ใช้งาน
thai.CustomFormDescription=กรุณากรอกข้อมูลของคุณ
thai.RegistrationInfo=กรุณาลงทะเบียนผลิตภัณฑ์ด้วยชื่อและหมายเลขซีเรียลของท่าน
thai.RegistrationWelcome=ขอบคุณที่คุณสนับสนุนผลิตภัณฑ์ของ Nero
thai.RegistrationWelcomeCaption=ยินดีต้อนรับสู่ Nero
thai.RegistrationCaption=การลงทะเบียน
thai.NeroShopCaption=คุณมีหมายเลขซีเรียลหรือไม่
thai.NeroShop=ร้านค้าออนไลน์ของ Nero 
thai.NeroShopURL=http://www.nero.com/eng/catalog.html
thai.RegistrationName=ชื่อ:
thai.RegistrationOrg=หน่วยงาน:
thai.RegistrationSerial=หมายเลขซีเรียล:
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
thai.Comp_Nero_lang=ภาษา
thai.Comp_Nero_lang_english=ภาษาอังกฤษ
thai.Comp_Nero_lang_thai=ภาษาไทย
thai.Comp_Nero_Sounds=เสียง
;Setup register filetypes
thai.FileAssociations=ลงทะเบียนนามสกุลของไฟล์:
thai.AssocImageFileExt=เปิดไฟล์ซีดีอิมเอจด้วยนีโร
