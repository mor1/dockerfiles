FROM alpine:latest

RUN apk --no-cache add --update                             \
        ruby                                                \
        build-base                                          \
        ruby-dev                                            \
        libffi-dev                                          \
        libxml2-dev                                         \
        zlib-dev                                            \
        libxslt-dev                                         \
    && gem install -N nokogiri -- --use-system-libraries    \
    && gem install -N github-pages                          \
    && mkdir -p /cwd

ENTRYPOINT ["jekyll"]
