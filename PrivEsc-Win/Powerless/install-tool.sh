echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/M4ximuss/Powerless.git
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/Powerless/Powerless/Powerless.bat" "Powerless.bat"
#---Installation cmd end here---