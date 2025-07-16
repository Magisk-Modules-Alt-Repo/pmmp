
# [PocketMine-MP](https://github.com/pmmp/PocketMine-MP)[4Android](https://github.com/TukangM/PocketMine-MP4Android)

Run your own PocketMine-MP server directly on your Android device with this Magisk module. This module provides a native ARM64 build of PocketMine-MP and its dependencies, allowing you to host a Minecraft Bedrock Edition server on your phone or tablet.

![PocketMine-MP4Android](https://tukangm.github.io/asset/img/pocketmine4android/pocketmine.jpg)

<details>
<summary>Click to view screenshots</summary>

![Screenshot 1](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/2c3438f5-4cf6-4d08-9b6c-5e3c5b8caa56)  
![Screenshot 2](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/612e50c3-bc8a-4f72-bade-37ad2187bd76)  
![Screenshot 3](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/2c46ad81-bdc5-41ff-9dd6-61c688c1a71b)

</details>
<br>

> [!IMPORTANT]  
> The binary included in this Magisk module is now only prebuilt from [TukangM/php8-aarch64-builds/releases](https://github.com/TukangM/php8-aarch64-builds/releases). As of December 2024, PocketMine-MP at [PHP-Binary releases](https://github.com/pmmp/PHP-Binaries/releases) has added CI automation builds for linux-arm64. Therefore, the `update-pmmp` function will remain updated to the latest version in the next update from [PHP-Binary](https://github.com/pmmp/PHP-Binaries/releases).

<details>
<summary> Notes about binary </summary>

Prebuilt binary from this module (left) and official PocketMine-MP binary (right). The size is slightly bigger than the prebuilt binary included with the module.
![file_binary_size](https://github.com/user-attachments/assets/0c504f9d-eef9-4fc9-8039-7c2b1bf1e9eb)
</details>

## Installation

There are several ways to install the PocketMine-MP4Android Magisk module:

### Method 1: Using Magisk Manager or KernelSU

1.  Download the latest release of the module from the [Releases page](https://github.com/Magisk-Modules-Alt-Repo/pmmp/releases).
2.  Open your Magisk Manager or KernelSU application.
3.  Navigate to the "Modules" section.
4.  Tap the "+" or "Install" button and select the downloaded ZIP file.
5.  Reboot your Android device to activate the module.

### Method 2: Using a Module Manager App

You can also use a third-off-party module manager that supports the Magisk-Modules-Alt-Repo, such as:

*   [MMRL](https://github.com/DerGoogler/MMRL)
*   [Androidacy Module Manager](https://github.com/Androidacy/MagiskModuleManager)

Simply enable the Magisk-Modules-Alt-Repo in the settings of your chosen module manager and install the "PocketMine-MP4Android" module directly from there.


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

## Roadmap

- [x] Function update binary php8 and server phar
- [ ] rewrite update-pmmp (update.sh)
- [ ] amd64 php8 binary support
- [ ] WebUI functionality

## License

- PocketMine-MP: [LGPL-3.0](https://github.com/pmmp/PocketMine-MP?tab=LGPL-3.0-1-ov-file)
- PocketMine-MP4Android: [MIT License](https://github.com/TukangM/PocketMine-MP4Android/blob/main/LICENSE)
