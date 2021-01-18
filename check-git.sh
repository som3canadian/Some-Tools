#!/bin/bash

### by som3canadian

# This script only check if the version of the tool is up to date or behind the master.
# If behind, some-tools will use check-git-action script

local_branch=$(git rev-parse HEAD)
remote_branch=$(git ls-remote origin | head -n 1 | cut -f 1)
base=$(git merge-base HEAD origin/master)

if [ "$local_branch" = "$remote_branch" ]; then
  echo -e "\nYour repo is Up to Date."

elif [ "$local_branch" = "$base" ]; then
  echo "Your repo is Behind. You Need to Pull."

elif [ "$remote_branch" = "$base" ]; then
  echo -e "\nYou commited some new changes.\nSo your repo is Ahead.\nYou need to Push!\n> git push -u origin master"

else
  echo "Diverged"
fi
