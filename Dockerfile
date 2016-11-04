FROM ruby:alpine
MAINTAINER Richard Mortier <mort@cantab.net>

COPY Gemfile .
RUN apk --no-cache add --update                 \
      build-base                                \
    && gem install bundler                      \
    && bundle install

RUN addgroup jekyll && adduser -DG jekyll jekyll
USER jekyll

WORKDIR /cwd
ENTRYPOINT ["jekyll"]
