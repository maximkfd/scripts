@echo off
if ("%1" == "d") (
    adb disconnect 192.168.2.205:5555
    exit 0
)
adb connect 192.168.2.205:5555
IF "%1"=="e" (
    exit 0
) 