# QuantDeck v2.0 — Estación de Trabajo Institucional de Gráficos y Trading Multibroker

> **Una única estación de trabajo de escritorio para análisis técnico, backtesting y ejecución automatizada.** Compatible con Forex, Oro, Criptomonedas, Índices, Acciones de EE. UU. y la bolsa de Tailandia SET/TFEX.  
> Conecte **MetaTrader 5, cTrader y SimpleFX** simultáneamente. Trace análisis con más de 70 herramientas profesionales, ejecute backtests visuales con optimización por hiperparámetros de Optuna, opere bots automáticos 24/7 y gestione su cartera de forma centralizada con el Execution Toolbox.

![Platform](https://img.shields.io/badge/platform-Windows%2010%2F11%20x64-blue)
![Python](https://img.shields.io/badge/runtime-Python%203.12-yellow)
![Languages](https://img.shields.io/badge/UI-9%20languages-green)
![License Tiers](https://img.shields.io/badge/tiers-Free%20%7C%20Trial%20%7C%20Pro%20%7C%20Premium-orange)
![Download Size](https://img.shields.io/badge/download-~4%20MB-brightgreen)
[![GitHub Downloads](https://img.shields.io/github/downloads/theoris/quantdeck/total?color=brightgreen&label=Downloads)](https://github.com/theoris/quantdeck/releases)
[![Discord](https://img.shields.io/badge/Discord-Community-5865F2?logo=discord&logoColor=white)](https://discord.gg/qRmMWjcTE)
[![YouTube](https://img.shields.io/badge/YouTube-@QuantDeck-FF0000?logo=youtube&logoColor=white)](https://www.youtube.com/@QuantDeck)
[![X](https://img.shields.io/badge/X-@theoris-black?logo=x&logoColor=white)](https://x.com/theoris)
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-Support-yellow?logo=buymeacoffee&logoColor=black)](https://buymeacoffee.com/quantdeck)

---

> 🌍 **Lea la documentación en su idioma:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## 🚀 ¿Por qué elegir QuantDeck?

| | Capacidad Destacada | Beneficio Práctico para Traders |
| :---: | :--- | :--- |
| ⚡ | **Trading Multibroker Simultáneo** | Opere en **MetaTrader 5**, **cTrader Open API** y **SimpleFX** al mismo tiempo en una sola pantalla. Cada ranura de gráfico mantiene su propia conexión aislada para evitar cualquier cruce de órdenes. |
| 📈 | **Estación de Gráficos Institucional** | Cuadrículas flexibles (1×1, 2×1, 2×2, 3×1, 4×1) con sincronización de retícula y temporalidad, además de **más de 70 herramientas de dibujo** (Líneas de tendencia, Canales, Pitchforks, Sectores circulares, Gann, Fibonacci, Ondas de Elliott, Patrones armónicos y Reglas de posición). |
| 📊 | **Herramientas de Volumen y Flujo de Órdenes** | **Anchored VWAP** con bandas de desviación estándar (±1σ, ±2σ). **Perfil de Volumen de Rango Fijo y Anclado** con detección automática de POC y Área de Valor del 70% (VAH/VAL). |
| 🎯 | **HUD de Trading Directo y Líneas Visuales** | Panel HUD de BUY/SELL en 1 clic, órdenes pendientes Limit/Stop, y líneas de SL/TP arrastrables sobre el gráfico con botones de cancelación rápida `×` y visualización de P/L flotante en tiempo real. |
| 🧰 | **Gestión Avanzada de Órdenes** | **Trailing Stop Escalonado (Stepped Trailing SL)** (mecanismo de trinquete de punto de equilibrio multietapa con protección anti-spread del broker), **Toma de Ganancias Escalonada Multiobjetivo (Multi-Target Scale-Out)**, cierre de lotes parciales y Cierre Total en 1 clic (Close All). |
| 💰 | **Métricas de Margen Reales del Broker** | Balance, Equidad, Margen, Margen Libre y Nivel de Margen calculados con precisión a partir de los parámetros reales del broker (incluyendo el `usedMargin` nativo y apalancamiento de cTrader). |
| 🧪 | **Backtesting Vectorizado y Optimización Optuna** | Backtesting multianual de alta velocidad directamente en el gráfico con marcadores de ejecución, curvas de capital (Equity Curve), análisis detallado al estilo MT5 y **optimización de parámetros mediante Optuna** (con exportación a HTML, CSV y JSON). |
| 🤖 | **Motor de Bots Automatizados 24/7** | Ejecute bots de trading como procesos independientes en segundo plano con consola de supervisión dedicada, administrados en tiempo real desde la pestaña **Bot Fleet**. |
| 🧠 | **Machine Learning y Copiloto IA Integrados** | Clasificación de regímenes de mercado con HMM, pronóstico de volatilidad con GARCH, agrupamiento de comportamiento de precios con K-Means, detección de anomalías con Isolation Forest y asistente de visión Copilot IA. |
| 🌐 | **9 Pasarelas de Datos y Conexiones Broker** | MT5 Desktop IPC, cTrader Open API, SimpleFX API, SET/TFEX (Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData y archivos de ticks locales. |
| 🌍 | **Localización Completa en 9 Idiomas** | Inglés, Tailandés, Chino, Japonés, Coreano, Vietnamita, Español, Alemán y Árabe (RTL). |
| 🪶 | **Ultraligero y Rendimiento Nativo** | Descarga de apenas ~4 MB. Los indicadores personalizados se precompilan y los motores de fórmulas de alta frecuencia están compilados en código máquina nativo x64 C/C++ (`.pyd`). |
| 🔒 | **Privacidad Total y Ejecución Local** | Se ejecuta de forma completamente segura y local en su ordenador en `127.0.0.1:8765`. Sus claves API y credenciales permanecen estrictamente dentro de su archivo local `config/app_config.json`. |

---

## 📦 Descargas — Elija su Distribución

| Archivo de Versión | Tamaño | Descripción y Uso Recomendado |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **Recomendado para la mayoría de usuarios.** Instalador y lanzador todo en uno para Windows. Extrae archivos, crea accesos directos y ejecuta QuantDeck en 1 clic. |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **Paquete Portable.** Descomprima en cualquier ubicación (incluyendo memorias USB) y ejecute sin necesidad de instalación en el sistema. |
| **`SHA256SUMS.txt`** | **~10 KB** | **Manifiesto de Integridad Criptográfica.** Firmas SHA-256 completas para cada archivo incluido en el lanzamiento. |

### 🔐 Verificación Criptográfica (SHA-256)

```text
EF168A8AB97D0B73668D6C090FA94BA9929F8BF0E1BF91428EA5342431059D4F  QuantDeck_Standalone_Release.zip
734FD4780E0AA9434D666A963FA1295E01FB245D0F0F56FE1C3E144995F2487F  QuantDeck_Standalone_Setup.exe
```

Para verificar la integridad del archivo en Windows PowerShell:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 Niveles de Licencia de la Plataforma

QuantDeck cuenta con un modelo de licencias estructurado y adaptado a traders minoristas, cuantitativos y firmas prop:

```
[ Nivel Free ] ────────► [ Prueba Híbrida 14 Días ] ────────► [ Nivel Pro ] ────────► [ Nivel Premium ]
Gráficos Esenciales      Todas las Funciones Activas          Trading en Vivo +        Flota de Bots 24/7 +
Yahoo / MT5 / Ticks      Pruebe Indicadores y Órdenes         Backtest y Optuna        Canal Soporte Dedicado
```

| Funcionalidad y Cobertura | Nivel Free | Prueba de 14 Días | Nivel Pro 💎 | Nivel Premium 👑 |
| :--- | :---: | :---: | :---: | :---: |
| **Gráficos Básicos y Datos Esenciales** *(Yahoo, MT5, Ticks Locales)* | ✔ | ✔ | ✔ | ✔ |
| **Fuentes Extendidas** *(cTrader, SimpleFX, SET, Binance, IBKR)* | 🔒 | ✔ (14 Días) | ✔ | ✔ |
| **Indicadores Personalizados TypeScript y ML** *(Footprint, HTF MA, Regime)* | 🔒 | ✔ (14 Días) | ✔ | ✔ |
| **Trading en Gráfico y Ejecución en 1 Clic** | 🔒 | ✔ (14 Días) | ✔ | ✔ |
| **Execution Toolbox** *(Posiciones, Órdenes, Trailing SL, TP Múltiple)* | 🔒 | ✔ (14 Días) | ✔ | ✔ |
| **Backtester Visual de Estrategias y Reportes MT5** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot Studio** *(Prompt Lab y Análisis Visual)* | 🔒 | 🔒 | ✔ | ✔ |
| **Motor de Bots de Trading Automático 24/7** | 🔒 | 🔒 | 🔒 | **✔ Vitalicio** |
| **Soporte de Backend Dedicado y Algoritmos a Medida** | — | — | — | **✔ 6 Meses** |

> ⏳ **Prueba Inmediata:** Toda instalación limpia comienza automáticamente con una **Prueba Híbrida de 14 días** que desbloquea fuentes extendidas, indicadores avanzados y ejecución manual de órdenes.

---

## 💳 Cómo Adquirir o Actualizar su Licencia (Pro & Premium)

La actualización a **Pro** o **Premium** desbloquea la operativa manual completa, el backtesting visual, las flotas de bots y el análisis cuantitativo institucional.

### Paso 1: Copie su Machine ID
1. Abra **QuantDeck Workstation**.
2. Haga clic en la insignia **⏳ Trial / License** en la barra de menú superior (o abra Settings → License).
3. Haga clic en el botón **📋 Copy ID** para copiar el **Machine ID** único de su hardware (ej. `QD-A1B2C3D4E5F6`).

### Paso 2: Elija su Método de Pago

Seleccione el canal de pago que le resulte más conveniente:

#### Opción A: Tarjeta de Crédito Internacional / Apple Pay / PayPal (Instantáneo)
- Visite nuestra página oficial: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- Seleccione el paquete **Pro** o **Premium**.
- ⚠️ **Importante:** Indique su **Machine ID** y correo electrónico en el campo de notas/mensaje durante el proceso de pago.

#### Opción B: Criptomonedas (USDT) — Global y Privado
- **USDT (TRC-20):** `[Próxima actualización / Disponible mediante ticket de Discord]`
- **USDT (BEP-20 / Arbitrum):** `[Próxima actualización / Disponible mediante ticket de Discord]`
- Tras realizar la transferencia, abra un ticket en nuestra [**Comunidad de Discord**](https://discord.gg/qRmMWjcTE) o escriba a [@theoris](https://x.com/theoris) con el Hash de Transacción (TXID) y su Machine ID.

#### Opción C: Thai QR PromptPay (Exclusivo para usuarios en Tailandia)
- Únase a nuestro Discord en [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE)
- Abra un ticket en el canal `#license-ticket` para solicitar el código Thai QR PromptPay
- Adjunte el comprobante de transferencia junto con su **Machine ID** para recibir su Clave de Licencia al instante.

### Paso 3: Active su Clave de Licencia
1. Una vez confirmado su pago, recibirá su Clave de Licencia personalizada.
2. Pegue la clave en el campo **Activate License Key** dentro de QuantDeck y presione **Activate**.
3. Todas las funcionalidades quedarán desbloqueadas permanentemente sin necesidad de reinstalar ni perder datos.

---

## 🖥️ Requisitos del Sistema

- **Sistema Operativo:** Windows 10 / 11 (64 bits)
- **Entorno:** Python **3.12** (x64). El lanzador comprobará su presencia y le orientará si no está instalado.
- **Motor de Renderizado:** Google Chrome o Microsoft Edge (QuantDeck se muestra en una ventana de aplicación fluida de estilo nativo).
- **Hardware:** Mínimo 4 GB de RAM (recomendado 8 GB+ para rejillas multigráfico, modelos de Machine Learning y backtesting tick a tick).
- **Conexiones a Brokers (Opcional):** Terminal MetaTrader 5 instalado, credenciales de desarrollador cTrader Open API, credenciales de API SimpleFX o cuenta Settrade Open API.

---

## ⚙️ Guía de Instalación y Puesta en Marcha Rápida

### Método 1 — Instalador Standalone (`.exe`)
1. Descargue **`QuantDeck_Standalone_Setup.exe`**.
2. Ejecute el archivo instalador.
   > *Nota:* Si Windows SmartScreen muestra la advertencia *"Windows protegió su PC"* (habitual en archivos nuevos), haga clic en **Más información → Ejecutar de todas formas**.
3. Seleccione el directorio de instalación y haga clic en **Install & Launch**. Se generarán accesos directos en el Escritorio y Menú Inicio.
4. QuantDeck inicializará el backend local y abrirá la ventana de trabajo en pocos segundos.

### Método 2 — Versión Portable (`.zip`)
1. Descargue **`QuantDeck_Standalone_Release.zip`**.
2. Descomprima el archivo en la carpeta que prefiera (ej. `C:\QuantDeck` o una unidad externa). *Evite carpetas con restricciones de permisos como `C:\Program Files`.*
3. Haga doble clic en **`QuantDeck.exe`** (o ejecute `run_chart.bat`).
4. Durante la primera ejecución, se comprobarán e indexarán las dependencias de `requirements.txt`. Las ejecuciones posteriores iniciarán de forma instantánea.

### Configuración Inicial en 5 Minutos
1. **Selección de Idioma:** Cambie el idioma de la interfaz utilizando el selector en la barra lateral derecha.
2. **Configuración de Brokers y Fuentes:** Abra **Source Settings** (barra superior):
   - **Yahoo Finance:** Listo para usar inmediatamente sin necesidad de claves API.
   - **MetaTrader 5:** Inicie sesión en su terminal MT5 local; QuantDeck se conectará automáticamente mediante IPC.
   - **cTrader:** Introduzca su Client ID, Secret y Tokens obtenidos en [https://openapi.ctrader.com/](https://openapi.ctrader.com/). Haga clic en **🔄 Load Linked Accounts** para detectar y elegir su cuenta por su número de usuario (User App Login).
   - **SimpleFX / Binance / Polygon / SET:** Ingrese sus credenciales y pulse **Test Connection**.
3. **Activar Operativa en Vivo (Con Protección):** Marque la casilla **⚡ Enable Live Trading** en el broker elegido para habilitar el envío real de órdenes (desactivado por defecto para evitar ejecuciones accidentales).
4. **Toolbox:** Supervise posiciones abiertas, órdenes pendientes, historial de transacciones, auditoría de ejecuciones y márgenes de cuenta.

### Cómo Cerrar QuantDeck
Simplemente cierre la ventana de la aplicación o ejecute **`Kill_QuantDeck.exe`** en cualquier momento para detener limpiamente todos los procesos en segundo plano y liberar el puerto 8765.

---

## 📁 Estructura del Paquete de Archivos

```text
QuantDeck/
├── QuantDeck.exe              # ▶ Lanzador principal de Windows (doble clic para iniciar)
├── Kill_QuantDeck.exe         # ■ Terminador de procesos (detiene tareas en segundo plano)
├── run_chart.bat              # Lanzador alternativo por consola de comandos
├── kill_all_quantdeck.bat     # Limpiador de procesos por consola
├── run.py                     # Inicializador del sistema y gestor del puerto 8765
├── requirements.txt           # Definición de dependencias Python
├── python_version.txt         # Indicador de versión requerida (3.12)
├── SHA256SUMS.txt             # Manifiesto criptográfico de integridad (más de 150 archivos)
│
├── backend/                   # Servidor FastAPI REST/WebSocket y módulos nativos Cython
│   ├── main.pyc               #   Punto de entrada de la aplicación
│   ├── backtest/              #   Motor de backtest vectorizado y Optuna (.pyd / .pyc)
│   ├── data_sources/          #   Conectores para MT5, cTrader, SimpleFX, SET, Yahoo, Binance...
│   ├── execution/             #   Enrutador de órdenes multibroker y motor de reglas
│   ├── strategies/            #   Registro de estrategias y workers de ejecución
│   └── *.pyd                  #   Módulos ultrarrápidos compilados (fórmulas y licencias)
│
├── connection/                # Adaptadores de brokers (MT5, cTrader, SimpleFX, Settrade)
├── frontend/dist/             # Interfaz web gráfica precompilada y minificada de alta velocidad
│
├── config/
│   ├── app_config.json        # ✏️ Credenciales locales y ajustes de fuentes (nunca publicar)
│   └── logo_*.ico / *.png     # Recursos visuales de la marca
│
├── custom_indicators/         # ✏️ Indicadores personalizados (.ts / .js / .py) y modelos ML
│   ├── template.ts            #   Plantilla inicial para desarrollo de indicadores
│   └── *.joblib               #   Modelos HMM preentrenados de régimen de mercado
│
├── custom_strategies/         # ✏️ Estrategias cuantitativas personalizadas (.py / .pyc)
│   └── template_strategy.py   #   Plantilla inicial de estrategia algorítmica
│
├── user_data/                 # ✏️ Espacios de trabajo, plantillas de gráficos, listas y dibujos
├── logs/                      # Informes de backtest (HTML, CSV, JSON) y registros de bots
├── data_db/                   # Bases de datos locales (fundamentales de acciones y derivados SET)
├── docs/                      # Documentación y manuales de referencia
├── scripts/                   # Scripts de automatización y utilidades
└── utils/                     # Generadores de accesos directos, sincronización de BD y tokens
```

> 💡 **Protección de Datos de Usuario:** Los directorios marcados con **✏️** contienen sus plantillas personales, listas de seguimiento, análisis gráficos, credenciales y estrategias algorítmicas. Realice siempre una copia de seguridad de estas carpetas antes de actualizar.

---

## ⌨️ Atajos de Teclado y Operaciones Clave

| Atajo / Acción | Funcionalidad |
| :--- | :--- |
| **`F5`** | **Recarga Rápida / Reconexión:** Actualiza la interfaz al instante, resincroniza los canales WebSocket y resuelve cualquier latencia temporal de la aplicación. |
| **`Ctrl + N`** | **Nueva Ventana de Trabajo:** Abre una ventana independiente adicional de QuantDeck para configuraciones multimonitor. |
| **`Delete` / `Backspace`** | Elimina el dibujo o herramienta de análisis actualmente seleccionada en el gráfico. |
| **`Esc`** | Cancela el modo de dibujo activo o devuelve el cursor al modo de selección predeterminado. |
| **`Clic en una fila del Toolbox`** | Cambia instantáneamente el gráfico activo al Símbolo y Broker de esa posición. |
| **`Arrastrar línea de SL / TP`** | Modifica de forma interactiva el precio de Stop Loss o Take Profit directamente sobre las velas. |
| **`Clic en '×' de la línea de gráfico`** | Cancela o elimina de inmediato la orden de Stop Loss / Take Profit activa. |

---

## 🛠️ Guía Rápida de Recuperación y Solución de Problemas

> [!TIP]
> **¿Ha experimentado una congelación momentánea o desfase de datos?**  
> Simplemente presione **`F5`** en cualquier momento. El sistema resincronizará el flujo de datos WebSocket, releerá las posiciones activas de los brokers y restaurará la interfaz sin reiniciar el motor Python de fondo.

| Situación | Solución recomendada |
| :--- | :--- |
| **Retraso en la interfaz / Precios congelados** | Presione **`F5`** para refrescar la vista y restablecer las suscripciones de cotización en tiempo real vía WebSocket. |
| **Configuración de Múltiples Monitores** | Presione **`Ctrl + N`** para abrir una ventana nueva y arrástrela a su monitor secundario. |
| **La ventana no se abre al iniciar** | Compruebe que Chrome o Edge estén instalados, o acceda directamente a `http://127.0.0.1:8765` desde cualquier navegador. |
| **Error "Port 8765 already in use"** | Haga doble clic en **`Kill_QuantDeck.exe`** para cerrar procesos huérfanos y vuelva a iniciar. |
| **MT5 aparece como *Disconnected*** | Verifique que su terminal MetaTrader 5 esté iniciado, con sesión activa y con el botón **Algo Trading** encendido. |
| **Error de autenticación en cTrader** | Los tokens de acceso expiran de forma periódica. Haga clic en **🔄 Load Linked Accounts** en Source Settings o copie un token renovado de cTrader Open API. |
| **Órdenes rechazadas por el broker** | Verifique que **⚡ Enable Live Trading** esté marcado para dicho broker y asegúrese de que la cuenta disponga de margen libre suficiente. |

---

## ⚠️ Avisos Legales y de Seguridad

- **Riesgo Financiero:** El trading en Forex, CFDs, Criptomonedas y Derivados implica un riesgo significativo de pérdida de capital. Valide siempre sus estrategias cuantitativas en cuentas Demo antes de arriesgar dinero real. QuantDeck es una estación de ejecución y análisis; no brinda asesoramiento financiero ni de inversión.
- **Seguridad de Credenciales:** Todas las claves API y números de cuenta se guardan estrictamente de manera local en `config/app_config.json`. No comparta ni publique este archivo bajo ninguna circunstancia.
- **Permisos del Firewall:** Durante el primer inicio, acepte los permisos del Firewall de Windows para redes privadas/locales a fin de que la interfaz pueda comunicarse con el servidor local en `127.0.0.1`.

---

## 💬 Comunidad Oficial y Soporte Técnico

Conéctese con otros traders algorítmicos, vea tutoriales de desarrollo cuantitativo y obtenga asistencia técnica directa:

- 💬 **Comunidad de Discord:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(Debates en directo, scripts de indicadores y resolución de dudas)*
- 📺 **Canal de YouTube:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(Tutoriales prácticos, arquitectura de bots y guías de funciones)*
- 🐦 **X (Twitter):** [@theoris](https://x.com/theoris) *(Novedades de versiones e inteligencia de mercados cuantitativos)*
- ☕ **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(Apoyo al proyecto y adquisición de licencias)*
- 🐙 **Repositorio en GitHub:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(Descargas, código fuente y reporte de incidencias)*

---

**¡Excelente operativa y buen trading! 📈**  
Si QuantDeck potencia su flujo de trabajo cuantitativo, considere apoyar el proyecto otorgando una estrella (⭐ Star) al repositorio y compartiendo sus sugerencias en [GitHub Issues](https://github.com/theoris/quantdeck/issues).

