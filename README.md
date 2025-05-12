# ReblurOfSoulsScript

A script to toggle the remove blur mod for **BLEACH: Rebirth of Souls** on and off (depending on whether you want to play online or not)
<p align='center'>
<img src='https://github.com/user-attachments/assets/b0b4c5f4-055a-4fce-8b31-2b91300c31f8' width='200'>
</p>

## Comparison

<p align='center'><img src='https://github.com/user-attachments/assets/0b7beada-c302-4821-a5ad-cfd2dd575c2a' width='800'></p>

## How to Use


1. **Download the remove blur mod**<br>
  Get it here: [https://gamebanana.com/mods/585054](https://gamebanana.com/mods/585054)<br>
  **Follow the instructions provided with the mod. I would recommend turning on "Is active at startup"**

2. **Download this script**<br>
  Click the green "Code" button on this page and choose "Download ZIP"

3. **Unzip the `ReblurOfSoulsScript-main` folder**<br>

4. **Copy **all files** (except `README.md`) into your game directory**<br>
  For example: `C:\Program Files (x86)\Steam\steamapps\common\BLEACH Rebirth of Souls`

5. **Run `BLEACH_toggle_reshade.bat`**<br>
  This should create a `BLEACH Toggle Reshade Script` desktop shortcut, which you can double tap to run the script to toggle reshade on/off

## Notes
The remove blur mod uses **Reshade** which is **not recommended to use online** (due to the nature of how it works) so EasyAntiCheat has to be disabled whenever Reshade is used. This script allows you to easily toggle Reshade on/off and disables/enables EasyAntiCheat accordingly so you don't have to worry. It also creates a desktop shortcut (`BLEACH Toggle Reshade Script.lnk`) which you can double tap to run the script, and the icon for the shortcut shows you whether Reshade is currently enabled or disabled (coloured icon means it's enabled, greyscale icon means it's disabled)

## What The Script Does
- If Reshade is currently enabled (`dxgi.dll` present), it:
  - Renames it to `dxgi 1.dll` to 'disable' Reshade
  - Runs `install_EAC.bat` to restore EasyAntiCheat
  - Updates the desktop shortcut icon to show reshade as disabled
- If Reshade is currently disabled (`dxgi 1.dll` present), it:
  - Renames it back to `dxgi.dll` to 're-enable' Reshade
  - Runs `uninstall_EAC.bat` to remove EasyAntiCheat
  - Updates the desktop shortcut icon to show reshade as enabled
