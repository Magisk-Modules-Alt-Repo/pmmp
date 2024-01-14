#!/system/bin/sh

MODDIR=${0%/*}

# Teks ASCII
ui_print "  ____            _        _   __  __ _                  __  __ ____  _  _     _              _           _     _ "
ui_print " |  _ \ ___   ___| | _____| |_|  \/  (_)_ __   ___      |  \/  |  _ \| || |   / \   _ __   __| |_ __ ___ (_) __| |"
ui_print " | |_) / _ \ / __| |/ / _ \ __| |\/| | | '_ \ / _ \_____| |\/| | |_) | || |_ / _ \ | '_ \ / _` | '__/ _ \| |/ _` |"
ui_print " |  __/ (_) | (__|   <  __/ |_| |  | | | | | |  __/_____| |  | |  __/|__   _/ ___ \| | | | (_| | | | (_) | | (_| |"
ui_print " |_|   \___/ \___|_|\_\___|\__|_|  |_|_|_| |_|\___|     |_|  |_|_|      |_|/_/   \_\_| |_|\__,_|_|  \___/|_|\__,_|"
ui_print "                                                                                                                  "
ui print "                                                                                                                  "
ui print "                              https://github.com/TukangM/PocketMine-MP4Android                                    "
ui print "                                   Made with AI generated chat.openai.com                                         "

# Menghapus file dan folder jika sudah ada
ui_print "Removing existing files and folders"
rm -rf "/data/local/pmmp/PocketMine-MP.phar"
rm -rf "/data/local/pmmp/bin"

# Membuat struktur direktori
ui_print "Creating directory for server PocketMine-MP on /data/local/pmmp"
mkdir -p "/data/local/pmmp"

# Menyalin seluruh folder pmmp
ui_print "Copy all files to pmmp"
cp -r "$MODDIR/pmmp" "/data/local/pmmp"

# Berikan izin eksekusi secara rekursif pada seluruh folder pmmp
ui_print "Giving chmod permission"
chmod +x -R "/data/local/pmmp"

# Berikan izin eksekusi pada start.sh
ui_print "Giving chmod permission for start.sh"
chmod +x "/data/local/pmmp/start.sh"

# (Opsional) Menyalin start-pmmp
ui_print "Copy start-pmmp shell script to /system/bin"
cp "$MODDIR/start-pmmp" "/system/bin"

# (Opsional) Berikan izin eksekusi pada start-pmmp
ui_print "Giving chmod permission for start-pmmp"
chmod +x "/system/bin/start-pmmp"

# Teks tambahan
ui_print "Done - Reboot to take effect"
