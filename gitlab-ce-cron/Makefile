#
# Copyright (C) 2017 Richard Mortier <mort@cantab.net>
#
# Some useful `make` targets

S=128.232.98.226
H=gitlab.srg.cl.cam.ac.uk
EXEC=docker exec -it gitlab

shell:
	$(EXEC) /bin/bash

stop:
	docker stop gitlab

clean: stop
	docker rm gitlab

start:
	docker pull mor1/gitlab-ce-cron:latest
	docker run --detach \
	     --hostname $H \
	     --publish $S:443:443 \
	     --publish $S:80:80 \
	     --publish $S:22:22 \
	     --name gitlab \
	     --restart always \
	     --volume /data/gitlab/config:/etc/gitlab \
	     --volume /data/gitlab/logs:/var/log/gitlab \
	     --volume /data/gitlab/data:/var/opt/gitlab \
	     --volume /data/gitlab/backups:/var/opt/gitlab/backups \
	     --volume /data/gitlab/sync:/var/opt/gitlab/sync \
	     --env HOST_UID=$$(id -u) --env HOST_GID=$$(id -g) \
	     mor1/gitlab-ce-cron:latest

logs:
	docker logs -t -f gitlab

backup:
	$(EXEC) /scripts/backup

sync:
	$$(pwd -P)/scripts/sync

reconfigure:
	$(EXEC) gitlab-ctl reconfigure

console:
	$(EXEC) gitlab-rails console
