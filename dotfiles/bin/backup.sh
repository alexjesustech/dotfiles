#!/usr/bin/env sh

backup_path="/home/alexjesus"
external_storage="/run/media/alexjesus/ext-alex"
log_file="/home/alexjesus/daily_backup.log"
exclude_path="/home/alexjesus/.cache/*"

if ! mountpoint -q --  $external_storage; then
  print "erro"
  exit 1
fi

rsync -a --log-file=$log_file --exclude '/home/alexjesus/.cache/' $backup_path $external_storage/backup/ 
