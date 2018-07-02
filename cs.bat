@echo off
if "%1"=="d" (
    echo kek
    adb disconnect 192.168.2.203:5555
    exit 0
) else (
    adb connect 192.168.2.203:5555
)
IF "%1"=="e" (
    exit 0
) 