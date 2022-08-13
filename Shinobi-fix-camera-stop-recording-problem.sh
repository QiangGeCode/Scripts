RESULT=`find . -mmin -2 -type f -print | wc -l`

if [ $RESULT = "0" ]
then
        pm2 restart camera
fi
