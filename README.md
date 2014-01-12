I wrote this shell script to resolove an issue I was having with my Arch Linux installation.
When shutting down the system through KDE it would not cleanly unmount the network shares and
hang. This script fixes that issue. 

edit the following lines to make it work for your mount location and share names

change the /mnt to be the mount directory root (top of the mount tree)

MOUNT_LOCATION='/mnt'

change the names contained in the array (movies tc music pictures public) to be the name of
shares you which to check for upon shutdown

declare -a SHARE_NAME_ARRAY=(movies tv music pictures public)

To use this script in KDE go to System Settings -> Startup and Shutdown
click on the add script button
choose the path were the script was downloaded and click ok
select shutdown from the dropdown on the right of the script file name

Now when you shutdown throuh a desktop envronment it should cleanly unmount your drives