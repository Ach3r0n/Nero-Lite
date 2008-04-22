[Languages]
Name: russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
;Russian
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('russian'); BeforeInstall: AddLanguage('RUS'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Core\NeroRUS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Bin\[FILELOCATION]Core\NeroRUS.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResRUS.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-RUS.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('russian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('russian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-RUS.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('russian')
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
