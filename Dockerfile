FROM debian:jessie
MAINTAINER Richard Mortier <mort@cantab.net>

ENV PHANTOMJS_VERSION=phantomjs-1.9.8-linux-x86_64 \
    PHANTOMJS_URL=https://bitbucket.org/ariya/phantomjs/downloads

RUN apt-get update -y                                                          \
    && apt-get install -y libfreetype6-dev libfontconfig1-dev wget bzip2       \
    && wget --no-check-certificate $PHANTOMJS_URL/$PHANTOMJS_VERSION.tar.bz2   \
    && tar xvf $PHANTOMJS_VERSION.tar.bz2                                      \
    && mv $PHANTOMJS_VERSION/bin/phantomjs /usr/local/bin/                     \
    && rm -rf phantom*

WORKDIR /cwd
ENTRYPOINT ["phantomjs"]
