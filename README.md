# 🔐 Guardias Galephar - Aplicación Desktop Windows

## Descripción
Sistema de gestión de seguridad "Guardias de Galephar" compilado como aplicación de escritorio para Windows.

## Funcionalidades
✅ Gestión de turnos y guardias  
✅ Registro de inspecciones  
✅ Control de rondas de seguridad  
✅ Registro de oficiales  
✅ Historial y observaciones  
✅ Múltiples temas visuales (claro, oscuro, azul, verde, etc.)  
✅ Generación de PDFs  
✅ Almacenamiento local de datos  

## Requisitos Previos
- **Node.js** versión 14 o superior: https://nodejs.org/
- **Windows 7** o superior
- **Espacio en disco**: ~200 MB

## Pasos para Compilar la Aplicación

### 1️⃣ Preparar el Entorno

```bash
# Abrir PowerShell como Administrador y ejecutar:
cd C:\Users\TuUsuario\Desktop\guardias-galephar

# Instalar las dependencias (ESTO TOMA 2-5 MINUTOS)
npm install
```

### 2️⃣ Probar la Aplicación

```bash
# Ejecutar la aplicación en modo desarrollo
npm start
```

Si todo funciona correctamente, se abrirá la aplicación. Puedes cerrarla para continuar.

### 3️⃣ Compilar el Instalador

```bash
# Compilar como instalador ejecutable para Windows
npm run build-win
```

Esto creará:
- **guardias-galephar-1.0.0-setup.exe** (Instalador con asistente)
- **guardias-galephar-1.0.0-portable.exe** (Versión portátil, no requiere instalación)

Los archivos estarán en la carpeta: `C:\Users\TuUsuario\Desktop\guardias-galephar\dist\`

### 4️⃣ Instalar en Windows

**Opción A: Usar el Instalador (Recomendado)**
1. Abre `guardias-galephar-1.0.0-setup.exe`
2. Sigue el asistente de instalación
3. Al terminar, tendrás acceso directo en el Menú Inicio y el Escritorio

**Opción B: Usar la Versión Portátil**
1. Copia `guardias-galephar-1.0.0-portable.exe` a donde quieras
2. Ejecútalo directamente, sin necesidad de instalar

## Estructura de Carpetas

```
guardias-galephar/
├── public/
│   ├── main.js          (Código de Electron)
│   ├── preload.js       (Script de seguridad)
│   └── index.html       (Interfaz de la aplicación)
├── dist/                (Generado al compilar - contiene instaladores)
├── package.json         (Configuración del proyecto)
└── README.md           (Este archivo)
```

## Solución de Problemas

### Error: "npm no se reconoce como comando"
→ **Solución**: Instala Node.js desde https://nodejs.org/ y reinicia PowerShell

### Error: "Cannot find module 'electron'"
→ **Solución**: Ejecuta `npm install` en la carpeta del proyecto

### El instalador no se genera
→ **Solución**: 
1. Asegúrate de tener la carpeta `dist` vacía
2. Intenta ejecutar: `npm run build-win` nuevamente
3. Verifica que tienes 200MB libres en disco

### La aplicación se abre en blanco
→ **Solución**: 
1. Abre las herramientas de desarrollador (F12)
2. Busca errores en la consola
3. Verifica que el archivo `index.html` esté en la carpeta `public`

## Actualizar la Aplicación

Si necesitas hacer cambios:

1. Edita los archivos en la carpeta `public`
2. Ejecuta `npm start` para probar cambios
3. Ejecuta `npm run build-win` para crear nuevo instalador
4. El nuevo instalador reemplazará el anterior

## Crear Acceso Directo Manual

Si no creaste un acceso directo durante la instalación:

1. Ve a: `C:\Users\TuUsuario\AppData\Local\Programs\guardias-galephar\`
2. Busca `guardias-galephar.exe`
3. Haz clic derecho → "Enviar a" → "Escritorio (crear acceso directo)"

## Desinstalar

**Opción 1**: Panel de Control
1. Ve a: Control Panel → Programas → Programas y características
2. Busca "Guardias Galephar"
3. Haz clic en "Desinstalar"

**Opción 2**: Eliminar manualmente
1. Cierra la aplicación
2. Elimina la carpeta: `C:\Users\TuUsuario\AppData\Local\Programs\guardias-galephar\`

## Características Técnicas

- **Framework**: Electron (chromium + Node.js)
- **Lenguaje**: HTML5, CSS3, JavaScript
- **Base de Datos**: LocalStorage (almacenamiento local en el navegador)
- **Gestión de Tamaño**: Se recuerda el tamaño y posición de la ventana

## Soporte y Contacto

Si encuentras problemas:
1. Verifica que tienes Node.js actualizado
2. Intenta desinstalar y reinstalar las dependencias: `rm -r node_modules && npm install`
3. Cierra todas las instancias de la aplicación antes de compilar

## Licencia
MIT

---

**¿Necesitas ayuda?** Asegúrate de seguir los pasos en orden y verifica los requisitos previos.
