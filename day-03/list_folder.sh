#!/bin/bash


ls -ldh */ | awk '{print $5, $9}' | while read -r size name
do
    echo "Folder name: $name size: $size"
done
