#!/bin/bash

awk 'tolower($0){ if ($0 ~ /cron/ && $0 !~ /sudo/ && NF < 13) print $0}' /var/log/syslog >> /home/yusran/modul1/logno5.log
