FROM jekyll/jekyll:3.8.5

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
COPY feed.xml feed.xml
RUN bundle install

COPY . .
RUN chmod -R a+r .