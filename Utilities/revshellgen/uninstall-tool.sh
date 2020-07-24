#---This file is for uninstall tool in bin dir. In theory you have set them in the install-tool.sh file too---
#---Uninstall cmd start here---
cd $SOME_ROOT/bin
rm revshellgen
rm commands
#---Uninstall cmd end here---
cd $SOME_ROOT/Utilities/revshellgen
sudo rm -rf revshellgen