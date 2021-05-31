#!/bin/bash
# Simple backup script by vktec
# Backup script to backup Survival and Creative server, needs lzip
# Survival
cd /home/server/survival && tar --lzip -cf "backups/$(date -u +%Y-%m-%dT%H:%M:%S).tar.lz" server/world/
# Creative
cd /home/server/creative && tar --lzip -cf "backups/$(date -u +%Y-%m-%dT%H:%M:%S).tar.lz" server/world/
