FROM alpine:latest
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
        python3

WORKDIR /cwd
ENTRYPOINT ["python3"]
