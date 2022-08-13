#Created a bash script to restart the camera program when there are no changes in a file

#!/bin/bash
. /etc/profile
RESULT=`/usr/bin/find /home/Shinobi -mmin -2 -type f -print | /usr/bin/wc -l`

if [ $RESULT = "0" ]
then
        /usr/local/bin/pm2 restart /home/Shinobi/camera.js >/dev/null 2>&1
        /bin/echo `/bin/date +"%Y-%m-%d %H:%M:%S"` Camera Restarted >> /home/Shinobi/RestartCamera.log
fi
