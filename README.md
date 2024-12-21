
# [PocketMine-MP](https://github.com/pmmp/PocketMine-MP)[4Android](https://github.com/TukangM/PocketMine-MP4Android)  
Run Minecraft Bedrock Edition on Android.  
![PocketMine-MP4Android](https://tukangm.github.io/asset/img/pocketmine4android/pocketmine.jpg)

<details>
<summary>Click to view screenshots</summary>

![Screenshot 1](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/2c3438f5-4cf6-4d08-9b6c-5e3c5b8caa56)  
![Screenshot 2](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/612e50c3-bc8a-4f72-bade-37ad2187bd76)  
![Screenshot 3](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/2c46ad81-bdc5-41ff-9dd6-61c688c1a71b)

</details>

## Installation

1. Download the latest release from the [Releases](https://github.com/Magisk-Modules-Alt-Repo/pmmp/releases) page.
2. Flash the Magisk module using one of the following methods:
   - **Magisk Manager**:
     1. Open Magisk Manager.
     2. Go to the "Modules" section.
     3. Tap the "+" button and select the downloaded PMMP Magisk module.
     4. Reboot your device.
   - **KernelSU**:
     1. Open Magisk Manager.
     2. Go to the "Modules" section.
     3. Tap the "+ Install" button and select the downloaded PMMP Magisk module.
     4. Reboot your device.
3. Alternatively, use [Androidacy Module Manager](https://github.com/Androidacy/MagiskModuleManager) or [MMRL](https://github.com/DerGoogler/MMRL) (enable Magisk-Modules-Alt-Repo in settings).

## Usage

1. Open a terminal emulator on Android (e.g., Termux) or use ADB shell.
2. Execute these commands:
   - Superuser access:
     ```bash
     su
     start-pmmp
     ```
   - For Termux:
     ```bash
     su
     start-pmmp
     ```
3. If `start-pmmp` doesn’t work, manually run the start script:
   ```bash
   cd /data/local/pmmp
   sh start.sh
   ```

## Workaround for Port Forwarding

You can use [Magisk Tailscaled](https://github.com/anasfanani/Magisk-Tailscaled), Tailscale from Play Store, or Playit.gg (development in progress). Currently, **playit-linux-aarch64** has issues on Android, requiring changes or running on **proot**. For now, tunneling with Playit.gg on Android is not possible. Running it in Termux with a **proot Ubuntu core image** is an alternative.

## Uninstallation

The `pmmp` folder will not be removed upon uninstalling the module. This ensures that your world data, plugins, and server settings remain intact.

## Updating

To update the PHP8 binaries and PocketMine-MP, use the `update-pmmp` script. This script allows you to selectively update components as needed. Here are the available options:

```bash
update-pmmp [options]
```

### Options:
- `--all, -a`: Update both PocketMine-MP.phar and PHP binaries.
- `--phar-only, -p`: Update only the PocketMine-MP.phar file.
- `--php-only, -b`: Update only the PHP binaries.
- `--help`: Show this help message.

The PHP8 precompiled binary is sourced from [TukangM/php8-aarch64-builds](https://github.com/TukangM/php8-aarch64-builds).

Make sure to check the terminal output for any errors during the update process.

## Todo

- [x] Function update binary php8 and server phar.
- [ ] WebUI functionality (coming soon)

## License

- PocketMine-MP: [LGPL-3.0](https://github.com/pmmp/PocketMine-MP?tab=LGPL-3.0-1-ov-file)
- PocketMine-MP4Android: [MIT License](https://github.com/TukangM/PocketMine-MP4Android/blob/main/LICENSE)
