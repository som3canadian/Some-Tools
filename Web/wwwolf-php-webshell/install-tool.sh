echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/WhiteWinterWolf/wwwolf-php-webshell.git
cd wwwolf-php-webshell
chmod +x passhash.sh

# symlink template
##########    Windows    ##########
cd $SOME_ROOT/bin
ln -sn "$SOME_ROOT/Web/wwwolf-php-webshell/wwwolf-php-webshell/webshell.php" "webshell.php"
#---Installation cmd end here---