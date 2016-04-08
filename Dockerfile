FROM alpine:latest

RUN apk add --update python3 && rm -rf /var/cache/apk/* \
    && mkdir -p /cwd

ENTRYPOINT ["python3"]
CMD ["--help"]
