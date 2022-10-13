
FROM ruby:2.7-slim as back_development
RUN apt-get update \
  && apt-get install -y build-essential libpq-dev libaio1 locales curl \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src
COPY ./Gemfile ./Gemfile
RUN bundle install
COPY . .