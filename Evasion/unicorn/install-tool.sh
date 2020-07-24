echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/trustedsec/unicorn.git
cd unicorn
chmod +x unicorn.py
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Evasion/unicorn/unicorn/unicorn.py" "unicorn"
#---Installation cmd end here---