echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/rebootuser/LinEnum.git
cd LinEnum
chmod +x LinEnum.sh
# symlink template
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/LinEnum/LinEnum/LinEnum.sh" "LinEnum.sh"
#---Installation cmd end here---
