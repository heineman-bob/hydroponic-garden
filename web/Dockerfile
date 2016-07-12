FROM ruby:2.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hydroponics
WORKDIR /hydroponics
ADD Gemfile /hydroponics/Gemfile
ADD Gemfile.lock /hydroponics/Gemfile.lock
COPY .gemrc ~/.
RUN bundle install
ADD . /hydroponics