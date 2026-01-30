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
