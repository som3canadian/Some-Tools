echo "This tool is installed" > .installed
#---Install cmd start here---
sudo apt install gobuster
git clone https://github.com/21y4d/nmapAutomator.git
cd nmapAutomator
chmod +x nmapAutomator.sh
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/nmapAutomator/nmapAutomator/nmapAutomator.sh" "nmapAutomator"
#---Installation cmd end here---
