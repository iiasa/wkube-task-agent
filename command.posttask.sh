#!/bin/bash

binary_file="/mnt/agent/wagt"

if [ ! -f "$binary_file" ]; then
    echo "Error: Binary file not found. Please download it first."
    exit 1
fi

chmod +x "$binary_file"
echo "Executing cleanup..."
./"$binary_file" POST "python posttask.py"
