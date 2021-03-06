# CUCL SRG Gitlab server

## Configuration

Backed up under `/usr/groups/netos/gitlab`. See the [Makefile][] for some handy
targets on the deployment host (`gitlab.srg.cl.cam.ac.uk`). Build and push the
Docker image in the usual way, cf [../Makefile][Makefile].

[Makefile]: ../Makefile

## Backup

Per advice from Piete,
  * in container, create backups and extract to volume-mounted sync directory
      * [./scripts/backup](./scripts/backup)
  * on `cron-serv[01]`, sync the sync directory visible on the host
      * [./scripts/sync](./scripts/sync)

In both cases, install the `backup-sync.cron` cronjob on the cron server.
This minimises churn on the filer: unchanged files are made visible.

## Known Good

  * FROM gitlab/gitlab-ce:9.1.2-ce.0
  * FROM gitlab/gitlab-ce:9.0.0-ce.0
