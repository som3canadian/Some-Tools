echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/411Hall/JAWS.git
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Win/JAWS/JAWS/jaws-enum.ps1" "jaws-enum.ps1"
#---Installation cmd end here---