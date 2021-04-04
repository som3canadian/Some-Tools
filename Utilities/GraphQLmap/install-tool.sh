echo "This tool is installed" > .installed
#---Install cmd start here---
git clone https://github.com/swisskyrepo/GraphQLmap
cd GraphQLmap
pip3 install -r requirements.txt
chmod +x graphqlmap.py
# symlink template
cd $SOME_ROOT/bin
ln -s "$SOME_ROOT/Utilities/GraphQLmap/GraphQLmap/graphqlmap.py" "graphqlmap"
#---Installation cmd end here---
