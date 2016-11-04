FROM alpine:latest
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
        nodejs                                  \
    && npm install -g coffee-script

WORKDIR /cwd
ENTRYPOINT ["coffee"]
