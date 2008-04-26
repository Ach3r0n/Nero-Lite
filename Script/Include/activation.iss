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
			do if Comparetext('Serial{#NeroMajorVersion}',copy(ValueName[i],1,7)) = 0 then
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
			end
	end
end;

function CheckSerialIsNew(): Boolean;
var
	EvalSerial, UserSerial, S: String;
begin
	if CompareText(Edit3.Text, 'Demo') = 0 then
		begin
			EvalSerial := ExpandConstant('{cm:EvalSerial}');
			StringChangeEx(EvalSerial, '-', '', False);
			UserSerial := getNeroInfo(getSerialValueName());
			StringChangeEx(UserSerial, '-', '', False);
			if CompareText(UserSerial, EvalSerial) <> 0 then
				Result := True
			else
				Result := False;
		end
	else
		begin
			S := Edit3.Text;
			StringChangeEx(S, ' ', '', False);
			if (Length(S) > 0) and (CompareText(Edit3.Text, getNeroInfo(getSerialValueName())) <> 0) then
				Result := True
			else
				begin
					if Length(Edit3.Text) = 0 then
						RegDeleteValue(HKLM,'Software\{#RegPublisherName}\Installation\Families\Nero {#NeroMajorVersion}\Info',getSerialValueName());
					Result := False;
				end
		end
end;
