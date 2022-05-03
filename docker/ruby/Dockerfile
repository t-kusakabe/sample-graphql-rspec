##########################
## Builder Container
##########################
FROM ruby:3.1.2-alpine3.15 as builder

WORKDIR /sample-graphql-rspec

RUN apk update && \
    apk add --no-cache \
      build-base \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      libpq \
      mysql-dev \
      shared-mime-info && \
    gem install bundler

COPY Gemfile Gemfile.lock ./

RUN bundle install

##########################
## Application Container
##########################
FROM ruby:3.1.2-alpine3.15

WORKDIR /sample-graphql-rspec

RUN apk update && \
    apk add --no-cache \
      build-base \
      curl-dev \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      libpq \
      mysql-client \
      mysql-dev \
      less \
      nodejs \
      tzdata && \
    gem install bundler

COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY . .

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
