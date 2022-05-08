# Build
+ Rebuild
```
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="jekyll_bundle:/usr/local/bundle" --volume="jekyll_gems:/usr/gem" --env JEKYLL_ENV=production jekyll/jekyll jekyll build
```
+ Update
```
docker run --rm -it -p 4000:4000 --volume="$PWD:/srv/jekyll" --volume="jekyll_bundle:/usr/local/bundle" --volume="jekyll_gems:/usr/gem" --env JEKYLL_ENV=production jekyll/jekyll bundle update
```
+ Testing
```
docker run --rm -it -p 4000:4000 --volume="$PWD:/srv/jekyll" --volume="jekyll_bundle:/usr/local/bundle" --volume="jekyll_gems:/usr/gem" --env JEKYLL_ENV=production jekyll/jekyll jekyll serve
```

# Deploy
```
git commit -a -m "new deployment"
git push
git checkout gh-pages
git rm -rf .
git add .
git mv _site/* .	
rmdir _site
git commit -a -m "new deployment"
git push
git checkout master
```

# TODO
- profile.jpg
- cover.jpg
- font css & ttf path
- GH actions? https://martinopilia.com/posts/2020/02/22/migration.html
- https://github.com/marketplace/actions/jekyll-actions
