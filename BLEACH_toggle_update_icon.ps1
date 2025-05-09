# Parameter $status determines whether to set the icon to 'enabled' or 'disabled'
param (
    [string]$status
)

# Define paths
$desktop = [Environment]::GetFolderPath("Desktop")
$shortcutPath = "$desktop\BLEACH Toggle Reshade Script.lnk"
$iconPath = "$PSScriptRoot\toggle_icons\reshade_$status.ico"

# Create a WScript.Shell COM object to interact with shortcuts
$wsh = New-Object -ComObject WScript.Shell
# Create or get the existing shortcut
$shortcut = $wsh.CreateShortcut($shortcutPath)
# Set the target path of the shortcut to the batch file
$shortcut.TargetPath = "$PSScriptRoot\BLEACH_toggle_reshade.bat"
# Set the "Start in" (working directory) to the batch file's location
$shortcut.WorkingDirectory = $PSScriptRoot
# Set the icon location of the shortcut to the chosen icon based on status
$shortcut.IconLocation = $iconPath
# Save the changes to the shortcut
$shortcut.Save()
