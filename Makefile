#
# Copyright (C) 2017 Richard Mortier <mort@cantab.net>
#

.PHONY: %-build %-publish

%-build:
	cd $* && docker build -t mor1/$* .

%-publish: %-build
	docker push mor1/$*

%/: %-build %-publish FORCE
	@echo "=== $< done!"

FORCE:
