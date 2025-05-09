@echo off
setlocal

REM Check if reshade disabled (if dxgi 1.dll exists)
if exist "dxgi 1.dll" (
    echo ==============================================================
    echo ===                   Enabling Reshade                     ===
    echo ===                  CANNOT play online                    ===
    echo ==============================================================

    ren "dxgi 1.dll" "dxgi.dll"
    echo Renamed dxgi 1.dll back to dxgi.dll

    REM Run uninstall_EAC.bat
    if exist "EasyAntiCheat\uninstall_EAC.bat" (
        call "EasyAntiCheat\uninstall_EAC.bat"
    ) else (
        echo uninstall_EAC.bat not found.
    )

    REM Create desktop shortcut and update icon
    powershell -ExecutionPolicy Bypass -File "%~dp0BLEACH_toggle_update_icon.ps1" enabled

REM Else, check if reshade enabled (if dxgi.dll exists)
) else if exist "dxgi.dll" (
    echo ===============================================================
    echo ===                   Disabling Reshade                     ===
    echo ===                    Can play online                      ===
    echo ===============================================================

    ren "dxgi.dll" "dxgi 1.dll"
    echo Renamed dxgi.dll to dxgi 1.dll

    REM Run install_EAC.bat
    if exist "EasyAntiCheat\install_EAC.bat" (
        call "EasyAntiCheat\install_EAC.bat"
    ) else (
        echo install_EAC.bat not found.
    )

    REM Create desktop shortcut and update icon
    powershell -ExecutionPolicy Bypass -File "%~dp0BLEACH_toggle_update_icon.ps1" disabled

) else (
    echo Neither dxgi.dll nor dxgi 1.dll found.
)

endlocal
