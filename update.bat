echo cd note
cd note

echo gitbook build
call gitbook build

echo cd ..
call cd ..

echo git add .
call git add .

echo git commit 
call git commit -m "update `date` "

echo git push origin master
call git push origin master

echo xcopy note/_book/* ../stitchflute.github.io/
call xcopy note/_book/* ../stitchflute.github.io/ /e

echo cd ../stitchflute.github.io
call cd ../stitchflute.github.io

echo git add .
call git add .

echo git commit
call git commit -m "update `date` "

echo git push origin gh-pages
call git push origin gh-pages