 
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
chinese_simpl.CustomFormCaption=�û���Ϣ
chinese_simpl.CustomFormDescription=������������Ϣ��
chinese_simpl.RegistrationInfo=����Ի����� Nero 8 �����������������������������кš�
chinese_simpl.RegistrationWelcome=��л������ Nero ������
chinese_simpl.RegistrationWelcomeCaption=��ӭʹ�� Nero
chinese_simpl.RegistrationCaption=ע��
chinese_simpl.NeroShopCaption=û�����к���ô�죿
chinese_simpl.NeroShop=Nero �����̵�
chinese_simpl.NeroShopURL=http://www.nero.com/chs/catalog.html
chinese_simpl.RegistrationName=����:
chinese_simpl.RegistrationOrg=��˾:
chinese_simpl.RegistrationSerial=���к�:
;Filetype descriptions - Nero CoverDesigner
chinese_simpl.CDC_Description=Nero CD�����ĵ�
chinese_simpl.NCD_Description=Nero CD�����ĵ�
chinese_simpl.NCT_Description=Nero CD����ģ��
;Filetype descriptions - Nero Burning Rom
chinese_simpl.CUE_Description=ӳ���ļ�
chinese_simpl.IMG_Description=ӳ���ļ�
chinese_simpl.ISO_Description=ӳ���ļ�
chinese_simpl.NAB_Description=�������� CD ����
chinese_simpl.NHF_Description=HFS ���̱���
chinese_simpl.NHV_Description=HD-BURN ��Ƶ����
chinese_simpl.NMD_Description=miniDVD ����
chinese_simpl.NR3_Description=MP3 CD ����
chinese_simpl.NR4_Description=AAC CD ����
chinese_simpl.NRA_Description=���� CD ����
chinese_simpl.NRB_Description=������ CD ����
chinese_simpl.NRC_Description=CD ����(UDF/ISO)
chinese_simpl.NRD_Description=DVD ��Ƶ����
chinese_simpl.NRE_Description=CD-Extra ����
chinese_simpl.NRG_Description=Nero ӳ���ļ�
chinese_simpl.NRH_Description=Hybird CD ����
chinese_simpl.NRI_Description=CD ����(ISO)
chinese_simpl.NRJ_Description=JukeBox ����
chinese_simpl.NRM_Description=���ģʽ CD ����
chinese_simpl.NRS_Description=EFI ������ CD ����
chinese_simpl.NRU_Description=CD ����(UDF)
chinese_simpl.NRV_Description=VCD ����
chinese_simpl.NRW_Description=WMA CD ����
chinese_simpl.NSD_Description=���� VCD ����
;Setup Component Description
chinese_simpl.Comp_Nero_lang=����
chinese_simpl.Comp_Nero_lang_english=Ӣ��
chinese_simpl.Comp_Nero_lang_chinese_simpl=��������
chinese_simpl.Comp_Nero_Sounds=����
;Setup register filetypes
chinese_simpl.FileAssociations=ע���ļ�����:
chinese_simpl.AssocImageFileExt=����׼��ӳ���ļ������� Nero
;Chinese (Trad.)
;Setup Wizard - Registration dialog
chinese_trad.CustomFormCaption=�Ȥ��T
chinese_trad.CustomFormDescription=�п�J�z�����U��T�C
chinese_trad.RegistrationInfo=�п�J�z���ϥΪ̦W�٩M�z�� Nero 7 �Ǹ��C
chinese_trad.RegistrationWelcome=�P�±z�ʶR Nero�C
chinese_trad.RegistrationWelcomeCaption=�w��ϥ� Nero
chinese_trad.RegistrationCaption=���U
chinese_trad.NeroShopCaption=�S�����U�Ǹ���?
chinese_trad.NeroShop=Nero �u�W�ө� (�^��)�
chinese_trad.NeroShopURL=http://www.nero.com/cht/catalog.html
chinese_trad.RegistrationName=�ϥΪ̦W��:
chinese_trad.RegistrationOrg=��´:
chinese_trad.RegistrationSerial=�Ǹ�:
;Filetype descriptions - Nero CoverDesigner
chinese_trad.CDC_Description=Nero CoverDesigner ���
chinese_trad.NCD_Description=Nero CoverDesigner ���
chinese_trad.NCT_Description=Nero CoverDesigner �d��
;Filetype descriptions - Nero Burning Rom
chinese_trad.CUE_Description=���ЬM���ɮ�
chinese_trad.IMG_Description=���ЬM���ɮ�
chinese_trad.ISO_Description=���ЬM���ɮ�
chinese_trad.NAB_Description=Audiobook CD-ROM �s��
chinese_trad.NHF_Description=HFS-CD �s�边
chinese_trad.NHV_Description=HD-BURN-Video �s��
chinese_trad.NMD_Description=MiniDVD �s��
chinese_trad.NR3_Description=CD-ROM �s�� (MP3)
chinese_trad.NR4_Description=CD-ROM �s�� (AAC)
chinese_trad.NRA_Description=Audio-CD �s��
chinese_trad.NRB_Description=CD-ROM �s�� (Boot)
chinese_trad.NRC_Description=CD-ROM �s�� (UDF/ISO)
chinese_trad.NRD_Description=DVD-Video �s��
chinese_trad.NRE_Description=CD Extra �s��
chinese_trad.NRG_Description=���ЬM���ɮ�
chinese_trad.NRH_Description=Hybrid CD-ROM �s��
chinese_trad.NRI_Description=CD-ROM �s�� (ISO)
chinese_trad.NRJ_Description=JukeBox �s��
chinese_trad.NRM_Description=�V�X�Ҧ� CD �s��
chinese_trad.NRS_Description=CD-ROM (EFI Boot) �s��
chinese_trad.NRU_Description=CD-ROM �s�� (UDF)
chinese_trad.NRV_Description=�v�� CD �s��
chinese_trad.NRW_Description=WMA CD-ROM �s��
chinese_trad.NSD_Description=Super Video CD �s��
;Setup Component Description
chinese_trad.Comp_Nero_lang=�y��
chinese_trad.Comp_Nero_lang_english=�^��
chinese_trad.Comp_Nero_lang_chinese_trad=���� (�c��)
chinese_trad.Comp_Nero_Sounds=����
;Setup register filetypes
chinese_trad.FileAssociations=���U�ɮ����p:
chinese_trad.AssocImageFileExt=�N���ЬM���ɩM Nero ���p�C
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
russian.CustomFormCaption=���������� � �����������
russian.CustomFormDescription=����������, ������� ���������� � ����.
russian.RegistrationInfo=���������������� ���� ����� Nero 8 ����� ���� ��� �%n���� �������� �����.
russian.RegistrationWelcome=������� �� ������������ ����� �����  Nero.
russian.RegistrationWelcomeCaption=����� ���������� � Nero
russian.RegistrationCaption=�����������
russian.NeroShopCaption=��� ��������� ������?
russian.NeroShop=������ ������� Nero�
russian.NeroShopURL=http://www.nero.com/ena/catalog.html
russian.RegistrationName=���:
russian.RegistrationOrg=�����������:
russian.RegistrationSerial=�������� �����:
;Filetype descriptions - Nero CoverDesigner
russian.CDC_Description=�������� Nero CoverDesigner
russian.NCD_Description=�������� Nero CoverDesigner
russian.NCT_Description=������ Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
russian.CUE_Description=���� ������ CD
russian.IMG_Description=���� ������ CD
russian.ISO_Description=���� ������ CD
russian.NAB_Description=���������� Audiobook CD-ROM
russian.NHF_Description=���������� HFS-CD
russian.NHV_Description=HD-BURN-Video
russian.NMD_Description=���������� MiniDVD
russian.NR3_Description=���������� CD-ROM (MP3)
russian.NR4_Description=���������� CD-ROM (AAC)
russian.NRA_Description=���������� Audio-CD
russian.NRB_Description=���������� CD-ROM (Boot)
russian.NRC_Description=���������� CD-rom (UDF/ISO)
russian.NRD_Description=���������� DVD-Video
russian.NRE_Description=���������� CD Extra
russian.NRG_Description=���� ������ CD
russian.NRH_Description=���������� Hybrid CD-ROM
russian.NRI_Description=���������� CD-ROM (ISO)
russian.NRJ_Description=���������� JukeBox
russian.NRM_Description=���������� Mixed-Mode-CD
russian.NRS_Description=���������� CD-ROM (EFI Boot)
russian.NRU_Description=���������� CD-ROM (UDF)
russian.NRV_Description=���������� Video-CD
russian.NRW_Description=���������� WMA CD-ROM
russian.NSD_Description=���������� Super Video CD
;Setup Component Description
russian.Comp_Nero_lang=����
russian.Comp_Nero_lang_english=����������
russian.Comp_Nero_lang_russian=�������
russian.Comp_Nero_Sounds=�����
;Setup register filetypes
russian.FileAssociations=����������� ����� ������:
russian.AssocImageFileExt=������������� Nero �� ������������ ������� ������� CD
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
thai.CustomFormCaption=�����ż����ҹ
thai.CustomFormDescription=��سҡ�͡�����Ţͧ�س
thai.RegistrationInfo=��س�ŧ����¹��Ե�ѳ����ª�����������Ţ������Ţͧ��ҹ
thai.RegistrationWelcome=�ͺ�س���سʹѺʹع��Ե�ѳ��ͧ Nero
thai.RegistrationWelcomeCaption=�Թ�յ�͹�Ѻ��� Nero
thai.RegistrationCaption=���ŧ����¹
thai.NeroShopCaption=�س�������Ţ��������������
thai.NeroShop=��ҹ����͹�Ź�ͧ Nero�
thai.NeroShopURL=http://www.nero.com/eng/catalog.html
thai.RegistrationName=����:
thai.RegistrationOrg=˹��§ҹ:
thai.RegistrationSerial=�����Ţ�������:
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
thai.Comp_Nero_lang=����
thai.Comp_Nero_lang_english=�����ѧ���
thai.Comp_Nero_lang_thai=������
thai.Comp_Nero_Sounds=���§
;Setup register filetypes
thai.FileAssociations=ŧ����¹���ʡ�Ţͧ���:
thai.AssocImageFileExt=�Դ���մ�����ͨ���¹���
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
turkish.CustomFormCaption=M�steri Bilgisi
turkish.CustomFormDescription=Bilgilerinizi giriniz
turkish.RegistrationInfo=Kullanici adinizi ve seri numaranizi girerek Nero'yu kisisellestirin.
turkish.RegistrationWelcome=Nero'yu satin aldiginiz i�in tesekk�rler.
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
turkish.Comp_Nero_lang_turkish=T�rk�e
turkish.Comp_Nero_Sounds=Ses
;Setup register filetypes
turkish.FileAssociations=Dosya t�rlerini kaydet:
turkish.AssocImageFileExt=Nero'yu Standard CD kaliplariyla iliskilendir
