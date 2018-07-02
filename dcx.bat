@echo off
adb disconnect 192.168.2.205:5555
IF "%1"=="e" (
    exit 0
) 