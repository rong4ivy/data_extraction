#!/bin/bash

directory="china_2"  # Replace with the path to your directory
counter=1

cd "$directory"
for file in *; do
    # Skip directories
    if [[ -d "$file" ]]; then
        continue
    fi

    # Extract file extension
    extension="${file##*.}"

    # Rename the file
    mv -- "$file" "${counter}.${extension}"

    # Increment the counter
    ((counter++))
done
