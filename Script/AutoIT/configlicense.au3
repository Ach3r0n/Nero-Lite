#NoTrayIcon
#RequireAdmin
Opt("TrayIconDebug", 1)
Opt("WinSearchChildren", 1)
Opt("WinTextMatchMode", 2) ;
Opt("WinTitleMatchMode", 4)

;Check commandline
If $CmdLine[0] = 0  Then
		Exit
	Else
		$serial = $CmdLine[1]
EndIf

;Detect if another instance of Nero ControlCenter is running
If ProcessExists("SetupX.exe") Then
	Call("CloseNeroSetup")
EndIf

;Read path of Nero
$apppath = RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Nero8Lite_is1","Inno Setup: App Path")
If @error then
	$apppath = @ProgramFilesDir & "\Nero"
EndIf

;Run Nero ControlCenter
$pid = Run(@CommonFilesDir & "\Nero\Nero Web\SetupX.exe MODE=""update""", "", @SW_HIDE)
If not @error then
	If WinWait("[TITLE:Nero ControlCenter; CLASS:#32770]", "", 10) Then
		$ncc_handle = WinGetHandle("[LAST]")
		WinSetState($ncc_handle, "", @SW_HIDE)
		$dif = 0
		$begin = TimerInit()
		While $dif <= 10000
			Sleep(10)
			$controlhandle = ControlGetHandle($ncc_handle, "", "[CLASS:Button; INSTANCE:12]")
			If not @error Then
				ControlClick($controlhandle, "", "")
				ExitLoop
			EndIf
			$dif = TimerDiff($begin)
		WEnd
		
		;Detect add license dialog
		$dif = 0
		$begin = TimerInit()
		While $dif <= 10000
			Sleep(10)
			$controlhandle = ControlGetHandle("[TITLE:Nero ControlCenter; CLASS:#32770]", "", 10008)
			If not @error Then
				$license_handle = WinGetHandle("[LAST]")
				WinSetState($license_handle, "", @SW_HIDE)
				ControlSetText($license_handle, "", $controlhandle, $serial)
				ControlClick($license_handle, "", "[CLASS:Button; INSTANCE:1]")
				ExitLoop
			EndIf
			$dif = TimerDiff($begin)
		WEnd
		
		;If error is detected wait until window is closed manually
		$dif = 0
		$begin = TimerInit()
		While $dif <= 2000
			Sleep(10)
			;If serial is expired wait until window is closed manually
			If ControlCommand("[CLASS:#32770]", "", 1035, "IsVisible") Then
				If WinGetProcess("[LAST]") = $pid Then
					Do 
						sleep(100)
					Until ControlCommand("[LAST]", "", 1035, "IsVisible") = 0
					ExitLoop
				EndIf
			;If invalid serial wait until window is closed manually
			ElseIf ControlCommand("[CLASS:#32770]", "", 10021, "IsVisible") Then
				If WinGetProcess("[LAST]") = $pid Then
					Do 
						sleep(100)
					Until ControlCommand("[LAST]", "", 10021, "IsVisible") = 0
					ExitLoop
				EndIf
			EndIf
			$dif = TimerDiff($begin)
		WEnd
	EndIf
EndIf

Call("CloseNeroSetup")

Exit

; --------- Custom functions -------------------------

Func CloseNeroSetup()
	ProcessClose("SetupX.exe")
EndFunc