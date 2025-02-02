#!/bin/bash

# Source directory
BIN_DIR="/bin"
# Temporary directory
TMP_DIR="/tmp"

# Files to be uninstalled
FILES=("bridge_br0" "bridge_br0_spoof" "bridge_br0_dhcp" "bridge_br0_dhcp_spoof" "bridge_br0_off" "bridge_spoofer" "bridge_menu")

echo "Starting uninstallation..."

# Move the files to /tmp and delete them
for FILE in "${FILES[@]}"; do
    if [ -f "$BIN_DIR/$FILE" ]; then
        # Move to /tmp
        sudo mv "$BIN_DIR/$FILE" "$TMP_DIR"
        echo "File $FILE moved to $TMP_DIR."
        
        # Securely delete the file from /tmp
        sudo rm -rf "$TMP_DIR/$FILE"
        echo "File $FILE deleted."
    else
        echo "Error: The file $FILE was not found in $BIN_DIR."
    fi
done

echo "Uninstallation completed!"

