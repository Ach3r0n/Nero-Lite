#ifdef ISSI_InitializeWizard
  #define ISSI_useMyInitializeWizard ISSI_InitializeWizard
  #undef ISSI_InitializeWizard
#endif

#ifdef ISSI_WizardBitmapImage
  #ifndef ISSI_WizardBitmapImage2
    #define ISSI_WizardBitmapImage2 ISSI_WizardBitmapImage
    #define ISSI_WizardBitmapImage2_x ISSI_WizardBitmapImage_x
  #endif
#endif

#ifdef ISSI_WizardBitmapImage
  procedure InitializeWizard_WizardBitmapImage();
    var
      ISSI_WizardBitmap_X          : Integer;
      ISSI_WizardBitmap_TextWidth  : Integer;
      ISSI_WizardBitmap2_X         : Integer;
      ISSI_WizardBitmap2_TextWidth : Integer;
  begin
    ISSI_WizardBitmap_X                   := StrToInt(ExpandConstant('{#ISSI_WizardBitmapImage_x}'));
    ISSI_WizardBitmap_TextWidth           := 477 - ISSI_WizardBitmap_X;
    Wizardform.WizardBitmapImage.width    := ISSI_WizardBitmap_X;

  #if defined ISSI_WizardBitmapImage_Align
    Wizardform.WELCOMELABEL1.left         := 18;
    Wizardform.WELCOMELABEL2.left         := 18;
    Wizardform.WizardBitmapImage.left     := ISSI_WizardBitmap_TextWidth+18
  #else
    Wizardform.WELCOMELABEL1.left         := ISSI_WizardBitmap_X+18;
    Wizardform.WELCOMELABEL2.left         := ISSI_WizardBitmap_X+18;
  #endif

    Wizardform.WELCOMELABEL1.width        := ISSI_WizardBitmap_TextWidth-18;
    Wizardform.WELCOMELABEL2.width        := ISSI_WizardBitmap_TextWidth-18;
    ISSI_WizardBitmap2_X                  := StrToInt(ExpandConstant('{#ISSI_WizardBitmapImage2_x}'));
    ISSI_WizardBitmap2_TextWidth          := 477 - ISSI_WizardBitmap2_X;
    Wizardform.WizardBitmapImage2.width   := ISSI_WizardBitmap2_X;

  #if defined ISSI_WizardBitmapImage2_Align
    Wizardform.FINISHEDHEADINGLABEL.left  := 18;
    Wizardform.FINISHEDLABEL.left         := 18;
    Wizardform.WizardBitmapImage2.left    := ISSI_WizardBitmap2_TextWidth+18
  #else
    Wizardform.FINISHEDHEADINGLABEL.left  := ISSI_WizardBitmap2_X+18;
    Wizardform.FINISHEDLABEL.left         := ISSI_WizardBitmap2_X+18;
  #endif

    Wizardform.FINISHEDHEADINGLABEL.width := ISSI_WizardBitmap2_TextWidth-18;
    Wizardform.FINISHEDLABEL.width        := ISSI_WizardBitmap2_TextWidth-18;
  end;
#endif

#ifdef ISSI_WizardSmallBitmapImage
  procedure InitializeWizard_WizardSmallBitmapImage();
    var
      ISSI_WizardSmallBitmap_X         : Integer;
      ISSI_WizardSmallBitmap_TextWidth : Integer;
  begin
    ISSI_WizardSmallBitmap_X                 := StrToInt(ExpandConstant('{#ISSI_WizardSmallBitmapImage_x}'));
    ISSI_WizardSmallBitmap_TextWidth         := 403 - ISSI_WizardSmallBitmap_X;
    Wizardform.WizardSmallBitmapImage.width  := ISSI_WizardSmallBitmap_X;
    Wizardform.WizardSmallBitmapImage.height := 58;

  #if defined ISSI_WizardSmallBitmapImage_Align
    Wizardform.WizardSmallBitmapImage.left   := 0;
    Wizardform.PageNameLabel.left            := ISSI_WizardSmallBitmap_X+18;
    Wizardform.PageDescriptionLabel.left     := ISSI_WizardSmallBitmap_X+24;
  #else
    Wizardform.WizardSmallBitmapImage.left   := 495 - ISSI_WizardSmallBitmap_X;
    Wizardform.PageNameLabel.left            := 18;
    Wizardform.PageDescriptionLabel.left     := 24;
  #endif

    Wizardform.PageNameLabel.width           := 495 - ISSI_WizardSmallBitmap_X -36;
    Wizardform.PageDescriptionLabel.width    := 495 - ISSI_WizardSmallBitmap_X -42;
  end;
#endif

#if defined ISSI_URL
  procedure URLLabelOnClick(Sender: TObject);
    var
      Dummy   : Integer;
      myppURL : String;
  begin
    #if (ISSI_Url=="")
      myppURL := ExpandConstant('{cm:issiUrl}');
    #else
      myppURL := ExpandConstant('{#ISSI_Url}');
    #endif

    ShellExec('open',myppURL, '', '', SW_SHOWNORMAL, ewNoWait, Dummy);
  end;

  procedure InitializeWizardMYURL();
    var
      ISSIButtonLeft : Integer;
      myppURLtext    : String;
      CancelButton   : TButton;
      URLLabel       : TNewStaticText;
  begin
    CancelButton        := WizardForm.CancelButton;
    ISSIButtonLeft      := WizardForm.ClientWidth - CancelButton.Left - CancelButton.Width;

    #if defined (ISSI_UrlText)
      #if (ISSI_UrlText=="")
        myppURLtext     := ExpandConstant('{cm:issiUrlText}');
      #else
        myppURLtext     := ExpandConstant('{#ISSI_UrlText}');
      #endif
    #else
      myppURLtext       := ExpandConstant('{#ISSI_Url}');
    #endif

    URLLabel            := TNewStaticText.Create(WizardForm);
    URLLabel.Top        := CancelButton.Top + CancelButton.Height - URLLabel.Height - 2;
    
    URLLabel.Left     := ISSIButtonLeft;

    URLLabel.Caption    := myppURLtext;
    URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderLine];
    URLLabel.Font.Color := clBlack;
    URLLabel.Cursor     := crHand;
    URLLabel.OnClick    := @URLLabelOnClick;
    URLLabel.Parent     := WizardForm;
  end;
#endif

#if defined(ISSI_WizardBitmapImage)
  procedure CurPageChanged(CurPage: Integer);
    var
      imageFile   : String;
  begin
    #ifdef ISSI_WizardBitmapImage
      if CurPage = wpFinished then begin
        imageFile:=ExpandConstant('{tmp}' + '\WizardBitmapImage2.bmp');

        if not fileexists(imageFile) then begin
          ExtractTemporaryFile(ExtractFileName(imageFile));
        end;

        WizardForm.WizardBitmapImage2.Bitmap.LoadFromFile(imageFile);
      end;
    #endif
  end;
#endif

#if defined(ISSI_URL) || defined(ISSI_WizardBitmapImage) || defined(ISSI_WizardSmallBitmapImage)
  procedure InitializeWizard();
  begin
    #ifdef ISSI_UseMyInitializeWizard
      ISSI_InitializeWizard();
    #endif

    #ifdef ISSI_URL
      InitializeWizardMYURL();
    #endif

    #if defined(ISSI_WizardBitmapImage)
      InitializeWizard_WizardBitmapImage();
    #endif

    #if defined(ISSI_WizardSmallBitmapImage)
      InitializeWizard_WizardSmallBitmapImage();
    #endif
  end;
#endif
