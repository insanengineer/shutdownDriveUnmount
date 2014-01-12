#!/bin/sh

# Define the mount point location of the network attatched
# storage shares.
MOUNT_LOCATION='/mnt'

# an array of the share names check for
declare -a SHARE_NAME_ARRAY=(movies tv music pictures public)

# Check if the shares are currently mounted if they are then unmount them
if mount | grep $MOUNT_LOCATION > /dev/null
then
  for i in "${SHARE_NAME_ARRAY[@]}"
  do
    if mount | grep $MOUNT_LOCATION/$i > /dev/null
    then
      echo "The $i share was mounted. Now it is being unmounted...."
      umount $MOUNT_LOCATION/$i
    fi
  done
else 
  echo "No shares were detected. Nothing to do."
fi