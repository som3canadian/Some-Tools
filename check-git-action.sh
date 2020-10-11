#!/bin/bash

### by som3canadian

# This tool is use when check-git detected a possible update.
# This script is more extensive then what we need. Why ? I used a script I had already made and it could be useful for furtur some-tools function.

local_branch=$(git rev-parse HEAD)
remote_branch=$(git ls-remote origin | head -n 1 | cut -f 1)
base=$(git merge-base HEAD origin/master)

if [ $local_branch = $remote_branch ]; then
  echo -e "\nYour repo is Up to Date."

elif [ $local_branch = $base ]; then
  echo -e "\nYour repo is Behind. You Need to Pull."
  echo ""
  echo "> Do you want to Git Pull right now ?"
  echo "[*] Choose 1 ou 2"
  select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo ""; echo "Updating the Repo"; git pull origin master; break;;
        No ) echo ""; echo "No stress, not updating !"; exit;;
    esac
  done

elif [ $remote_branch = $base ]; then
  echo -e "\nYou commited some new changes.\nSo your repo is Ahead.\nYou need to Push!\n> git push -u origin master"
  echo ""
  echo "> Do you want to Git Push right now ?"
  echo "[*] Choose 1 ou 2"
  select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo ""; echo "Pushing the Repo"; git push -u origin master; break;;
        No ) echo ""; echo "No stress, not pushing !"; break;;
    esac
  done

else
  echo "Diverged"
fi