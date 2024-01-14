# [PocketMine-MP](https://github.com/pmmp/PocketMine-MP)[4Android](https://github.com/TukangM/PocketMine-MP4Android)

<details>
<summary>Click to expand</summary>

![Screenshot_20240113-234915_Termux](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/612e50c3-bc8a-4f72-bade-37ad2187bd76)
![Screenshot_20240114-093845_Termux](https://github.com/TukangM/PocketMine-MP4Android/assets/91467886/2c46ad81-bdc5-41ff-9dd6-61c688c1a71b)

</details>

## Installation

1. Download the latest release from the [Releases](https://github.com/TukangM/PocketMine-MP4Android/releases) page.
2. Flash the Magisk module using one of the following methods:
   - Magisk Manager:
     - Open Magisk Manager.
     - Tap on the "Modules" section.
     - Tap on the "+" button and select the downloaded Magisk module.
     - Reboot your device.
   - Custom Recovery:
     - Boot into your custom recovery.
     - Install the Magisk module using the "Install" or "Flash" option.
     - Reboot your device.
3. Alternatively, you can install the module using [Androidacy Module Manager](https://github.com/Androidacy/MagiskModuleManager) or [Magisk Module Repo Loader (MMRL)](https://github.com/DerGoogler/MMRL).

## Usage

1. Open a terminal emulator on your Android device, such as Termux or through ADB shell.
2. Execute the following commands:
   - Execute `su` (superuser):
     ```bash
     su
     start-pmmp
     ```
   - If you are using Termux:
     ```bash
     su
     start-pmmp
     ```
3. Optionally, if `start-pmmp` doesn't work, you can manually execute the start script by navigating to the `/data/local/pmmp` directory and running:
   ```bash
   cd /data/local/pmmp
   sh start.sh
   ```
## Uninstall
If you decide to uninstall this module, note that the pmmp folder will not be removed. This is done to ensure that users of this module do not lose their world data, plugins, and server.properties.

## Updating
If you want to update the PHP8 binaries and PocketMine-MP, you can simply update the module to the latest version. Future versions will include an update script (start-pmmp-update) to facilitate the update of the PocketMine-MP.phar binary only.
php8 using precompiled binary from here [TukangM/php8-aarch64-builds](https://github.com/TukangM/php8-aarch64-builds)

## License
