#!/bin/bash

echo "===== System Monitoring Report =====" >> /var/log/system_monitor.log
date >> /var/log/system_monitor.log

echo "CPU and Memory Usage" >> /var/log/system_monitor.log
top -b -n1 | head -10 >> /var/log/system_monitor.log

echo "Disk Usage" >> /var/log/system_monitor.log
df -h >> /var/log/system_monitor.log

echo "Directory Usage" >> /var/log/system_monitor.log
du -sh /var/www/html >> /var/log/system_monitor.log

echo "====================================" >> /var/log/system_monitor.log