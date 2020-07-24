echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/Anon-Exploiter/SUID3NUM.git
cd SUID3NUM
chmod +x suid3num.py
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/SUID3NUM/SUID3NUM/suid3num.py" "suid3num.py"
#---Installation cmd end here---