FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sample
WORKDIR /sample
ADD Gemfile /sample/Gemfile
ADD Gemfile.lock /sample/Gemfile.lock
RUN bundle install
ADD . /sample
