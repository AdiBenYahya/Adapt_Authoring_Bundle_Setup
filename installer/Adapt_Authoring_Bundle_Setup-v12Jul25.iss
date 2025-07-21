//Seen by the user.
#define setupDisplayName "Adapt Authoring Bundle Setup"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
#define setupVersion " v12Jul25"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
#define setupPublisher "Adapt Learning community"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
#define setupFileName "Adapt_Authoring_Bundle_Setup-v12Jul25"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
//#define setupURL ""
#define setupInstallHighlevelDir "Adapt_Authoring\"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update

#define gitURL "https://github.com/git-for-windows/git/releases/download/v2.50.1.windows.1/"
#define git "Git-2.50.1-64-bit.exe"
#define gitDisplayName "Git  (" + git + ")"
#define nodeDefaultURL "https://nodejs.org/dist/v16.20.2/"
#define nodeDefault "node-v16.20.2-x64.msi"
#define nodeDefaultDisplayName "Node.js  (" + nodeDefault + ")"

//Additional Node.js listed in the dropdown for optional latest downloads.
#define nodeLatestURL "https://nodejs.org/dist/v24.4.0/"
#define nodeLatest "node-v24.4.0-x64.msi"
#define nodeLatestDisplayName "Node.js  (" + nodeLatest + ")"
#define nodeLatestLtsURL "https://nodejs.org/dist/v22.17.0/"
#define nodeLatestLts "node-v22.17.0-x64.msi"
#define nodeLatestLtsDisplayName "Node.js  (" + nodeLatestLts + ") LTS"

#define mongodbURL "https://fastdl.mongodb.org/windows/"
#define mongodb "mongodb-windows-x86_64-8.0.11-signed.msi"
#define mongodbDisplayName "MongoDB  (" + mongodb + ")"

//User messages.
#define beveledLabelCaption "www.adaptlearning.org"
#define isOpenStepByStepInstallGuide "Do you wish to open the step-by-step installation guide pop-up window?' #13#13 '(helps you walk through the full install process)"
#define openStepByStepInstallGuideExceptionMessage "Unable to open the step-by-step installation guide"
#define fullInstallation "Full installation"
#define customInstallation "Custom installation"
#define nodejsVersionToBeInstalled "Node.js version:"
#define selectNodejsVersionFromDropdown "-- or select another Node.js version --"

//Script development (not seen by the user).
#define setupRootPathDev "E:\adapt\innoSetup\"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
#define setupCompiledOutputDirDev setupRootPathDev + "Adapt_Authoring_Bundle_Setup\installer\"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
#define setupAssetsDirDev setupRootPathDev + "Adapt_Authoring_Bundle_Setup\assets\"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update
#define setupIcoImageFileDev setupAssetsDirDev + "adapt_logo_red.ico"
#define setupLargeTopRightBmpImageFileDev setupAssetsDirDev + "adapt_logo_right_red.bmp"
#define setupLargeLeftImageFileDev setupAssetsDirDev + "adapt_logo_left_red.bmp"
#define license "usage_notice.txt"
#define fileCheckSum "file_checksum.txt"
#define installSteps "install_steps.txt"
#define readMe "read_me.txt"
#define viewReadMeDispay "readMe"
#define gruntInstallBatch "install_grunt.bat"
#define gruntInstallBatchDisplayName "Grunt  (grunt-cli 1.5.0) via terminal"
#define adaptAuthoringInstallBatch "install_adapt_authoring.bat"
#define adaptAuthoringInstallBatchDisplayName "Adapt Authoring  (Adapt authoring tool 0.11.5) via terminal"
#define signCertificate setupCompiledOutputDirDev + "adaptAuthoringBundleCertificate12Jul25.pfx"     ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< update

