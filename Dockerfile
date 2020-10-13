FROM jekyll/jekyll
COPY --chown=jekyll:jekyll *.yml *.gemspec Gemfile ./
RUN gem install bundler && bundle install


