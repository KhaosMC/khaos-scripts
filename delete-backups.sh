# Script by vktec to delete any backups older than 2 days
#!/bin/sh
for server in survival creative; do
    cd "/home/server/$server/backups"
    for f in *.tar.lz; do
    file_date="$(date -d "${f%.tar.lz}" +%s)"
    now="$(date +%s)"
	if [ $(( file_date + 2*24*60*60 < now )) -eq 1 ]; then
	  rm "$f"
        fi
        done
done
