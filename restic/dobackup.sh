#!/bin/bash
echo "running restic backup..."
restic -r /home/pi/radiopi-repo backup --files-from /home/pi/resticFilesFrom.txt --exclude-file=/home/pi/resticExcludes.txt --password-file /home/pi/.resticpass --verbose