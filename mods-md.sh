# Script to generate a mods.md file for our gist, created by Ainsley
#!/bin/bash
rm mods.md
touch mods.md
printf '# Survival mods\n```' >> mods.md
ls /home/server/survival/server/mods >> mods.md
printf '```\n# Creative mods\n```' >> mods.md
ls /home/server/creative/server/mods >> mods.md
printf '```\n# MCDR Plugins\n```' >> mods.md
ls /home/server/survival/plugins >> mods.md
printf '```\n# carpet.conf\n```' >> mods.md
cat /home/server/survival/server/world/carpet.conf >> mods.md
echo '```'  >> mods.md
