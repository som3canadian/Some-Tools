echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/pentestmonkey/windows-privesc-check.git
cd windows-privesc-check
chmod +x windows_privesc_check.py
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/windows-privesc-check/windows-privesc-check/windows_privesc_check.py" "windows_privesc_check.py"
ln -s "$SOME_ROOT/PrivEsc-Win/windows-privesc-check/windows-privesc-check/windows-privesc-check2.exe" "windows-privesc-check2.exe"
#---Installation cmd end here---