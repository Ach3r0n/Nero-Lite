#NoTrayIcon
#RequireAdmin
;Windows Text Quick mode
Opt("WinTextMatchMode", 2)
;Advanced Title Match mode
Opt("WinTitleMatchMode", 4)

;Check commandline
If Not $CmdLine[0] = 2  Then
		Exit
	Else
		$serial = $CmdLine[1]
		$neroversion = $CmdLine[2]
EndIf
	
if $neroversion = 7 Then
	$nerotitle = "Nero ProductSetup"
Else
	$nerotitle = "Nero ControlCenter"
EndIf

;Detect if another instance of Nero ControlCenter is running
If ProcessExists("SetupX.exe") Then
	Call("CloseNeroSetup")
EndIf

;Read path of Nero
$apppath = RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Nero"&$neroversion&"Lite_is1","Inno Setup: App Path")
If @error then
	$apppath = @ProgramFilesDir & "\Nero"
EndIf

;Run Nero ControlCenter
$pid = Run(@CommonFilesDir & "\Nero\Nero Web\SetupX.exe MODE=""update""", "", @SW_HIDE)
If not @error then
	If WinWait("[TITLE:"&$nerotitle&"; CLASS:#32770]", "", 10) Then
		$ncc_handle = WinGetHandle("[LAST]")
		WinSetState($ncc_handle, "", @SW_HIDE)
		$dif = 0
		$begin = TimerInit()
		While $dif <= 10000
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
			$controlhandle = ControlGetHandle("[TITLE:"&$nerotitle&"; CLASS:#32770]", "", 10008)
			If not @error Then
				$license_handle = WinGetHandle("[LAST]")
				WinSetState($license_handle, "", @SW_HIDE)
				ControlSetText($license_handle, "", $controlhandle, $serial)
				ControlClick($license_handle, "", "[CLASS:Button; INSTANCE:1]")
				ExitLoop
			Else
				Sleep(10)
			EndIf
			$dif = TimerDiff($begin)
		WEnd
		
		;Close Nero Update Prompt if exists
		If ControlCommand("[TITLE:"&$nerotitle&"; [CLASS:#32770]", "", 15018, "IsVisible") Then
			WinSetState("[LAST]", "", @SW_HIDE)
			ControlClick("[LAST]", "", 15011)
		EndIf
		
		;If error is detected wait until window is closed manually
		$dif = 0
		$begin = TimerInit()
		While $dif <= 2000
			;If updateprompt is visible close window
			If ControlCommand("[CLASS:#32770]", "", 1033, "IsVisible") Then
				If WinGetProcess("[LAST]") = $pid Then
						WinSetState("[LAST]", "", @SW_HIDE)
						ControlClick("[LAST]", "", "[CLASS:Button; INSTANCE:1]")
					ExitLoop
				EndIf
			;If serial is expired wait until window is closed manually
			ElseIf ControlCommand("[CLASS:#32770]", "", 1035, "IsVisible") Then
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
			Else
				Sleep(10)
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
	;Don't ask to update Nero components on startup
	If	$neroversion = 7 Then
		RegWrite("HKLM\Software\Ahead\Installation\Families\Nero 7\Info", "MissingFilesState", "REG_SZ", "0")
	EndIf
EndFunc