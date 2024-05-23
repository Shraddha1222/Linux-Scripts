#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update -y

# Upgrade all installed packages to their latest versions
echo "Upgrading installed packages..."
sudo apt upgrade -y

# Perform a distribution upgrade
echo "Performing distribution upgrade..."
sudo apt dist-upgrade -y

# Remove unnecessary packages and dependencies
echo "Removing unnecessary packages..."
sudo apt autoremove -y

# Clean up the local repository of retrieved package files
echo "Cleaning up..."
sudo apt clean

echo "System update complete!"
