echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
chmod +x dirsearch.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Web/dirsearch/dirsearch/dirsearch.py" "dirsearch"
#---Installation cmd end here---
