[Languages]
Name: slovak; MessagesFile: compiler:Languages\Slovak.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf

[Files]
;Slovak
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('slovak'); BeforeInstall: AddLanguage('SKY'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroSKY.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovak')
Source: Bin\[FILELOCATION]Core\NeroSKY.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovak')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResSKY.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovak')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovak'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovak'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-SKY.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('slovak')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('slovak'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-SKY.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('slovak')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('slovak'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('slovak'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('slovak'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Slovak
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: SKY; Languages: slovak; Flags: uninsdeletekey

[Components]
;Slovak
Name: nero_lang\slovak; Description: {cm:Comp_Nero_lang_slovak}; Languages: not Slovak

[CustomMessages]
;Slovak
;Setup Wizard - Registration dialog
slovak.CustomFormCaption=Zákaznícke informácie
slovak.CustomFormDescription=Vložte, prosím, vaše informácie.
slovak.RegistrationInfo=Prispôsobte, prosím, svoju kópiu Nero 8 zadaním vášho mena a%nsériového císla.
slovak.RegistrationWelcome=Dakujeme vám za zakúpenie kópie Nero.
slovak.RegistrationWelcomeCaption=Nero - Vitajte
slovak.RegistrationCaption=Registrácia
slovak.NeroShopCaption=Žiadne sériové císlo?
slovak.NeroShop=Nero online obchod 
slovak.NeroShopURL=http://www.nero.com/eng/catalog.html
slovak.RegistrationName=Meno:
slovak.RegistrationOrg=Organizácia:
slovak.RegistrationSerial=Sériové císlo:
;Filetype descriptions - Nero CoverDesigner
slovak.CDC_Description=Nero CoverDesigner dokument
slovak.NCD_Description=Nero CoverDesigner dokument
slovak.NCT_Description=Nero CoverDesigner šablóna
;Filetype descriptions - Nero Burning Rom
slovak.CUE_Description=CD-Image súbor
slovak.IMG_Description=CD-Image súbor
slovak.ISO_Description=CD-Image súbor
slovak.NAB_Description=Kompilácia Audiobook CD-ROM
slovak.NHF_Description=Kompilácia HFS-CD
slovak.NHV_Description=Kompilácia HD-BURN-Video
slovak.NMD_Description=Kompilácia MiniDVD
slovak.NR3_Description=Kompilácia CD-ROM (MP3)
slovak.NR4_Description=Kompilácia CD-ROM (AAC)
slovak.NRA_Description=Kompilácia Audio-CD
slovak.NRB_Description=Kompilácia CD-ROM (bootovatelné)
slovak.NRC_Description=Kompilácia CD-rom (UDF/ISO)
slovak.NRD_Description=Kompilácia DVD-Video
slovak.NRE_Description=Kompilácia CD Extra
slovak.NRG_Description=CD-Image súbor
slovak.NRH_Description=Kompilácia Hybrid CD-ROM
slovak.NRI_Description=Kompilácia CD-ROM (ISO)
slovak.NRJ_Description=Kompilácia JukeBox
slovak.NRM_Description=Kompilácia Mixed-Mode-CD
slovak.NRS_Description=Kompilácia CD-ROM (EFI Boot)
slovak.NRU_Description=Kompilácia CD-ROM (UDF)
slovak.NRV_Description=Kompilácia Video-CD
slovak.NRW_Description=Kompilácia WMA CD-ROM
slovak.NSD_Description=Kompilácia Super Video CD
;Setup Component Description
slovak.Comp_Nero_lang=Jazyk
slovak.Comp_Nero_lang_english=Anglický
slovak.Comp_Nero_lang_slovak=Slovenský
slovak.Comp_Nero_Sounds=Zvuky
;Setup register filetypes
slovak.FileAssociations=Registrovat súbory typu:
slovak.AssocImageFileExt=Priradit Nerovi štandardné CD obrazy
