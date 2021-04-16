#!/bin/bash
rm -rf release
mkdir release
find . -name "*.jemdoc" -print -exec python2 jemdoc.py {} \;
echo "traslated complete"
find . -name "*.html" -print -exec mv {} release \;
find . -name "*_img*" -print -exec cp -r {} release \;
cp MENU ./release/MENU
cp jemdoc.css ./release/jemdoc.css
cp Yuan_2012.jpg ./release/Yuan_2012.jpg





