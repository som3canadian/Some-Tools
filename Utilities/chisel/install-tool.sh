echo "This tool is installed" > .installed
#---Install cmd start here---
mkdir chisel
cd chisel
curl "https://i.jpillora.com/chisel!" > chisel-install.sh
chmod +x chisel-install.sh
sudo ./chisel-install.sh
