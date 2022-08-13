#Created a bash script to restart the camera program when there are no changes in a file

RESULT=`find . -mmin -2 -type f -print | wc -l`

if [ $RESULT = "0" ]
then
        pm2 restart camera
fi
