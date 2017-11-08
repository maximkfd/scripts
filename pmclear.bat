@echo off
SET str=""
FOR %%A IN (%*) DO (
    IF "%%A"=="/f" (
        FOR %%B IN (%*) DO (
            IF NOT "%%B"=="/f" SET str=%%B
        )
        FOR /F "tokens=* USEBACKQ" %%F IN (`adb shell pm list packages ^| find "%str%"`) DO (
            SET var=%%F
        )
        echo %var%
        for /F "tokens=2 delims=: " %%a in ("%var%") do (
           adb shell pm clear %%a
        )
    )
)
