# 05 - File Compression

Tools to archive (group) and compress (shrink) files. The standard in Linux is `tar`.

| Command | Name | Description | Common Flags |
| :--- | :--- | :--- | :--- |
| `tar` | Tape Archive | Groups many files into one archive. Can also compress. | `-c` (create), `-x` (extract), `-v` (verbose), `-f` (file), `-z` (gzip) |
| `gzip` | GNU Zip | Compresses files using Lempel-Ziv coding (.gz). | `-d` (decompress), `-9` (best compression) |
| `zip` | Zip | Packages and compresses files (Windows compatible). | `-r` (recursive), `-e` (encrypt/password) |
| `unzip` | Unzip | Extracts files from a ZIP archive. | `-l` (list contents without extracting) |

## 💡 Examples

### 1. TAR (The Linux Standard)
> **Mnemonic:** > **c**reate: `tar -cvf archive.tar files/`  
> **x**tract: `tar -xvf archive.tar`

```bash
# Create a compressed archive (.tar.gz)
tar -czvf backup.tar.gz /var/log

# Extract a compressed archive
tar -xzvf backup.tar.gz

# Extract to a specific folder (-C)
tar -xzvf backup.tar.gz -C /tmp
```

### 2. ZIP (Cross-Platform)
```bash
# Compress a folder
zip -r my_project.zip my_project_folder/

# Unzip a file
unzip my_project.zip
```

