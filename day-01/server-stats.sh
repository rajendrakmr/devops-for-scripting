#!/bin/bash

echo "*************************SERVER PERFORMANCE STAT*************************"

#cpu usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{usage=100-$8} END {print usage}')

echo "CPU USAGE-----------------------------------------------------------------"

echo "Total CPU usage: $CPU_USAGE%"

#memory usage 
echo -e "\n[MEM USAGE]---------------------------------------------------------"
total_mem=$(free -h | awk '/Mem:/ {print $2}')
used_mem=$(free -h | awk '/Mem:/ {print $3}')
free_mem=$(free -h | awk '/Mem:/ {print $4}')
perc_mem=$(free | awk '/Mem:/ {printf("%.2f"), $3/$2*100}')

echo "Total Memory  : $total_mem"
echo "Used Memory   : $used_mem"
echo "Free Memory   : $free_mem"
echo "Memory Usage  : $perc_mem%"

# Disk usage
echo -e "\n[DISK USAGE]---------------------------------------------------------"
DISK_STATS=$(df -h / | awk 'NR==2 {print $2, $3, $4, $5}')

# Split values into variables
read total_disk used_disk free_disk perc_disk <<< "$DISK_STATS"

# Print nicely
echo "Total Disk Size : $total_disk"
echo "Used Disk       : $used_disk"
echo "Free Disk       : $free_disk"
echo "Disk Usage      : $perc_disk"

# # Get row 3 from df -h
# DISK_STATS=$(df -h | awk 'NR==3 {print $2, $3, $4, $5}')

# # Split into variables
# read total_disk used_disk free_disk perc_disk <<< "$DISK_STATS"

# # Print nicely
# echo "[DISK USAGE]"
# echo "Total Disk Size : $total_disk"
# echo "Used Disk       : $used_disk"
# echo "Free Disk       : $free_disk"
# echo "Disk Usage      : $perc_disk"

