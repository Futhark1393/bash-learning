# 03 - System Monitoring

Commands to monitor system resources (CPU, RAM, Disk) and manage processes.

| Command | Name | Description | Common Usage |
| :--- | :--- | :--- | :--- |
| `top` | Table of Processes | Real-time view of running processes and resource usage. | `top` (Press 'q' to exit) |
| `htop` | Htop | A more colorful and user-friendly version of top. | `htop` |
| `ps` | Process Status | Snapshot of current processes. | `ps aux` (show all), `ps -ef` |
| `df` | Disk Free | Reports file system disk space usage. | `df -h` (human readable) |
| `du` | Disk Usage | Estimates file space usage for directories. | `du -sh folder/` (summary) |
| `free` | Free Memory | Displays amount of free and used memory. | `free -h` |
| `kill` | Kill | Sends a signal to terminate a process. | `kill <PID>`, `kill -9 <PID>` (force) |
| `uptime` | Uptime | Shows how long the system has been running. | `uptime -p` (pretty format) |
| `uname` | Unix Name | Prints system information. | `uname -a` (all info), `uname -r` (kernel) |

## 💡 Examples

### 1. Resource Checks (Disk & RAM)
```bash
df -h              # Check disk space in GB/MB
free -h            # Check RAM usage
uptime             # Check load average and runtime
```

### 2. Process Management
```bash
ps aux | grep firefox   # Find the Process ID (PID) of firefox
kill 1234               # Kill process with PID 1234
kill -9 1234            # Force kill (if it's stuck)
pkill firefox           # Kill by name (be careful!)
```

### 3. Directory Size
```bash
du -sh /var/log         # Show total size of the log folder
du -ah . | sort -rh | head -5  # Find top 5 biggest files in current dir
```

### Adım 2: Simülasyon ve Demo (demo.sh)

Sistem izlemeyi script ile göstermek zordur (çünkü `top` canlı akar). Bu yüzden şöyle bir senaryo yazacağız:
1.  Arka planda çalışan "hayali" bir işlem başlatacağız (`sleep`).
2.  Onu `ps` ile bulacağız.
3.  Onu `kill` ile öldüreceğiz.
4.  Disk ve RAM durumunu raporlayacağız.
