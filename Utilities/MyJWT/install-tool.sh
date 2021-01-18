echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/mBouamama/MyJWT.git
cd MyJWT
pip3 install -r requirements.txt
pip3 install myjwt
chmod +x myjwt/myjwt_cli.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/MyJWT/MyJWT/myjwt/myjwt_cli.py" "myjwt_cli"
#---Installation cmd end here---
