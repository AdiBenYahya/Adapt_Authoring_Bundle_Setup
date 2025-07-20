ReadMe
------

v12Jul2025

For usage notice, please see 'usage_notice.txt'.

For a step-by-step installation of Adapt Authoring, please see 'install_steps.txt'.


Adapt Authoring Bundle Setup helps simplify and speed up the installation of Adapt Authoring tool from Adapt Learning. It achieves this by automating the installation steps as much as possible to make the installation workflow more convenient and efficient while providing the user with all the available installation configuration options. To ensure Adapt Authoring Bundle Setup installation works as expected, it follows the same installation steps as described on the Adapt Learning GitHub site.

To see the versions of the third-party software installed in this Adapt Authoring Bundle Setup, please refer to 'Usage Notice.txt'


Target audience
-------------------

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
