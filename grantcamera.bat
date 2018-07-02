
@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET stf=""
FOR %%A IN (%*) DO (
    IF "%%A"=="/f" (
        FOR %%B IN (%*) DO (  
            IF NOT "%%B"=="/f" (
                SET  stf=%%B
            )
        )
        FOR /F "tokens=* USEBACKQ" %%F IN (`adb shell pm list packages ^| find "!stf!"`) DO (
            SET var=%%F
        )
        echo !var!
        for /F "tokens=2 delims=: " %%a in ("!var!") do (
            adb shell pm clear %%a
            adb -d shell pm grant %%a android.permission.CAMERA
            adb -d shell pm grant %%a android.permission.RECORD_AUDIO
        )
    )
)
