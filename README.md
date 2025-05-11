# ReblurOfSoulsScript

A script to toggle the blur removal mod for **BLEACH: Rebirth of Souls** on and off (depending on whether you want to play online or offline)
<p align='center'>
<img src='https://github.com/user-attachments/assets/b0b4c5f4-055a-4fce-8b31-2b91300c31f8' width='200'>
</p>

## How to Use

1. **Download the Remove Blur Mod**<br>
  Get it here: [https://gamebanana.com/mods/585054](https://gamebanana.com/mods/585054)<br>
  Follow the instructions provided with the mod

2. **Download This Script**<br>
  Click the green **"Code"** button on this repository and choose **"Download ZIP"**

3. **Extract the Files**<br>
  Unzip the `ReblurOfSoulsScript-main` folder

4. **Copy Files to Game Folder**<br>
  Copy **all files** (except `README.md`) into your game directory<br>
  For example:<br>
  `C:\Program Files (x86)\Steam\steamapps\common\BLEACH Rebirth of Souls`
5. **Run `BLEACH_toggle_reshade.bat`**<br>
  This should create a `BLEACH Toggle Reshade Script` desktop shortcut, which you can double tap to run the script to toggle reshade on/off

## Notes
The blur removal mod uses **Reshade** which is **not recommended to use online** (due to the nature of how it works) so EasyAntiCheat has to be disabled whenever Reshade is used. This script toggles Reshade and EasyAntiCheat on/off depending on if you want to play online or not, and creates a desktop shortcut (`BLEACH Toggle Reshade Script.lnk`) to reflect whether Reshade is on/off

## What The Script Does
- If Reshade is currently enabled (`dxgi.dll` present), it:
  - Renames it to `dxgi 1.dll` to 'disable' Reshade
  - Runs `install_EAC.bat` to restore EasyAntiCheat
  - Updates the desktop shortcut icon to show reshade as "disabled"
- If Reshade is currently disabled (`dxgi 1.dll` present), it:
  - Renames it back to `dxgi.dll` to 're-enable' Reshade
  - Runs `uninstall_EAC.bat` to remove EasyAntiCheat
  - Updates the desktop shortcut icon to show reshade as "enabled"
