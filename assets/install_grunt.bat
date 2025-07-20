@echo off
echo ----------------------------------------------------------------------
echo Grunt ^(Grunt-cli^) Installation terminal
echo ----------------------------------------------------------------------
rem Must set local path to include Git and Node.js since both are installed within same session as installer (i.e. path not yet refreshed with updates).
setlocal
set "PATH=%PATH%;C:\Program Files\Git\cmd\"
set "PATH=%PATH%;C:\Program Files\nodejs\"
echo(
echo(
echo By this point, Adapt Authoring Bundle Setup should have already walked you through the required installations of:
echo(
echo Git
echo Node.js
echo MongoDB
echo(
echo(
echo This terminal will attempt to detect if all the above are installed before installing Grunt ^(Grunt-cli^).
echo(
echo Notes:
echo(
echo 1- If you have successfully installed Git, Node.js, and MongoDB earlier within this install session, chances are this terminal does not have access to those updates yet (normal Windows behaviour). If you kept the default installation directory locations for Git and Node.js, you should be fine to continue.
echo(
echo 2- If, however, you are interrupted and don't reach the 'Next steps' section at the bottom of this terminal, it means there was an error. Stop this installation and validate all the above are installed.
echo(
echo(
echo **********************************************************************
echo Checking installed version of Git...
echo(
echo(
set "gitNotInstalled=Git is not installed"
set "searchResult=Git is not installed"
set isGitFound=0
for /f "delims=" %%i in ('git --version 2^> nul') do set searchResult=%%i

if "%gitNotInstalled%"=="%searchResult%" (
  rem Previous Git not found. Check if is in path.
  for /f "tokens=* USEBACKQ" %%j in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path ^| find /c /i "git"`) do (
    set isGitFound=%%j
  )
) else (
  rem Previous Git found.
  echo %searchResult%
  goto configureGit
)

if %isGitFound% GEQ 1 (
  rem Git found on path.
  echo A version of Git exists already.
  goto configureGit
) else (
  rem Git not found on path.
  echo %searchResult%.
  echo(
  echo It does not mean Git is not installed (more likely the system has not refreshed yet - which is to be expected).
  echo Please scroll down to the end for next steps.
  goto gitDone
)
:configureGit

echo(
echo(
set /p isConfigGitName=? Do you wish to optionally configure Git to associate your name with your GitHub commits (you can add or change it later)? [y/N]: 

if /i "Y"=="%isConfigGitName%" (
  echo(
  set /p configGitName=? Type the username for Git:^> 
  echo(
)

if /i "Y"=="%isConfigGitName%" (
  call git config --global --replace-all user.name "%configGitName%"
  echo(
  echo Configured your Git user name to:
  echo(
  call git config --global user.name
)

echo(
echo(
set /p isConfigGitEmail=? Do you wish to optionally configure Git to associate your email address with your GitHub commits (you can add or change it later)? [y/N]: 

if /i "Y"=="%isConfigGitEmail%" (
  echo(
  set /p configGitEmail=? Type the email address for Git:^> 
  echo(
)

if /i "Y"=="%isConfigGitEmail%" (
  call git config --global --replace-all user.email "%configGitEmail%"
  echo(
  echo Configured your Git email to:
  echo(
  call git config --global user.email
)

:gitDone
echo(
echo(
echo **********************************************************************
echo Checking installed version of Node.js...
echo(
echo(
set "nodejsNotInstalled=Node.js is not installed"
set "searchResult=Node.js is not installed"
set isNodejsFound=0
for /f "delims=" %%k in ('node --version 2^> nul') do set searchResult=%%k

if "%nodejsNotInstalled%"=="%searchResult%" (
  rem Previous Node.js not found. Check if is in path.
  for /f "tokens=* USEBACKQ" %%m in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path ^| find /c /i "nodejs"`) do (
    set isNodejsFound=%%m
  )
) else (
  rem Previous Node.js found.
  echo %searchResult%
  goto nodejsDone
)

if %isNodejsFound% GEQ 1 (
  rem Node.js found on path.
  echo A version of Node.js exists already.
) else (
  rem Node.js not found on path.
  echo %searchResult%.
  echo(
  echo It does not mean Node.js is not installed (more likely the system has not refreshed yet - which is to be expected).
  echo Please scroll down to the end for next steps.
)
:nodejsDone
echo(
echo(
echo **********************************************************************
echo Checking if MongoDB is running and listening...
echo(
echo(
for /f "tokens=* USEBACKQ" %%n in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE" ^| find /c /i "mongodb"`) do set isMongodbFound=%%n

if %isMongodbFound% GEQ 1 (
  rem Previous MongoDB found on system.
  echo A version of MongoDB exists already.
) else (
  rem Previous MangoDB not found on system.
  echo Could not detect MongoDB installation.
)
echo(
echo(
echo Checking if MongoDB port is listening...
echo(
echo(
call netstat -an | findstr 27017
echo(
echo(
echo If you can see port number 27017 Listening - great. It means that MongoDB is up and running as expected. You are good to continue.
echo(
echo If you don't see the port number 27017, it may mean MongoDB is not installed. Please validate.
echo Please scroll down to the end for next steps.
echo(
echo(
echo **********************************************************************
echo Checking installed version of Grunt-cli...
rem Node.js path has already been setup above.
echo(
echo(
set "gruntNotInstalled=Grunt is not installed"
set "searchResult=Grunt is not installed"
set isNodejsPathFound=0
for /f "delims=" %%p in ('grunt --version 2^> nul') do set searchResult=%%p

if not "%gruntNotInstalled%"=="%searchResult%" goto offerToReinstallGrunt
rem Found previous Grunt installation.
for /f "tokens=* USEBACKQ" %%q in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path ^| find /c /i "nodejs"`) do set isNodejsPathFound=%%q

if %isNodejsPathFound% GEQ 1 (
  rem Found Node.js - i.e. NPM - on path.
  echo %searchResult%. Attempting to install Grunt-cli...
  echo(
  echo(
  call npm install -g grunt-cli
  echo(
  echo(
  echo Grunt installed successfully.
  echo(
  echo(
  echo Install Grunt-cli complete.
  goto gruntDone
  rem Grunt install successful.
) else (
  rem Node.js - i.e. NPM - not found on path so skip trying to install grunt again.
  echo Either Node.js is missing from the system path, or NPM is missing.
  echo(
  echo(
  echo Please scroll down to the end for next steps.
  goto gruntDone
  rem Missing NPM.
)

:offerToReinstallGrunt
rem Reaching here means Grunt is already on the system, so everything below should work.

if not "%gruntNotInstalled%"=="%searchResult%" (
  rem Offer user to re-install Grunt-cli.
  echo %searchResult%
  echo(
  echo(
  echo A previous installation of Grunt already exists.
  echo(
  set /p isInstallGrunt=? Do you wish to install Grunt ^(Grunt-cli^) using the Adapt Authoring Bundle Setup ^(choose yes if unsure^)? [y/n]: 
)

if /i "N"=="%isInstallGrunt%" goto gruntDone

if /i "Y"=="%isInstallGrunt%" (
    rem The below if-block belongs inside the above else-block.
    echo(
    echo(
    echo Installing Grunt-cli...
    echo(
    echo(
    call npm install -g grunt-cli
    echo(
    echo(
    echo Grunt reinstalled successfully.
    echo(
    echo(
    echo Install Grunt-cli complete.
) else goto offerToReinstallGrunt
  rem Else catch all other characters.

:gruntDone
endlocal
echo(
echo(
echo **********************************************************************
echo(
echo(
echo Next steps:
echo(
echo If you can see successful installation notifications for all the above software, great! You are ready to continue. Close this window for the next step.
echo(
echo(
echo Notes:
echo(
echo 1- If this terminal has not detected the presence of one or more of the above software installations, it does not necessarily mean the software was not installed successfully. As long as you have successfully installed Git and Node.js earlier, it is likely the changes have not been updated in Windows registries - which is as expected. So continue with this installation as normal. You will be notified of any errors later on, if any.
echo(
echo 2- You can re-start Adapt Authoring Bundle Setup at any time to assist you with the installation process over again.
echo(
echo(
echo Type exit or close this terminal window to continue with the Adapt Authoring installation and configuration process next.
echo(
echo(