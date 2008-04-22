[Languages]
Name: finnish; MessagesFile: compiler:Languages\Finnish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
;Finnish
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('finnish'); BeforeInstall: AddLanguage('FIN'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Core\NeroFIN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish')
Source: Bin\[FILELOCATION]Core\NeroFIN.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResFIN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-FIN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('finnish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-FIN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('finnish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Finnish
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: FIN; Languages: finnish; Flags: uninsdeletekey

[Components]
;Finnish
Name: nero_lang\finnish; Description: {cm:Comp_Nero_lang_finnish}; Languages: not finnish

[CustomMessages]
;Finnish
;Setup Wizard - Registration dialog
finnish.CustomFormCaption=Asiakastiedot
finnish.CustomFormDescription=Kirjoita tietosi.
finnish.RegistrationInfo=Yksilöi Nero kirjoittamalla nimesi ja sarjanumerosi.
finnish.RegistrationWelcome=Kiitos Neron hankinnasta.
finnish.RegistrationWelcomeCaption=Tervetuloa käyttämään Neroa
finnish.RegistrationCaption=Rekisteröinti
finnish.NeroShopCaption=Ei sarjanumeroa?
finnish.NeroShop=Nero Online Kauppa 
finnish.NeroShopURL=http://www.nero.com/eng/catalog.html
finnish.RegistrationName=Nimi:
finnish.RegistrationOrg=Yritys:
finnish.RegistrationSerial=Sarjanumero:
;Filetype descriptions - Nero CoverDesigner
finnish.CDC_Description=Nero CoverDesigner dokumentti
finnish.NCD_Description=Nero CoverDesigner dokumentti
finnish.NCT_Description=Nero CoverDesigner mallipohja
;Filetype descriptions - Nero Burning Rom
finnish.CUE_Description=Levykuvatiedosto
finnish.IMG_Description=Levykuvatiedosto
finnish.ISO_Description=Levykuvatiedosto
finnish.NAB_Description=Audiobook CD-ROM kokoelma
finnish.NHF_Description=HFS-CD kokoelma
finnish.NHV_Description=HD-BURN-Video kokoelma
finnish.NMD_Description=MiniDVD kokoelma
finnish.NR3_Description=CD-ROM kokoelma (MP3)
finnish.NR4_Description=CD-ROM kokoelma (AAC)
finnish.NRA_Description=Audio-CD kokoelma
finnish.NRB_Description=CD-ROM kokoelma (Boot)
finnish.NRC_Description=CD-rom kokoelma (UDF/ISO)
finnish.NRD_Description=DVD-Video kokoelma
finnish.NRE_Description=CD Extra kokoelma
finnish.NRG_Description=CD-Image file
finnish.NRH_Description=Hybrid CD-ROM kokoelma
finnish.NRI_Description=CD-ROM kokoelma (ISO)
finnish.NRJ_Description=JukeBox kokoelma
finnish.NRM_Description=Mixed-Mode-CD kokoelma
finnish.NRS_Description=CD-ROM (EFI Boot) kokoelma
finnish.NRU_Description=CD-ROM kokoelma (UDF)
finnish.NRV_Description=Video-CD kokoelma
finnish.NRW_Description=WMA CD-ROM kokoelma
finnish.NSD_Description=Super Video CD kokoelma
;Setup Component Description
finnish.Comp_Nero_lang=Kieli
finnish.Comp_Nero_lang_english=Englanti
finnish.Comp_Nero_lang_finnish=Suomi
finnish.Comp_Nero_Sounds=Äänet
;Setup register filetypes
finnish.FileAssociations=Rekisteröi tiedostopäätteet:
finnish.AssocImageFileExt=Määritä Nerolle yleiset levykuvatiedostot
