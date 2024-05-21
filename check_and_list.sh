#!/bin/bash

# Define the directory to check
DIRECTORY="$HOME/path/to/directory"  # Adjusted to use user's home directory

# Check if the directory exists
if [ -d "$DIRECTORY" ]; then
    echo "Directory exists: $DIRECTORY"
    echo "Listing contents of $DIRECTORY:"
    ls -l "$DIRECTORY"
else
    echo "Directory does not exist: $DIRECTORY"
    echo "Attempting to create directory $DIRECTORY..."
    if mkdir -p "$DIRECTORY"; then
        echo "Directory created successfully."
    else
        echo "Failed to create directory. Please check your permissions or path."
        exit 1  # Exits the script with an error code if directory creation fails
    fi
fi

