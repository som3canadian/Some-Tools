echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/pentestmonkey/unix-privesc-check.git
cd unix-privesc-check
chmod +x upc.sh
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/unix-privesc-check/unix-privesc-check/upc.sh" "upc.sh"
#---Installation cmd end here---
