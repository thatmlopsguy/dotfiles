#!/bin/bash

echo '[*] Install Google Cloud SDK'

# Check if gcloud is already installed
if command -v gcloud &> /dev/null; then
    echo '[!] gcloud is already installed'
    gcloud --version
    exit 0
fi

# Install dependencies
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates gnupg curl

# Add Google Cloud's GPG key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

# Add the gcloud CLI distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list

# Update and install the gcloud CLI
sudo apt-get update
sudo apt-get install -y google-cloud-cli

echo '[*] gcloud installation complete'
gcloud --version
