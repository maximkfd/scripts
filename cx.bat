@echo off
adb connect 192.168.2.205:5555
IF "%1"=="e" (
    echo keke
    exit 0
) 