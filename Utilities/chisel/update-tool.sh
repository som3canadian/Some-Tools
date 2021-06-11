#!/bin/bash

cd chisel
curl "https://i.jpillora.com/chisel!" >chisel-install-new.sh

currentVersion=$(/bin/cat chisel-install.sh | grep "RELEASE=")
askVersion=$(/bin/cat chisel-install-new.sh | grep "RELEASE=")

if [ "$currentVersion" = "$askVersion" ]; then
  echo "This is the same version, nothing to do!"
  rm chisel-install-new.sh

elif [ "$currentVersion" != "$askVersion" ]; then
  echo "updating"
  rm chisel-install.sh
  mv chisel-install-new.sh chisel-install.sh
  chmod +x chisel-install.sh
  sudo ./chisel-install.sh
else
  echo "If you see this output, something is wrong !"
  rm chisel-install-new.sh
fi
