@echo off
for /r %%i in (*) do (
    FOR /F "tokens=* USEBACKQ" %%F IN (`echo %%i | find -regex "[0-9].*"`) DO (
        SET /a pos=%%F
    )
    echo %pos%
)