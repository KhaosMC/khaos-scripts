#!/bin/bash
# Simple backup script by vktec
# Backup script to backup Survival and Creative server, needs lzip
tell() {
    for server in smp cmp; do
        printf 'tellraw @a {"text":"%s","bold":"true"}\n\n' "$*" | dtach -p "/home/server/sockets/$server"
    done
}
backup() {
    tell "\u$3[Hourly Backup] \u${4}Starting to backup $2"
    cd "/home/server/$1" && ionice -c3 tar --lzip -cf "backups/$(date -u +%Y-%m-%dT%H:%M:%S).tar.lz" server/world/
    tell "\u$3[Hourly Backup] \u${4}Finished backing up $2"
}

backup survival SMP 00a71 00a79
backup creative CMP 00a75 00a7d
