FROM ruby:2.6.6-alpine
RUN apk add build-base
RUN gem install scholarmarkdown
RUN mkdir /data/
WORKDIR /data
COPY Gemfile /data/Gemfile
COPY Gemfile.lock /data/Gemfile.lock
RUN bundle install
COPY . /data
CMD bundle exec guard --no-interactions