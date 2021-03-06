[Files]
;English
#if NeroVersion == 8
Source: Custom\Help\NeroControlCenter_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('english'); BeforeInstall: AddLanguage('ENG')
#endif
#if NeroVersion == 7
Source: Custom\Help\NeroControlCenter_ENG.chm; DestName: NeroProductSetup_ENG.chm; DestDir: {cf}\{#RegPublisherName}\Nero Web; Check: CheckLanguage('english'); BeforeInstall: AddLanguage('ENG')
#endif
Source: Custom\Help\NeroBurningRom_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('english')
Source: Custom\Help\NeroExpress_ENG.chm; DestDir: {app}\Nero Burning ROM; Components: nero_core; Check: CheckLanguage('english')
#ifndef Micro
Source: Custom\Help\NeroCoverDesigner_ENG.chm; DestDir: {app}\Nero CoverDesigner; Components: nero_coverdes; Check: CheckLanguage('english')
Source: Custom\Help\NeroWaveEditor_ENG.chm; DestDir: {app}\Nero WaveEditor; Components: nero_waveedit; Check: CheckLanguage('english')
Source: Custom\Help\NeroBurnRights_ENG.chm; DestDir: {app}\Nero Toolkit\Nero BurnRights; Components: nero_toolkit\nero_burnrights; Check: CheckLanguage('english')
	#if NeroVersion == 8
Source: Custom\Help\NeroDiscSpeed_ENG.chm; DestDir: {app}\Nero Toolkit\Nero DiscSpeed; Components: nero_toolkit\nero_discspeed; Check: CheckLanguage('english')
	#endif
#endif

[Registry]
;English
#if NeroVersion == 8
Root: HKLM; Subkey: Software\Nero\Nero8\Shared; ValueType: string; ValueName: FamilyLanguage; ValueData: ENG; Languages: english; Flags: uninsdeletekey
#endif
#if NeroVersion == 7
Root: HKCU; Subkey: Software\Ahead\Nero - Burning Rom\General; ValueType: string; ValueName: Language; ValueData: ENG; Components: nero_core; Languages: english; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Shared; ValueName: Language; ValueData: ENG; ValueType: string; Languages: english; Flags: uninsdeletekey deletekey
	#ifndef Micro
Root: HKCU; Subkey: Software\Ahead\CDSpeed\General; ValueType: string; ValueName: Language; ValueData: ENG; Languages: english; Components: nero_toolkit\nero_cdspeed; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\DriveSpeed\General; ValueType: string; ValueName: Language; ValueData: ENG; Components: nero_toolkit\nero_drivespeed; Languages: english; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\InfoTool\General; ValueType: string; ValueName: Language; ValueData: ENG; Components: nero_toolkit\nero_infotool; Languages: english; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Ahead\Nero WaveEditor\General; ValueType: string; ValueName: Language; ValueData: ENG; Components: nero_waveedit; Languages: english; Flags: uninsdeletekey
	#endif
#endif
