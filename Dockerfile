FROM alpine:latest

RUN apk add --update ruby-dev build-base ruby libffi-dev    \
    && rm -rf /var/cache/apk/*                              \
    && gem install -N github-pages                          \
    && apk del build-base libffi-dev ruby-dev               \
    && mkdir -p /cwd

ENTRYPOINT ["jekyll"]
CMD ["--help"]
