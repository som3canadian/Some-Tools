#---This file is for uninstall tool in bin dir. In theory you have set them in the install-tool.sh file too---
#---Uninstall cmd start here---
cd $SOME_ROOT/bin/PrivEsc-Win
rm CopyAndPasteEnum.bat
rm CopyAndPasteFileDownloader.bat
rm ReverseShell.ps1
rm runas.ps1
rm windows_recon.bat
rm winreconstreamline.bat

cd $SOME_ROOT/bin
rm simple.php
#---Uninstall cmd end here---
