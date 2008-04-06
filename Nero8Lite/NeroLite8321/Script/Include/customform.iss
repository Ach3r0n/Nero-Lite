procedure NeroShop_OpenURL(Sender: TObject);
var
ErrorCode: Integer;
begin
	ShellExec('open', ExpandConstant('{cm:NeroShopURL}'),'','',SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure CustomForm_Activate(Page: TWizardPage);
begin
end;

function CustomForm_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
	Result := False;
end;

function CustomForm_BackButtonClick(Page: TWizardPage): Boolean;
begin
	Result := True;
end;

function CustomForm_NextButtonClick(Page: TWizardPage): Boolean;
begin
	Result := True;
end;

procedure CustomForm_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
end;

function CustomForm_CreatePage(PreviousPageId: Integer): Integer;
var
	Page: TWizardPage;
begin
	Page := CreateCustomPage(
				PreviousPageId,
				ExpandConstant('{cm:CustomFormCaption}'),
				ExpandConstant('{cm:CustomFormDescription}')
			);

	{ Label1 }
	Label1 := TLabel.Create(Page);
	with Label1 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(52);
		Top			:= ScaleY(116);
		Width		:= ScaleX(31);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:RegistrationName}');
	end;

	{ Label2 }
	Label2 := TLabel.Create(Page);
	with Label2 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(52);
		Top			:= ScaleY(164);
		Width		:= ScaleX(66);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:RegistrationSerial}');
	end;

	{ Label3 }
	Label3 := TLabel.Create(Page);
	with Label3 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(52);
		Top			:= ScaleY(140);
		Width		:= ScaleX(30);
		Height		:= ScaleY(13);
		Caption 	:= ExpandConstant('{cm:RegistrationOrg}');
	end;

	{ Label4 }
	Label4 := TLabel.Create(Page);
	with Label4 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(40);
		Top			:= ScaleY(8);
		Width		:= ScaleX(92);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:RegistrationWelcomeCaption}');
		Font.Color	:= -16777208;
		Font.Height	:= ScaleY(-11);
		Font.Name	:= 'Tahoma';
		Font.Style	:= [fsBold];
	end;

	{ Label5 }
	Label5 :=TLabel.Create(Page);
	with Label5 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(40);
		Top			:= ScaleY(192);
		Width		:= ScaleX(114);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:NeroShopCaption}');
		Font.Color	:= -16777208;
		Font.Height	:= ScaleY(-11);
		Font.Name	:= 'Tahoma';
		Font.Style	:= [fsBold];
	end;
	{ Label6 }
	Label6 := TLabel.Create(Page);
	with Label6 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(52);
		Top			:= ScaleY(28);
		Width		:= ScaleX(261);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:RegistrationWelcome}');
	end;
	{ Label7 }
	Label7 :=TLabel.Create(Page);
	with Label7 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(52);
		Top			:= ScaleY(212);
		Width		:= ScaleX(80);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:NeroShop}');
		Cursor		:= crHand;
		OnClick		:= @NeroShop_OpenURL;
		Font.Style	:= [fsUnderline];
		Font.Color	:= clBlue;
	end;
	{ Label8 }
	Label8 :=TLabel.Create(Page);
	with Label8 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(40);
		Top			:= ScaleY(56);
		Width		:= ScaleX(63);
		Height		:= ScaleY(13);
		Caption		:= ExpandConstant('{cm:RegistrationCaption}');
		Font.Color	:= -16777208;
		Font.Height := ScaleY(-11);
		Font.Name	:= 'Tahoma';
		Font.Style	:= [fsBold];
	end;
	{ Label9 }
	Label9 := TLabel.Create(Page);
	with Label9 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(52);
		Top			:= ScaleY(76);
		Width		:= ScaleX(262);
		Height		:= ScaleY(26);
		Caption		:= ExpandConstant('{cm:RegistrationInfo}');
	end;
	{ Edit1 }
	Edit1 := TEdit.Create(Page);
	with Edit1 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(160);
		Top			:= ScaleY(112);
		Width		:= ScaleX(211);
		Height		:= ScaleY(21);
		TabOrder	:= 0;

		if ExpandConstant('{param:User}') = '' then
			begin
				if getNeroInfo('User') = '' then
					Text := ExpandConstant('{sysuserinfoname}')
				else
					Text := getNeroInfo('User');
			end
		else
			Text := ExpandConstant('{param:User}');
	end;

	{ Edit2 }
	Edit2 := TEdit.Create(Page);
	with Edit2 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(160);
		Top			:= ScaleY(136);
		Width		:= ScaleX(211);
		Height		:= ScaleY(21);
		TabOrder	:= 1;

		if ExpandConstant('{param:Company}') = '' then
			begin
				if getNeroInfo('Company') = ''
					then
						Text := ExpandConstant('{sysuserinfoorg}')
					else
						Text := getNeroInfo('Company');
			end
		else
			Text := ExpandConstant('{param:Company}');
	end;

	{ Edit3 }
	Edit3 :=TEdit.Create(Page);
	with Edit3 do
	begin
		Parent		:= Page.Surface;
		Left		:= ScaleX(160);
		Top			:= ScaleY(160);
		Width		:= ScaleX(211);
		Height		:= ScaleY(21);
		TabOrder	:= 2;

		if ExpandConstant('{param:Serial}') = '' then
			begin
				if (getNeroInfo(getSerialValueName()) = '')
				or (getNeroInfo(getSerialValueName()) = ExpandConstant('{cm:EvalSerial}')) then
					Text := 'Demo'
				else
					Text := getNeroInfo(getSerialValueName());
			end
		else
			Text := ExpandConstant('{param:Serial}');
	end;

	with Page do
		begin
			OnActivate			:= @CustomForm_Activate;
			OnShouldSkipPage	:= @CustomForm_ShouldSkipPage;
			OnBackButtonClick	:= @CustomForm_BackButtonClick;
			OnNextButtonClick	:= @CustomForm_NextButtonClick;
			OnCancelButtonClick	:= @CustomForm_CancelButtonClick;
		end;

	Result :=Page.ID;
end;

function getName(Param:String): String;
begin
 Result := Edit1.Text;
end;

function getOrganisation(Param:String): String;
begin
 Result := Edit2.Text;
end;

function getSerial(Param:String): String;
begin
if AnsiLowercase(Edit3.Text) = 'demo' then
	Result := ExpandConstant('{cm:EvalSerial}')
else
	Result := Edit3.Text
end;
