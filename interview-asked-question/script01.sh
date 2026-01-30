#!/bin/bash


<< info 
Write a script that checks the disk usage of all mounted filesystems and sends a notification (print to terminal) if any filesystem usage exceeds 80%. Include the filesystem name and usage percentage in the output

info

THRESHOLD=80

df -h | awk 'NR>2 {print $1, $5,$6}' | while read -r filesys usage mountpoint
do
    echo "Filesystem : $filesys used: $usage"
    usage=$(echo "$usage" | sed 's/%//') 
    if [ "$usage" -ge "$THRESHOLD" ];
    then
       echo "ALERT: $filesys mounted on $mountpoint is at $usage% usage"
    fi  
done



# echo -e "/dev/sda1 85% / \n/dev/sda3 855% /" | while read -r filesys usage mountpoint
# do
#     echo "FS=$filesys"
#     echo "USAGE=$usage"
#     echo "MOUNT=$mountpoint"
# done


# echo "hello\world" | while read -r line
# do
#     echo "$line"
# done
