echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/lobuhi/byp4xx.git
cd byp4xx
chmod +x byp4xx.sh
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Web/byp4xx/byp4xx/byp4xx.sh" "byp4xx"
#---Installation cmd end here---
