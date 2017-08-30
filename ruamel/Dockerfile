FROM mor1/python3:latest
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apk --no-cache add --update \
        build-base \
        python3-dev \
    && pip3 install -U pip setuptools wheel \
    && pip3 install ruamel.yaml ruamel.yaml.cmd

WORKDIR /cwd
ENTRYPOINT ["yaml"]
