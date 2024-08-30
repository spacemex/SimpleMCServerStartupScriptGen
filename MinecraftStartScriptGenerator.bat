@echo off
cls
echo This script will generate server startup scripts with watchdog functionality based on your configuration!
title Minecraft Server Setup

rem Get all Java versions installed on the system
echo.
echo Which Java Version to Use (default - latest)?
setlocal enabledelayedexpansion
set java_idx=0
for /D %%I in ("C:\Program Files\Java\*") do (
    if exist "%%I\bin\java.exe" (
        set /a java_idx+=1
        echo [!java_idx!] "%%I\bin\java.exe"
        set "java_path[!java_idx!]=%%I\bin\java.exe"
    )
    if exist "%%I\bin\javaw.exe" (
        set /a java_idx+=1
        echo [!java_idx!] "%%I\bin\javaw.exe"
        set "java_path[!java_idx!]=%%I\bin\javaw.exe"
    )
)

rem Prompt the user for a Java version
set /p input_idx="Enter the index of the Java version to use (or press Enter to use the latest): "
if "%input_idx%"=="" (
    set input_idx=%java_idx%
)
for /F "tokens=1* delims==" %%A in ('set java_path[%input_idx%]') do set "input_java=%%B"
set "java_version=%input_java%"

echo Selected Java version: %java_version%

rem Prompt the user for the JAR file
set /p jar_file="Enter the path to the JAR file to run (e.g., paper-1.21.1-52.jar): "

rem Prompt the user for the amount of RAM
set /p ram_amount="Enter the amount of RAM to allocate to the server (e.g., 5G, 512M): "

rem Prompt the user for enabling GUI
set /p enable_gui="Enable GUI? (yes/no): "
if /i "%enable_gui%"=="yes" (
    set "nogui_option="
) else if /i "%enable_gui%"=="y" (
    set "nogui_option="
) else if /i "%enable_gui%"=="1" (
    set "nogui_option="
) else (
    set "nogui_option=nogui"
)

echo GUI option: %nogui_option%

rem Prompt the user for auto-restart option
set /p auto_restart="Auto Restart? (yes/no): "

rem Create StartServer.bat
(
echo @echo off
echo cls
echo title Minecraft WatchDog
echo :StartServer
echo "%java_version%" -Xmx%ram_amount% -jar "%jar_file%" -o true %nogui_option%
if /i "!auto_restart!"=="yes" (
    echo    echo Server closed/crashed... restarting!
    echo    goto StartServer
) else if /i "!auto_restart!"=="y" (
    echo    echo  Server closed/crashed... restarting!
    echo    goto StartServer
) else if /i "!auto_restart!"=="1" (
    echo    echo  Server closed/crashed... restarting!
    echo    goto StartServer
) else (
    echo    echo Server has stopped. Auto-restart is disabled.
)
) > StartServer.bat

rem Create StartServer.sh
(
echo "#!/bin/bash"
echo while true
echo do
echo    java -Xmx%ram_amount% -jar "%jar_file%" -o true %nogui_option%
echo    if [ "%auto_restart%" == "yes" ]; then
echo        echo "Server crashed! Restarting in 5 seconds..."
echo        sleep 5
echo    else
echo        echo "Server stopped. Auto-restart is disabled."
echo        break
echo    fi
echo    if [ "%auto_restart%" == "y" ]; then
echo        echo "Server crashed! Restarting in 5 seconds..."
echo        sleep 5
echo    else
echo        echo "Server stopped. Auto-restart is disabled."
echo        break
echo    fi
echo    if [ "%auto_restart%" == "1" ]; then
echo        echo "Server crashed! Restarting in 5 seconds..."
echo        sleep 5
echo    else
echo        echo "Server stopped. Auto-restart is disabled."
echo        break
echo    fi
echo done
) > StartServer.sh

rem Only try to use chmod if available
if exist /bin/chmod (
    chmod +x StartServer.sh
)

echo Linux/Mac and Windows server start scripts with watchdog functionality have been created.
pause
endlocal