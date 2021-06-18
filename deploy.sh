#!/bin/bash
git commit -a -m "new deployment"
git push
git checkout gh-pages
git rm -rf .
git checkout master -- _site
git mv _site/* .	
rmdir _site
git add .
git commit -a -m "new deployment"
git push
git checkout master
