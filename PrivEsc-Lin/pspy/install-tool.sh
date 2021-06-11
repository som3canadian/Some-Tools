echo "This tool is installed" >.installed
#---Install cmd start here---
git clone https://github.com/DominicBreuker/pspy.git
cd pspy

function gitGetLatestRelease() {
  gitCounter=0
  repoToGet="DominicBreuker/pspy"
  apiURL="https://api.github.com/repos"
  while [[ $checkDownloadURL != null ]]; do
    checkDownloadURL=$(http "$apiURL/$repoToGet/releases/latest" | jq -r ".assets[$gitCounter].browser_download_url")
    if [[ $checkDownloadURL == null ]]; then
      break
    fi
    # download the release
    wget "$checkDownloadURL"
    gitCounter=$((gitCounter + 1))
  done
}
gitGetLatestRelease

## You should modify permissions to fit your needs
# setting permissions
chmod +x pspy32
chmod +x pspy32s
chmod +x pspy64
chmod +x pspy64s


# symlink template
cd $SOME_ROOT/bin/PrivEsc-Lin
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy32" "pspy32"
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy32s" "pspy32s"
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy64" "pspy64"
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy64s" "pspy64s"
#---Installation cmd end here---
