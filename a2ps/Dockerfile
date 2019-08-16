FROM alpine:3.10.1
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update \
        a2ps

WORKDIR /cwd
ENTRYPOINT a2ps
