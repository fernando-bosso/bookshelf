FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN echo 'gem: --no-document' > ~/.gemrc \
  && bundle install

COPY . /app
