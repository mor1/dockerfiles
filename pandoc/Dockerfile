FROM haskell:8
MAINTAINER Richard Mortier <mort@cantab.net>

RUN apt-get update -y \
    && apt-get install -y texlive-xetex \
    && stack install pandoc pandoc-citeproc

WORKDIR /cwd
ENTRYPOINT ["pandoc"]
