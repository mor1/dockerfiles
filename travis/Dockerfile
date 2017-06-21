FROM ruby:alpine
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
      build-base                                \
      git                                       \
    && gem install bundler

COPY Gemfile .
RUN bundle install

RUN addgroup travis && adduser -DG travis travis
USER travis

WORKDIR /cwd
ENTRYPOINT ["travis"]
