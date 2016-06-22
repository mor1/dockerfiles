FROM alpine:latest

RUN apk --no-cache add --update                 \
        python3                                 \
    && mkdir -p /cwd

ENTRYPOINT ["python3"]
