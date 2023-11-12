#!/bin/bash
. ./lib

# Dependencies installer
if [ ! -f /usr/bin/dialog ]; then
  instpkg dialog
  if [ ! -f /usr/bin/nvim ]; then
    instpkg neovim
  fi
fi

# create cache files
rm -r $cachedir
mkdir $cachedir
cp -r $workdir/* $cachedir/
# execute installer
chmod 755 $cachedir/lib
# run installer
sh $cachedir/lib --root
# delete cache directory
rm -rf $cachedir
clear
