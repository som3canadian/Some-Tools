#---This file is for uninstall tool in bin dir. In theory you have set them in the install-tool.sh file too---
#---Uninstall cmd start here---
# cd $SOME_ROOT/bin
sudo pip3 uninstall crackhash
cd $SOME_ROOT/Utilities/crackhash/crackhash
sudo rm -rf build
sudo rm -rf crackhash.egg-info
sudo rm -rf dist
#---Uninstall cmd end here---
