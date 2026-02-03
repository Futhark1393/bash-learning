# 06 - File Permissions & Ownership

Linux controls access through permissions (Read, Write, Execute) assigned to Owner, Group, and Others.

| Command | Name | Description | Common Usage |
| :--- | :--- | :--- | :--- |
| `chmod` | Change Mode | Changes file access permissions. | `chmod +x script.sh` (Make executable) |
| `chown` | Change Owner | Changes the user and/or group ownership of a file. | `chown user:group file` |
| `chgrp` | Change Group | Changes the group ownership. | `chgrp groupname file` |

## 🔑 Understanding Permissions

When you run `ls -l`, you see a string like `-rwxr-xr--`.

| Type | User (Owner) | Group | Others (World) |
| :---: | :---: | :---: | :---: |
| `-` (File) | `rwx` | `r-x` | `r--` |
| `d` (Dir) | Read, Write, Exec | Read, Exec | Read Only |

### Numeric Mode (Octal)
Each permission has a value: **Read(4)**, **Write(2)**, **Execute(1)**.

* **7** (4+2+1) = `rwx` (Full Access)
* **6** (4+2) = `rw-` (Read & Write)
* **5** (4+1) = `r-x` (Read & Execute)
* **4** (4+0) = `r--` (Read Only)
* **0** = `---` (No Access)

## 💡 Examples

### 1. chmod (Permissions)
```bash
chmod +x script.sh       # Add execute permission
chmod 755 script.sh      # Owner:rwx (7), Group:rx (5), Others:rx (5) -> Standard for scripts
chmod 600 secret.key     # Owner:rw (6), Group:-- (0), Others:-- (0) -> Secure private key
chmod 777 file           # Everyone can write! (DANGEROUS ⚠️)
```

### 2. chown (Ownership)
```bash
sudo chown futhark file.txt          # Change owner to 'futhark'
sudo chown futhark:developers file   # Change owner to 'futhark' and group to 'developers'
sudo chown -R futhark folder/        # Change ownership recursively
```

