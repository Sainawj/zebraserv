ps ax | grep  zebrasrv | grep koha-conf.xml > /dev/null
status=$?
if [ $status = "0" ]
then
  :
else
  # Restart
  echo "============================================="
  date
  echo "zebrasrv has stopped. Restarting Koka..."
  echo "/etc/init.d/koha-common restart"
  /etc/init.d/koha-common restart
fi
