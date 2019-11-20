build:
	bundle exec jekyll build
	git add .
	git commit -a -m "new build"

deploy:
	git checkout gh-pages
	git rm -rf .
	git checkout jekyll -- _site
	git mv _site/* .	
	rmdir _site
	git push
	git checkout jekyll