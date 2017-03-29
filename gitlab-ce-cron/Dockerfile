FROM gitlab/gitlab-ce:latest
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apt-get update -y && apt-get install -y \
      anacron

COPY backup /backup
