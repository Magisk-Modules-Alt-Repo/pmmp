#!/system/bin/sh

# WARNING: This will overwrite binaries in /data/local/pmmp/bin and PocketMine-MP.phar.
# Please backup your files before proceeding, as your server may not start correctly.
echo "WARNING: This will overwrite binaries in /data/local/pmmp/bin and PocketMine-MP.phar."
echo "Please backup your files before proceeding, as your server may not start correctly."

# Variabel | Variable
OLD_PHAR="/data/local/pmmp/PocketMine-MP.phar"
NEW_PHAR_URL="https://github.com/pmmp/PocketMine-MP/releases/latest/download/PocketMine-MP.phar"
BIN_DIR="/data/local/pmmp/bin"
NEW_BIN_URL="https://github.com/TukangM/php8-aarch64-builds/releases/latest/download/bin.zip"
TMP_DIR="/data/local/pmmp/tmp"

# Fungsi untuk menghapus direktori jika ada | Function to remove directory if exists
remove_dir_if_exists() {
    if [ -d "$1" ]; then
        rm -rf "$1"
    fi
}

# Fungsi untuk menampilkan penggunaan | Function to display usage
show_usage() {
    echo "Usage: update-pmmp [options]"
    echo "Options:"
    echo "  --all, -a           Update both PocketMine-MP.phar and PHP binaries."
    echo "  --phar-only, -p     Update only the PocketMine-MP.phar file."
    echo "  --php-only, -b      Update only the PHP binaries."
    echo "  --help              Show this help message."
}

# Memeriksa argumen | Check arguments
if [ $# -eq 0 ]; then
    show_usage
    exit 0
fi

while [ $# -gt 0 ]; do
    case "$1" in
        --all|-a)
            update_phar=true
            update_php=true
            shift
            ;;
        --phar-only|-p)
            update_phar=true
            update_php=false
            shift
            ;;
        --php-only|-b)
            update_phar=false
            update_php=true
            shift
            ;;
        --help)
            show_usage
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Update file phar jika diinginkan | Update phar file if requested
if [ "$update_phar" = true ]; then
    # Unduh file phar baru dan langsung ganti file lama | Download the new phar file and replace the old file directly
    wget -q "$NEW_PHAR_URL" -O "$OLD_PHAR"

    # Periksa apakah unduhan berhasil | Check if the download is successful
    if [ -f "$OLD_PHAR" ]; then
        echo "Update successful! PocketMine-MP.phar has been updated."
    else
        echo "Update failed! Please check your internet connection and try again."
        exit 1
    fi
fi

# Cek apakah perlu mengupdate biner PHP | Check if we need to update PHP binaries
if [ "$update_php" = true ]; then
    # Hapus folder bin yang lama sebelum ekstraksi | Remove old bin directory before extraction
    remove_dir_if_exists "$BIN_DIR"

    # Buat direktori sementara untuk menampung bin.zip | Create a temporary directory for bin.zip
    mkdir -p "$TMP_DIR"

    # Unduh file bin.zip | Download the bin.zip file
    wget -q "$NEW_BIN_URL" -O "$TMP_DIR/bin.zip"

    # Periksa apakah unduhan bin.zip berhasil | Check if the download of bin.zip was successful
    if [ -f "$TMP_DIR/bin.zip" ]; then
        echo "Downloading new binaries..."
    else
        echo "Failed to download new binaries! Please check your internet connection."
        exit 1
    fi

    # Ekstrak bin.zip ke folder /data/local/pmmp | Extract bin.zip to the pmmp directory
    unzip -q "$TMP_DIR/bin.zip" -d "/data/local/pmmp/"

    # Periksa apakah ekstraksi berhasil | Check if the extraction was successful
    if [ -d "$BIN_DIR" ]; then
        echo "Binary files updated successfully in $BIN_DIR."
    else
        echo "Failed to extract new binaries! Please try again."
        exit 1
    fi
fi

# Hapus direktori sementara | Remove temporary directory
rm -rf "$TMP_DIR"
