# Server Stats Script

`server-stats.sh` is a Bash script that provides a quick overview of **basic server performance statistics** on any Linux server. It is designed to be lightweight and easy to run, giving key information about CPU, memory, disk usage, and top resource-consuming processes.

---

## Features

The script displays the following statistics:

1. **Total CPU Usage**  
   - Shows the percentage of CPU currently in use.

2. **Total Memory Usage**  
   - Displays total, used, and free memory in human-readable format.  
   - Shows memory usage percentage.

3. **Total Disk Usage**  
   - Displays usage of the root (`/`) filesystem.  
   - Shows used space, free space, and usage percentage.

4. **Top 5 Processes by CPU Usage**  
   - Lists processes consuming the most CPU resources.

5. **Top 5 Processes by Memory Usage**  
   - Lists processes consuming the most memory.

---

### Optional / Stretch Goals
You can extend the script to include additional system stats, such as:

- Operating system version  
- Uptime and load average  
- Logged-in users  
- Failed login attempts  

---

## Usage

1. **Download the script** or create it as `server-stats.sh`.

2. **Make the script executable:**
   ```bash
   chmod +x server-stats.sh
   ```


    ```bash
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
   ```
