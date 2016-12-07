FROM ubuntu:16.04
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
      polyml \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -r polyml && useradd -r -g polyml polyml
USER polyml

WORKDIR /cwd
ENTRYPOINT ["poly"]
