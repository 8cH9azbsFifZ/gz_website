#!/bin/bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="jekyll_bundle:/usr/local/bundle" --volume="jekyll_gems:/usr/gem" --env JEKYLL_ENV=production  -p 4000:4000 jekyll/jekyll:3.8.5 jekyll serve
