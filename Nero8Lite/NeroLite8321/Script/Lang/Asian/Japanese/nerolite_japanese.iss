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
japanese.CustomFormCaption=���q����̓o�^���
japanese.CustomFormDescription=�o�^������͂��Ă��������B
japanese.RegistrationInfo=�����O�ƃV���A���i���o�[����͂��Ă��������B
japanese.RegistrationWelcome=Nero �̂��w�����肪�Ƃ��������܂��B
japanese.RegistrationWelcomeCaption=Nero �ւ悤����
japanese.RegistrationCaption=�o�^
japanese.NeroShopCaption=�V���A���i���o�[���������܂���?
japanese.NeroShop=Nero �I�����C���X�g�A�[�i�p��j
japanese.NeroShopURL=http://www.nero.com/jpn/catalog.html
japanese.RegistrationName=�����O�F
japanese.RegistrationOrg=�����F
japanese.RegistrationSerial=�V���A���i���o�[
;Filetype descriptions - Nero CoverDesigner
japanese.CDC_Description=Nero CoverDesigner �t�@�C��
japanese.NCD_Description=Nero CoverDesigner �t�@�C��
japanese.NCT_Description=Nero CoverDesigner �T���v���t�@�C��
;Filetype descriptions - Nero Burning Rom
japanese.CUE_Description=CD �C���[�W�t�@�C��
japanese.IMG_Description=CD �C���[�W�t�@�C��
japanese.ISO_Description=CD �C���[�W�t�@�C��
japanese.NAB_Description=Audiobook CD-ROM �ҏW
japanese.NHF_Description=HFS-CD �ҏW�c�[��
japanese.NHV_Description=HD-BURN-Video �ҏW
japanese.NMD_Description=MiniDVD �ҏW
japanese.NR3_Description=CD-ROM �ҏW (MP3)
japanese.NR4_Description=CD-ROM �ҏW (AAC)
japanese.NRA_Description=Audio-CD �ҏW
japanese.NRB_Description=CD-ROM �ҏW (Boot)
japanese.NRC_Description=CD-ROM �ҏW (UDF/ISO)
japanese.NRD_Description=DVD-Video �ҏW
japanese.NRE_Description=CD Extra �ҏW
japanese.NRG_Description=CD �C���[�W�t�@�C��
japanese.NRH_Description=Hybrid CD-ROM �ҏW
japanese.NRI_Description=CD-ROM �ҏW (ISO)
japanese.NRJ_Description=JukeBox �ҏW
japanese.NRM_Description=�~�b�N�X���[�h�ҏW
japanese.NRS_Description=CD-ROM (EFI Boot) �ҏW
japanese.NRU_Description=CD-ROM �ҏW (UDF)
japanese.NRV_Description=Video CD �ҏW
japanese.NRW_Description=WMA CD-ROM �ҏW
japanese.NSD_Description=Super Video CD �ҏW
;Setup Component Description
japanese.Comp_Nero_lang=����
japanese.Comp_Nero_lang_english=�p��
japanese.Comp_Nero_lang_japanese=���{��
japanese.Comp_Nero_Sounds=�T�E���h
;Setup register filetypes
japanese.FileAssociations=�t�@�C���̊֘A��t���܂��F
japanese.AssocImageFileExt=�C���[�W�t�@�C���� Nero �̊֘A�B
