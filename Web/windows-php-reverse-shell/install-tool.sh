echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/Dhayalanb/windows-php-reverse-shell.git
cd windows-php-reverse-shell
mv "Reverse Shell.php" "windows-php-revshell.php"

cd $SOME_ROOT/bin
ln -sn "$SOME_ROOT/Web/windows-php-reverse-shell/windows-php-reverse-shell/windows-php-revshell.php" "windows-php-revshell.php"
#---Installation cmd end here---
