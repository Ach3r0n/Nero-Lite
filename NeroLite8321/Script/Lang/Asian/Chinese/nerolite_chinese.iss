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
