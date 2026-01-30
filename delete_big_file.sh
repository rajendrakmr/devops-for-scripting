#!/bin/bash
  


# ./delete_big_dirs.sh /home/rajendra/scripting 5

START_DIR="${1:-.}"   # Default to current directory
SIZE_LIMIT="${2:-5}" # MB

FOUND=false
# Find non-hidden directories recursively
find "$START_DIR" -type f -not -path '*/.*' |
while read -r file; do
    size=$(du -sm "$file" | cut -f1)
    if [[ $size -ge $SIZE_LIMIT ]];
    then
        echo "$file → ${size}MB (>= ${SIZE_LIMIT}MB)"  
        FOUND=true
    fi
done                                           
 

if [[ $FOUND = 'false' ]];
then
       echo "No files larger than ${SIZE_LIMIT}MB were found."
fi