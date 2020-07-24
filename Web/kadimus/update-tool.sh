#!/bin/bash
cd kadimus

rm kadimus
make
chmod +x kadimus

cd $SOME_ROOT/bin
rm kadimus
ln -s "$SOME_ROOT/Web/kadimus/kadimus/kadimus" "kadimus"