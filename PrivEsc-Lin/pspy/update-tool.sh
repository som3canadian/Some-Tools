#!/bin/bash
cd pspy

rm pspy32
rm pspy32s
rm pspy64
rm pspy64s

function specialTool() {
  urlGit="https://github.com"
  ## You should modify urlTool variable
  urlTool="DominicBreuker/pspy/releases/latest"

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

## You should modify permissions to fit your needs
# setting permissions
chmod +x pspy32
chmod +x pspy32s
chmod +x pspy64
chmod +x pspy64s

cd $SOME_ROOT/bin/PrivEsc-Lin
rm pspy32
rm pspy32s
rm pspy64
rm pspy64s

ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy32" "pspy32"
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy32s" "pspy32s"
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy64" "pspy64"
ln -s "$SOME_ROOT/PrivEsc-Lin/pspy/pspy/pspy64s" "pspy64s"