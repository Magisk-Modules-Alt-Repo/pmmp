#!/system/bin/sh

# Define the target directory
PMMP_DIR="/data/local/pmmp"
PMMP_BIN_DIR="$PMMP_DIR/pmmp/bin"

# $MODDIR is automatically set by Magisk to the module's directory
# It should contain the files that will be copied to the target location

# Create the /data/local/pmmp directory if it doesn't exist
if [ ! -d "$PMMP_DIR" ]; then
    mkdir -p "$PMMP_DIR"
fi

# Copy all files and folders from $MODDIR/pmmp to /data/local/pmmp
cp -r $MODDIR/pmmp/* $PMMP_DIR/

# Set executable permissions for all files in /data/local/pmmp/bin/*
chmod -R +x $PMMP_BIN_DIR/*

# Set executable permissions for start.sh (if it exists)
chmod +x $PMMP_DIR/start.sh

# Set executable permissions for update.sh (if it exists)
chmod +x $PMMP_DIR/update.sh

# ASCII Art Header
ui_print "+=====================================================================+"
ui_print "| ____            _        _   __  __ _                  __  __ ____  |"
ui_print "||  _ \\ ___   ___| | _____| |_|  \\/  (_)_ __   ___      |  \\/  |  _ \\ |"
ui_print "|| |_) / _ \\ / __| |/ / _ \\ __| |\\/| | | '_ \\ / _ \\_____| |\\/| | |_) ||"
ui_print "||  __/ (_) | (__|   <  __/ |_| |  | | | | | |  __/_____| |  | |  __/ |"
ui_print "||_|___\\___/ \\___|_|\_\\___|\\__|_|_ |_|_|_| |_|\\___|_    |_|  |_|_|    |"
ui_print "||  ___|__  _ __ / \\   _ __   __| |_ __ ___ (_) __| |                 |"
ui_print "|| |_ / _ \\| '__/ _ \\ | '_ \\ / _` | '__/ _ \\| |/ _` |                 |"
ui_print "||  _| (_) | | / ___ \\| | | | (_| | | | (_) | | (_| |                 |"
ui_print "||_|  \\___/|_|/_/   \\_\\_| |_|\\__,_|_|  \\___/|_|\\__,_|                 |"
ui_print "+=====================================================================+"


# Optional: Print success message
echo "pmmp files copied and permissions set successfully!"
