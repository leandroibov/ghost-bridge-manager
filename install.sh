#!/bin/bash

# Target directory
BIN_DIR="/bin"

# Files to be copied
FILES=("bridge_br0" "bridge_br0_spoof" "bridge_br0_dhcp" "bridge_br0_dhcp_spoof" "bridge_br0_off" "bridge_spoofer" "bridge_menu")

echo "Starting installation..."

# Copy the files to /bin
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        sudo cp "$FILE" "$BIN_DIR"
        sudo chmod +x "$BIN_DIR/$FILE"
        echo "File $FILE copied to $BIN_DIR."
    else
        echo "Error: The file $FILE was not found in the current directory."
    fi
done

echo "Installation completed!"
echo "use in terminal";
echo "bridge_menu";
echo "to start the program...";
