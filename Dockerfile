ARG RUBY_VERSION=3.1.2
FROM ruby:$RUBY_VERSION

RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -

RUN apt-get update && apt-get install -y \
      build-essential \
      nodejs \
      yarn \
      locales \
      netcat \
      sudo \
  && apt-get clean

ENV LANG C.UTF-8

RUN mkdir -p /app && chown $USER:$USER /app
WORKDIR /app

RUN gem install bundler
