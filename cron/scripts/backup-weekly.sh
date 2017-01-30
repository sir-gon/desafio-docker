#!/bin/sh

ORIGIN_DIR="/respaldo/dumps_daily"
BACKUP_DIR="/respaldo/dumps_weekly"
BACKUP="$BACKUP_DIR/bd_$(date +%Y-%m-%d).dump.tar"

echo "BACKUP DIR: $BACKUP_DIR"
echo "ORIGIN DIR: $ORIGIN_DIR"
echo "BACKUP: $BACKUP"

# Echoes all commands before executing.
set -o verbose

mkdir -p $BACKUP_DIR
tar -cvf $BACKUP $ORIGIN_DIR
rm -frv $ORIGIN_DIR
