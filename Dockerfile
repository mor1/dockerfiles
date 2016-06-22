FROM alpine:latest

RUN apk --no-cache add --update                 \
        nodejs                                  \
    && rm -rf /var/cache/apk/*                  \
    && npm install -g coffee-script             \
    && mkdir -p /cwd

ENTRYPOINT ["coffee"]
CMD [""]
