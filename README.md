Usage Notice
------------

v12Jul2025

Adapt Authoring Bundle Setup is free software, under GNU GPL-v3.0. You are free to use this Adapt Authoring Bundle Setup installer without warranty or responsibility of any kind.

Adapt Authoring Bundle Setup is an installation script and its open source is available at GitHub, under repository Adapt_Authoring_Bundle_Setup. The code is based on the Inno Setup, a free and open-source installer for Windows (https://jrsoftware.org).

The Adapt Authoring Bundle Setup has no application software or product of its own; it's simply an install script to automate the installation of Git, Node.js, MongoDB, Grunt, and Adapt Authoring tool.

Also, Adapt Authoring Bundle Setup does not pre-package or store inside it any of the above mentioned software. Instead, it uses URL links to the official third-party sites (Git, Node.js, MongoDB, Grunt, and Adapt Authoring) to download their software, and only then stores the official installers for Git, Node.js, and MongoDB in its own setup folder. In addition, it uses two batch scripts to install the packages for Grunt and Adapt Authoring.

The purpose of Adapt Authoring Bundle Setup is to simplify the installation of Adapt Authoring and guide the user through the installation steps of all the required software (Git, Node.js, MongoDB, Grunt, and Adapt Authoring) to enable the user to launch Adapt Authoring tool quicker than the current installation process.

Adapt Authoring Bundle Setup installation process follows the same steps as described on the Adapt Learning GitHub site, titled 'Installing the Authoring Tool (https://github.com/adaptlearning/adapt_authoring/wiki/Installing-the-Authoring-Tool), as of the version date shown above.

Please consult the Adapt Learning GitHub (https://github.com/adaptlearning/adapt_authoring/wiki/Installing-the-Authoring-Tool) to familiarise yourself with the Adapt Authoring tool installation process before using this Adapt Authoring Bundle Setup installer.

This version of Adapt Authoring Bundle Setup includes the installation of the following list of third-party software:

* Git		(Git-2.50.1-64-bit)  Git for Windows/x64 Setup
		https://git-scm.com/downloads/win

* Node		(node-v16.20.2-x64)  Node.js for Windows x64 (best compatibility with Adapt older functionality).
		(node-v24.4.0-x64) download option available.
		(node-v22.17.0-x64 LTS) download option available.
		https://nodejs.org/en/download/

* MongoDB	(mongodb-windows-x86_64-8.0.11-signed)  MongoDB Community Server
		https://www.mongodb.com/try/download/community

* Grunt		(grunt-cli@1.5.0)
		https://gruntjs.com/getting-started

* Adapt Authoring	Adapt authoring tool 0.11.5
                 	https://github.com/adaptlearning/adapt_authoring/wiki/Installing-the-Authoring-Tool


Before using Adapt Authoring Bundle Setup, please consider the following points:

* it is an experimental installer and an individual contribution to the Adapt Learning community.

* it is targeted for personal and academic use; you need to consider carefully if Adapt Authoring Bundle Setup is appropriate for commercial purposes.

* it gives no warranty of any kind and takes no responsibility of any kind. Use it at your own risk.

* the version shown for each software in the above installation list is accurate as of the version date shown above. Any of the versions shown can change at any time by the relevant third-party, so you may not receive the versions shown by the time you use this Adapt Authoring Bundle Setup installer.

* it is dependent on the URL links to the relevant third-parties software to work as expected. The third-party URL links can change their content or break at any time and such risks are beyond the control of Adapt Authoring Bundle Setup installer.

* by using the above mentioned third-party software you agree to their terms and conditions of use as stated in their respective licenses.

* no technical support is available.

* although care was taken to test Adapt Authoring Bundle Setup on Windows 11 for the main normal workflow scenarios, this is no guarantee it will always work in all circumstances. Use it at your own risk.


ReadMe
------

For end-users, please note the following:
-----------------------------------------

If you wish to install and use Adapter Authoring tool, all you need is to download and run the Adapt Authoring Bundle Setup .exe installer file. Please note the following sections:

For a step-by-step installation of Adapt Authoring, please see 'install_steps.txt' in the 'assets' folder.

Adapt Authoring Bundle Setup helps simplify and speed up the installation of Adapt Authoring tool from Adapt Learning. It achieves this by automating the installation steps as much as possible to make the installation workflow more convenient and efficient while providing the user with all the available installation configuration options. To ensure Adapt Authoring Bundle Setup installation works as expected, it follows the same installation steps as described on the Adapt Learning GitHub site.

To see the versions of the third-party software installed in this Adapt Authoring Bundle Setup, please refer to 'Usage Notice.txt'


Target audience
---------------

Adapt Authoring Bundle Setup is an experimental installer and an individual contribution to the Adapt Learning community. It was developed for personal and academic use to promote the uptake of Adapt Authoring tool to a wider audience.

It is ideal if you are:

* a student looking to develop a presentation or course for projects or research

* a teacher or coach looking to create student courses

* an individual looking to build professional training courses


Installation notes
------------------

The goal of the Adapt Authoring Bundle Setup installer is to simplify the installation of Adapt Authoring tool for the user and be up and running as quickly as possible.

At the same time, making something simple brings its own technical challenges; because five software products are installed at once with several dependencies between them, some technical limitations were inevitable. This is mainly due to Microsoft Windows design and the way it manages environment path variables within the same session. Put it this way - it would be technically much easier if the user installed all five software products separately over five different executable sessions. But installing all five in one session appears to be surprisingly challenging.

Therefore, to address this challenge, one central assumption was put in place. It assumes the user keeps the default installation directory locations for Git and Node.js - typically, C:\Program Files. Doing so should ensure all the software installs complete in one single session successfully.

When running the two install batch scripts, each one informs the user of progress. The 'Grunt Install script' attempts to detect the presence of Git, Node.js, MongoDB, and Grunt installations and report back, while the 'Adapt Authoring Install script' prompts the user to optionally change the installation location before continuing to the Adapt Authoring specific installation process. It also offers the option of creating a shortcut for launching Adapt Authoring tool after a successful install.

As noted elsewhere, since this bundle installer uses URL links to download each software version from their official third-party sites - the links are accurate as of the version date shown above - each version can change at any time by the relevant third-party, so you may not receive the versions listed above by the time you use this Adapt Authoring Bundle Setup installer.

Future Adapt Authoring Bundle Setup installers with updated versions of the software can be built easily and quickly.


File Checksum - Security first
------------------------------

How do you know the software you just downloaded is safe to use on your computer?

1- use file checksum technology to ensure your downloaded file is a genuine version from the developer's website (see 'Validating file checksum' below).

2- use the digital certificate from a reputable certified authority (CA) to verify the code signature of your downloaded file.

3- use anti-virus and anti-malware checkers.


And you need to action the above *before* using your new download file.

The good news for you is that all of the above are available immediately on your computer, free of cost and easy to use. However, for the developer distributing the software - it's still free to generate the file checksum, but it takes time and cost for setting up the digital certificate.


Security measures for using Adapt Authoring Bundle Setup
-----------------------------------------------------------

For the first point above:
-published on the genuine developer's website, you will find a file checksum value (string of alphanumeric characters) next to the download button for the Adapt Authoring Bundle Setup installer. If the file checksum value of your Adapt Authoring Bundle Setup copy matches the developer's file checksum published on the website you know for certainty your download copy is safe to use. If on the other hand, the values do not match, your copy is unsafe for use (it could have been tampered or corrupted) -- discard it and download a fresh copy.

On the second point:
-Adapt Authoring Bundle Setup installer has no budget for a digital certificate issued from a CA. Having no digital certificate means you will see Microsoft Windows pop-ups warning you about unknown software publisher during the installation process. However, each version of Adapt Authoring Bundle Setup will have a personal code signature (see Digital Signatures tab on file properties) - but these are not guarantees to be from the genuine developer (as anyone can sign personal code signatures) and are ignored by Windows pop-up warnings. Only you can decide if you are comfortable to use the software.

For the third point:
-It's good practice to check Adapt Authoring Bundle Setup for virus and malware using your tools before running it for the first time.

Ultimately, it's down to you whether to use Adapt Authoring Bundle Setup.

Finally, the usual disclaimer: using Adapt Authoring Bundle Setup comes with no warranties or responsibilities of any kind; it's an experimental installer, an individual contribution, developed to help the Adapt Learning community, and free to use. So, use it at your own risk.


Validating file checksum
-------------------------

It's really simple. Once you have downloaded Adapt Authoring Bundle Setup exe file, you can use your computer's Windows terminal to generate its file checksum. The instructions below are specific for Command Prompt terminal (cmd) and not Powershell (which has different commands). If you experience issues on your first attempt, try running as an administrator on the second attempt.

1- open a Windows Command Prompt terminal. Several ways to do this. A quick method:

   -- right-click on the folder containing Adapt Authoring Bundle Setup (this could be your Downloads folder for example).
   
   -- a menu pops up, look for and select 'Open in Terminal'.
   
   -- a Windows terminal should open at the correct folder location.
   
   -- on the command line type:  cmd and press enter.
   


2- on the command line type:

      certUtil -hashfile Adapt_Authoring_Bundle_Setup-v12Jul25.exe SHA256

   -- ensure you replace 'Adapt_Authoring_Bundle_Setup-v12Jul25.exe' with your specific file name.
   
   -- you should see the following three lines as an example:
   

      SHA256 hash of Adapt_Authoring_Bundle_Setup-v12Jul25.exe:
      bec173c852976046f08013c428d80a249bf3364e484d88d634a5aeff9c693c97
      CertUtil: -hashfile command completed successfully.

3- in the above example, the file checksum of your file is  bec173c852976046f08013c428d80a249bf3364e484d88d634a5aeff9c693c97

   -- compare it with the one on the genuine developer's website site. On GitHub, you will find it in Adapt_Authoring_Bundle_Setup-v12Jul25.exe_CheckSum_Key.txt, next to the .exe file.
   
   -- if they match, great - all is good. If no match, dispose of your copy and download a new one (and re-check its file checksum).

4- that's it - you are done with file checksum verification.


For developers, please note the following:
------------------------------------------

Install Inno Setup software for development:
--------------------------------------------

To develop your script, you will need to download and install the Inno Setup software from https://jrsoftware.org. Inno Setup comes with its own editor, compiler, and other tools to assist you in developing and configuring your script. Inno Setup is compatible with Microsoft Windows only.


Setting up signtool to sign the Adapt Authoring Bundle Setup .exe file with a code certificate
----------------------------------------------------------------------------------------------

The following steps were implemented successfully in signing the existing Adapt Authoring Bundle Setup .exe code using signtool. The implementation uses the SHA256 algorithm, but feel free to follow your own preferred methods for signing code.

Note, replace any reference to .pfx certificate file below with your own code certificate, for example, if you have purchased one from a certified authority (CA).
The .pfx certificate file provided below, 'adaptAuthoringBundleCertificate12Jul25.pfx', is self-generated, and uses a freely available SHA256 certificate to timestamp the self-certification. If you use a CA issued certificate, follow their instructions to sign the code as their steps may differ.

Using PowerShell command line, execute the following three commands:

$cert = New-SelfSignedCertificate -Subject "Adapt Learning community" -CertStoreLocation "cert:\CurrentUser\My" -HashAlgorithm SHA256 -Type CodeSigningCert -NotAfter (Get-Date).AddMonths(36)

$mypwd = ConvertTo-SecureString -String 'adaptAuthoringBundleSetup' -Force -AsPlainText

Export-PfxCertificate -Cert $cert -FilePath "E:\adapt\innoSetup\AdaptAuthoringBundleSetup\installer\adaptAuthoringBundleCertificate12Jul25.pfx" -Password $mypwd


You now have two options to sign the .exe code file.


1- Using signtool to sign manually the Adapt Authoring Bundle Setup .exe file
-----------------------------------------------------------------------------

If you wish to use the signtool for signing manually your version of Adapt Authoring Bundle Setup .exe installer file, follow the step below.

Using PowerShell command line again, execute the following command:

signtool sign /n "Adapt Learning community" /f "E:\adapt\innoSetup\AdaptAuthoringBundleSetup\installer\adaptAuthoringBundleCertificate12Jul25.pfx" /td SHA256 /fd SHA256 /tr http://timestamp.digicert.com /p "adaptAuthoringBundleSetup" "E:\adapt\innoSetup\AdaptAuthoringBundleSetup\installer\Adapt_Authoring_Bundle_Setup-v12Jul25.exe"

You are done.


2- Using Inno Setup configuration to sign automatically the Adapt Authoring Bundle Setup .exe file
--------------------------------------------------------------------------------------------------

Alternatively, if you wish to use the signtool to sign automatically your Adapt Authoring Bundle Setup during the compile step of your script code, use Inno Setup configuration to accomplish this.
Note, remember to replace the reference to the .pfx certificate file in the script with your own certificate file.

Using Inno Setup script, declare SignTool=signToolSHA256 (see entry in the script) under the Setup section, with the following line (it should already be there):

signtool sign /n $qAdapt Learning community$q /f $q{#signCertificate}$q /td SHA256 /fd SHA256 /tr http://timestamp.digicert.com /p $qadaptAuthoringBundleSetup$q $f

You are done.

v12Jul2025
