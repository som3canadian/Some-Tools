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
ln -s "$SOME_ROOT/PrivEsc-Lin/BeRoot/BeRoot/Linux/beroot.py" "beroot.py"

# symlink template
##########    Windows    ##########
cd $SOME_ROOT/bin/PrivEsc-Win
ln -s "$SOME_ROOT/PrivEsc-Lin/BeRoot/BeRoot/Windows/beRoot.exe" "beRoot.exe"
#---Installation cmd end here---
