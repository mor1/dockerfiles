FROM alpine:latest

RUN apk add --update ruby                                                      \
            build-base ruby-dev libffi-dev libxml2-dev zlib-dev libxslt-dev    \
    && rm -rf /var/cache/apk/*                                                 \
    && gem install -N nokogiri -- --use-system-libraries                       \
    && gem install -N github-pages                                             \
    && mkdir -p /cwd

ENTRYPOINT ["jekyll"]
CMD ["--help"]
