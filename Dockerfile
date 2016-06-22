FROM alpine:latest

RUN apk --no-cache add --update                 \
        nodejs                                  \
    && npm install -g coffee-script             \
    && mkdir -p /cwd

ENTRYPOINT ["coffee"]
