#!/bin/bash

# Lokasi file yang akan diunduh PHAR dan file versi
BASE_DIR="/data/local/pmmp" # Direktori dasar untuk PocketMine-MP di lingkungan Magisk
PHAR_DEST_PATH="${BASE_DIR}/" # Sesuaikan jika PocketMine-MP.phar ada di lokasi lain di dalam BASE_DIR
CURRENT_VERSION_FILE="${BASE_DIR}/current_version" # Sesuaikan jika ingin di lokasi lain di dalam BASE_DIR
PHAR_FILE_NAME="PocketMine-MP.phar" # Sesuaikan jika nama file berbeda

LATEST_RELEASE_URL="https://github.com/pmmp/PocketMine-MP/releases/latest"

echo "Memulai pengecekan pembaruan PocketMine-MP..."

# Dapatkan versi saat ini
if [ -f "$CURRENT_VERSION_FILE" ]; then
    CURRENT_VERSION=$(cat "$CURRENT_VERSION_FILE")
else
    CURRENT_VERSION="0.0.0" # Versi default jika file belum ada
fi
echo "Versi saat ini terpasang: $CURRENT_VERSION"

# Dapatkan tag versi terbaru dari URL redirect
LATEST_TAG_URL=$(curl -s -o /dev/null -w "%{{redirect_url}}" "$LATEST_RELEASE_URL")

if [ -z "$LATEST_TAG_URL" ]; then
    echo "Gagal mendapatkan URL rilis terbaru. Cek koneksi internet atau URL rilis."
    exit 1
fi

LATEST_VERSION=$(basename "$LATEST_TAG_URL")
echo "Versi terbaru yang tersedia: $LATEST_VERSION"

# Bandingkan versi
if [ "$LATEST_VERSION" != "$CURRENT_VERSION" ]; then
    echo "Pembaruan tersedia! Mengunduh versi $LATEST_VERSION..."

    DOWNLOAD_URL="https://github.com/pmmp/PocketMine-MP/releases/download/$LATEST_VERSION/$PHAR_FILE_NAME"
    DEST_PHAR_FILE="${PHAR_DEST_PATH}/${PHAR_FILE_NAME}"

    # Pastikan direktori tujuan ada
    mkdir -p "$PHAR_DEST_PATH"

    # Unduh file PHAR
    echo "Mengunduh dari: $DOWNLOAD_URL"
    curl -L "$DOWNLOAD_URL" -o "$DEST_PHAR_FILE"

    if [ $? -eq 0 ]; then
        echo "Pengunduhan berhasil. Memperbarui file versi saat ini."
        echo "$LATEST_VERSION" > "$CURRENT_VERSION_FILE"
        echo "File versi saat ini diperbarui menjadi $LATEST_VERSION."
    else
        echo "Gagal mengunduh file PHAR."
        exit 1 # Keluar dengan kode error
    fi

else
    echo "Anda sudah menggunakan versi terbaru ($CURRENT_VERSION)."
fi

exit 0 # Keluar dengan sukses
