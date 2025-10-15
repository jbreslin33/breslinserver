#!/bin/bash

# This script installs Visual Studio Code on Ubuntu.

set -e

echo "Updating package lists..."
sudo apt update

echo "Installing dependencies..."
sudo apt install -y wget gpg

echo "Downloading Microsoft GPG key..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

echo "Adding Microsoft GPG key to apt trusted keys..."
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
rm microsoft.gpg

echo "Adding VS Code repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | \
  sudo tee /etc/apt/sources.list.d/vscode.list

echo "Updating package lists again..."
sudo apt update

echo "Installing Visual Studio Code..."
sudo apt install -y code

echo "VS Code installation complete."
