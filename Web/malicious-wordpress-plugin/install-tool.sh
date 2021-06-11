echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/wetw0rk/malicious-wordpress-plugin.git
cd malicious-wordpress-plugin
chmod +x wordpwn.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Web/malicious-wordpress-plugin/malicious-wordpress-plugin/wordpwn.py" "wordpwn"
#---Installation cmd end here---
