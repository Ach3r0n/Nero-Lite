 
[Languages]
Name: czech; MessagesFile: compiler:Languages\Czech.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf

[Files]
;Czech
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('czech'); BeforeInstall: AddLanguage('CSY'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroCSY.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech')
Source: Bin\[FILELOCATION]Core\NeroCSY.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResCSY.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-CSY.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('czech')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-CSY.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('czech')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('czech'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Czech
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: CSY; Languages: czech; Flags: uninsdeletekey

[Components]
;Czech
Name: nero_lang\czech; Description: {cm:Comp_Nero_lang_czech}; Languages: not czech

[CustomMessages]
;Czech
;Setup Wizard - Registration dialog
czech.CustomFormCaption=Z�kazn�ck� informace
czech.CustomFormDescription=Vlo�te, pros�m, va�e informace.
czech.RegistrationInfo=Upravte, pros�m, svoji kopii Nero 8 zad�n�m va�eho jm�na a%ns�riov�ho c�sla.
czech.RegistrationWelcome=Dekujeme v�m za zakoupen� kopie Nero.
czech.RegistrationWelcomeCaption=Nero - V�tejte...
czech.RegistrationCaption=Registrace
czech.NeroShopCaption=��dn� s�riov� c�slo?
czech.NeroShop=Nero online obchod�
czech.NeroShopURL=http://www.nero.com/eng/catalog.html
czech.RegistrationName=Jm�no:
czech.RegistrationOrg=Organizace:
czech.RegistrationSerial=S�riov� c�slo:
;Filetype descriptions - Nero CoverDesigner
czech.CDC_Description=Nero CoverDesigner dokument
czech.NCD_Description=Nero CoverDesigner dokument
czech.NCT_Description=Nero CoverDesigner �abl�na
;Filetype descriptions - Nero Burning Rom
czech.CUE_Description=CD-Image soubor
czech.IMG_Description=CD-Image soubor
czech.ISO_Description=CD-Image soubor
czech.NAB_Description=Kompilace Audiobook CD-ROM
czech.NHF_Description=Kompilace HFS-CD
czech.NHV_Description=Kompilace HD-BURN-Video
czech.NMD_Description=Kompilace MiniDVD
czech.NR3_Description=Kompilace CD-ROM (MP3)
czech.NR4_Description=Kompilace CD-ROM (AAC)
czech.NRA_Description=Kompilace Audio-CD
czech.NRB_Description=Kompilace CD-ROM (bootovateln�)
czech.NRC_Description=Kompilace CD-rom (UDF/ISO)
czech.NRD_Description=Kompilace DVD-Video
czech.NRE_Description=Kompilace CD Extra
czech.NRG_Description=CD-Image soubor
czech.NRH_Description=Kompilace Hybrid CD-ROM
czech.NRI_Description=Kompilace CD-ROM (ISO)
czech.NRJ_Description=Kompilace JukeBox
czech.NRM_Description=Kompilace Mixed-Mode-CD
czech.NRS_Description=Kompilace CD-ROM (EFI Boot)
czech.NRU_Description=Kompilace CD-ROM (UDF)
czech.NRV_Description=Kompilace Video-CD
czech.NRW_Description=Kompilace WMA CD-ROM
czech.NSD_Description=Kompilace Super Video CD
;Setup Component Description
czech.Comp_Nero_lang=Jazyk
czech.Comp_Nero_lang_english=Anglick�
czech.Comp_Nero_lang_czech=Cesk�
czech.Comp_Nero_Sounds=Zvuky
;Setup register filetypes
czech.FileAssociations=Registrovat soubory typu:
czech.AssocImageFileExt=Priradit Nerovi standardn� CD obrazy
[Languages]
Name: danish; MessagesFile: compiler:Languages\danish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ENG.rtf

[Files]
;Danish
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('danish'); BeforeInstall: AddLanguage('DAN'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroDAN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish')
Source: Bin\[FILELOCATION]Core\NeroDAN.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResDAN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-DAN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('danish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-DAN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('danish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('danish'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Danish
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: DAN; Languages: danish; Flags: uninsdeletekey

[Components]
;Danish
Name: nero_lang\danish; Description: {cm:Comp_Nero_lang_danish}; Languages: not danish

[CustomMessages]
;Danish
;Setup Wizard - Registration dialog
danish.CustomFormCaption=Customer Information
danish.CustomFormDescription=Please enter your information.
danish.RegistrationInfo=Please personalize your copy of Nero 8 by entering your name and%nyour serial number.
danish.RegistrationWelcome=Thanks for purchasing your copy of Nero.
danish.RegistrationWelcomeCaption=Welcome to Nero
danish.RegistrationCaption=Registration
danish.NeroShopCaption=No Serial number?
danish.NeroShop=Nero Online Shop�
danish.NeroShopURL=http://www.nero.com/eng/catalog.html
danish.RegistrationName=Name:
danish.RegistrationOrg=Organization:
danish.RegistrationSerial=Serial number:
;Filetype descriptions - Nero CoverDesigner
danish.CDC_Description=Nero CoverDesigner Document
danish.NCD_Description=Nero CoverDesigner Document
danish.NCT_Description=Nero CoverDesigner Template
;Filetype descriptions - Nero Burning Rom
danish.CUE_Description=CD-Image file
danish.IMG_Description=CD-Image file
danish.ISO_Description=CD-Image file
danish.NAB_Description=Audiobook CD-ROM Compilation
danish.NHF_Description=HFS-CD Compilation
danish.NHV_Description=HD-BURN-Video Compilation
danish.NMD_Description=MiniDVD Compilation
danish.NR3_Description=CD-ROM Compilation (MP3)
danish.NR4_Description=CD-ROM Compilation (AAC)
danish.NRA_Description=Audio-CD Compilation
danish.NRB_Description=CD-ROM Compilation (Boot)
danish.NRC_Description=CD-ROM Compilation (UDF/ISO)
danish.NRD_Description=DVD-Video Compilation
danish.NRE_Description=CD Extra Compilation
danish.NRG_Description=CD-Image file
danish.NRH_Description=Hybrid CD-ROM Compilation
danish.NRI_Description=CD-ROM Compilation (ISO)
danish.NRJ_Description=JukeBox Compilation
danish.NRM_Description=Mixed-Mode-CD Compilation
danish.NRS_Description=CD-ROM Compilation (EFI Boot)
danish.NRU_Description=CD-ROM Compilation (UDF)
danish.NRV_Description=Video-CD Compilation
danish.NRW_Description=WMA CD-ROM Compilation
danish.NSD_Description=Super Video CD Compilation
[Languages]
Name: dutch; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_nld.rtf

[Files]
;Dutch
Source: Custom\Help\NeroControlCenter_NLD.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('dutch'); BeforeInstall: AddLanguage('NLD'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroNLD.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch')
Source: Bin\[FILELOCATION]Core\NeroNLD.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResNLD.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch')
Source: Custom\Help\NeroBurningRom_NLD.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_NLD.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-NLD.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('dutch')
Source: Custom\Help\NeroCoverDesigner_NLD.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-NLD.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('dutch')
Source: Custom\Help\NeroWaveEditor_NLD.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_NLD.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_NLD.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('dutch'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Dutch
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: NLD; Languages: dutch; Flags: uninsdeletekey

[Components]
;Dutch
Name: nero_lang\dutch; Description: {cm:Comp_Nero_lang_dutch}; Languages: not dutch

[CustomMessages]
;Dutch
;Setup Wizard - Registration dialog
dutch.CustomFormCaption=Klantgegevens
dutch.CustomFormDescription=Geef de benodigde gebruikersgegevens op.
dutch.RegistrationInfo=Registreer uw exemplaar van Nero 8 door uw naam en%nserienummer in te voeren.
dutch.RegistrationWelcome=Bedankt voor de aankoop van uw exemplaar van Nero.
dutch.RegistrationWelcomeCaption=Welkom bij Nero
dutch.RegistrationCaption=Registratie
dutch.NeroShopCaption=Geen serienummer?
dutch.NeroShop=Nero Online Shop�
dutch.NeroShopURL=http://www.nero.com/eng/catalog.html
dutch.RegistrationName=Naam:
dutch.RegistrationOrg=Firma:
dutch.RegistrationSerial=Serienummer:
;Filetype descriptions - Nero CoverDesigner
dutch.CDC_Description=Nero CD Cover-document
dutch.NCD_Description=Nero CD Cover-document
dutch.NCT_Description=Nero CoverDesigner Sjabloon
;Filetype descriptions - Nero Burning Rom
dutch.CUE_Description=CD-image
dutch.IMG_Description=CD-image
dutch.ISO_Description=CD-image
dutch.NAB_Description=Audioboek-CD-compilatie
dutch.NHF_Description=HFS-CD-compilatie
dutch.NHV_Description=HD-BURN-Video-compilatie
dutch.NMD_Description=MiniDVD-compilatie
dutch.NR3_Description=CD-ROM-compilatie (MP3)
dutch.NR4_Description=CD-ROM-compilatie (AAC)
dutch.NRA_Description=Audio-CD-compilatie
dutch.NRB_Description=CD-ROM-compilatie (Opstartbaar)
dutch.NRC_Description=CD-ROM-compilatie (UDF/ISO)
dutch.NRD_Description=DVD-Video-compilatie
dutch.NRE_Description=CD-Extra-compilatie
dutch.NRG_Description=CD-image
dutch.NRH_Description=CD-ROM-compilatie (Hybride)
dutch.NRI_Description=CD-ROM-compilatie (ISO)
dutch.NRJ_Description=JukeBox-compilatie
dutch.NRM_Description=CD-compilatie met Gemengde modus
dutch.NRS_Description=CD-ROM-compilatie (EFI Boot)
dutch.NRU_Description=CD-ROM-compilatie (UDF)
dutch.NRV_Description=Video-CD-compilatie
dutch.NRW_Description=CD-ROM-compilatie (WMA)
dutch.NSD_Description=Super Video-CD-compilatie
;Setup Component Description
dutch.Comp_Nero_lang=Extra talen
dutch.Comp_Nero_lang_dutch=Nederlands
;dutch.Comp_Nero_lang_english=Engels
dutch.Comp_Nero_Sounds=Geluiden
;Setup register filetypes
dutch.FileAssociations=Bestandstypen registreren:
dutch.AssocImageFileExt=Associeer Nero met standaard CD-Image bestandstypen
[Languages]
Name: finnish; MessagesFile: compiler:Languages\Finnish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
;Finnish
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('finnish'); BeforeInstall: AddLanguage('FIN'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroFIN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish')
Source: Bin\[FILELOCATION]Core\NeroFIN.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResFIN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-FIN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('finnish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('finnish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-FIN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('finnish')
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
finnish.RegistrationInfo=Yksil�i Nero kirjoittamalla nimesi ja sarjanumerosi.
finnish.RegistrationWelcome=Kiitos Neron hankinnasta.
finnish.RegistrationWelcomeCaption=Tervetuloa k�ytt�m��n Neroa
finnish.RegistrationCaption=Rekister�inti
finnish.NeroShopCaption=Ei sarjanumeroa?
finnish.NeroShop=Nero Online Kauppa�
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
finnish.Comp_Nero_Sounds=��net
;Setup register filetypes
finnish.FileAssociations=Rekister�i tiedostop��tteet:
finnish.AssocImageFileExt=M��rit� Nerolle yleiset levykuvatiedostot
[Languages]
Name: french; MessagesFile: compiler:Languages\French.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_fra.rtf

[Files]
;French
Source: Custom\Help\NeroControlCenter_FRA.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('french'); BeforeInstall: AddLanguage('FRA'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroFRA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Bin\[FILELOCATION]Core\NeroFRA.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResFRA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french')
Source: Custom\Help\NeroBurningRom_FRA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_FRA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-FRA.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('french')
Source: Custom\Help\NeroCoverDesigner_FRA.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-FRA.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('french')
Source: Custom\Help\NeroWaveEditor_FRA.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_FRA.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_FRA.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('french'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;French
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: FRA; Languages: french; Flags: uninsdeletekey

[Components]
;French
Name: nero_lang\french; Description: {cm:Comp_Nero_lang_french}; Languages: not french

[CustomMessages]
;French
;Setup Wizard - Registration dialog
french.NeroShop=Boutique en ligne Nero�
french.CustomFormCaption=Information Utilisateur
french.CustomFormDescription=Veuillez entrer vos informations.
french.RegistrationInfo=Veuillez personnaliser votre copie de Nero 8 en saisissant votre nom%net votre num�ro de s�rie.
french.RegistrationWelcome=Merci d'enregistrer votre copie de Nero.
french.RegistrationWelcomeCaption=Nero vous souhaite la bienvenue
french.RegistrationCaption=Enregistrement
french.NeroShopCaption=Pas de num�ro de s�rie?
french.NeroShopURL=http://www.nero.com/fra/catalog.html
french.RegistrationName=Nom:
french.RegistrationOrg=Soci�t�:
french.RegistrationSerial=Num�ro de s�rie:
;Filetype descriptions - Nero CoverDesigner
french.CDC_Description=Document de jaquette CD Nero
french.NCD_Description=Document de jaquette CD Nero
french.NCT_Description=Nero Cover Designer Template
;Filetype descriptions - Nero Burning Rom
french.CUE_Description=Fichiers Image
french.IMG_Description=Fichiers Image
french.ISO_Description=Fichiers Image
french.NAB_Description=Compilation CD Audiobook
french.NHF_Description=Compilation CD HFS
french.NHV_Description=Compilation HD-BURN-Vid�o
french.NMD_Description=Compilation mini-DVD
french.NR3_Description=Compilation CD-ROM (MP3)
french.NR4_Description=Compilation CD-ROM (AAC)
french.NRA_Description=Compilation CD audio
french.NRB_Description=CD-ROM (Amorce) Compilation
french.NRC_Description=CD-ROM (UDF/ISO) Compilation
french.NRD_Description=Compilation DVD-Vid�o
french.NRE_Description=Compilation CD EXTRA
french.NRG_Description=Fichiers Image
french.NRH_Description=Compilation CD-ROM (hybride)
french.NRI_Description=Compilation CD-ROM (ISO)
french.NRJ_Description=Compilation JukeBox
french.NRM_Description=Compilation CD mode mixte
french.NRS_Description=Compilation CD-ROM (Amor�age EFI)
french.NRU_Description=Compilation CD-ROM (UDF)
french.NRV_Description=Compilation CD Vid�o
french.NRW_Description=Compilation CD-ROM (WMA)
french.NSD_Description=Compilation Super Vid�o CD
;Setup Wizard Component Description
french.Comp_Nero_lang=Langue
french.Comp_Nero_lang_french=Fran�ais
french.Comp_Nero_lang_english=Anglais
french.Comp_Nero_Sounds=Sons
;Setup Wizard Extra Tasks
french.FileAssociations=Enregistrement types de fichiers:
french.AssocImageFileExt=Associer Nero avec les Fichiers Image standard.
[Languages]
Name: german; MessagesFile: compiler:Languages\German.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_deu.rtf

[Files]
;German
Source: Custom\Help\NeroControlCenter_DEU.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('german'); BeforeInstall: AddLanguage('DEU'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroDEU.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Bin\[FILELOCATION]Core\NeroDEU.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResDEU.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german')
Source: Custom\Help\NeroBurningRom_DEU.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_DEU.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-DEU.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('german')
Source: Custom\Help\NeroCoverDesigner_DEU.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-DEU.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('german')
Source: Custom\Help\NeroWaveEditor_DEU.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_DEU.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_DEU.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('german'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;German
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: DEU; Languages: german; Flags: uninsdeletekey

[Components]
;German
Name: nero_lang\german; Description: {cm:Comp_Nero_lang_german}; Languages: not german

[CustomMessages]
;Setup Wizard - Registration dialog
german.NeroShop=Nero Online Kaufen
german.CustomFormCaption=Benutzerinformationen
german.CustomFormDescription=Bitte geben Sie Ihre Informationen ein.
german.RegistrationInfo=Bitte personalisieren Sie Ihre Kopie von Nero, indem Sie Ihren Namen und%nIhre Seriennummer eingeben.
german.RegistrationWelcome=Vielen Dank dass Sie Nero gekauft haben.
german.RegistrationWelcomeCaption=Willkommen bei Nero
german.RegistrationCaption=Registration
german.NeroShopCaption=Keine Seriennummer?
german.NeroShopURL=http://www.nero.com/deu/catalog.html
german.RegistrationName=Benutzername:
german.RegistrationOrg=Organisation:
german.RegistrationSerial=Seriennummer:
;Filetype descriptions - Nero CoverDesigner
german.CDC_Description=Nero CD-Cover-Dokument
german.NCD_Description=Nero CD-Cover-Dokument
german.NCT_Description=Nero CoverDesigner Vorlage
;Filetype descriptions - Nero Burning Rom
german.CUE_Description=Image Dateien
german.IMG_Description=Image Dateien
german.ISO_Description=Image Dateien
german.NAB_Description=Audio-CD-Zusammenstellung
german.NHF_Description=HFS CD-Zusammenstellung
german.NHV_Description=HD-BURN-Video-Zusammenstellung
german.NMD_Description=miniDVD-Zusammenstellung
german.NR3_Description=CD-ROM (MP3)-Zusammenstellung
german.NR4_Description=CD-ROM (AAC)-Zusammenstellung
german.NRA_Description=Audio-CD-Zusammenstellung
german.NRB_Description=CD-ROM (Boot)-Zusammenstellung
german.NRC_Description=CD-ROM (UDF/ISO)-Zusammenstellung
german.NRD_Description=DVD-Video-Zusammenstellung
german.NRE_Description=CD-EXTRA-Zusammenstellung
german.NRG_Description=Image Dateien
german.NRH_Description=CD-ROM (Hybrid)-Zusammenstellung
german.NRI_Description=CD-ROM (ISO)-Zusammenstellung
german.NRJ_Description=JukeBox-Zusammenstellung
german.NRM_Description=Mixmodus-CD-Zusammenstellung
german.NRS_Description=CD-ROM (EFI Boot)-Zusammenstellung
german.NRU_Description=CD-ROM (UDF)-Zusammenstellung
german.NRV_Description=Video-CD Compilation
german.NRW_Description=CD-ROM (WMA)-Zusammenstellung
german.NSD_Description=Super Video-CD-Zusammenstellung
;Setup Wizard Component Description
german.Comp_Nero_lang=Sprache
german.Comp_Nero_lang_dutch=Holl�ndisch
german.Comp_Nero_lang_english=Englisch
german.Comp_Nero_lang_german=Deutsch
german.Comp_Nero_Sounds=Kl�nge
;Setup Wizard Extra Tasks
german.FileAssociations=Dateiverkn�pfungen w�hlen:
german.AssocImageFileExt=Nero mit Standard CD-Images verkn�pfen
[Languages]
Name: greek; MessagesFile: compiler:Languages\Greek.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
;Greek
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('greek'); BeforeInstall: AddLanguage('ELL'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroELL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Bin\[FILELOCATION]Core\NeroELL.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResELL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('greek'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-ELL.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('greek')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('greek'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-ELL.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('greek')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('greek'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('greek'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('greek'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Greek
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ELL; Languages: greek; Flags: uninsdeletekey

[Components]
;Greek
Name: nero_lang\greek; Description: {cm:Comp_Nero_lang_greek}; Languages: not greek

[CustomMessages]
;Greek
;Setup Wizard - Registration dialog
greek.CustomFormCaption=����������� ������
greek.CustomFormDescription=�������� ����������� �� �������� ���
greek.RegistrationInfo=�������� �������������� �� ��������� ��� Nero 8 ���������� �� ����� ��� ���%n��� �������� ��� ������.
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
[Languages]
Name: hungarian; MessagesFile: compiler:Languages\Hungarian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf

[Files]
;Hungarian
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('hungarian'); BeforeInstall: AddLanguage('HUN'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroHUN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian')
Source: Bin\[FILELOCATION]Core\Nerohun.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResHUN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-HUN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('hungarian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-HUN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('hungarian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Hungarian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: HUN; Languages: hungarian; Flags: uninsdeletekey

[Components]
;Hungarian
Name: nero_lang\hungarian; Description: {cm:Comp_Nero_lang_hungarian}; Languages: not hungarian

[CustomMessages]
;Hungarian
;Setup Wizard - Registration dialog
hungarian.CustomFormCaption=V�s�rl�i inform�ci�
hungarian.CustomFormDescription=K�rem, adja meg az adatokat.
hungarian.RegistrationInfo=Szabja testre a Nero 8 ezen p�ld�ny�t nev�nek �s sorozatsz�m�nak be�r�s�val.
hungarian.RegistrationWelcome=K�sz�nj�k, hogy megv�s�rolta a Nero-t!
hungarian.RegistrationWelcomeCaption=�dv�z�lj�k a Nero-ban
hungarian.RegistrationCaption=Regisztr�ci�
hungarian.NeroShopCaption=Nincs sz�riasz�m?
hungarian.NeroShop=Nero Online V�s�rl�s�
hungarian.NeroShopURL=http://www.nero.com/eng/catalog.html
hungarian.RegistrationName=N�v:
hungarian.RegistrationOrg=C�g:
hungarian.RegistrationSerial=Sz�riasz�m:
;Filetype descriptions - Nero CoverDesigner
hungarian.CDC_Description=Nero CoverDesigner Dokumentum
hungarian.NCD_Description=Nero CoverDesigner Dokumentum
hungarian.NCT_Description=Nero CoverDesigner Sablonf�jl
;Filetype descriptions - Nero Burning Rom
hungarian.CUE_Description=CD-k�p f�jl
hungarian.IMG_Description=CD-k�p f�jl
hungarian.ISO_Description=CD-k�p f�jl
hungarian.NAB_Description=Audiobook CD-ROM �ssze�ll�t�s
hungarian.NHF_Description=HFS-CD �ssze�ll�t�s
hungarian.NHV_Description=HD-BURN-Video �ssze�ll�t�s
hungarian.NMD_Description=MiniDVD �ssze�ll�t�s
hungarian.NR3_Description=CD-ROM �ssze�ll�t�s (MP3)
hungarian.NR4_Description=CD-ROM �ssze�ll�t�s (AAC)
hungarian.NRA_Description=Audio-CD �ssze�ll�t�s
hungarian.NRB_Description=CD-ROM �ssze�ll�t�s (Boot)
hungarian.NRC_Description=CD-rom �ssze�ll�t�s (UDF/ISO)
hungarian.NRD_Description=DVD-Video �ssze�ll�t�s
hungarian.NRE_Description=CD Extra �ssze�ll�t�s
hungarian.NRG_Description=CD-k�p f�jl
hungarian.NRH_Description=Hybrid CD-ROM �ssze�ll�t�s
hungarian.NRI_Description=CD-ROM �ssze�ll�t�s (ISO)
hungarian.NRJ_Description=JukeBox �ssze�ll�t�s
hungarian.NRM_Description=Mixed-Mode-CD �ssze�ll�t�s
hungarian.NRS_Description=CD-ROM (EFI Boot) �ssze�ll�t�s
hungarian.NRU_Description=CD-ROM �ssze�ll�t�s (UDF)
hungarian.NRV_Description=Video-CD �ssze�ll�t�s
hungarian.NRW_Description=WMA CD-ROM �ssze�ll�t�s
hungarian.NSD_Description=Super Video CD �ssze�ll�t�s
;Setup Component Description
hungarian.Comp_Nero_lang=Nyelv
hungarian.Comp_Nero_lang_english=Angol
hungarian.Comp_Nero_lang_hungarian=Magyar
hungarian.Comp_Nero_Sounds=Hangok
;Setup register filetypes
hungarian.FileAssociations=Regisztr�lt F�jlt�pusok:
hungarian.AssocImageFileExt=Nero t�rs�t�sa az alap�rtelmezett CD-k�p f�jlokkal
[Languages]
Name: italian; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ita.rtf

[Files]
;Italian
Source: Custom\Help\NeroControlCenter_ITA.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('italian'); BeforeInstall: AddLanguage('ITA'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroITA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian')
Source: Bin\[FILELOCATION]Core\NeroITA.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResITA.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian')
Source: Custom\Help\NeroBurningRom_ITA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ITA.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-ITA.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('italian')
Source: Custom\Help\NeroCoverDesigner_ITA.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-ITA.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('italian')
Source: Custom\Help\NeroWaveEditor_ITA.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ITA.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ITA.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('italian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Italian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ITA; Languages: italian; Flags: uninsdeletekey

[Components]
;Italian
Name: nero_lang\italian; Description: {cm:Comp_Nero_lang_italian}; Languages: not italian

[CustomMessages]
;Italian
;Setup Wizard - Registration dialog
italian.CustomFormCaption=Informazioni proprietario
italian.CustomFormDescription=Per favore inserisci le tue informazioni.
italian.RegistrationInfo=Per favore personalizza la tua copia di Nero 8 inserendo il tuo nome ed%nil tuo numero di serie.
italian.RegistrationWelcome=Grazie per aver acquistato la tua copia di Nero.
italian.RegistrationWelcomeCaption=Benvenuto a Nero
italian.RegistrationCaption=Registrazione
italian.NeroShopCaption=Nessun numero di serie?
italian.NeroShop=Negozio online di Nero�
italian.NeroShopURL=http://www.nero.com/ita/catalog.html
italian.RegistrationName=Nome:
italian.RegistrationOrg=Organizzazione:
italian.RegistrationSerial=Numero di serie:
;Filetype descriptions - Nero CoverDesigner
italian.CDC_Description=Documento Nero CoverDesigner
italian.NCD_Description=Documento Nero CoverDesigner
italian.NCT_Description=Modello Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
italian.CUE_Description=File Immagine CD
italian.IMG_Description=File Immagine CD
italian.ISO_Description=File Immagine CD
italian.NAB_Description=Compilation Audiolibro CD-ROM
italian.NHF_Description=Compilation HFS-CD
italian.NHV_Description=Compilation HD-BURN-Video
italian.NMD_Description=Compilation MiniDVD
italian.NR3_Description=Compilation CD-ROM (MP3)
italian.NR4_Description=Compilation CD-ROM (AAC)
italian.NRA_Description=Compilation Audio-CD
italian.NRB_Description=Compilation CD-ROM (Avvio)
italian.NRC_Description=Compilation CD-rom (UDF/ISO)
italian.NRD_Description=Compilation DVD-Video
italian.NRE_Description=Compilation CD Extra
italian.NRG_Description=File Immagine CD
italian.NRH_Description=Compilation CD-ROM Ibrido
italian.NRI_Description=Compilation CD-ROM (ISO)
italian.NRJ_Description=Compilation JukeBox
italian.NRM_Description=Compilation Mixed-Mode-CD
italian.NRS_Description=Compilation CD-ROM (Avvio EFI)
italian.NRU_Description=Compilation CD-ROM (UDF)
italian.NRV_Description=Compilation Video-CD
italian.NRW_Description=Compilation CD-ROM WMA
italian.NSD_Description=Compilation Super Video CD
;Setup Component Description
italian.Comp_Nero_lang=Lingua
italian.Comp_Nero_lang_english=Inglese
italian.Comp_Nero_lang_italian=Italiano
italian.Comp_Nero_Sounds=Suoni
;Setup register filetypes
italian.FileAssociations=Registra tipi di File:
italian.AssocImageFileExt=Associa Nero con i tipi predefiniti di file immagine di CD
language_italian=italian
[Languages]
Name: norwegian; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_eng.rtf

[Files]
;Norwegian
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('norwegian'); BeforeInstall: AddLanguage('NOR'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroNOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian')
Source: Bin\[FILELOCATION]Core\NeroNOR.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResNOR.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-NOR.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('norwegian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-NOR.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('norwegian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('norwegian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Norwegian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: NOR; Languages: norwegian; Flags: uninsdeletekey

[Components]
;Norwegian
Name: nero_lang\norwegian; Description: {cm:Comp_Nero_lang_norwegian}; Languages: not norwegian

[CustomMessages]
;Norwegian
;Setup Wizard - Registration dialog
norwegian.CustomFormDescription=Vennligst fyll inn din bruker informasjon.
norwegian.CustomFormCaption=Bruker informasjon
norwegian.RegistrationInfo=Vennligst gj�r din kopi av Nero 8 personlig ved og taste inn navn og %ndin produkt n�kkel.
norwegian.RegistrationWelcome=Takk for at du har kj�pt en kopi av Nero.
norwegian.RegistrationWelcomeCaption=Velkommen til Nero
norwegian.RegistrationCaption=Registrering
norwegian.NeroShopCaption=Ingen Produkt n�kkel?
norwegian.NeroShop=Nero Online nettbutikk�
norwegian.NeroShopURL=http://www.nero.com/eng/catalog.html
norwegian.RegistrationName=Navn:
norwegian.RegistrationOrg=Organisasjon:
norwegian.RegistrationSerial=Produkt n�kkel:
;Filetype descriptions - Nero CoverDesigner
norwegian.CDC_Description=Nero CoverDesigner Dokument
norwegian.NCD_Description=Nero CoverDesigner Dokument
norwegian.NCT_Description=Nero CoverDesigner Mal
;Filetype descriptions - Nero Burning Rom
norwegian.CUE_Description=Image-filer
norwegian.IMG_Description=Image-filer
norwegian.ISO_Description=Image-filer
norwegian.NAB_Description=Audiobook CD-ROM Compilation
norwegian.NHF_Description=Kompilasjon for HFS CD
norwegian.NHV_Description=Kompilasjon for HD-BURN-Video
norwegian.NMD_Description=Kompilasjon for miniDVD
norwegian.NR3_Description=Kompilasjon for CD-ROM (MP3)
norwegian.NR4_Description=Kompilasjon for CD-ROM (AAC)
norwegian.NRA_Description=Kompilasjon av lyd-CD
norwegian.NRB_Description=Kompilasjon for CD-ROM (oppstartbar)
norwegian.NRC_Description=Kompilasjon for CD-ROM (UDF/ISO)
norwegian.NRD_Description=Kompilasjon for DVD-Video
norwegian.NRE_Description=Kompilasjon for CD EXTRA
norwegian.NRG_Description=Image-filer
norwegian.NRH_Description=Kompilasjon for CD-ROM (hybrid)
norwegian.NRI_Description=Kompilasjon for CD-ROM (ISO)
norwegian.NRJ_Description=Kompilasjon for JukeBox
norwegian.NRM_Description=Kompilasjon for Mixed Mode-CD
norwegian.NRS_Description=Kompilasjon for CD-ROM (EFI Boot)
norwegian.NRU_Description=Kompilasjon for CD-ROM (UDF)
norwegian.NRV_Description=Kompilasjon for Video-CD
norwegian.NRW_Description=Kompilasjon for CD-ROM (WMA)
norwegian.NSD_Description=Kompilasjon for Super Video CD
norwegian.Comp_Nero_lang=Spr�k
norwegian.Comp_Nero_lang_english=Engelsk
norwegian.Comp_Nero_lang_norwegian=Norsk
norwegian.Comp_Nero_Sounds=Lyder
;Setup register filetypes
norwegian.FileAssociations=Registrer Fil typer:
norwegian.AssocImageFileExt=Assoier Nero med standard CD-Image filer
[Languages]
Name: polish; MessagesFile: compiler:Languages\Polish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf

[Files]
;Polish
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('polish'); BeforeInstall: AddLanguage('PLK'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroPLK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish')
Source: Bin\[FILELOCATION]Core\NeroPLK.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPLK.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('polish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-PLK.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('polish')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('polish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-PLK.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('polish')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('polish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('polish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('polish'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Polish
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PLK; Languages: polish; Flags: uninsdeletekey

[Components]
;Polish
Name: nero_lang\polish; Description: {cm:Comp_Nero_lang_polish}; Languages: not polish

[CustomMessages]
;Polish
;Setup Wizard - Registration dialog
polish.CustomFormCaption=Dane Klienta
polish.CustomFormDescription=Wpisz swoje dane
polish.RegistrationInfo=Spersonalizuj swoja kopie poprzez wpisanie swego imienia i%nnumeru seryjnego.
polish.RegistrationWelcome=Dziekuje za zakupienie Nero.
polish.RegistrationWelcomeCaption=Witaj w Nero
polish.RegistrationCaption=Rejestracja
polish.NeroShopCaption=Brak numeru?
polish.NeroShop=Nero Online Shop�
polish.NeroShopURL=http://www.nero.com/plk/catalog.html
polish.RegistrationName=Imie:
polish.RegistrationOrg=Organizacja:
polish.RegistrationSerial=Numer Seryjny:
;Filetype descriptions - Nero CoverDesigner
polish.CDC_Description=Nero CoverDesigner Dokument
polish.NCD_Description=Nero CoverDesigner Dokument
polish.NCT_Description=Nero CoverDesigner Szablon
;Filetype descriptions - Nero Burning Rom
polish.CUE_Description=CD-Image Plik
polish.IMG_Description=CD-Image Plik
polish.ISO_Description=CD-Image Plik
polish.NAB_Description=Audiobook CD-ROM Kompilacja
polish.NHF_Description=HFS-CD Kompilacja
polish.NHV_Description=HD-BURN-Video Kompilacja
polish.NMD_Description=MiniDVD Kompilacja
polish.NR3_Description=CD-ROM Kompilacja (MP3)
polish.NR4_Description=CD-ROM Kompilacja (AAC)
polish.NRA_Description=Audio-CD Kompilacja
polish.NRB_Description=CD-ROM Kompilacja (Boot)
polish.NRC_Description=CD-Rom Kompilacja (UDF/ISO)
polish.NRD_Description=DVD-Video Kompilacja
polish.NRE_Description=CD Extra Kompilacja
polish.NRG_Description=CD-Image Plik
polish.NRH_Description=Hybrid CD-ROM Kompilacja
polish.NRI_Description=CD-ROM Kompilacja (ISO)
polish.NRJ_Description=JukeBox Kompilacja
polish.NRM_Description=Mixed-Mode-CD Kompilacja
polish.NRS_Description=CD-ROM (EFI Boot) Kompilacja
polish.NRU_Description=CD-ROM Kompilacja (UDF)
polish.NRV_Description=Video-CD Kompilacja
polish.NRW_Description=WMA CD-ROM Kompilacja
polish.NSD_Description=Super Video CD Kompilacja
;Setup Component Description
polish.Comp_Nero_lang=Jezyk
polish.Comp_Nero_lang_english=Angielsko
polish.Comp_Nero_lang_polish=Polski
polish.Comp_Nero_Sounds=Dzwieki
;Setup register filetypes
polish.FileAssociations=Skojarz Typy Plik�w:
polish.AssocImageFileExt=Skojarz z Nero standardowe pliki CD-Image
[Languages]
Name: portuguese; MessagesFile: compiler:Languages\portuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_PTG.rtf
Name: portuguese_brazilian; MessagesFile: compiler:Languages\brazilianportuguese.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_PTG.rtf

[Files]
;Portuguese
Source: Custom\Help\NeroControlCenter_PTG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('portuguese'); BeforeInstall: AddLanguage('PTG'); Flags: ignoreversion replacesameversion
Source: Bin\[FILELOCATION]Core\NeroPTG.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Custom\Bin\Core\NeroPTG.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPTG.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroBurningRom_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-PTG.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroCoverDesigner_PTG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-PTG.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese')
Source: Custom\Help\NeroWaveEditor_PTG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_PTG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_PTG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('portuguese'); Flags: ignoreversion replacesameversion
#endif

;Portuguese Brazilian
Source: Custom\Help\NeroControlCenter_PTB.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('portuguese_brazilian'); BeforeInstall: AddLanguage('PTB'); Flags: ignoreversion replacesameversion
Source: Bin\[FILELOCATION]Core\NeroPTB.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Bin\Core\NeroPTB.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResPTB.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroBurningRom_PTB.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_PTG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-PTB.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroCoverDesigner_PTB.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-PTB.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese_brazilian')
Source: Custom\Help\NeroWaveEditor_PTG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_PTG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_PTG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('portuguese_brazilian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Portuguese
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PTG; Languages: portuguese; Flags: uninsdeletekey
;Portuguese Brazilian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: PTB; Languages: portuguese_brazilian; Flags: uninsdeletekey

[Components]
;Portuguese
Name: nero_lang\portuguese; Description: {cm:Comp_Nero_lang_portuguese}; Languages: not portuguese
;Portuguese Brazilian
Name: nero_lang\portuguese_brazilian; Description: {cm:Comp_Nero_lang_portuguese_brazilian}; Languages: not portuguese_brazilian

[CustomMessages]
;Portuguese Brazilian
;Setup Wizard - Registration dialog
portuguese_brazilian.CustomFormCaption=Informa��es sobre o cliente
portuguese_brazilian.CustomFormDescription=Por favor digite suas informa��es
portuguese_brazilian.RegistrationInfo=Personalize sua c�pia do Nero 8 fornecendo seu nome e seu n�mero serial.
portuguese_brazilian.RegistrationWelcome=Obrigado por registrar sua c�pia do Nero.
portuguese_brazilian.RegistrationWelcomeCaption=Bem Vindo ao Nero
portuguese_brazilian.RegistrationCaption=Registro
portuguese_brazilian.NeroShopCaption=Sem o n�mero serial?
portuguese_brazilian.NeroShop=Loja Online do Nero�
portuguese_brazilian.NeroShopURL=http://www.nero.com/ptb/catalog.html
portuguese_brazilian.RegistrationName=Nome:
portuguese_brazilian.RegistrationOrg=Empresa:
portuguese_brazilian.RegistrationSerial=N�mero serial:
;Filetype descriptions - Nero CoverDesigner
portuguese_brazilian.CDC_Description=Documentos do Nero CoverDesigner
portuguese_brazilian.NCD_Description=Documentos do Nero CoverDesigne
portuguese_brazilian.NCT_Description=Modelos do Nero CoverDesigner
;Filetype descriptions - Nero Burning Rom
portuguese_brazilian.CUE_Description=Arquivos de Imagem
portuguese_brazilian.IMG_Description=Arquivos de Imagem
portuguese_brazilian.ISO_Description=Arquivos de Imagem
portuguese_brazilian.NAB_Description=Compila��o de CD-ROM (Audiobook)
portuguese_brazilian.NHF_Description=Compila��o de CD HFS
portuguese_brazilian.NHV_Description=Compila��o de V�deo HD-BURN
portuguese_brazilian.NMD_Description=Compila��o de miniDVD
portuguese_brazilian.NR3_Description=Compila��o de CD-ROM (MP3)
portuguese_brazilian.NR4_Description=Compila��o de CD-ROM (AAC)
portuguese_brazilian.NRA_Description=Compila��o de CD de �udio
portuguese_brazilian.NRB_Description=Compila��o de CD-ROM (Inicializa��o)
portuguese_brazilian.NRC_Description=Compila��o de CD-ROM (UDF/ISO)
portuguese_brazilian.NRD_Description=Compila��o de DVD de V�deo
portuguese_brazilian.NRE_Description=Compila��o de CD Extra
portuguese_brazilian.NRG_Description=Arquivos de Imagem
portuguese_brazilian.NRH_Description=Compila��o de CD-ROM (H�brido)
portuguese_brazilian.NRI_Description=Compila��o de CD-ROM (ISO)
portuguese_brazilian.NRJ_Description=Compila��o de JukeBox
portuguese_brazilian.NRM_Description=Compila��o de CD Mixed Mode
portuguese_brazilian.NRS_Description=Compila��o de CD-ROM (Inicializa��o EFI)
portuguese_brazilian.NRU_Description=Compila��o de CD-ROM (UDF)
portuguese_brazilian.NRV_Description=Compila��o de CD de V�deo
portuguese_brazilian.NRW_Description=Compila��o de CD-ROM (WMA)
portuguese_brazilian.NSD_Description=Compila��o de CD de Super V�deo
;Setup Component Description
portuguese_brazilian.Comp_Nero_lang=Idioma
portuguese_brazilian.Comp_Nero_lang_english=Ingl�s
portuguese_brazilian.Comp_Nero_lang_portuguese_brazilian=Portugu�s Brasileiro
portuguese_brazilian.Comp_Nero_lang_portuguese=Portugu�s
portuguese_brazilian.Comp_Nero_Sounds=Sons
;Setup register filetypes
portuguese_brazilian.FileAssociations=Registrar arquivos do tipo:
portuguese_brazilian.AssocImageFileExt=Associar o Nero aos Arquivos de Imagem Padr�o
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
[Languages]
Name: slovenian; MessagesFile: compiler:Languages\Slovenian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf

[Files]
;Slovenian
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('slovenian'); BeforeInstall: AddLanguage('SLV'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroSLV.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian')
Source: Bin\[FILELOCATION]Core\NeroSLV.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResSLV.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('slovenian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-SLV.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('slovenian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('slovenian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-SLV.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('slovenian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('slovenian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('slovenian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('slovenian'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Slovenian
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: SLV; Languages: slovenian; Flags: uninsdeletekey

[Components]
;Slovenian
Name: nero_lang\slovenian; Description: {cm:Comp_Nero_lang_slovenian}; Languages: not Slovenian

[CustomMessages]
;Slovenian
;Setup Wizard - Registration dialog
slovenian.CustomFormCaption=Podatki o stranki
slovenian.CustomFormDescription=Prosimo vnesite va�e podatke.
slovenian.RegistrationInfo=Prosimo vnesite podatke za va� Nero 8, vpi�ite ime in%nva�o serijsko �tevilko.
slovenian.RegistrationWelcome=Zahvaljujemo se vam za nakup programa.
slovenian.RegistrationWelcomeCaption=Pozdravljeni v Nero
slovenian.RegistrationCaption=Registracija
slovenian.NeroShopCaption=Nimate serijske �tevilke?
slovenian.NeroShop=Nero spletna trgovina�
slovenian.NeroShopURL=http://www.nero.com/eng/catalog.html
slovenian.RegistrationName=Ime:
slovenian.RegistrationOrg=Organizacija:
slovenian.RegistrationSerial=Serijska �tevilka:
;Filetype descriptions - Nero CoverDesigner
slovenian.CDC_Description=Nero CoverDesigner Dokument
slovenian.NCD_Description=Nero CoverDesigner Dokument
slovenian.NCT_Description=Nero CoverDesigner Predloga
;Filetype descriptions - Nero Burning Rom
slovenian.CUE_Description=CD-slika
slovenian.IMG_Description=CD-slika
slovenian.ISO_Description=CD-slika
slovenian.NAB_Description=Audiobook CD-ROM kompilacija
slovenian.NHF_Description=HFS-CD kompilacija
slovenian.NHV_Description=HD-BURN-Video kompilacija
slovenian.NMD_Description=MiniDVD kompilacija
slovenian.NR3_Description=CD-ROM kompilacija (MP3)
slovenian.NR4_Description=CD-ROM kompilacija (AAC)
slovenian.NRA_Description=Audio-CD kompilacija
slovenian.NRB_Description=CD-ROM kompilacija (Boot)
slovenian.NRC_Description=CD-ROM kompilacija (UDF/ISO)
slovenian.NRD_Description=DVD-Video kompilacija
slovenian.NRE_Description=CD Extra kompilacija
slovenian.NRG_Description=CD-slika
slovenian.NRH_Description=Hybrid CD-ROM kompilacija
slovenian.NRI_Description=CD-ROM kompilacija(ISO)
slovenian.NRJ_Description=JukeBox kompilacija
slovenian.NRM_Description=Mixed-Mode-CD kompilacija
slovenian.NRS_Description=CD-ROM (EFI Boot) kompilacija
slovenian.NRU_Description=CD-ROM kompilacija (UDF)
slovenian.NRV_Description=Video-CD kompilacija
slovenian.NRW_Description=WMA CD-ROM kompilacija
slovenian.NSD_Description=Super Video CD kompilacija
;Setup Component Description
slovenian.Comp_Nero_lang=Jezik
slovenian.Comp_Nero_lang_english=Angle�cina
slovenian.Comp_Nero_lang_slovenian=Sloven�cina
slovenian.Comp_Nero_Sounds=Zvoki
;Setup register filetypes
slovenian.FileAssociations=Registrirane vrste datotek:
slovenian.AssocImageFileExt=Registriraj vrste CD slik za Nero
[Languages]
Name: spanish; MessagesFile: compiler:Languages\spanish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ESP.rtf
Name: spanish_latin_american; MessagesFile: compiler:Languages\spanish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ESM.rtf

[LangOptions]
spanish_latin_american.LanguageName=Espa<00F1>ol (Latino Americano)

[Files]
;Spanish
Source: Custom\Help\NeroControlCenter_ESP.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('spanish'); BeforeInstall: AddLanguage('ESP'); Flags: ignoreversion replacesameversion
Source: Bin\[FILELOCATION]Core\NeroESP.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish')
Source: Custom\Bin\Core\NeroESP.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResESP.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish')
Source: Custom\Help\NeroBurningRom_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-ESP.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish')
Source: Custom\Help\NeroCoverDesigner_ESP.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-ESP.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish')
Source: Custom\Help\NeroWaveEditor_ESP.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ESP.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('spanish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ESP.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('spanish'); Flags: ignoreversion replacesameversion
#endif

;Spanish Latin American
Source: Custom\Help\NeroControlCenter_ESP.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('spanish_latin_american'); BeforeInstall: AddLanguage('ESL'); Flags: ignoreversion replacesameversion
Source: Bin\[FILELOCATION]Core\NeroESL.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Bin\Core\NeroESL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResESL.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Help\NeroBurningRom_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ESP.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('spanish_latin_american'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-ESL.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Help\NeroCoverDesigner_ESP.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('spanish_latin_american'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-ESL.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish_latin_american')
Source: Custom\Help\NeroWaveEditor_ESP.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('spanish_latin_american'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ESP.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('spanish_latin_american'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroDiscSpeed_ESP.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('spanish_latin_american'); Flags: ignoreversion replacesameversion
#endif

[Registry]
;Spanish
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ESP; Languages: spanish; Flags: uninsdeletekey
;Spanish Latin American
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ESL; Languages: spanish_latin_american; Flags: uninsdeletekey

[Components]
;Spanish
Name: nero_lang\spanish; Description: {cm:Comp_Nero_lang_spanish}; Languages: not spanish
;Spanish Latin American
Name: nero_lang\spanish_latin_american; Description: {cm:Comp_Nero_lang_spanish_latin_american}; Languages: not spanish_latin_american

[CustomMessages]
;Spanish
;Setup Wizard - Registration dialog
spanish.CustomFormCaption=Informaci�n de Cliente
spanish.CustomFormDescription=Por favor introduzca sus datos.
spanish.RegistrationInfo=Por favor personalice su copia de Nero 8 introduciendo su nombre y%nsu n�mero de serie a continuaci�n.
spanish.RegistrationWelcome=Gracias por comprar su copia de Nero.
spanish.RegistrationWelcomeCaption=Bienvenido a Nero
spanish.RegistrationCaption=Registro
spanish.NeroShopCaption=No tiene n�mero de serie?
spanish.NeroShop=Tienda Online de Nero�
spanish.NeroShopURL=http://www.nero.com/esp/catalog.html
spanish_latin_american.NeroShopURL=http://www.nero.com/esl/catalog.html
spanish.RegistrationName=Nombre:
spanish.RegistrationOrg=Organizaci�n:
spanish.RegistrationSerial=N�mero de Serie:
;Filetype descriptions - Nero CoverDesigner
spanish.CDC_Description=Nero Cover Designer Documento
spanish.NCD_Description=Nero Cover Designer Documento
spanish.NCT_Description=Nero Cover Designer Plantilla
;Filetype descriptions - Nero Burning Rom
spanish.CUE_Description=Archivos de imagen
spanish.IMG_Description=Archivos de imagen
spanish.ISO_Description=Archivos de imagen
spanish.NAB_Description=Compilaci�n de CD Audiobook
spanish.NHF_Description=Compilaci�n de CD HFS
spanish.NHV_Description=Compilaci�n de HD-BURN de V�deo
spanish.NMD_Description=Compilaci�n de MiniDVD
spanish.NR3_Description=Compilaci�n de CD-ROM (MP3)
spanish.NR4_Description=Compilaci�n de CD-ROM (AAC)
spanish.NRA_Description=Compilaci�n de CD de audio
spanish.NRB_Description=Compilaci�n de CD-ROM (Arranque)
spanish.NRC_Description=Compilaci�n de CD-ROM (UDF/ISO)
spanish.NRD_Description=Compilaci�n de DVD-V�deo
spanish.NRE_Description=Compilaci�n de CD EXTRA
spanish.NRG_Description=Compilaci�n de CD
spanish.NRH_Description=Compilaci�n de CD-ROM (H�brida)
spanish.NRI_Description=Compilaci�n de CD-ROM (ISO)
spanish.NRJ_Description=Compilaci�n JukeBox
spanish.NRM_Description=Compilaci�n de CD en modo mixto
spanish.NRS_Description=Compilaci�n de CD-ROM (Arranque EFI)
spanish.NRU_Description=Compilaci�n de CD-ROM (UDF)
spanish.NRV_Description=Compilaci�n de v�deo CD
spanish.NRW_Description=Compilaci�n de CD-ROM (WMA)
spanish.NSD_Description=Compilaci�n de CD de superv�deo
;Setup Component Description
spanish.Comp_Nero_lang=Idiomas
spanish.Comp_Nero_lang_english=Ingl�s
spanish.Comp_Nero_lang_spanish=Espa�ol
spanish.Comp_Nero_lang_spanish_latin_american=Espa�ol Latino Americano
spanish.Comp_Nero_Sounds=Sonidos
;Setup register filetypes
spanish.FileAssociations=Asociaci�n de archivos:
spanish.AssocImageFileExt=Asociar Nero con los formatos de Imagen de CD m�s comunes
[Languages]
Name: swedish; MessagesFile: compiler:Languages\Swedish.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_sve.rtf

[Files]
;Swedish
Source: Custom\Help\NeroControlCenter_SVE.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('swedish'); BeforeInstall: AddLanguage('SVE'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Core\NeroSVE.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish')
Source: Bin\[FILELOCATION]Core\NeroSVE.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResSVE.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish')
Source: Custom\Help\NeroBurningRom_SVE.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_SVE.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\Nero CoverDesigner\CoverEd-SVE.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('swedish')
Source: Custom\Help\NeroCoverDesigner_SVE.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('swedish'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\Nero WaveEditor\WaveEdit-SVE.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('swedish')
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
