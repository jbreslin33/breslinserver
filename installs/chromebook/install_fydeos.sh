#!/bin/bash

# FydeOS Installer for Dell OptiPlex 7420 AIO
# Downloads FydeOS (Chrome OS alternative with Google login support)
# and creates a bootable USB installer

set -e

echo "========================================================"
echo "FydeOS Installer for Dell OptiPlex AIO 7420"
echo "========================================================"
echo ""
echo "Your CPU: Intel Core i7-14700 (14th Gen)"
echo "FydeOS Version: Intel Modern (v21.0)"
echo ""
echo "FydeOS Features:"
echo "  ✓ Google account login support"
echo "  ✓ Chrome OS-like interface"
echo "  ✓ Access to Linux terminal and Android apps"
echo "  ✓ Free for personal/educational use"
echo ""
echo "Note: FydeOS is based in China. Consider privacy implications."
echo ""
read -p "Continue with download? (yes/no): " CONTINUE

if [ "$CONTINUE" != "yes" ]; then
    echo "Aborted"
    exit 0
fi

# FydeOS download details
VERSION="21.0"
FILENAME="FydeOS_for_PC_iris_v${VERSION}-io-stable.bin.zip"
DOWNLOAD_URL="https://download.fydeos.io/v${VERSION}/${FILENAME}"
SHA256="7a50a9572e26e8f1c8b1b0d2adc48e8a74f4bbcd6a3ee6968dff6b606d955c34"

echo ""
echo "Download Details:"
echo "  Version: ${VERSION}"
echo "  File: ${FILENAME}"
echo "  Size: ~1.5GB"
echo "  URL: ${DOWNLOAD_URL}"
echo ""

# Check available disk space
AVAILABLE=$(df -h . | awk 'NR==2 {print $4}')
echo "Available disk space: ${AVAILABLE}"
echo ""

read -p "Start download? (yes/no): " DOWNLOAD

if [ "$DOWNLOAD" != "yes" ]; then
    echo "Aborted"
    exit 0
fi

echo ""
echo "Downloading FydeOS ${VERSION}..."
echo "This may take 5-15 minutes depending on your connection..."
echo ""

wget -c -O "$FILENAME" "$DOWNLOAD_URL"

if [ $? -ne 0 ]; then
    echo ""
    echo "Download failed. Please check:"
    echo "  1. Internet connection"
    echo "  2. Download URL is still valid"
    echo "  3. Disk space"
    exit 1
fi

echo ""
echo "Download complete! Verifying checksum..."

# Verify SHA-256
DOWNLOADED_SHA=$(sha256sum "$FILENAME" | cut -d' ' -f1)

if [ "$DOWNLOADED_SHA" = "$SHA256" ]; then
    echo "✓ Checksum verified successfully"
else
    echo "✗ WARNING: Checksum mismatch!"
    echo "  Expected: $SHA256"
    echo "  Got:      $DOWNLOADED_SHA"
    read -p "Continue anyway? (yes/no): " CONTINUE_ANYWAY
    if [ "$CONTINUE_ANYWAY" != "yes" ]; then
        echo "Aborted"
        exit 1
    fi
fi

echo ""
echo "Extracting image..."
unzip -o "$FILENAME"

# Find the .bin file
BIN_FILE=$(ls FydeOS_for_PC_iris_v*-io-stable.bin 2>/dev/null | head -1)

if [ -z "$BIN_FILE" ]; then
    echo "Error: Could not find .bin file after extraction"
    exit 1
fi

echo ""
echo "✓ Image extracted: $BIN_FILE"
echo ""
echo "========================================================"
echo "Ready to Create Bootable USB"
echo "========================================================"
echo ""
echo "You will need:"
echo "  • USB drive with at least 8GB capacity"
echo "  • All data on USB will be ERASED"
echo ""

read -p "Create bootable USB now? (yes/no): " CREATE_USB

if [ "$CREATE_USB" != "yes" ]; then
    echo ""
    echo "Image ready at: $BIN_FILE"
    echo ""
    echo "To create USB later, run:"
    echo "  sudo dd if=$BIN_FILE of=/dev/sdX bs=4M status=progress oflag=sync"
    echo ""
    echo "Find your USB device with: lsblk"
    exit 0
fi

echo ""
echo "Available drives:"
lsblk -d -o NAME,SIZE,TYPE,VENDOR,MODEL | grep -E "(disk|NAME)"

echo ""
echo "⚠️  WARNING: Double-check the device name!"
echo "    Writing to wrong device will destroy your data!"
echo ""
read -p "Enter USB device name (e.g., sdb, sdc): " DEVICE

DEVICE="/dev/${DEVICE}"

if [ ! -b "$DEVICE" ]; then
    echo "Error: $DEVICE is not a valid block device"
    exit 1
fi

echo ""
echo "Selected device: $DEVICE"
lsblk "$DEVICE"

echo ""
read -p "This will ERASE ALL DATA on $DEVICE. Continue? (type 'YES' to confirm): " FINAL_CONFIRM

if [ "$FINAL_CONFIRM" != "YES" ]; then
    echo "Aborted"
    exit 1
fi

echo ""
echo "Writing FydeOS to $DEVICE..."
echo "This will take 10-20 minutes. Do not remove the USB drive!"
echo ""

sudo dd if="$BIN_FILE" of="$DEVICE" bs=4M status=progress oflag=sync conv=fsync

if [ $? -eq 0 ]; then
    sudo sync
    echo ""
    echo "========================================================"
    echo "✓ SUCCESS! Bootable USB created"
    echo "========================================================"
    echo ""
    echo "Next steps:"
    echo "  1. Safely eject USB: sudo eject $DEVICE"
    echo "  2. Insert USB into Dell OptiPlex 7420"
    echo "  3. Restart and press F12 for boot menu"
    echo "  4. Select USB drive to boot"
    echo "  5. Follow FydeOS installation wizard"
    echo ""
    echo "First Boot:"
    echo "  • Try FydeOS without installing (Live mode)"
    echo "  • Or install to internal drive (will erase existing OS)"
    echo ""
    echo "After Installation:"
    echo "  • Students can log in with Google accounts"
    echo "  • Access Linux terminal: Ctrl+Alt+T, then type 'shell'"
    echo "  • Install Linux apps via terminal"
    echo ""
else
    echo ""
    echo "Error writing image to USB"
    exit 1
fi

# Cleanup option
echo ""
read -p "Delete downloaded files to save space? (yes/no): " CLEANUP

if [ "$CLEANUP" = "yes" ]; then
    rm -f "$FILENAME" "$BIN_FILE"
    echo "Cleanup complete"
fi

echo ""
echo "FydeOS USB installer ready!"
