#!/bin/bash

# This script is for the CLIENT (Student) computer.
# It will:
# 1. Check for a public key file (which you must provide as an argument).
# 2. Add the official Veyon PPA.
# 3. Install the Veyon package.
# 4. Import the public key you provide.
# 5. Configure the Veyon Service to use key authentication and autostart.
#
# USAGE:
# ./install_veyon_client.sh /path/to/veyon_public_key.pem

echo "--- Starting Veyon Client (Student) Setup ---"

# --- 1. Check for Public Key Argument ---
PUBLIC_KEY_FILE="$1"
KEY_GROUP_NAME="teachers" # Must match the name used on the master script

if [ -z "$PUBLIC_KEY_FILE" ]; then
    echo "Error: You must provide the path to the public key file."
    echo "Usage: $0 /path/to/veyon_public_key.pem"
    exit 1
fi

if [ ! -f "$PUBLIC_KEY_FILE" ]; then
    echo "Error: Key file not found at $PUBLIC_KEY_FILE"
    exit 1
fi

echo "[1/6] Using public key from: $PUBLIC_KEY_FILE"

# --- 2. Add Veyon PPA ---
echo "[2/6] Adding Veyon stable PPA..."
sudo add-apt-repository ppa:veyon/stable -y
if [ $? -ne 0 ]; then
    echo "Error: Failed to add PPA. Aborting."
    exit 1
fi

# --- 3. Update Package Lists ---
echo "[3/6] Updating package lists..."
sudo apt-get update

# --- 4. Install Veyon ---
echo "[4/6] Installing Veyon..."
sudo apt-get install veyon -y
if [ $? -ne 0 ]; then
    echo "Error: Failed to install Veyon. Aborting."
    exit 1
fi

# --- 5. Import Public Key ---
echo "[5/6] Importing public key for group '$KEY_GROUP_NAME'..."
# Ensure the key directory exists
sudo mkdir -p /etc/veyon/keys/public
sudo veyon-cli authkeys import public "$KEY_GROUP_NAME" "$PUBLIC_KEY_FILE"
if [ $? -ne 0 ]; then
    echo "Error: Failed to import public key."
    echo "Make sure the group name '$KEY_GROUP_NAME' matches the master."
    exit 1
fi
echo "Public key imported successfully."

# --- 6. Configure Veyon Service ---
echo "[6/6] Configuring Veyon Service..."

# Set authentication method to Key File Authentication (Method 1)
sudo veyon-cli config set Service/AuthenticationMethods 1

# Ensure the service is set to autostart
sudo veyon-cli config set Service/Autostart true

# Hide the tray icon from the student
sudo veyon-cli config set Service/TrayIcon false

# Apply settings by restarting the service
echo "Enabling and restarting veyon-service..."
sudo systemctl enable veyon-service
sudo systemctl restart veyon-service

echo "--- Veyon Client Setup Complete! ---"
echo "This machine should now be accessible by the Veyon Master."
echo "A reboot is recommended."
echo ""
