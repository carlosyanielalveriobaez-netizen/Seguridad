@echo off
chcp 65001 >nul
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo   GUARDIAS GALEPHAR - Compilador de Instalador
echo ════════════════════════════════════════════════════════════════
echo.
echo ⚙️  Compilando la aplicación para Windows...
echo    (Esto puede tardar 1-3 minutos)
echo.
call npm run build-win
if errorlevel 1 (
    echo.
    echo ❌ ERROR: La compilación falló
    echo Intenta ejecutar "instalar.bat" nuevamente
    pause
    exit /b 1
)
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo   ✅ COMPILACIÓN COMPLETADA
echo ════════════════════════════════════════════════════════════════
echo.
echo 📦 Los instaladores se encuentran en la carpeta: dist\
echo.
echo 📄 Archivos generados:
echo    1. guardias-galephar-1.0.0-setup.exe (Instalador recomendado)
echo    2. guardias-galephar-1.0.0-portable.exe (Versión portátil)
echo.
echo ════════════════════════════════════════════════════════════════
echo.
echo 🚀 Ahora puedes:
echo    - Hacer doble clic en setup.exe para instalar normalmente
echo    - Usar portable.exe en USB u otros lugares
echo.
pause
