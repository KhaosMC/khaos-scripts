#!/bin/bash
# Simple backup script by vktec
# Backup script to backup Survival and Creative server, needs lzip

# Survival
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Starting to backup SMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/smp
echo | dtach -p /home/server/sockets/smp
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Starting to backup SMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/cmp
echo | dtach -p /home/server/sockets/cmp
cd /home/server/survival && tar --lzip -cf "backups/$(date -u +%Y-%m-%dT%H:%M:%S).tar.lz" server/world/
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Finished backing up SMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/smp
echo | dtach -p /home/server/sockets/smp
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Finished backing up SMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/cmp
echo | dtach -p /home/server/sockets/cmp

# Creative
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Starting to backup CMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/smp
echo | dtach -p /home/server/sockets/smp
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Starting to backup CMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/cmp
echo | dtach -p /home/server/sockets/cmp
cd /home/server/creative && tar --lzip -cf "backups/$(date -u +%Y-%m-%dT%H:%M:%S).tar.lz" server/world/
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Finished backing up CMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/smp
echo | dtach -p /home/server/sockets/smp
echo "tellraw @a {\"text\":\"\u00A71[Hourly Backup] \u00A79Finished backing up CMP\",\"bold\":\"true\"}" | dtach -p /home/server/sockets/cmp
echo | dtach -p /home/server/sockets/cmp

