function MsiQueryProductState(
		productcode: string
		): integer;
	external 'MsiQueryProductStateW@msi.dll stdcall delayload';

procedure DecodeVersion(const Version: cardinal; var a, b: word);
begin
	a := word(Version shr 16);
	b := word(Version and not $ffff0000);
end;

function IsMsiRequiredVersion(Req_MajorVersion, Req_MinorVersion: integer): boolean;
var
	Version, Revision: cardinal;
	Ret_MajorVersion, Ret_MinorVersion:	word;
	MSI_ReqVersion, MSI_RetVersion: integer;
begin
	if FileExists(ExpandConstant('{sys}\msi.dll')) and
			GetVersionNumbers(ExpandConstant('{sys}\msi.dll'), Version, Revision) then
	begin
		DecodeVersion(Version, Ret_MajorVersion, Ret_MinorVersion);
		MSI_ReqVersion := (Req_MajorVersion * 10) + Req_MinorVersion;
		MSI_RetVersion := (Ret_MajorVersion * 10) + Ret_MinorVersion;
		if MSI_RetVersion >= MSI_ReqVersion then
			Result := True;
	end;
end;
