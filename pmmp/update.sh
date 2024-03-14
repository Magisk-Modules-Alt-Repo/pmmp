#!/system/bin/sh

# Teks ASCII
echo "  ____            _        _   __  __ _                  __  __ ____  _  _     _              _           _     _ "
echo " |  _ \ ___   ___| | _____| |_|  \/  (_)_ __   ___      |  \/  |  _ \| || |   / \   _ __   __| |_ __ ___ (_) __| |"
echo " | |_) / _ \ / __| |/ / _ \ __| |\/| | | '_ \ / _ \_____| |\/| | |_) | || |_ / _ \ | '_ \ / _` | '__/ _ \| |/ _` |"
echo " |  __/ (_) | (__|   <  __/ |_| |  | | | | | |  __/_____| |  | |  __/|__   _/ ___ \| | | | (_| | | | (_) | | (_| |"
echo " |_|   \___/ \___|_|\_\___|\__|_|  |_|_|_| |_|\___|     |_|  |_|_|      |_|/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_|"
echo "                                                                                                                  "
echo "                                                                                                                  "
echo "                              https://github.com/TukangM/PocketMine-MP4Android                                    "
echo "                                   Made with AI generated chat.openai.com                                         "
echo "              do not forget to install busybox magisk module! wget fuction used to download pocketmine            "

# Variabel | Variable
MODDIR=${0%/*}
OLD_PHAR="/data/local/pmmp/PocketMine-MP.phar"
NEW_PHAR_URL="https://github.com/pmmp/PocketMine-MP/releases/latest/download/PocketMine-MP.phar"

# Unduh file phar baru dan langsung ganti file lama | Download the new phar file and replace the old file directly
wget "$NEW_PHAR_URL" -O "$OLD_PHAR"

# Periksa apakah unduhan berhasil | Check if the download is successful
if [ -f "$OLD_PHAR" ]; then
    echo "Update successful! PocketMine-MP.phar has been updated. and run start-pmmp and check server version"
else
    echo "Update failed! Please check your internet connection and try again."
fi
