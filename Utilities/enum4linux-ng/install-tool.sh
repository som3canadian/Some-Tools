echo "This tool is installed" > .installed
#---Install cmd start here---
# requirements
sudo apt install smbclient python3-ldap3 python3-yaml python3-impacket
#
git clone https://github.com/cddmp/enum4linux-ng
cd enum4linux-ng
pip 3 install -r requirements.txt
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/enum4linux-ng/enum4linux-ng/enum4linux-ng.py" "enum4linux-ng"
#---Installation cmd end here---
