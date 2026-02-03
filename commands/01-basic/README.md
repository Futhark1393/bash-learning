# 01 - Basic Commands

Fundamental Linux commands for navigation and file management.

| Command | Name | Description | Common Flags |
| :--- | :--- | :--- | :--- |
| `ls` | List | Lists directory contents. | `-l` (long format), `-a` (all/hidden), `-h` (human readable sizes) |
| `cd` | Change Directory | Navigates between directories. | `..` (go back), `~` (home), `-` (previous dir) |
| `pwd` | Print Working Directory | Shows the full path of the current folder. | N/A |
| `echo` | Echo | Prints text to the screen or a file. | `-e` (enable backslash escapes like \n) |
| `cat` | Concatenate | Displays file content on the screen. | `-n` (number lines) |
| `cp` | Copy | Copies files or directories. | `-r` (recursive/folders), `-v` (verbose) |
| `mv` | Move | Moves or renames files/directories. | `-v` (verbose) |
| `rm` | Remove | Deletes files or directories. **(Dangerous)** | `-r` (recursive), `-f` (force/no confirm) |
| `touch` | Timestamp | Creates an empty file or updates timestamp. | N/A |
| `mkdir` | Make Directory | Creates a new folder. | `-p` (create parent directories if needed) |
| `man` | Manual | Shows the help manual for a command. | N/A (Usage: `man ls`) |
| `alias` | Alias | Creates a shortcut for a command. | N/A (Usage: `alias c='clear'`) |

## 💡 Examples

### Navigation & Listing
```bash
ls -la          # List all files including hidden ones with details
cd /var/log     # Go to a specific folder
cd ..           # Go up one level
pwd             # Where am I?
```

### File Operations

```bash
mkdir -p myproject/src      # Create a folder inside a folder
touch notes.txt             # Create an empty file
cp notes.txt backup.txt     # Copy file
mv backup.txt old_notes.txt # Rename file
rm -rf myproject            # Delete folder and everything inside (Careful!)
```