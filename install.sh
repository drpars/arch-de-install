#!/bin/bash
. ./lib

if [ ! -f /usr/bin/dialog ]; then
	sudo pacman -S --needed --noconfirm dialog
else
	echo "dialog is already present..."
fi

# create temporary files
rm -r $cachedir
mkdir $cachedir
cp -r $workdir/* $cachedir/
# execute installer
chmod 755 lib
# run installer
./lib --root
# delete cache directory
rm -r $cachedir
