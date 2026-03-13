#!/bin/bash

DATE=$(date +%F)

tar -czvf /backups/nginx_backup_$DATE.tar.gz /etc/nginx /usr/share/nginx/html

echo "Backup created on $DATE" >> /backups/nginx_backup_log.txt

tar -tzf /backups/nginx_backup_$DATE.tar.gz >> /backups/nginx_backup_log.txt