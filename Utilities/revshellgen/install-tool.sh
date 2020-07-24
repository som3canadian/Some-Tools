echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/t0thkr1s/revshellgen
cd revshellgen
sudo python3 setup.py install
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/revshellgen/revshellgen/revshellgen.py" "revshellgen"
ln -sn "$SOME_ROOT/Utilities/revshellgen/revshellgen/commands" "commands"
#---Installation cmd end here---
