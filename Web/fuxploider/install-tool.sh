echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/almandin/fuxploider.git
cd fuxploider
pip3 install -r requirements.txt
chmod +x fuxploider.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Web/fuxploider/fuxploider/fuxploider.py" "fuxploider"
#---Installation cmd end here---
