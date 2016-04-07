FROM alpine:latest

RUN apk add --update nodejs && rm -rf /var/cache/apk/*
RUN npm install -g coffee-script

ENTRYPOINT ["coffee"]
CMD ["--help"]
