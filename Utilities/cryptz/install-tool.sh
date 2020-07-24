echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/iinc0gnit0/cryptz.git
cd cryptz
pip install -r requirements.txt
chmod +x cryptz.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/cryptz/cryptz/cryptz.py" "cryptz"
#---Installation cmd end here---
