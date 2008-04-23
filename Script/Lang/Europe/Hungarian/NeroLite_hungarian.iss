[Languages]
#ifdef Nero8
Name: hungarian; MessagesFile: compiler:Languages\Hungarian.isl; LicenseFile: Bin\[FILELOCATION]Target\Data\Setup\EULA_ene.rtf
#endif
#ifdef Nero7
Name: hungarian; MessagesFile: compiler:Languages\Hungarian.isl; LicenseFile: Bin\[FILELOCATION]Target\Setup\EULA_ene.rtf
#endif

[Files]
;Hungarian
#ifdef Nero8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('hungarian'); BeforeInstall: AddLanguage('HUN'); Flags: ignoreversion replacesameversion
#endif
#ifdef Nero7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\Nero\Nero Web; Check: CheckLanguage('hungarian'); BeforeInstall: AddLanguage('HUN'); Flags: ignoreversion replacesameversion
#endif
Source: Custom\Bin\[FILELOCATION]Core\NeroHUN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian')
Source: Bin\[FILELOCATION]Core\Nerohun.txt; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian')
Source: Bin\[FILELOCATION]Common Files\Lib\BCGCBProResHUN.nls; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian')
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
#ifndef Micro
Source: Custom\Bin\[FILELOCATION]Nero CoverDesigner\CoverEd-HUN.nls; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('hungarian')
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Bin\[FILELOCATION]Nero WaveEditor\WaveEdit-HUN.nls; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('hungarian')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
	#ifdef Nero8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('hungarian'); Flags: ignoreversion replacesameversion
	#endif
#endif

[Registry]
;Hungarian
#ifdef Nero8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: HUN; Languages: hungarian; Flags: uninsdeletekey
#endif
#ifdef Nero7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: HUN; Components: nero_core; Languages: hungarian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueType: string; ValueName: Language; ValueData: HUN; Languages: hungarian; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: HUN; Components: nero_toolkit\nero_cdspeed; Languages: hungarian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: HUN; Components: nero_toolkit\nero_drivespeed; Languages: hungarian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: HUN; Components: nero_toolkit\nero_infotool; Languages: hungarian; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: HUN; Components: nero_waveedit; Languages: hungarian; Flags: uninsdeletekey
	#endif
#endif

[Components]
;Hungarian
Name: nero_lang\hungarian; Description: {cm:Comp_Nero_lang_hungarian}; Languages: not hungarian

[CustomMessages]
;Hungarian
;Setup Wizard - Registration dialog
hungarian.CustomFormCaption=V�s�rl�i inform�ci�
hungarian.CustomFormDescription=K�rem, adja meg az adatokat.
hungarian.RegistrationInfo=Szabja testre a Nero {#NeroMajorVersion} ezen p�ld�ny�t nev�nek �s sorozatsz�m�nak be�r�s�val.
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
