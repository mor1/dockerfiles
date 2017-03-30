FROM alpine:latest
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
        wget

WORKDIR /cwd
ENTRYPOINT ["wget"]
