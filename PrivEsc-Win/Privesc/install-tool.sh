echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/enjoiz/Privesc.git
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/Privesc/Privesc/privesc.ps1" "privesc.ps1"
#---Installation cmd end here---
