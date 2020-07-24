# This file is for uninstall tool in bin dir. In theory you have set them in the install-tool.sh file too------
#---Uninstall cmd start here---

cd $SOME_ROOT/bin/PrivEsc-Lin
rm linPEAS.sh
cd ..

cd $SOME_ROOT/bin/PrivEsc-Win
rm winPEAS.bat
rm winPEASanyObf.exe
rm winPEASx64Obf.exe
rm winPEASx86Obf.exe
rm winPEASany.exe
rm winPEASx64.exe
rm winPEASx86.exe
#---Uninstall cmd end here---