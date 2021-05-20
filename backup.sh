# Simple backup script by vktec
# Backup script to backup Survival and Creative server, needs lzip
#!/bin/bash
# Survival
cd /home/server/survival && tar --lzip -cf "backups/$(date -u +%Y-%M-%dT%H:%m:%S).tar.lz" server/world/
# Creative
cd /home/server/creative && tar --lzip -cf "backups/$(date -u +%Y-%M-%dT%H:%m:%S).tar.lz" server/world/
