FROM mor1/phantomjs
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apt-get update -y                                               \
    && apt-get install -y git python                                \
    && git clone https://github.com/n1k0/casperjs.git               \
    && mv casperjs /opt/                                            \
    && ln -sf /opt/casperjs/bin/casperjs /usr/local/bin/casperjs    \

WORKDIR /cwd
ENTRYPOINT ["casperjs"]
