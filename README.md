# khaos-scripts
A collection of (bash) scripts used on the khaos server

## mods-md.sh
A basic bash script to update [mods.md](https://gist.github.com/AI-nsley69/7f80ab2b67a780f52a46bfa2e2808c95#file-mods-md) to easily update the mod, plugin and carpet rule list without the need of human intervention.

## backup.sh
A basic bash script to backup a minecraft world. Depends on lzip and should be used with something like cron.

## delete-backups.sh
A basic bash script to be used with the backup script. Deletes backups when they're older than 48 hours.

## log
A basic bash script to upload a log file to [mclo.gs](https://mclo.gs/)
