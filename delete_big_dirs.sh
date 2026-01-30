#!/bin/bash

# ./delete_big_dirs.sh /home/rajendra/scripting 5

START_DIR="${1:-.}"  # Default to current directory
SIZE_LIMIT="${2:-5}" # MB

# Find non-hidden directories recursively
find "$START_DIR" -mindepth 1 -type d -mtime +8 -not -path '*/.*' |
while read -r dir; do
    size=$(du -sm "$dir" | cut -f1)
    if [[ $size -ge $SIZE_LIMIT ]];
    then
        echo "$dir → ${size}MB (>= ${SIZE_LIMIT}MB)"
    fi
done                                           


 