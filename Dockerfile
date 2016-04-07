FROM alpine:latest

RUN apk add --update ruby-dev build-base ruby libffi-dev                    \
    && rm -rf /var/cache/apk/*                                              \
    && gem install -N jekyll kramdown jekyll-coffeescript jekyll-paginate   \
    && mkdir -p /cwd

ENTRYPOINT ["jekyll"]
CMD ["--help"]
