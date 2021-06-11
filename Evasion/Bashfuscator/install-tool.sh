echo "This tool is installed" > .installed
#---Install cmd start here---
sudo apt install python3-pip python3-argcomplete xclip -y
git clone https://github.com/Bashfuscator/Bashfuscator
cd Bashfuscator
python3 setup.py install --user
# cd $TOOL
cd $SOME_ROOT/bin
chmod +x "$SOME_ROOT/Evasion/Bashfuscator/Bashfuscator/bashfuscator/bashfuscator"
ln -s "$SOME_ROOT/Evasion/Bashfuscator/Bashfuscator/bashfuscator/bin/bashfuscator" "bashfuscator"
#---Installation cmd end here---
