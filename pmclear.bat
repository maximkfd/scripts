@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET stf=""
set /a len=0
SET  stf=%*
FOR /F "tokens=* USEBACKQ" %%F IN (`adb shell pm list packages ^| find "!stf!"`) DO (
    SET var=%%F
    SET packages[!len!]=%%F
    set /A len+=1
)   
echo Found %len% instances
IF "%len%"=="1" (
    echo !var!
    for /F "tokens=2 delims=: " %%a in ("!var!") do (
        adb shell pm clear %%a
    )   
    EXIT
)
set i=0
:loop
if %i% equ %len% goto :del
for /f "usebackq delims== tokens=2" %%j in (`set packages[%i%]`) do (
    echo %I%: %%j
)
set /a i=%i%+1
goto loop
:del
SET /p target=Enter package index: 
    
IF !target! lss 0 IF !target! gtr !i! (
    echo Wrong index
    EXIT
) 
SET var=!packages[%target%]!
echo celaring package %var%
for /F "tokens=2 delims=: " %%a in ("!var!") do (
    adb shell pm clear %%a
)  

