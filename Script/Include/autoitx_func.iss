function AU3_AutoItSetOption(
		option: string;
		value: longint
		): longint;
	external 'AU3_AutoItSetOption@files:autoitx3.dll';

function AU3_ControlClick(
		title: string;
		text: string;
		control: string;
		button: string;
		clicks: longint;
		xpos: longint;
		ypos: longint
		): longint;
	external 'AU3_ControlClick@files:autoitx3.dll';

procedure AU3_ControlGetHandle(
		title: string;
		text: string;
		control: string;
		var rethandle: PAnsiChar;
		buffersize: integer
		);
	external 'AU3_ControlGetHandle@files:autoitx3.dll';

function AU3_ControlSetText(
		title: string;
		text: string;
		control: string;
		controltext: string
		): longint;
	external 'AU3_ControlSetText@files:autoitx3.dll';

function AU3_ProcessClose(
		processname: string
		): longint;
	external 'AU3_ProcessClose@files:autoitx3.dll';

function AU3_ProcessExists(
		processname: string
		): longint;
	external 'AU3_ProcessExists@files:autoitx3.dll';

function AU3_Run(
		filename: string;
		workingdir: string;
		flags: longint
		): longint;
	external 'AU3_Run@files:autoitx3.dll';

function AU3_WinExists(
		title: string;
		text: string
		): longint;
	external 'AU3_WinExists@files:autoitx3.dll';

procedure AU3_WinGetHandle(
		title: string;
		text: string;
		var rethandle: PAnsiChar;
		buffersize: integer
		);
	external 'AU3_WinGetHandle@files:autoitx3.dll';

function AU3_WinSetState(
		title: string;
		text: string;
		flags: longint
		): longint;
	external 'AU3_WinSetState@files:autoitx3.dll';

function AU3_WinWait(
		title: string;
		text: string;
		timeout: longint
		): longint;
	external 'AU3_WinWait@files:autoitx3.dll';
