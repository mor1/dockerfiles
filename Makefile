#
# Copyright (C) 2017 Richard Mortier <mort@cantab.net>
#

.PHONY: %-build %-push all

all: \
  casperjs/ \
  coffeescript/ \
  dos2unix/ \
  gawk/ \
  ghi/ \
  gitlab-ce-cron/ \
  jekyll/ \
  jhead/ \
  jq/ \
  lessc/ \
  lynx/ \
  mirage/ \
  node/ \
  pandoc/ \
  pdftk/ \
  phantomjs/ \
  polyml/ \
  python3/ \
  ruamel/ \
  travis/ \
  travis-senv/ \
  unzip/ \
  wget/

%-build:
	cd $* && docker build $(DOCKER_FLAGS) -t mor1/$* .
	@echo "=== $@ done!"

%-push: %-build
	docker push $(DOCKER_FLAGS) mor1/$*
	@echo "=== $@ done!"

%/: %-build %-push FORCE
	@echo "=== $@ done!"

FORCE:
