#!/bin/bash
export PGPASSFILE=/var/lib/pgsql/12/data/.pgpass
#backup
date_now=$(date "+%F")
DAYS_TO_KEEP=90
BACKUP_DIR=/var/lib/pgsql/12/backups
pg_dump -U backup -d ibm | gzip > $BACKUP_DIR/$date_now-daily.sql.gz
find $BACKUP_DIR -maxdepth 1 -mtime +$DAYS_TO_KEEP -name "*-daily.sql.gz" -exec rm -rf '{}' ';'