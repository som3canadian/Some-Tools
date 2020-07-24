echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/diego-treitos/linux-smart-enumeration.git lse
cd lse
chmod +x lse.sh
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/lse/lse/lse.sh" "lse.sh"
#---Installation cmd end here---
