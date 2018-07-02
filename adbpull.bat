adb shell "run-as %2 cat '/data/data/%2/cache/%1' > '/sdcard/%1'"
adb pull "/sdcard/%1" "C:\tmp"