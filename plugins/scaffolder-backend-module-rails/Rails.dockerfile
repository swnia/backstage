FROM ruby:3.3@sha256:93c2e346fa26a698bd9bacc209e3ecf9e9b21b058461fa80ffd5c452f580531c

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client git && \
    rm -rf /var/lib/apt/lists/

RUN gem install rails
