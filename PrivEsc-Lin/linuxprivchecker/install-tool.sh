echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/sleventyeleven/linuxprivchecker.git
cd linuxprivchecker
chmod +x linuxprivchecker.py
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/linuxprivchecker/linuxprivchecker/linuxprivchecker.py" "linuxprivchecker.py"
#---Installation cmd end here---