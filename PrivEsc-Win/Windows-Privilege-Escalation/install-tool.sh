echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/frizb/Windows-Privilege-Escalation.git
cd Windows-Privilege-Escalation
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/CopyAndPasteEnum.bat" "CopyAndPasteEnum.bat"
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/CopyAndPasteFileDownloader.bat" "CopyAndPasteFileDownloader.bat"
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/ReverseShell.ps1" "ReverseShell.ps1"
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/runas.ps1" "runas.ps1"
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/windows_recon.bat" "windows_recon.bat"
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/winreconstreamline.bat" "winreconstreamline.bat"

cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/PrivEsc-Win/Windows-Privilege-Escalation/Windows-Privilege-Escalation/simple.php" "simple.php"
#---Installation cmd end here---
