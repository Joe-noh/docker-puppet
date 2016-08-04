FROM ubuntu:16.04
MAINTAINER Joe Honzawa <honzawa.j@pepabo.com>

RUN apt-get update \
  && apt-get install -yqq --no-install-recommends puppet ruby \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN gem install bundler --no-document
