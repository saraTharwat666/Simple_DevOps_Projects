#!/bin/bash

echo ""
echo "====================================================================="
echo "======================== LOG_ARCHIVE_TOOL =========================="
echo "====================================================================="
echo ""

# Check if user provided a log directory
if [ -z "$1" ]; then
  echo "Please Provide a Log Directory..!"
  exit 1
fi

# Save the log directory into a variable
LOG_DIR="$1"

# Check if the log directory actually exists
if [ ! -d "$LOG_DIR" ]; then
   echo "The Directory Doesn't Exist..!"
   exit 1
fi

# Generate timestamp for the archive
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create an archives directory
ARCHIVE_DIR="archives"
mkdir -p "$ARCHIVE_DIR"

# Compress the logs using tar
ARCHIVE_FILE="$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz"
tar -czf "$ARCHIVE_FILE" -C "$LOG_DIR" .

# Log the archive creation
LOG_FILE="$ARCHIVE_DIR/archive.log"
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Created $ARCHIVE_FILE" >> "$LOG_FILE"