[Setup]
//Setting below signs the compiled installer code with a self-issued digital certificate.
//SignTool=signToolSHA256
SignTool=signToolSHA256 signtool sign /n $qAdapt Learning community$q /f $q{#signCertificate}$q /td SHA256 /fd SHA256 /tr http://timestamp.digicert.com /p $qadaptAuthoringBundleSetup$q $f
//Note: The value of AppId uniquely identifies this application. Avoid using the same AppId value in installers for other applications.
//To generate a new GUID, click Tools | Generate GUID inside the IDE.
AppId={{C4DE2D3F-08EF-41C7-BEF2-E240B031B8B1}
AppName={#setupDisplayName}
AppVersion={#setupVersion}
AppVerName={#setupDisplayName}{#setupVersion}
AppPublisher={#setupPublisher}
//AppPublisherURL={#setupURL}
//AppSupportURL={#setupURL}
//AppUpdatesURL={#setupURL}

//DefaultDirName={commonpf}{#setupInstallHighlevelDir} <<< installs in Program Files x86 - risky!
DefaultDirName={sd}/{#setupInstallHighlevelDir}
SetupIconFile={#setupIcoImageFileDev}
UninstallDisplayIcon={#setupIcoImageFileDev}
WizardSmallImageFile={#setupLargeTopRightBmpImageFileDev}
WizardImageFile={#setupLargeLeftImageFileDev}
LicenseFile={#setupAssetsDirDev}{#license}
//InfoBeforeFile={#setupAssetsDirDev}{#installSteps}
ChangesAssociations=yes
DefaultGroupName={#setupDisplayName}
DisableProgramGroupPage=yes
//Uncomment the following line to run in non administrative install mode (install for current user only).
//PrivilegesRequired=lowest
OutputDir={#setupCompiledOutputDirDev}
OutputBaseFilename={#setupFileName}
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
WizardSizePercent=100
DisableWelcomePage=no
//Uncomment DisableDirPage to force the display of the install directory location page. By default, it does not show if there is an existing installation in the same location.
DisableDirPage=no
//Password={#Password}

[Messages]
//Override the messages on the wizard pages.
WelcomeLabel1=Welcome to the [name] Wizard
WelcomeLabel2=This will install [name/ver] on your computer.
WizardLicense=Usage Notice
LicenseLabel=Please read the following important information before continuing.
LicenseLabel3=Please read the following Usage Notice. You must agree and accept this notice before continuing with the installation.
LicenseAccepted=I &accept the notice
LicenseNotAccepted=I &do not accept the notice
SelectDirDesc= Where should [name] be installed?%n This refers to [name] specific install files only.
SelectDirLabel3=Setup will install [name] into the following folder.%nNote: later in the installation process, you will be able to select the destination location for each software component separately.
SelectComponentsDesc=Adapt Authoring requires all the components listed below.
SelectComponentsLabel2=Once all the components' downloads complete, you will be presented with each component's specific installer for its installation process as normal. Click Next when you are ready to continue.
//Comment out the diskspace estimates.
DiskSpaceMBLabel=
DiskSpaceGBLabel=
ComponentsDiskSpaceMBLabel=You need Internet connection to download the components.
ComponentsDiskSpaceGBLabel=You need Internet connection to download the components.
DownloadingLabel=Downloading component...
FinishedHeadingLabel=Completing the [name] Wizard
//To work, RunEntryShellExec needs the 'isreadme' flag set in Files section to override it with this display name.
RunEntryShellExec=View {#viewReadMeDispay}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Types]
//Overrides to remove the dropdown menu.
Name: "full"; Description: "{#fullInstallation}"
Name: "custom"; Description: "{#customInstallation}"; Flags: iscustom

[Components]
//Display the apps list to be downloaded in the wizard.
Name: git; Description: "{#gitDisplayName}"; Types: full; Flags: disablenouninstallwarning
Name: nodeDefault; Description: "{#nodeDefaultDisplayName}"; Types: full; Flags: disablenouninstallwarning
Name: mongodb; Description: "{#mongodbDisplayName}"; Types: full; Flags: disablenouninstallwarning
Name: gruntInstallBatch; Description: "{#gruntInstallBatchDisplayName}"; Types: full; Flags: disablenouninstallwarning
Name: adaptAuthoringInstallBatch; Description: "{#adaptAuthoringInstallBatchDisplayName}"; Types: full; Flags: disablenouninstallwarning

[Files]
//Files to download from "location" to "destination" for the install package.
Source: "{tmp}\{#git}"; DestDir: "{app}"; Components: git; Flags: external ignoreversion
Source: "{tmp}\{#nodeDefault}"; DestDir: "{app}"; Components: nodeDefault; Flags: external ignoreversion

//Checks below for undefined componenets to avoid exception messages for missing file in the temporary folder.
Source: "{tmp}\{#nodeLatest}"; DestDir: "{app}"; Check: checkIfInstallNodejsLatest; Flags: external ignoreversion
Source: "{tmp}\{#nodeLatestLts}"; DestDir: "{app}"; Check: checkIfInstallNodejsLatestLts; Flags: external ignoreversion

Source: "{tmp}\{#mongodb}"; DestDir: "{app}"; Components: mongodb; Flags: external ignoreversion

//Files to copy from "location" to "destination" for the install package. Note: avoid using "Flags: ignoreversion" on any shared system files.
Source: "{#setupAssetsDirDev}{#license}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#setupAssetsDirDev}{#fileCheckSum}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#setupAssetsDirDev}{#installSteps}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#setupAssetsDirDev}{#readMe}"; DestDir: "{app}"; Flags: isreadme
Source: "{#setupAssetsDirDev}{#gruntInstallBatch}"; DestDir: "{tmp}"; Components: gruntInstallBatch
Source: "{#setupAssetsDirDev}{#adaptAuthoringInstallBatch}"; DestDir: "{tmp}"; Components: adaptAuthoringInstallBatch

[Code]
const
numberOfItemsInComponentsList = 4; //0-based counter.

var
isWpSelectDirVisitedAlready: Boolean; //Limits the step-by-step installation guide pop-up window to trigger once only.
nodejsDropdownComboBox: TNewComboBox;
nodejsDropdownDescriptionLabel: TLabel;
componentsDropdownMenuArr: array [0..4] of Boolean;
nodejsDropdownVersionSelected: Integer;
downloadPage: TDownloadWizardPage;

procedure refreshSelectedComponents;
var
i: Integer;
begin
  
  if WizardForm.TypesCombo.Text = '{#fullInstallation}' then
    begin
      //Hide the Node.js dropdown menu.
      nodejsDropdownDescriptionLabel.Visible := False;
      nodejsDropdownComboBox.Visible := False;
      
      for i:=0 to numberOfItemsInComponentsList do
        begin
          WizardForm.ComponentsList.Checked[i] := True;
          WizardForm.ComponentsList.ItemEnabled[i] := False;
        end;
    end
  else if WizardForm.TypesCombo.Text = '{#customInstallation}' then
    begin
    //First, refresh and display the Node.js dropdown menu.
      nodejsDropdownComboBox.Visible := True;
      nodejsDropdownDescriptionLabel.Visible := True;
      
      for i:=0 to numberOfItemsInComponentsList do
        begin
          WizardForm.ComponentsList.Checked[i] := componentsDropdownMenuArr[i];
          WizardForm.ComponentsList.ItemEnabled[i] := True;
        end;
        
        //Then determine whether to hide the Node.js dropdown menu.
        if (nodejsDropdownComboBox.ItemIndex = 1) or (nodejsDropdownComboBox.ItemIndex = 2) then
          begin
            WizardForm.ComponentsList.Checked[1] := False;
            WizardForm.ComponentsList.ItemEnabled[1] := True;
            nodejsDropdownDescriptionLabel.Visible := False;
            
            nodejsDropdownComboBox.Color := clHighlight; //Maintain selected highlight after losing focus (can't use white label to cover selection since it has unwanted message).
            nodejsDropdownComboBox.Font.Color := clWhite; //Maintain selected font colour after losing focus (as above).
          end
        else
          begin
            nodejsDropdownComboBox.Color := clWhite; //Re-entering back to the select components page from adjacent wizard pages.
            nodejsDropdownComboBox.Font.Color := clDefault; //As above.
          end;
    end;
end;

procedure customDropdownChangeListener(Sender: TObject); //Called when custom dropdown menu changes.
begin
  refreshSelectedComponents;
end;

procedure customComponentsCheckboxChangeListener(Sender: TObject); //Called when individual custom component is selected /deselected.
begin
  
  if WizardForm.TypesCombo.Text = '{#customInstallation}' then
    begin
      componentsDropdownMenuArr[WizardForm.ComponentsList.ItemIndex] := WizardForm.ComponentsList.Checked[WizardForm.ComponentsList.ItemIndex];
      
      if WizardForm.ComponentsList.ItemIndex = 1 then
        begin
          nodejsDropdownVersionSelected := 0;
          nodejsDropdownComboBox.ItemIndex := 0;
          nodejsDropdownComboBox.Color := clWhite; //Remove selected highlight after losing focus.
          nodejsDropdownComboBox.Font.Color := clDefault; //As above.
          nodejsDropdownDescriptionLabel.Visible := True;
        end;
        refreshSelectedComponents;
    end;
end;

procedure nodejsDropdownOpenListener(Sender: TObject); //Called when Node.js dropdown menu is kept open.
begin
  nodejsDropdownComboBox.Color := clWhite; //Remove highlight when dropdown opens for user to scroll.
  nodejsDropdownComboBox.Font.Color := clDefault; //As above.
end;

procedure nodejsDropdownChangeListener(Sender: TObject); //Called when Node.js dropdown menu changes.
begin
  componentsDropdownMenuArr[1] := False; //Clear the default Node.js selection (since the user has selected an another option from the dropdown menu).
  refreshSelectedComponents;
end;

procedure openStepByStepInstallGuide; //Optionally open the step-by-step popup.
var
exceptionCode: Integer;
begin
  
  if isWpSelectDirVisitedAlready = False then
    begin
      if MsgBox('{#isOpenstepByStepInstallGuide}', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
        begin
          try
            ExtractTemporaryFile(ExpandConstant('{#installSteps}'));
            ShellExec('', ExpandConstant('{tmp}\{#installSteps}'), '', '', SW_SHOWNORMAL, ewNoWait, exceptionCode);
          except //Handle the exception and move on with the rest of the installation.
            MsgBox('{#openStepByStepInstallGuideExceptionMessage}', mbInformation, MB_OK);
          end;
        end;
    end;
end;

procedure CurPageChanged(CurPageID: Integer);
var
exceptionCode: Integer;
begin
  case CurPageID of
    
    wpSelectDir:
      nodejsDropdownVersionSelected := nodejsDropdownComboBox.ItemIndex;
    
    wpSelectComponents:
    begin
      openStepByStepInstallGuide; //Pop up the step-by-step guide option before the install begins.
      isWpSelectDirVisitedAlready := True; //Comment line to remove limitation.
      nodejsDropdownComboBox.ItemIndex := nodejsDropdownVersionSelected; //Track the current selected Node.js version in the dropdown.
      refreshSelectedComponents; //Refresh components for both dropdown menus when entering wpSelectComponents page, then check any selected boxes for custom components.
      WizardForm.TypesCombo.OnChange := @customDropdownChangeListener; //Listener for change to custom dropdown menu.
      WizardForm.ComponentsList.OnClickCheck := @customComponentsCheckboxChangeListener; //Listener for selecting /deselecting individual checkboxs for custom components.
      nodejsDropdownComboBox.OnDropDown := @nodejsDropdownOpenListener; //Listener for keeping open the Node.js dropdown menu.
      nodejsDropdownComboBox.OnChange := @nodejsDropdownChangeListener; //Listener for change to Node.js dropdown menu.
    end;
    
    wpInstalling:
    begin
      
      if WizardForm.ComponentsList.Checked[0] = True then
        ShellExec('', ExpandConstant('{tmp}\{#git}'), '', ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
      
      if WizardForm.ComponentsList.Checked[1] = True then
        ShellExec('', ExpandConstant('{tmp}\{#nodeDefault}'), '', ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
      
      //Only one of the download options for Node.js below can be selected from the Node.js dropdown.
      if nodejsDropdownComboBox.ItemIndex = 1 then
        ShellExec('', ExpandConstant('{tmp}\{#nodeLatest}'), '', ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
      
      if nodejsDropdownComboBox.ItemIndex = 2 then
        ShellExec('', ExpandConstant('{tmp}\{#nodeLatestLts}'), '', ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
      
      if WizardForm.ComponentsList.Checked[2] = True then
        ShellExec('', ExpandConstant('{tmp}\{#mongodb}'), '', ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
    end;
    
    wpFinished:
    begin
      //Batch files need to run after Git and Node.js installations complete.
      if WizardForm.ComponentsList.Checked[3] = True then
        ShellExec('', 'powershell.exe', '-NoExit ' + ExpandConstant('{#setupAssetsDirDev}{#gruntInstallBatch}'), ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
      
      if WizardForm.ComponentsList.Checked[4] = True then
        ShellExec('', 'powershell.exe', '-NoExit ' +  ExpandConstant('{#setupAssetsDirDev}{#adaptAuthoringInstallBatch}'), ExpandConstant('{app}'), SW_SHOWNORMAL, ewWaitUntilTerminated, exceptionCode);
    end;
  end;
end;

procedure createNodejsDropdownOnComponentsPage; //Create the comboBox for the Node.js dropdown.
begin
  nodejsDropdownComboBox := TNewComboBox.Create(WizardForm.SelectComponentsPage);
  nodejsDropdownComboBox.Parent := WizardForm.SelectComponentsPage;
  nodejsDropdownComboBox.Left := ScaleX((Length(WizardForm.ComponentsList.ItemCaption[1]) * 6) + 6);
  nodejsDropdownComboBox.Top := ScaleY(90);
  nodejsDropdownComboBox.Width := 254;
  nodejsDropdownComboBox.Anchors := [akLeft, akTop, akRight]; //Enable the dropdown menu to stretch with wizard page.
  nodejsDropdownComboBox.Style := csDropDownList;
  nodejsDropdownComboBox.Items.Add('{#selectNodejsVersionFromDropdown}');
  nodejsDropdownComboBox.Items.Add('{#nodeLatestDisplayName}');
  nodejsDropdownComboBox.Items.Add('{#nodeLatestLtsDisplayName}');
  nodejsDropdownComboBox.ItemIndex := 0; //Initialize for a new installation run.
  nodejsDropdownVersionSelected := 0; //Initialize for a new installation run.
end;

procedure createLabelForNodejsDropdownOnComponentsPage; //Create the label for user message from inside the combobox of the Node.js dropdown.
begin
  nodejsDropdownDescriptionLabel := TLabel.Create(WizardForm.SelectComponentsPage);
  nodejsDropdownDescriptionLabel.Parent := nodejsDropdownComboBox;
  nodejsDropdownDescriptionLabel.Left := ScaleX(4);
  nodejsDropdownDescriptionLabel.Top := ScaleY(4);
end;

procedure createBevelCaptionAtBottomLeft; //Create the bevel and caption with Adapt Learing org URL address.
begin
  WizardForm.BeveledLabel.Caption := '{#beveledLabelCaption}';
  WizardForm.BeveledLabel.Left := ScaleX(10);
  WizardForm.BeveledLabel.Top := WizardForm.BeveledLabel.Top + ScaleY(30);
end;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  
  if Progress = ProgressMax then
    Log(Format('Successfully downloaded file to {tmp}: %s', [FileName]));
  Result := True;
end;

procedure InitializeWizard;
begin
  createNodejsDropdownOnComponentsPage; //Create Node.js dropdown.
  createLabelForNodejsDropdownOnComponentsPage; //Create label for Node.js dropdown.
  createBevelCaptionAtBottomLeft; //Create bevel and caption.
  WizardForm.TypesCombo.ItemIndex := 0; //Initialise the custom dropdown menu to full installation.
  downloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress); //Create the download page.
  downloadPage.ShowBaseNameInsteadOfUrl := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  
  if CurPageID = wpReady then
    begin
      downloadPage.Clear;
      
      //Download files over URL.    
      if WizardForm.ComponentsList.Checked[0] = True then
        downloadPage.Add(ExpandConstant('{#gitURL}{#git}'), ExpandConstant('{#git}'), '');
      
      if WizardForm.ComponentsList.Checked[1] = True then
        downloadPage.Add(ExpandConstant('{#nodeDefaultURL}{#nodeDefault}'), ExpandConstant('{#nodeDefault}'), '');
      
      if nodejsDropdownComboBox.ItemIndex = 1 then
        downloadPage.Add(ExpandConstant('{#nodeLatestURL}{#nodeLatest}'), ExpandConstant('{#nodeLatest}'), '');
      
      if nodejsDropdownComboBox.ItemIndex = 2 then
        downloadPage.Add(ExpandConstant('{#nodeLatestLtsURL}{#nodeLatestLts}'), ExpandConstant('{#nodeLatestLts}'), '');
      
      if WizardForm.ComponentsList.Checked[2] = True then
        downloadPage.Add(ExpandConstant('{#mongodbURL}{#mongodb}'), ExpandConstant('{#mongodb}'), '');
      
      downloadPage.Show;
      try
        try
          downloadPage.Download; //Downloads the files to {tmp}.
          Result := True;
        except
        
        if downloadPage.AbortedByUser then
          Log('Aborted by user.')
        else
          SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
        Result := False;
        end;
      finally
        downloadPage.Hide;
      end;
    end else
      Result := True;
end;

procedure addMessageToReadyMemo(var memo: String; newMessage, newLine: String);
begin
  
  if newMessage <> '' then
    memo := memo + newMessage + newline + newLine;
end;

function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
begin
  
  //Clear any selection in case user chooses full (i.e. defualt Node.js) installation.
  if WizardForm.TypesCombo.Text = '{#fullInstallation}' then
    begin
      nodejsDropdownVersionSelected := nodejsDropdownComboBox.ItemIndex;
      nodejsDropdownComboBox.ItemIndex := 0;
    end
  else
    begin
      nodejsDropdownVersionSelected := nodejsDropdownComboBox.ItemIndex;
    end;
  
  addMessageToReadyMemo(Result, MemoUserInfoInfo, NewLine);
  addMessageToReadyMemo(Result, MemoDirInfo, NewLine);
  addMessageToReadyMemo(Result, MemoTypeInfo, NewLine);
  addMessageToReadyMemo(Result, MemoComponentsInfo, NewLine);
  addMessageToReadyMemo(Result, MemoGroupInfo, NewLine);
  addMessageToReadyMemo(Result, MemoTasksInfo, NewLine);
  
  if nodejsDropdownComboBox.ItemIndex = 1 then //Need a separate if-block check for each Node.js dropdown entry.
    begin
     Result := Result + '{#nodejsVersionToBeInstalled}' + NewLine;
     Result := Result + '      {#nodeLatestDisplayName}' + NewLine;
     end
     
  else if nodejsDropdownComboBox.ItemIndex = 2 then
    begin
     Result := Result + '{#nodejsVersionToBeInstalled}' + NewLine;
     Result := Result + '      {#nodeLatestLtsDisplayName}' + NewLine;
    end
  else
    Result := Result;
end;

//First component in Node.js dropdown list (and undefined in Components section) . Check to avoid warning exception for missing Node.js file in the temporary folder at the end of the install.
function checkIfInstallNodejsLatest(): Boolean;
begin
  
  if nodejsDropdownComboBox.ItemIndex = 1 then
    begin
      Result := True;
    end
  else
    Result := False;
end;

//Second component in Node.js in dropdown list check.
function checkIfInstallNodejsLatestLts(): Boolean;
begin
  
  if nodejsDropdownComboBox.ItemIndex = 2 then
    begin
      Result := True;
    end
  else
    Result := False;
  
end;
