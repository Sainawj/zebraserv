# zebraserv
When zebraserv seems to exit randomly. The symptom is that searches don't work. 
Even when you run - sudo koha-rebuild-zebra -f -v  library - you still can't get results when searching items.
Restarting koha fixes the issue.

This will fix the issue by checking zebraserv status the restarting it every time its off.
Add this shell file as follows:
sudo nano /usr/local/bin/check_zebra.sh
Paste everything on check_zebra.sh file
Save by  - clicking ctrl O and exit ctrl X
Give check_zebra.sh required permisions to execute by typing  - sudo chmod 0755 /usr/local/bin/check_zebra.sh

You need to add cronjob for this by usning the following steps:
$ sudo crontab -e
add the following at the end of the file
* * * * * /root/check_zebra.sh >> /root/check_zebra.log

