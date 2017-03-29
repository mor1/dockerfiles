FROM gitlab/gitlab-ce:9.0.0-ce.0
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apt-get update -y && apt-get install -y \
      anacron

COPY backup /backup
