@echo off
setlocal

REM Check if dxgi.dll exists
if exist "dxgi.dll" (
    echo ===============================================================
    echo ===                   DISABLING RESHADE                     ===
    echo ===============================================================
    ren "dxgi.dll" "dxgi 1.dll"
    echo Renamed dxgi.dll to dxgi 1.dll

    REM Run install_EAC.bat
    if exist "EasyAntiCheat\install_EAC.bat" (
        call "EasyAntiCheat\install_EAC.bat"
    ) else (
        echo install_EAC.bat not found.
    )

    REM Update desktop shortcut icon
    powershell -ExecutionPolicy Bypass -File "%~dp0update_icon.ps1" disabled

REM Else, check if dxgi 1.dll exists
) else if exist "dxgi 1.dll" (
    echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    echo +++                   ENABLING RESHADE                     +++
    echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ren "dxgi 1.dll" "dxgi.dll"
    echo Renamed dxgi 1.dll back to dxgi.dll

    REM Run uninstall_EAC.bat
    if exist "EasyAntiCheat\uninstall_EAC.bat" (
        call "EasyAntiCheat\uninstall_EAC.bat"
    ) else (
        echo uninstall_EAC.bat not found.
    )

    REM Update desktop shortcut icon
    powershell -ExecutionPolicy Bypass -File "%~dp0update_icon.ps1" enabled

) else (
    echo Neither dxgi.dll nor dxgi 1.dll found.
)

endlocal
