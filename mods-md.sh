# Script to generate a mods.md file for our gist, created by Ainsley
#!/bin/bash
rm /home/server/scripts/files/mods.md
touch /home/server/scripts/files/mods.md
printf '# Survival mods\n```java\n' >> /home/server/scripts/files/mods.md
printf '%s\n' /home/server/survival/server/mods/*.jar >> /home/server/scripts/files/mods.md
printf '```\n# Creative mods\n```java\n' >> /home/server/scripts/files/mods.md
printf '%s\n' /home/server/creative/server/mods/*.jar >> /home/server/scripts/files/mods.md
printf '```\n# MCDR Plugins\n```py\n' >> /home/server/scripts/files/mods.md
printf '%s\n' /home/server/survival/plugins/*.py >> /home/server/scripts/files/mods.md
printf '```\n# carpet.conf\n```\n' >> /home/server/scripts/files/mods.md
cat /home/server/survival/server/world/carpet.conf >> /home/server/scripts/files/mods.md
echo '```'  >> /home/server/scripts/files/mods.md
gist-paste -u 7f80ab2b67a780f52a46bfa2e2808c95 /home/server/scripts/files/mods.md 
