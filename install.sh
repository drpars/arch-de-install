#!/bin/bash
. ./lib

if [ ! -f /usr/bin/dialog ]; then
	instpkg dialog
fi

# create cache files
rm -r $cachedir
mkdir $cachedir
cp -r $workdir/* $cachedir/
# execute installer
chmod 755 lib
# run installer
./lib --root
# delete cache directory
rm -r $cachedir
clear
