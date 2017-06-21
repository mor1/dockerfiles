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

%-push: %-build
	docker push mor1/$*

%/: %-build %-push FORCE
	@echo "=== $< done!"

FORCE:
