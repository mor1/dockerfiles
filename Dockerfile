FROM alpine:latest
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
        nodejs                                  \
    && npm install -g less less-plugin-clean-css

WORKDIR /cwd
ENTRYPOINT ["lessc"]
