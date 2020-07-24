echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/rasta-mouse/Sherlock.git
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/Sherlock/Sherlock/Sherlock.ps1" "Sherlock.ps1"
#---Installation cmd end here---