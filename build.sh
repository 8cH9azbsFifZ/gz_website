#!/bin/bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --volume="$PWD/vendor/gems:/usr/gem" --env JEKYLL_ENV=production jekyll/jekyll jekyll build
