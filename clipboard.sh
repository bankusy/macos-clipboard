#!/bin/bash

LOGFILE="$HOME/clipboard_log.txt"
LAST_CLIP=""

while true; do
  CURRENT_CLIP=$(pbpaste)

  if [ "$CURRENT_CLIP" != "$LAST_CLIP" ]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $CURRENT_CLIP" >> "$LOGFILE"
    LAST_CLIP="$CURRENT_CLIP"
  fi

  sleep 5
done

