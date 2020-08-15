echo "This tool is installed" >.installed
#---Install cmd start here---
git clone https://github.com/SecureAuthCorp/impacket.git
cd impacket

function whichPython() {
  echo "> Which Python are you using ?"
  echo "[*] Choose 1 for python3(will use pip3), 2 for python2(will use pip2) or anything else to exit !"
  select zb in "python3" "python2"; do
    case $zb in
    python3)
      echo "Selecting python3"
      pip3 install .
      break
      ;;
    python2)
      echo "Selecting python2"
      pip install .
      break
      ;;
    *) exit 1 ;;
    esac
  done
}
whichPython
# symlink template
# cd $SOME_ROOT/bin
# ln -s "$SOME_ROOT/$TOOLPATH/$TOOL/$TOOL/yourfile" "yourfile"
#---Installation cmd end here---
