@echo off
chcp 65001 >nul
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo   GUARDIAS GALEPHAR - Instalador Automático
echo ════════════════════════════════════════════════════════════════
echo.
echo Verificando Node.js...
node --version
npm --version
echo.
echo.
echo ⏳ Instalando dependencias...
echo    (Esto puede tardar 2-5 minutos, por favor espera)
echo.
call npm install
if errorlevel 1 (
    echo.
    echo ❌ ERROR: No se pudieron instalar las dependencias
    echo Asegúrate de que Node.js está correctamente instalado
    pause
    exit /b 1
)
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo   ✅ INSTALACIÓN COMPLETADA
echo ════════════════════════════════════════════════════════════════
echo.
echo Ahora puedes ejecutar la aplicación de dos formas:
echo.
echo 1️⃣  Ejecuta "ejecutar.bat" para probar la aplicación
echo 2️⃣  Ejecuta "compilar.bat" para crear el instalador
echo.
echo ════════════════════════════════════════════════════════════════
pause
