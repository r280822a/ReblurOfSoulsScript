param (
    [string]$status
)

$desktop = [Environment]::GetFolderPath("Desktop")
$shortcutPath = "$desktop\ReShade Status.lnk"
$iconPath = "$PSScriptRoot\reshade_icons\reshade_$status.ico"

$wsh = New-Object -ComObject WScript.Shell
$shortcut = $wsh.CreateShortcut($shortcutPath)
$shortcut.TargetPath = "$PSScriptRoot\toggle_reshade.bat"
$shortcut.IconLocation = $iconPath
$shortcut.Save()
