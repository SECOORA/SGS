#!/bin/bash

DIR="${1:-$(pwd)}"
valid=true

for json_file in $(find "$DIR" -type f -name "*.json"); do
    if ! jq . "$json_file" >/dev/null 2>&1; then
        echo "Invalid JSON: $json_file"
        valid=false
    fi
done

if [ "$valid" = true ]; then
    echo "All JSON files are valid."
    exit 0
fi

exit 1

