FROM alpine:latest

RUN apk add --update build-base ruby-dev libffi-dev libxml2-dev zlib-dev ruby  \
    && rm -rf /var/cache/apk/*                                                 \
    && gem install -N github-pages                                             \
    && apk del build-base ruby-dev libffi-dev libxml2-dev zlib-dev             \
    && mkdir -p /cwd

ENTRYPOINT ["jekyll"]
CMD ["--help"]
