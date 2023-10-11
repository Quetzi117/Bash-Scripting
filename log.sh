#!/bin/bash

# Set the directory where your log files are located
log_directory=~/Documents/logs

# Loop through each log file in the directory
for log_file in "$log_directory"/*; do
    # Check if the item is a file
    if [ -f "$log_file" ]; then
        # Use wc -l to count lines and store the result in a variable
        line_count=$(wc -l < "$log_file")
        # Print the filename and line count to the report
        echo "$(basename "$log_file"): $line_count"
    fi
done
