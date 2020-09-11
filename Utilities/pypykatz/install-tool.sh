echo "This tool is installed" > .installed
#---Install cmd start here---
pip3 install minidump minikerberos aiowinreg msldap winsspi
git clone https://github.com/skelsec/pypykatz.git
cd pypykatz
sudo python3 setup.py install
# cd $TOOL
# symlink template
# cd $SOME_ROOT/bin
# ln -s "$SOME_ROOT/$TOOLPATH/$TOOL/$TOOL/yourfile" "yourfile"
#---Installation cmd end here---
