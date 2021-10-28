# Build
+ Rebuild
```
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="jekyll_bundle:/usr/local/bundle" --volume="jekyll_gems:/usr/gem" --env JEKYLL_ENV=production jekyll/jekyll:3.8.5 jekyll build
```
+ Update
```
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="jekyll_bundle:/usr/local/bundle" --volume="jekyll_gems:/usr/gem" --env JEKYLL_ENV=production jekyll/jekyll:3.8.5 bundle update
```

# Deploy
```
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
```

# TODO
- profile.jpg
- cover.jpg
- font css & ttf path
