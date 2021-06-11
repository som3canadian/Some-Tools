echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git PEAS
cd PEAS
chmod +x linPEAS/linpeas.sh
### setting symlinks
### linPEAS
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/linPEAS/linpeas.sh" "linPEAS.sh"
### winPEAS
cd $SOME_ROOT/bin/PrivEsc-Win
### bat
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASbat/winPEAS.bat" "winPEAS.bat"
### exe obfuscated
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASexe/binaries/Obfuscated Releases/winPEASany.exe" "winPEASanyObf.exe"
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASexe/binaries/Obfuscated Releases/winPEASx64.exe" "winPEASx64Obf.exe"
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASexe/binaries/Obfuscated Releases/winPEASx86.exe" "winPEASx86Obf.exe"
### exe normal
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASexe/binaries/Release/winPEASany.exe" "winPEASany.exe"
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASexe/binaries/x64/Release/winPEASx64.exe" "winPEASx64.exe"
ln -s "$SOME_ROOT/PrivEsc-Lin/PEAS/PEAS/winPEAS/winPEASexe/binaries/x86/Release/winPEASx86.exe" "winPEASx86.exe"
#---Installation cmd end here---