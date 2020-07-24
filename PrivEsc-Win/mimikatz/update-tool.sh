#!/bin/bash

cd mimikatz
rm mimikatz_trunk.7z
rm mimikatz_trunk.zip

function specialTool() {
  urlGit="https://github.com"
  ## You should modify urlTool
  urlTool="gentilkiwi/mimikatz/releases/latest"

  # scrapy command
  scrapy runspider $SOME_ROOT/some-scrapper.py -a start_url="$urlGit/$urlTool" -o output.csv >/dev/null 2>&1

  # Preparing txt file before downloading
  mv output.csv output.txt
  sort output.txt | uniq -d | tee output2.txt >/dev/null 2>&1
  rm output.txt
  sed -i -e 's#^#'"$urlGit"'#' output2.txt

  # Downloading each line with wget
  while IFS= read -r line; do
    wget $(echo "$line" | tr -d '\r') #> /dev/null 2>&1
  done <output2.txt

  # Cleaning up
  rm output2.txt
  rm output2.txt-e
}

specialTool