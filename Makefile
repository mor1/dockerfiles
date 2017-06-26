#
# Copyright (C) 2017 Richard Mortier <mort@cantab.net>
#

.PHONY: %-build %-push all

all: \
  casperjs/ \
  coffeescript/ \
  dos2unix/ \
  gawk/ \
  gitlab-ce-cron/ \
  jekyll/ \
  jhead/ \
  jq/ \
  lessc/ \
  lynx/ \
  node/ \
  pandoc/ \
  phantomjs/ \
  polyml/ \
  python3/ \
  unzip/ \
  wget/

%-build:
	cd $* && docker build -t mor1/$* .
	@echo "=== $@ done!"

%-push: %-build
	docker push mor1/$*
	@echo "=== $@ done!"

%/: %-build %-push FORCE
	@echo "=== $@ done!"

FORCE:
