echo "This tool is installed" > .installed
#---Install cmd start here---
sudo apt install libcurl libopenssl libpcre libssh libssh-dev
git clone https://github.com/P0cL4bs/kadimus.git kadimus
cd kadimus
make
chmod +x kadimus
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Web/kadimus/kadimus/kadimus" "kadimus"
#---Installation cmd end here---
