echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/gentilkiwi/mimikatz.git
cd mimikatz

function gitGetLatestRelease() {
  gitCounter=0
  repoToGet="gentilkiwi/mimikatz"
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

# symlink template
# cd $SOME_ROOT/bin
# ln -s "$SOME_ROOT/$TOOLPATH/$TOOL/$TOOL/yourfile "yourfile""
#---Installation cmd end here---
