#
# Copyright (C) 2017 Richard Mortier <mort@cantab.net>
#
# Some useful `make` targets

S=128.232.98.226

shell:
	docker exec -it gitlab /bin/bash

stop:
	docker stop gitlab

clean: stop
	docker rm gitlab

start:
	docker pull mor1/gitlab-ce-cron:latest
	docker run --detach \
	     --hostname gitlab.ocaml.io \
	     --publish $S:443:443 \
	     --publish $S:80:80 \
	     --publish $S:2222:22 \
	     --name gitlab \
	     --restart always \
	     --volume /data/gitlab/config:/etc/gitlab \
	     --volume /data/gitlab/logs:/var/log/gitlab \
	     --volume /data/gitlab/data:/var/opt/gitlab \
	     --volume /data/gitlab/backups:/var/opt/gitlab/backups \
	     --volume /data/gitlab/sync:/var/opt/gitlab/sync \
	     mor1/gitlab-ce-cron:latest

logs:
	docker logs -t -f gitlab

backup:
	docker exec -i gitlab /scripts/backup
