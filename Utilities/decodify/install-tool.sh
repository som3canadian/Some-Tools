echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/s0md3v/Decodify.git decodify
cd decodify
sudo make install
# symlink template
# cd $SOME_ROOT/bin
# ln -s "$SOME_ROOT/$TOOLPATH/$TOOL/yourfile "yourfile""
#---Installation cmd end here---
