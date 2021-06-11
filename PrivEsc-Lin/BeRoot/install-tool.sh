echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/AlessandroZ/BeRoot.git
cd BeRoot

##########    Linux    ##########
cd Linux
chmod +x beroot.py
cd ..

##########    Windows    ##########
cd Windows

function gitGetLatestRelease() {
  gitCounter=0
  repoToGet="AlessandroZ/BeRoot"
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

unzip beRoot.zip
rm beRoot.zip
cd ..
# symlink template
##########    Linux    ##########
cd "$SOME_ROOT/bin/PrivEsc-Lin"
ln -s "$SOME_ROOT/PrivEsc-Lin/BeRoot/BeRoot/Linux/beroot.py" "beroot.py"

# symlink template
##########    Windows    ##########
cd "$SOME_ROOT/bin/PrivEsc-Win"
ln -s "$SOME_ROOT/PrivEsc-Lin/BeRoot/BeRoot/Windows/beRoot.exe" "beRoot.exe"
#---Installation cmd end here---
