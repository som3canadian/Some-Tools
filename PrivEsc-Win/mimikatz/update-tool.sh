#!/bin/bash

cd mimikatz
rm mimikatz_trunk.7z
rm mimikatz_trunk.zip

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