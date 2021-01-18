echo "This tool is installed" > .installed
#---Install cmd start here---
git clone git://github.com/5h4d0wb0y/crackhash
cd crackhash
sudo python3 setup.py install
# symlink template
# cd $SOME_ROOT/bin
# ln -s "$SOME_ROOT/$TOOLPATH/$TOOL/$TOOL/yourfile" "yourfile"
#---Installation cmd end here---
