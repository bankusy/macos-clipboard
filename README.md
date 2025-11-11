# Clipboard Logger Script

This is a simple shell script to log macOS clipboard contents periodically.

## Overview

The script runs in the background, checking the clipboard every few seconds. When the clipboard content changes, it appends a timestamped entry to a log file.

## Requirements

- macOS with `pbpaste` command available (default on macOS)
- Terminal app or any shell environment


## Usage

1. Save the script to a file, e.g., `clipboard_logger.sh`
2. Make it executable:

```bash
chmod +x clipboard_logger.sh
```

3. Run the script:

```bash
./clipboard_logger.sh
```

4. To stop, press `Ctrl+C`

## How It Works

- Uses `pbpaste` to read the current clipboard content
- Compares with last recorded content
- If changed, logs the content with a timestamp to `clipboard_log.txt` in your home directory
- Checks every 5 seconds (adjustable in the script)


## Example Log Entry

```
[2025-11-11 13:00:00] copied text here
```


***

Feel free to modify sleep intervals or log file location according to your needs. This is a lightweight way to capture clipboard changes without heavy resource use.
