@echo off
echo ----------------------------------------------------------------------
echo Adapt Authoring Installation terminal
echo ----------------------------------------------------------------------
rem Must set local path to include Git and Node.js since both are installed within same session as installer (i.e. path not yet refreshed with updates).
setlocal
set "PATH=%PATH%;C:\Program Files\Git\cmd\"
set "PATH=%PATH%;C:\Program Files\nodejs\"
echo(
echo(
echo Your current directory is shown below. This is the directory Adapt Authoring will be installed in:
echo(
echo(
echo %cd%
:isChangeDirectoryWhileLoop

if /i "Y"=="%isChangeInstallDirectory%" (
    echo(
    set /p newInstallDirectory=Type your new install directory for Adapt Authoring:^> 
)

if /i "Y"=="%isChangeInstallDirectory%" (
  set "isChangeInstallDirectory=X"
  cd %newInstallDirectory%
  set "currentDirectory=%cd%"
  rem This variable is used to check for exceptions. The variable is only populated if no exceptions occur.
)
echo(
echo(
echo Your current directory is: %cd%
echo(
set /p isChangeInstallDirectory=? Do you wish to change your install directory for Adapt Authoring? [y/n]: 

if /i "Y"=="%isChangeInstallDirectory%" (
  rem Prompt to enter new directory.
  goto isChangeDirectoryWhileLoop
)

if /i not "Y"=="%isChangeInstallDirectory%" if /i not "N"=="%isChangeInstallDirectory%" (
  rem Anything else other than Y and N skip to y/n question
  set "isChangeInstallDirectory=X"
  goto isChangeDirectoryWhileLoop
)

if /i not "N"=="%isChangeInstallDirectory%" (
  rem Go to next step below.
  set "isChangeInstallDirectory=Y"
  goto isChangeDirectoryWhileLoop
)
echo(
echo(
echo Adapt Authoring will now be installed in directory:
echo(
echo(
echo %cd%
set "currentDirectory=%cd%"
echo(
echo(
echo **********************************************************************
:isAdaptInstall
echo(
set /p isInstallAdatpt=? Do you wish to install Adapt Authoring? [y/n]: 

if /i "N"=="%isInstallAdatpt%" goto exitAdaptInstall

if /i not "Y"=="%isInstallAdatpt%" goto isAdaptInstall
echo(
echo(
echo **********************************************************************
echo Clone the Adapt_Authoring Project...
echo(
echo(
call git clone https://github.com/adaptlearning/adapt_authoring.git
echo(
echo Clone complete.
echo(
echo(
echo **********************************************************************
echo Install the Required NPM Packages...
echo(
echo(
call cd .\adapt_authoring
echo Installing the NPM Packages in:
echo(
echo %cd%
echo(
call npm install --production
echo(
echo Install NPM packages complete.
echo(
echo(
echo **********************************************************************
echo Run the Install Script...
echo(
echo(
echo Remember to note down your ^>^>^> EMAIL and PASSWORD ^<^<^< during the configuration step below to logon to Adapt Authoring.
echo ----------------------------------------------------------------------------------------------------------------------
echo(
call node install
echo(
echo Install script processing complete.
echo(
echo(
echo **********************************************************************
echo(
echo(
echo When launching Adapt Authoring, open your browser and type your localhost:^<YOUR_PORT^> which you configured, for example http://localhost:5000/
echo ----------------------------------------------------------------------------------------------------------------------------------------------
echo(
echo(
if /i "Y"=="%isInstallAdatpt%" (
    echo If you have configured Adapt Authoring successfully - Congratulations. You now have Adapt Authoring on your PC.
    echo You can now launch Adapt Authoring by opening a terminal window in your 'adapt_authoring' installation directory and typing 'node server'.
    echo Alternatively, you can create a shortcut in your %currentDirectory% folder for a quick launch.
    echo(
    set /p isCreateDesktopShortcut=? If the script installation was successful, do you wish to create a shortcut for launching Adapt Authoring? [y/N]: 
)

if /i "Y"=="%isInstallAdatpt%" if /i "Y"=="%isCreateDesktopShortcut%" (
    rem --------------------------------------------------------------------------------------------------------------------------
    rem Block below creates start_adapt_authoring.bat file in directory above adapt_authoring directory to launch Adapt Authoring.
    echo @echo off > %currentDirectory%\start_adapt_authoring.bat
    echo rem This batch file will launch Adapt Authoring >> %currentDirectory%\start_adapt_authoring.bat
    echo rem >> %currentDirectory%\start_adapt_authoring.bat
    echo cd %currentDirectory%\adapt_authoring >> %currentDirectory%\start_adapt_authoring.bat
    echo node server >> %currentDirectory%\start_adapt_authoring.bat
    rem --------------------------------------------------------------------------------------------------------------------------
    rem
    echo(
    echo(
    echo Shortcut created in %currentDirectory%
)
:exitAdaptInstall
endlocal
echo(
echo(
echo(
echo Adapt Authoring install process has finished.
echo(
echo(
echo Type exit or close this terminal window, and click to finish the installer for the Adapt Authoring Bundle Setup.
echo(
echo(