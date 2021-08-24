echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/cyberstruggle/whitepass.git
cd whitepass
pip3 install -r requirements.txt
chmod +x whitepass.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Web/whitepass/whitepass/whitepass.py" "whitepass"
#---Installation cmd end here---
