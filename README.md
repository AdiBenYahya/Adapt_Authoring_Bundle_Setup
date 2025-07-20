Usage Notice
------------

v12Jul2025

Adapt Authoring Bundle Setup is free software, under GNU GPL-v3.0. You are free to use this Adapt Authoring Bundle Setup installer without warranty or responsibility of any kind.

Adapt Authoring Bundle Setup is an installation script and its open source is available at GitHub, under repository Adapt_Authoring_Bundle_Setup. The code is based on the Inno Setup, a free and open-source installer for Windows (https://jrsoftware.org).

The Adapt Authoring Bundle Setup has no application software or product of its own; it's simply an install script to automate the installation of Git, Node.js, MongoDB, Grunt, and Adapt Authoring tool.

Also, Adapt Authoring Bundle Setup does not pre-package or store inside it any of the above mentioned software. Instead, it uses URL links to the official third-party sites (Git, Node.js, MongoDB, Grunt, and Adapt Authoring) to download their software, and only then stores the official installers for Git, Node.js, and MongoDB in its own setup folder. In addition, it uses two batch scripts to install the packages for Grunt and Adapt Authoring.

The purpose of Adapt Authoring Bundle Setup is to simplify the installation of Adapt Authoring and guide the user through the installation steps of all the required software (Git, Node.js, MongoDB, Grunt, and Adapt Authoring) to enable the user to launch Adapt Authoring tool quicker than the current installation process.

Adapt Authoring Bundle Setup installation process follows the same steps as described on the Adapt Learning GitHub site, titled 'Installing the Authoring Tool (https://github.com/adaptlearning/adapt_authoring/wiki/Installing-the-Authoring-Tool), as of the version date shown above.

Please consult the Adapt Learning GitHub to familiarise yourself with the Adapt Authoring tool installation process before using this Adapt Authoring Bundle Setup installer.

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

For a step-by-step installation of Adapt Authoring, please see 'install_steps.txt'.


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

AS noted elsewhere, since this bundle installer uses URL links to download each software version from their official third-party sites - the links are accurate as of the version date shown above - each version can change at any time by the relevant third-party, so you may not receive the versions listed above by the time you use this Adapt Authoring Bundle Setup installer.

Future Adapt Authoring Bundle Setup installers with updated versions of the software can be built easily and quickly.

v12Jul2025
