# Script to generate a mods.md file for our gist, created by Ainsley
#!/bin/bash
rm /home/server/scripts/files/mods.md
touch /home/server/scripts/files/mods.md
printf '# Survival mods\n```' >> /home/server/scripts/files/mods.md
ls /home/server/survival/server/mods >> /home/server/scripts/files/mods.md
printf '```\n# Creative mods\n```' >> /home/server/scripts/files/mods.md
ls /home/server/creative/server/mods >> /home/server/scripts/files/mods.md
printf '```\n# MCDR Plugins\n```' >> /home/server/scripts/files/mods.md
ls /home/server/survival/plugins >> /home/server/scripts/files/mods.md
printf '```\n# carpet.conf\n```' >> /home/server/scripts/files/mods.md
cat /home/server/survival/server/world/carpet.conf >> /home/server/scripts/files/mods.md
echo '```'  >> /home/server/scripts/files/mods.md
