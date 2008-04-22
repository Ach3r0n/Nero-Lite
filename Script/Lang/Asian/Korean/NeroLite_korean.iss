[Languages]
Name: korean; MessagesFile: compiler:Languages\korean.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_KOR.rtf

[Files]
;Korean
Source: Custom\Help\NeroControlCenter_KOR.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('korean'); BeforeInstall: AddLanguage('KOR'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Core\NeroKOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Bin\[FILELOCATION]Core\NeroKOR.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResKOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean')
Source: Custom\Help\NeroBurningRom_KOR.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_KOR.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-KOR.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('korean')
Source: Custom\Help\NeroCoverDesigner_KOR.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('korean'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-KOR.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('korean')
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
