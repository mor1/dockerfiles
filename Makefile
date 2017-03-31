#
# Copyright (C) 2017 Richard Mortier <mort@cantab.net>
#

.PHONY: %-build %-push all

all: \
  alpine-coffeescript/ \
  alpine-dos2unix/ \
  alpine-gawk/ \
  alpine-jq/ \
  alpine-lessc/ \
  alpine-lynx/ \
  alpine-python3/ \
  alpine-unzip/ \
  casperjs/ \
  gitlab-ce-cron/ \
  jekyll/ \
  jhead/ \
  node/ \
  pandoc/ \
  phantomjs/ \
  polyml/ \
  wget/

%-build:
	cd $* && docker build -t mor1/$* .

%-push: %-build
	docker push mor1/$*

%/: %-build %-push FORCE
	@echo "=== $< done!"

FORCE:
