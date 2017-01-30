#!/bin/sh

BACKUP_DIR="/respaldo/dumps_daily/bd_$(date +%Y-%m-%d).dump"

# Echoes all commands before executing.
set -o verbose

mkdir -p $BACKUP_DIR
rsync -avz /usr/local/var/lib/couchdb $BACKUP_DIR
