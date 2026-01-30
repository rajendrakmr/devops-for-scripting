```bash 

🟢 CPU (Daily Use)

Script to alert if CPU usage > 80%

Find top 5 CPU-consuming processes

Detect CPU spikes over last 5 minutes

Monitor load average vs CPU cores

Alert if CPU usage stays high for 10 mins

Detect CPU steal time

Identify runaway processes

Log CPU usage periodically

🟡 MEMORY (Daily Use)

Script to alert if memory usage > 85%

Detect swap usage

Alert if swap usage increases suddenly

Find top memory-consuming processes

Detect memory leaks

Monitor cache vs free memory

Detect OOM killer events

Log memory usage trends

🟠 DISK / FILESYSTEM (Most Critical)

Script to alert if disk usage > 80%

Exclude tmpfs/overlay from disk checks

Monitor inode usage

Find which directories fill disk

Detect deleted files consuming disk

Detect read-only filesystem

Monitor disk growth over time

Automate cleanup of old logs

Detect unmounted filesystems

Monitor disk I/O latency

🔵 PROCESS / SERVICE (Daily Ops)

Check if service is running

Auto-restart failed service

Detect frequent service restarts

Monitor process by PID/name

Detect zombie processes

Monitor application port availability

Detect stuck processes

Check failed systemd services

🟣 NETWORK (Daily Ops)

Check if port is reachable

Monitor network latency

Detect packet drops

Monitor bandwidth usage

Detect network interface down

Monitor DNS resolution failures

Monitor SSL certificate expiry

Detect routing changes

🟤 LOGS / CRON / RELIABILITY (Very Important)

Monitor logs for errors

Detect log growth anomalies

Detect failed cron jobs

Avoid duplicate script execution

Log script output with timestamps

Monitor script execution time

Detect unexpected reboots

Monitor file permission changes
```