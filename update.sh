#!/bin/sh
echo "cd note"
cd note

echo "gitbook build"
gitbook build

echo "cd .."
cd ..

echo "git add ."
git add .

echo "git commit -m \"update `date` \""
git commit -m "update `date` "

echo "git push origin master"
git push origin master

echo "cp -r note/_book/* ../stitchflute.github.io/"
cp -r note/_book/* ../stitchflute.github.io/

echo "cd ../stitchflute.github.io"
cd ../stitchflute.github.io

echo "git add ."
git add .

echo "git commit -m \"update `date` \""
git commit -m "update `date` "

echo "git push origin gh-pages"
git push origin gh-pages