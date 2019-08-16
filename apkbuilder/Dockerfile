FROM alpine:3.10.1
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update                 \
        alpine-sdk

RUN adduser -D apkbuilder \
    && addgroup apkbuilder abuild \
    && chgrp abuild /var/cache/distfiles \
    && chmod g+w /var/cache/distfiles \
    && echo 'apkbuilder ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && sed -i.orig '/^#PACKAGER/s/".*"/"Richard Mortier <mort@cantab.net>"/g;/^#\(PACKAGER\|MAINTAINER\)/s/^#//' /etc/abuild.conf
USER apkbuilder

# XXX generates pub/priv keypair
# RUN abuild-keygen -a -i

WORKDIR /cwd
ENTRYPOINT sh
