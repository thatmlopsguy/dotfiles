#! /usr/bin/env bash

# Check if the packages file exists
if [ ! -f "packages.txt" ]; then
    echo "packages.txt file not found."
    exit 1
fi

# Update package lists
sudo apt update -y && \
  sudo apt upgrade -y && \
  export DEBIAN_FRONTEND=noninteractive

# Read the packages file and install each package
while IFS= read -r package
do
    echo "Installing $package"
    sudo apt install --no-install-recommends -y "$package"
done < packages.txt

# Cleanup
sudo apt autoremove -y \
  && sudo apt autoclean \
  && sudo rm -rf /var/lib/{apt,dpkg,cache,log}/
