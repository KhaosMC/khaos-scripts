# Script to generate a mods.md file for our gist, created by Ainsley
#!/bin/bash
rm /home/server/scripts/files/mods.md
touch /home/server/scripts/files/mods.md
printf '# Survival mods\n```java\n' >> /home/server/scripts/files/mods.md
cd /home/server/survival/server/mods/ && printf '%s\n' *.jar >> /home/server/scripts/files/mods.md
printf '```\n# Creative mods\n```java\n' >> /home/server/scripts/files/mods.md
cd /home/server/creative/server/mods/ && printf '%s\n' *.jar >> /home/server/scripts/files/mods.md
printf '```\n# MCDR Plugins\n```py\n' >> /home/server/scripts/files/mods.md
cd /home/server/survival/plugins/ && printf '%s\n' *.py >> /home/server/scripts/files/mods.md
printf '```\n# carpet.conf\n```properties\n' >> /home/server/scripts/files/mods.md
cat /home/server/survival/server/world/carpet.conf >> /home/server/scripts/files/mods.md
echo '```'  >> /home/server/scripts/files/mods.md
cd /home/server/scripts/7f80ab2b67a780f52a46bfa2e2808c95 && mv /home/server/scripts/files/mods.md ../7f80ab2b67a780f52a46bfa2e2808c95 && git commit -m 'Daily mods.md update' && git push
