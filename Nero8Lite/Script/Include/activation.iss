function getNeroInfo(ValueName: String): String;
var
	ValueData:	String;
begin
	RegQueryStringValue(HKLM,'Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info',
		ValueName, ValueData);
	Result := ValueData;
end;

function getSerialValueName(): String;
var
	ValueName:	TArrayOfString;
	ValueData:  String;
	i: Integer;
begin
	if RegGetValueNames(HKLM,'Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info',
		ValueName) then
	begin
		for i := 0 to GetArrayLength(ValueName)-1
			do if Comparetext('Serial',copy(ValueName[i],1,6)) = 0 then
			begin
				//Check if detected serial is in Nero Product Key range
				if RegQueryStringValue(HKLM,'Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info',
					ValueName[i], ValueData) then
				begin
				#ifdef Nero7
					if Pos('C',ValueData) = 2 then
						Result := ValueName[i];
				#endif
				#ifdef Nero8
					if Pos('K',ValueData) = 2 then
						Result := ValueName[i];
				#endif
				end
			end;
	end
end;

function CheckSerialIsNew(): Boolean;
var
	EvalSerial, UserSerial: String;
begin
	if CompareText(Edit3.Text, 'Demo') = 0 then
		begin
			EvalSerial := ExpandConstant('{cm:EvalSerial}');
			StringChangeEx(EvalSerial, '-', '', False);
			UserSerial := getNeroInfo(getSerialValueName());
			StringChangeEx(UserSerial, '-', '', False);
			if
				CompareText(UserSerial, EvalSerial) <> 0 then
					Result := True
			else
				Result := False;
		end
	else
		if CompareText(Edit3.Text, getNeroInfo(getSerialValueName())) = 0 then
			if CompareText(copy(getSerialValueName(),1,7), 'Serial{#NeroMajorVersion}') <> 0 then
				Result := True
			else
				if (Length(getSerialValueName()) < 8) then
					begin
						RegDeleteValue(HKLM,'Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info',getSerialValueName());
						Result := True;
					end
				else
					Result := False
		else
			if CompareText(Edit3.Text, '') = 0 then
				begin
					RegDeleteValue(HKLM,'Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info',getSerialValueName());
					Result := False;
				end
			else
				Result := True;
end;
