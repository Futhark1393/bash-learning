# 02 - Text Processing

Commands to search, filter, and manipulate text streams and files. Essential for log analysis.

| Command | Name | Description | Common Usage |
| :--- | :--- | :--- | :--- |
| `grep` | Global Regular Expression Print | Searches for patterns in files. | `grep "error" file.log` |
| `awk` | Aho, Weinberger, and Kernighan | Pattern scanning and processing language. Great for columns. | `awk '{print $1}' file.txt` |
| `sed` | Stream Editor | Parses and transforms text (search/replace). | `sed 's/old/new/g' file.txt` |
| `cut` | Cut | Removes sections from each line of files (splitting by delimiter). | `cut -d":" -f1 /etc/passwd` |
| `sort` | Sort | Sorts lines of text files. | `sort -n` (numeric), `sort -r` (reverse) |
| `head` | Head | Output the first part of files. | `head -n 5 file.txt` |
| `tail` | Tail | Output the last part of files. | `tail -f file.log` (follow live updates) |

## 💡 Examples

### 1. Grep (Search)
```bash
grep "Failed" auth.log          # Find lines containing "Failed"
grep -r "config" /etc/          # Recursive search in folder
grep -v "Success" auth.log      # Show lines NOT containing "Success" (Invert)
```

### 2. Awk (Columns)
```bash
# Print the 1st and 3rd column of a file
awk '{print $1, $3}' data.txt

# Print only lines where length of line > 20
awk 'length($0) > 20' data.txt
```

### 3. Sed (Replace)
```bash
# Replace "foo" with "bar" (only affects output, doesn't change file)
sed 's/foo/bar/g' file.txt

# Replace in-place (actually changes the file)
sed -i 's/foo/bar/g' file.txt
```

### 4. Head & Tail
```bash
head -n 10 file.txt    # View first 10 lines
tail -f server.log     # Watch log file in real-time (Ctrl+C to stop)
```

