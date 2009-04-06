[Languages]
#ifdef Nero8
Name: greek; MessagesFile: compiler:Languages\Greek.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: greek; MessagesFile: compiler:Languages\Greek.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Greek
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('greek'); BeforeInstall: AddLanguage('ELL');
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('greek'); BeforeInstall: AddLanguage('ELL');
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroELL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Bin\[FILELOCATION]Core\NeroELL.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResELL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek');
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek');
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-ELL.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('greek')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('greek');
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-ELL.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('greek')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('greek');
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('greek');
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('greek');
	#endif
#endif

[Registry]
;Greek
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ELL; Languages: greek; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_core; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: ELL; Languages: greek; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_toolkit\nero_cdspeed; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_toolkit\nero_drivespeed; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_toolkit\nero_infotool; Languages: greek; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: ELL; Components: nero_waveedit; Languages: greek; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Greek
Name: nero_lang\greek; Description: {cm:Comp_Nero_lang_greek}; Languages: not greek

[CustomMessages]
;Greek
;Setup Wizard - Registration dialog
greek.CustomFormCaption=����������� ������
greek.CustomFormDescription=�������� ����������� �� �������� ���
greek.RegistrationInfo=�������� �������������� �� ��������� ��� Nero {#NeroMajorVersion} ���������� �� ����� ��� ���%n��� �������� ��� ������.
greek.RegistrationWelcomeCaption=����� ������ ��� Nero
greek.RegistrationWelcome=��� ������������ ��� ��������� �� Nero.
greek.RegistrationCaption=�������
greek.NeroShopCaption=��� ����� �������� ������ ?
greek.NeroShop=Nero Online Shop�
greek.NeroShopURL=http://www.nero.com/eng/catalog.html
greek.RegistrationName=�����:
greek.RegistrationOrg=����������:
greek.RegistrationSerial=��������� �������:
;Filetype descriptions - Nero CoverDesigner
greek.CDC_Description=Nero CoverDesigner �������
greek.NCD_Description=Nero CoverDesigner �������
greek.NCT_Description=Nero CoverDesigner ����������
;Filetype descriptions - Nero Burning Rom
greek.CUE_Description=CD-�������� ������
greek.IMG_Description=CD-�������� ������
greek.ISO_Description=CD-�������� ������
greek.NAB_Description=Audiobook CD-ROM �������
greek.NHF_Description=HFS-CD �������
greek.NHV_Description=HD-BURN-������� ������
greek.NMD_Description=MiniDVD �������
greek.NR3_Description=CD-ROM ������� (MP3)
greek.NR4_Description=CD-ROM ������� (AAC)
greek.NRA_Description=Audio-CD �������
greek.NRB_Description=CD-ROM ������� (Boot)
greek.NRC_Description=CD-rom ������� (UDF/ISO)
greek.NRD_Description=DVD-Video �������
greek.NRE_Description=CD Extra �������
greek.NRG_Description=CD-�������� ������
greek.NRH_Description=Hybrid CD-ROM �������
greek.NRI_Description=CD-ROM ������� (ISO)
greek.NRJ_Description=JukeBox �������
greek.NRM_Description=����� ���������� CD �������
greek.NRS_Description=CD-ROM (EFI Boot) �������
greek.NRU_Description=CD-ROM ������� (UDF)
greek.NRV_Description=Video-CD �������
greek.NRW_Description=WMA CD-ROM �������
greek.NSD_Description=Super Video CD �������
;Setup Component Description
greek.Comp_Nero_lang=������
greek.Comp_Nero_lang_greek=��������
greek.Comp_Nero_lang_greek=��������
greek.Comp_Nero_Sounds=����
;Setup register filetypes
greek.FileAssociations=�������� ���� ������ ��� �������:
greek.AssocImageFileExt=��������� �� Nero �� �� CD-��������� �������
;Installer mutex
greek.SetupIsRunningWarning=� ����������� ������ ���!

