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
slovak.CustomFormCaption=Z�kazn�cke inform�cie
slovak.CustomFormDescription=Vlo�te, pros�m, va�e inform�cie.
slovak.RegistrationInfo=Prisp�sobte, pros�m, svoju k�piu Nero 8 zadan�m v�ho mena a%ns�riov�ho c�sla.
slovak.RegistrationWelcome=Dakujeme v�m za zak�penie k�pie Nero.
slovak.RegistrationWelcomeCaption=Nero - Vitajte
slovak.RegistrationCaption=Registr�cia
slovak.NeroShopCaption=�iadne s�riov� c�slo?
slovak.NeroShop=Nero online obchod�
slovak.NeroShopURL=http://www.nero.com/eng/catalog.html
slovak.RegistrationName=Meno:
slovak.RegistrationOrg=Organiz�cia:
slovak.RegistrationSerial=S�riov� c�slo:
;Filetype descriptions - Nero CoverDesigner
slovak.CDC_Description=Nero CoverDesigner dokument
slovak.NCD_Description=Nero CoverDesigner dokument
slovak.NCT_Description=Nero CoverDesigner �abl�na
;Filetype descriptions - Nero Burning Rom
slovak.CUE_Description=CD-Image s�bor
slovak.IMG_Description=CD-Image s�bor
slovak.ISO_Description=CD-Image s�bor
slovak.NAB_Description=Kompil�cia Audiobook CD-ROM
slovak.NHF_Description=Kompil�cia HFS-CD
slovak.NHV_Description=Kompil�cia HD-BURN-Video
slovak.NMD_Description=Kompil�cia MiniDVD
slovak.NR3_Description=Kompil�cia CD-ROM (MP3)
slovak.NR4_Description=Kompil�cia CD-ROM (AAC)
slovak.NRA_Description=Kompil�cia Audio-CD
slovak.NRB_Description=Kompil�cia CD-ROM (bootovateln�)
slovak.NRC_Description=Kompil�cia CD-rom (UDF/ISO)
slovak.NRD_Description=Kompil�cia DVD-Video
slovak.NRE_Description=Kompil�cia CD Extra
slovak.NRG_Description=CD-Image s�bor
slovak.NRH_Description=Kompil�cia Hybrid CD-ROM
slovak.NRI_Description=Kompil�cia CD-ROM (ISO)
slovak.NRJ_Description=Kompil�cia JukeBox
slovak.NRM_Description=Kompil�cia Mixed-Mode-CD
slovak.NRS_Description=Kompil�cia CD-ROM (EFI Boot)
slovak.NRU_Description=Kompil�cia CD-ROM (UDF)
slovak.NRV_Description=Kompil�cia Video-CD
slovak.NRW_Description=Kompil�cia WMA CD-ROM
slovak.NSD_Description=Kompil�cia Super Video CD
;Setup Component Description
slovak.Comp_Nero_lang=Jazyk
slovak.Comp_Nero_lang_english=Anglick�
slovak.Comp_Nero_lang_slovak=Slovensk�
slovak.Comp_Nero_Sounds=Zvuky
;Setup register filetypes
slovak.FileAssociations=Registrovat s�bory typu:
slovak.AssocImageFileExt=Priradit Nerovi �tandardn� CD obrazy
