echo "This tool is installed" > .installed
#---Install cmd start here---
mkdir chisel
cd chisel
curl "https://i.jpillora.com/chisel!" > chisel-install.sh
chmod +x chisel-install.sh
sudo ./chisel-install.sh
echo ""
echo "Installation completed"
echo "chisel is Installed in '$SOME_ROOT/bin' directory"
echo ""
# cd $TOOL
# symlink template
cd $SOME_ROOT/bin
sudo ln -s "$SOME_ROOT/Utilities/chisel/chisel/chisel" "chisel"
#---Installation cmd end here---
