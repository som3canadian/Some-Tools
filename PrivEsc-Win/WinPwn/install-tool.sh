echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/S3cur3Th1sSh1t/WinPwn.git
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/WinPwn/WinPwn/Offline_WinPwn.ps1" "Offline_WinPwn.ps1"
#---Installation cmd end here---
