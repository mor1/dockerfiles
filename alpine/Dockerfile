FROM alpine:3.10.1
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update \
    alpine-sdk \
    bash \
    less \
    less-doc \
    man \
    man-pages \
    mdocml-apropos \
    sudo \
    && addgroup alpine && adduser -DG alpine alpine \
    && echo 'alpine ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER alpine

RUN cd && git clone https://github.com/mor1/rc-files.git \
    && cd rc-files && ./install.sh

ENV PAGER=less
WORKDIR /cwd
ENTRYPOINT /bin/bash
