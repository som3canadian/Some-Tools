echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/Arvanaghi/SessionGopher.git
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/SessionGopher/SessionGopher/SessionGopher.ps1" "SessionGopher.ps1"
#---Installation cmd end here---
