echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/noraj/haiti.git

cd "haiti"
sudo gem install haiti-hash
# symlink template
# cd $SOME_ROOT/bin
# ln -s "$SOME_ROOT/$TOOLPATH/$TOOL/$TOOL/yourfile" "yourfile"
#---Installation cmd end here---
