echo "This tool is installed" > .installed
#---Install cmd start here---
sudo apt-get update && sudo apt-get install -Vy sed xxd libc-bin curl jq perl gawk grep coreutils git
git clone https://github.com/tokyoneon/Chimera.git
cd Chimera
chmod +x chimera.sh
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Evasion/Chimera/Chimera/chimera.sh" "chimera"
#---Installation cmd end here---