#!/bin/bash
set -e
t="$HOME/.cache/depends/"
rm -rf $t
mkdir -p $t
cd $t

git clone https://github.com/EisregenHaha/end4fonts
cd end4fonts/fonts
if [[ -d ~/.local/share/fonts/ ]]; then
  echo "The fonts directory already exists"
  cp -R * ~/.local/share/fonts
else
mkdir ~/.local/share/fonts
fi
 cp -R * ~/.local/share/fonts
