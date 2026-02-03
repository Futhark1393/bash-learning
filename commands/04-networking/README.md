# 04 - Networking Commands

Essential tools for network configuration, troubleshooting, and data transfer.

| Command | Name | Description | Common Usage |
| :--- | :--- | :--- | :--- |
| `ping` | Packet Internet Groper | Checks connectivity to a host. | `ping -c 4 google.com` (limit count) |
| `ip` | IP | Show / manipulate routing, devices, and tunnels. (Replaces `ifconfig`) | `ip a` (show addresses) |
| `curl` | Client URL | Transfer data to/from a server. Great for APIs and headers. | `curl -I example.com` (headers only) |
| `wget` | World Wide Web Get | Non-interactive network downloader. | `wget http://example.com/file.zip` |
| `ssh` | Secure Shell | Secure remote login protocol. | `ssh user@host` |
| `scp` | Secure Copy | Securely copy files between hosts. | `scp file.txt user@host:/path` |
| `ss` | Socket Statistics | Investigates sockets (open ports). (Replaces `netstat`) | `ss -tuln` (TCP/UDP Listening Numeric) |
| `nc` | Netcat | The "Swiss Army knife" of networking. Read/write to connections. | `nc -zv host port` (scan port) |
| `nslookup`| Name Server Lookup | Query Internet name servers interactively. | `nslookup google.com` |

## 💡 Examples

### 1. Connectivity & Info
```bash
ping -c 3 1.1.1.1        # Ping Cloudflare DNS 3 times
ip addr show             # Show my IP address
curl ifconfig.me         # Show my Public IP address (external)
```
### 2. Reconnaissance (Security Friendly)
```bash
# Get HTTP Headers (Server type, OS, etc.)
curl -I [https://www.google.com](https://www.google.com)

# Check if port 80 (HTTP) is open on a host
nc -zv google.com 80
```

### 3. Downloading
```bash
wget -O newname.html [https://example.com](https://example.com)  # Download and rename
curl -O [https://example.com/file.zip](https://example.com/file.zip)      # Download with original name
```
