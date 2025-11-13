#!/bin/bash

# This script is for the MASTER (Teacher) computer.
# It will:
# 1. Add the official Veyon PPA (Personal Package Archive).
# 2. Install the Veyon package (which includes Master and Service).
# 3. Create a new authentication key pair for a group named "teachers".
# 4. Export the PUBLIC part of that key to your home directory.
#
# You will then copy this public key to your client machines.

echo "--- Starting Veyon Master (Teacher) Setup ---"

# --- 1. Add Veyon PPA ---
echo "[1/5] Adding Veyon stable PPA..."
sudo add-apt-repository ppa:veyon/stable -y
if [ $? -ne 0 ]; then
    echo "Error: Failed to add PPA. Aborting."
    exit 1
fi

# --- 2. Update Package Lists ---
echo "[2/5] Updating package lists..."
sudo apt-get update

# --- 3. Install Veyon ---
echo "[3/5] Installing Veyon..."
sudo apt-get install veyon -y
if [ $? -ne 0 ]; then
    echo "Error: Failed to install Veyon. Aborting."
    exit 1
fi

# --- 4. Create Authentication Keys ---
# We create a key pair for a group we'll call "teachers".
# The private key stays on this machine.
# The public key will be exported.
KEY_GROUP_NAME="teachers"
echo "[4/5] Creating authentication keys for group '$KEY_GROUP_NAME'..."
# Ensure the key directories exist with correct permissions
sudo mkdir -p /etc/veyon/keys/public
sudo mkdir -p /etc/veyon/keys/private
sudo chown -R root:root /etc/veyon/keys
sudo chmod -R 755 /etc/veyon/keys

# Create the key pair
sudo veyon-cli authkeys create "$KEY_GROUP_NAME"
echo "Key pair created."

# --- 5. Export Public Key ---
EXPORT_PATH="$HOME/veyon_public_key.pem"
echo "[5/5] Exporting public key to $EXPORT_PATH..."
sudo veyon-cli authkeys export public "$KEY_GROUP_NAME" "$EXPORT_PATH"
if [ $? -ne 0 ]; then
    echo "Error: Failed to export public key. Aborting."
    exit 1
fi

# Make the exported key readable by the current user
sudo chown $USER:$USER "$EXPORT_PATH"
sudo chmod 644 "$EXPORT_PATH"

echo "--- Veyon Master Setup Complete! ---"
echo ""
echo "IMPORTANT:"
echo "A public key file has been saved to: $EXPORT_PATH"
echo "You MUST copy this file to all your client (student) computers before running the client script."
echo ""
