FROM ruby:alpine
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
      build-base                                \
      nodejs                                    \
   && gem install bundler

COPY Gemfile .
RUN bundle install

RUN addgroup jekyll && adduser -DG jekyll jekyll
USER jekyll

WORKDIR /cwd
ENTRYPOINT ["jekyll"]
