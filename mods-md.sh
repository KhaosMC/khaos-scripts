# Script to generate a mods.md file for our gist, created by Ainsley
#!/bin/bash
printf '# Survival mods\n```java\n' >> /home/server/scripts/files/mods.md
cd /home/server/survival/server/mods/ && printf '%s\n' *.jar >> /home/server/scripts/files/mods.md
printf '```\n# Creative mods\n```java\n' >> /home/server/scripts/files/mods.md
cd /home/server/creative/server/mods/ && printf '%s\n' *.jar >> /home/server/scripts/files/mods.md
printf '```\n# MCDR Plugins\n```py\n' >> /home/server/scripts/files/mods.md
cd /home/server/survival/plugins/ && printf '%s\n' *.py >> /home/server/scripts/files/mods.md
printf '```\n# carpet.conf\n```properties\n' >> /home/server/scripts/files/mods.md
cat /home/server/survival/server/world/carpet.conf >> /home/server/scripts/files/mods.md
echo '```'  >> /home/server/scripts/files/mods.md
cd /home/server/scripts/files && git commit -m "Daily mods.md update" && git push
