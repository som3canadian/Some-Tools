#!/bin/bash
cd BeRoot

##########    Linux    ##########
cd Linux
chmod +x beroot.py
cd ..


##########    Windows    ##########
cd Windows
rm beRoot.exe

function specialTool() {
  urlGit="https://github.com"
  ## You should modify urlTool
  urlTool="AlessandroZ/BeRoot/releases/latest"

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

unzip beRoot.zip
rm beRoot.zip
cd ..

# symlink template
##########    Linux    ##########
cd $SOME_ROOT/bin/PrivEsc-Lin
rm beroot.py
ln -s "$SOME_ROOT/PrivEsc-Lin/BeRoot/BeRoot/Linux/beroot.py" "beroot.py"

# symlink template
##########    Windows    ##########
cd $SOME_ROOT/bin/PrivEsc-Win
rm beRoot.exe
ln -s "$SOME_ROOT/PrivEsc-Lin/BeRoot/BeRoot/Windows/beRoot.exe" "beRoot.exe"