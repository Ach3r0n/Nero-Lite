[Languages]
Name: swedish; MessagesFile: compiler:Languages\Swedish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_sve.rtf

[Files]
;Swedish
Source: Custom\Help\NeroControlCenter_SVE.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('swedish'); BeforeInstall: AddLanguage('SVE'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Core\NeroSVE.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish')
Source: Bin\[FILELOCATION]Core\NeroSVE.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResSVE.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish')
Source: Custom\Help\NeroBurningRom_SVE.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_SVE.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-SVE.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('swedish')
Source: Custom\Help\NeroCoverDesigner_SVE.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-SVE.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('swedish')
Source: Custom\Help\NeroWaveEditor_SVE.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_SVE.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Swedish
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: SVE; Languages: swedish; Flags: uninsdeletekey

[Components]
;Swedish
Name: nero_lang\swedish; Description: {cm:Comp_Nero_lang_swedish}; Languages: not swedish

[CustomMessages]
;Swedish
;Setup Wizard - Registration dialog
swedish.CustomFormCaption=Personlig information
swedish.CustomFormDescription=Ange dina uppgifter.
swedish.RegistrationInfo=Ange personlig information (namn och serienummer) f�r din version%n av Nero 8.
swedish.RegistrationWelcome=Tack f�r ditt k�p av en kopia av Nero.
swedish.RegistrationWelcomeCaption=V�lkommen till Nero
swedish.RegistrationCaption=Registrering
swedish.NeroShopCaption=Har du inget serienummer?
swedish.NeroShop=Neros onlinebutik�
swedish.NeroShopURL=http://www.nero.com/eng/catalog.html
swedish.RegistrationName=Namn:
swedish.RegistrationOrg=F�retag:
swedish.RegistrationSerial=Serienummer:
;Filetype descriptions - Nero CoverDesigner
swedish.CDC_Description=Nero CD-omslagsdokument
swedish.NCD_Description=Nero CD-omslagsdokument
swedish.NCT_Description=Nero CD-omslagsmallar
;Filetype descriptions - Nero Burning Rom
swedish.CUE_Description=Imagefiler
swedish.IMG_Description=Imagefiler
swedish.ISO_Description=Imagefiler
swedish.NAB_Description=Ljudbok CD-ROM Kompilering
swedish.NHF_Description=HFS-CD Kompilering
swedish.NHV_Description=HD-BURN-Video Kompilering
swedish.NMD_Description=MiniDVD Kompilering
swedish.NR3_Description=CD-ROM-kompilering (MP3)
swedish.NR4_Description=CD-ROM-kompilering (AAC)
swedish.NRA_Description=Audio-CD Kompilering
swedish.NRB_Description=CD-ROM (boot)-kompilering
swedish.NRC_Description=CD-ROM (UDF/ISO)-kompilering
swedish.NRD_Description=DVD-Video-kompilering
swedish.NRE_Description=CD EXTRA-kompilering
swedish.NRG_Description=Imagefiler
swedish.NRH_Description=CD-ROM (Hybrid)-kompilering
swedish.NRI_Description=CD-ROM-kompilering (ISO)
swedish.NRJ_Description=JukeBox kompilering
swedish.NRM_Description=Mixed Mode CD-kompilering
swedish.NRS_Description=CD-ROM (EFI Boot)-kompilering
swedish.NRU_Description=CD-ROM (UDF)-kompilering
swedish.NRV_Description=Video-CD kompilering
swedish.NRW_Description=CD-ROM-kompilering (WMA)
swedish.NSD_Description=Super Video CD-kompilering
;Setup Component Description
swedish.Comp_Nero_lang=Spr�k
swedish.Comp_Nero_lang_english=Engelska
swedish.Comp_Nero_lang_swedish=Svenska
swedish.Comp_Nero_Sounds=Ljud
;Setup register filetypes
swedish.FileAssociations=Registrera filtyper:
swedish.AssocImageFileExt=Associera Nero med standardfiltyper f�r imagefiler