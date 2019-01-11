FROM ubuntu
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
      jhead \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -r jhead && useradd -r -g jhead jhead
USER jhead

WORKDIR /cwd
ENTRYPOINT ["jhead"]
