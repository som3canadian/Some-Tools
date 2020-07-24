echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/kevthehermit/pentest.git linux-enum-mod
cd linux-enum-mod
chmod +x linux-enum-mod.sh
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/linux-enum-mod/linux-enum-mod/linux-enum-mod.sh" "linux-enum-mod.sh"
#---Installation cmd end here---
