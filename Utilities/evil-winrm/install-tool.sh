echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/Hackplayers/evil-winrm.git evil-winrm
cd evil-winrm
sudo gem install winrm winrm-fs stringio
chmod +x evil-winrm.rb
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/evil-winrm/evil-winrm/evil-winrm.rb" "evil-winrm"
#---Installation cmd end here---
