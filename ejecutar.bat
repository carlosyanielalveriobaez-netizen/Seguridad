@echo off
chcp 65001 >nul
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo   GUARDIAS GALEPHAR - Ejecutando Aplicación
echo ════════════════════════════════════════════════════════════════
echo.
echo ⏳ Iniciando la aplicación...
echo.
npm start
if errorlevel 1 (
    echo.
    echo ❌ ERROR: No se pudo ejecutar la aplicación
    echo Asegúrate de haber ejecutado "instalar.bat" primero
    pause
    exit /b 1
)
