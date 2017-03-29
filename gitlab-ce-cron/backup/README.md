# CUCL SRG Gitlab server backup


Backup scripts. Per advice from Piete,
  * create backup tarballs inside container
  * export from container to host [ create in volume-mounted host directory ]
  * using TGT obtained for cron-serv[12].cl, rsync backup tarballs from host
  * untar tarballs on cron-serv.cl to shadow directory

 This attempts to minimise churn on the filer: unchanged files are visible.
