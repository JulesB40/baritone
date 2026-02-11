@echo off
setlocal

REM Builds the Fabric mod artifact for modern 1.21.x branches (including 1.21.11).
REM Usage: double-click this file, or run it from cmd/PowerShell at repo root.

if not exist gradlew.bat (
    echo [ERROR] gradlew.bat was not found. Run this script from the Baritone repository root.
    exit /b 1
)

echo [INFO] Building Fabric artifact for Minecraft 1.21.11...
call gradlew.bat :fabric:build
if errorlevel 1 (
    echo [ERROR] Fabric build failed.
    exit /b 1
)

echo.
echo [OK] Build completed.
echo [INFO] Check .\dist for final jars and .\fabric\build\libs for Fabric build outputs.
exit /b 0
