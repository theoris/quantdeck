# QuantDeck v2.2.4 — Institutional Charting & Multi-Broker Trading Workstation

> **One desktop workstation for charting, backtesting, and automated execution.** Covers Forex, Gold, Crypto, Indices, US Equities, and Thai SET/TFEX.
> Connect **MT5, cTrader, and SimpleFX** simultaneously. Draw with 70+ institutional tools, run visual backtests with Optuna optimization, operate 24/7 live bots, and manage your portfolio from a centralized Execution Toolbox.

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

> 🌍 **Read documentation in your language:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## 🚀 Why QuantDeck?

| | Capability | Practical Benefit for Traders |
| :---: | :--- | :--- |
| ⚡ | **Simultaneous Multi-Broker Trading** | Run **MetaTrader 5**, **cTrader Open API**, and **SimpleFX** on the same screen. Each chart slot isolates its own broker connection so orders never cross-fire. |
| 📈 | **Institutional Charting Workstation** | Flexible multi-chart grid layouts (1×1, 2×1, 2×2, 3×1, 4×1) with synchronized crosshair & timeframe, plus **70+ drawing tools** (Trendlines, Channels, Pitchforks, Circle Sector, Gann, Fibonacci, Elliott Waves, Harmonic Patterns, and Position Rulers). |
| 📊 | **Volume & Order Flow Tools** | **Anchored VWAP** with standard deviation bands (±1σ, ±2σ). **Fixed Range** and **Anchored Volume Profile** with auto POC and 70% Value Area (VAH/VAL). |
| 🎯 | **Chart-Trading HUD & Visual Lines** | One-click BUY/SELL HUD, Limit/Stop pending orders, and draggable SL/TP lines with quick `×` cancel buttons and real-time floating P/L. |
| 🧰 | **Advanced Order Management** | **Stepped Trailing SL** (multi-level break-even ratchet with broker spread-guard protection), **Multi-Target Scale-Out** tranches, partial lots close, and 1-click Close All. |
| 💰 | **Real Broker Metrics** | Balance, Equity, Margin, Free Margin, and Margin Level calculated from true broker parameters (including cTrader's native `usedMargin` and account leverage). |
| 🧪 | **Fast Backtesting & Optuna Optimization** | Vectorized multi-year backtesting directly on the chart with buy/sell execution markers, equity curves, deep MT5-style performance metrics, and **Optuna parameter optimization** (exporting to HTML, CSV, and JSON). |
| 🤖 | **24/7 Automated Live Bot Engine** | Launch automated trading bots as autonomous background processes with dedicated console monitoring, overseen in real time from the **Bot Fleet** tab. |
| 🧠 | **Integrated Machine Learning & AI Copilot** | Pre-trained HMM market-regime classification, GARCH volatility forecasting, K-Means price-behavior clustering, Isolation Forest anomaly detection, and vision-assisted AI Copilot. |
| 🌐 | **9 Data & Broker Gateways** | MT5 Desktop IPC, cTrader Open API, SimpleFX API, SET/TFEX (Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData, and local tick archives. |
| 🌍 | **Full 9-Language Localization** | English, ไทย, 中文, 日本語, 한국어, Tiếng Việt, Español, Deutsch, and العربية (RTL). |
| 🪶 | **Ultra-Lightweight & Fast** | ~4 MB download. Custom indicators are pre-transpiled, and high-frequency formula engines are compiled into native x64 C/C++ (`.pyd`) machine code. |
| 🔒 | **Local Privacy & Self-Contained** | Runs locally on your machine at `127.0.0.1:8765`. API keys and trading accounts remain strictly inside your local `config/app_config.json`. |

---

## 📦 Downloads — Choose Your Distribution

| Release Asset | File Size | Description & Recommended Use |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **4.78 MB** | **Recommended for most users.** Self-contained Windows installer & launcher. Extracts files, configures desktop shortcuts, and launches QuantDeck in 1 click. |
| **`QuantDeck_Standalone_Release.zip`** | **4.71 MB** | **Portable package.** Extract anywhere (including USB drives) and run without system installation. |
| **`SHA256SUMS.txt`** | **~10 KB** | **Integrity Checksum Manifest.** Complete cryptographic SHA-256 signatures for every file in the release. |

### 🔐 Cryptographic Verification (SHA-256)

```text
276A6123777FA9EB3582553B9265D61AD1DD87F0773D30A8DEE93E9EBD5CDCA5  QuantDeck_Standalone_Release.zip
C800C51B78978AD0F9B2EBF9DC966953AFFF27C13BE8522820772D1A6EE70608  QuantDeck_Standalone_Setup.exe
```

To verify the file integrity in Windows PowerShell:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 Platform Licensing Tiers

QuantDeck features a tiered access architecture tailored for retail, quantitative, and automated prop traders:

```
[ Free Tier ] ────────► [ 14-Day Trial ] ────────► [ Pro Tier ] ────────► [ Premium Tier ]
Core Charting           Full Features Unlocked      Live Trading +            24/7 Live Bot Fleet +
Yahoo / MT5 / Ticks     Test All Indicators/Trade   Backtest & Optimizer      Customization Window
```

| Feature Capability | Free Tier | 14-Day Hybrid Trial | Pro Tier 💎 | Premium Tier 👑 |
| :--- | :---: | :---: | :---: | :---: |
| **Basic Charting & Core Data** *(Yahoo, MT5, Local Tick)* | ✔ | ✔ | ✔ | ✔ |
| **Extended Sources** *(cTrader, SimpleFX, SET, Binance, IBKR)* | 🔒 | ✔ (14 Days) | ✔ | ✔ |
| **Custom TypeScript & ML Indicators** *(Footprint, HTF MA, Regime)* | 🔒 | ✔ (14 Days) | ✔ | ✔ |
| **Chart Trading & One-Click Execution** | 🔒 | ✔ (14 Days) | ✔ | ✔ |
| **Execution Toolbox** *(Positions, Orders, Stepped SL, Multi-TP)* | 🔒 | ✔ (14 Days) | ✔ | ✔ |
| **Visual Strategy Backtester & MT5 Reports** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot Studio** *(Prompt Lab & Vision Analysis)* | 🔒 | 🔒 | ✔ | ✔ |
| **Automated 24/7 Live Trading Bot Engine** | 🔒 | 🔒 | 🔒 | **✔ Lifetime** |
| **Dedicated Backend & Custom Algorithm Support** | — | — | — | **✔ 6 Months** |

> ⏳ **Out-of-the-box Trial:** Every fresh installation automatically starts with a **14-day Hybrid Trial** unlocking extended data sources, custom indicators, and manual order execution.

---

## 💳 How to Upgrade / Purchase a License (Pro & Premium)

Upgrading to **Pro** or **Premium** unlocks full manual trading, visual backtesting, automated bot fleets, and institutional analytics.

### Step 1: Copy Your Machine ID
1. Open **QuantDeck Workstation**.
2. Click the **⏳ Trial / License badge** located on the top header bar (or open Settings → License).
3. Click the **📋 Copy ID** button to copy your unique hardware **Machine ID** (e.g. `QD-A1B2C3D4E5F6`).

### Step 2: Choose Your Payment Method

Choose the payment channel that best suits you:

#### Option A: Global Credit Card / Apple Pay / PayPal (Instant)
- Visit our official page: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- Select the **Pro** or **Premium** package.
- ⚠️ **Important:** Enter your **Machine ID** and contact email in the note/message field during checkout.

#### Option B: Cryptocurrency (USDT) — Global & Privacy
- **USDT (TRC-20):** `[To be updated / Available upon request in Discord]`
- **USDT (BEP-20 / Arbitrum):** `[To be updated / Available upon request in Discord]`
- After transferring, please open a ticket in our [**Discord Community**](https://discord.gg/qRmMWjcTE) or message [@theoris](https://x.com/theoris) with your Transaction Hash (TXID) and Machine ID.

#### Option C: Thai QR PromptPay (สำหรับผู้ใช้คนไทย)
- เข้าร่วม Discord ของเราที่ [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE)
- เปิดห้องตั๋วในช่อง `#license-ticket` เพื่อรับ Thai QR PromptPay
- แนบสลิปการโอนเงินพร้อมแจ้ง **Machine ID** เพื่อรับ License Key ได้ทันที

### Step 3: Activate Your Key
1. Once your payment is verified, you will receive your personalized License Key.
2. Paste the key into the **Activate License Key** input inside QuantDeck and click **Activate**.
3. All features unlock immediately without requiring an app reinstall or data loss.

---

## 🖥️ System Requirements

- **Operating System:** Windows 10 / 11 (64-bit)
- **Runtime:** Python **3.12** (x64). The launcher automatically checks for Python 3.12 and assists with setup if missing.
- **Display Engine:** Google Chrome or Microsoft Edge (QuantDeck runs inside a streamlined, native-style application window).
- **Hardware:** 4 GB RAM minimum (8 GB+ recommended for multi-slot grids, ML models, and high-frequency tick backtests).
- **Broker Connections (Optional):** MetaTrader 5 desktop client, cTrader Open API developer credentials, SimpleFX API credentials, or Settrade Open API accounts.

---

## ⚙️ Installation & Quick Start Guide

### Method 1 — Standalone Setup (`.exe`)
1. Download **`QuantDeck_Standalone_Setup.exe`**.
2. Run the executable.
   > *Note:* If Windows SmartScreen displays *"Windows protected your PC"* (due to a newly published executable), click **More info → Run anyway**.
3. Choose your desired target path and click **Install & Launch**. Desktop and Start Menu shortcuts will be generated.
4. QuantDeck will automatically initialize the local backend and open the workstation window.

### Method 2 — Portable Release (`.zip`)
1. Download **`QuantDeck_Standalone_Release.zip`**.
2. Extract the archive into a folder of your choice (e.g., `C:\QuantDeck` or an external drive). *Avoid restrictive folders like `C:\Program Files`.*
3. Double-click **`QuantDeck.exe`** (or `run_chart.bat`).
4. On the very first run, required Python dependencies from `requirements.txt` are verified and cached. Subsequent launches start in seconds.

### 5-Minute Initial Configuration
1. **Language Selection:** Switch your interface language using the right sidebar selector.
2. **Configure Broker Sources:** Open **Source Settings** (top navigation bar):
   - **Yahoo Finance:** Ready to use immediately with zero API keys.
   - **MetaTrader 5:** Launch and log in to your MT5 terminal; QuantDeck automatically connects via local IPC.
   - **cTrader:** Input your Client ID, Secret, and Tokens from [https://openapi.ctrader.com/](https://openapi.ctrader.com/). Click **🔄 Load Linked Accounts** to auto-detect and select your account by your familiar User App Login number.
   - **SimpleFX / Binance / Polygon / SET:** Enter your credentials and click **Test Connection**.
3. **Activate Live Execution (Safety Protected):** Tick **⚡ Enable Live Trading** under each desired source to unlock active trade routing (kept off by default to prevent accidental executions).
4. **Toolbox:** Inspect open positions, pending orders, trade history, execution audit logs, and account margin metrics.

### Closing QuantDeck
Simply close the workstation window, or run **`Kill_QuantDeck.exe`** at any time to instantly stop all background services and free up port 8765.

---

## 📁 Package Directory Structure

```text
QuantDeck/
├── QuantDeck.exe              # ▶ Primary Windows Launcher (double-click to start)
├── Kill_QuantDeck.exe         # ■ Process Terminator (cleanly stops all background jobs)
├── run_chart.bat              # Console-mode launcher alternative
├── kill_all_quantdeck.bat     # Console-mode process cleaner
├── run.py                     # Workstation bootstrapper & port 8765 resolver
├── requirements.txt           # Python dependency definitions
├── python_version.txt         # Targeted runtime indicator (3.12)
├── SHA256SUMS.txt             # Cryptographic checksum manifest (150+ release files)
│
├── backend/                   # FastAPI REST/WebSocket server & native Cython engines
│   ├── main.pyc               #   Core application entry point
│   ├── backtest/              #   Vectorized backtester & Optuna optimizer (.pyd / .pyc)
│   ├── data_sources/          #   MT5, cTrader, SimpleFX, SET, Yahoo, Binance, Polygon...
│   ├── execution/             #   Multi-broker order router & trade-rule engine
│   ├── strategies/            #   Strategy registry and execution workers
│   └── *.pyd                  #   Native high-speed modules (formula engine, licensing)
│
├── connection/                # Broker client adapters (MT5, cTrader, SimpleFX, Settrade)
├── frontend/dist/             # Pre-built, minified high-speed charting interface
│
├── config/
│   ├── app_config.json        # ✏️ Local credentials & source settings (never published)
│   └── logo_*.ico / *.png     # Brand visual assets
│
├── custom_indicators/         # ✏️ User indicators (.ts / .js / .py) & pre-trained ML models
│   ├── template.ts            #   Starter indicator blueprint
│   └── *.joblib               #   Pre-trained HMM market-regime models
│
├── custom_strategies/         # ✏️ Custom quantitative strategies (.py / .pyc)
│   └── template_strategy.py   #   Starter strategy template
│
├── user_data/                 # ✏️ Workspaces, chart templates, watchlists, drawings
├── logs/                      # Backtest reports (HTML, CSV, JSON) & live bot execution logs
├── data_db/                   # Local databases (SET equity/derivative fundamentals)
├── docs/                      # Reference documentation & user manuals
├── scripts/                   # Utility automation scripts
└── utils/                     # Shortcut builders, database synchronizers & token utilities
```

> 💡 **User Data Protection:** Directories marked with **✏️** contain your personal templates, watchlists, drawings, credentials, and custom algorithms. Always back up these folders prior to upgrading.

---

## ⌨️ Essential Workstation Shortcuts & Operations

| Shortcut / Action | Functionality |
| :--- | :--- |
| **`F5`** | **Quick App Refresh / Reconnect:** Instantly refreshes the workstation, re-syncs WebSocket feeds, and clears interface lag if any temporary issue occurs. |
| **`Ctrl + N`** | **New Workstation Window:** Spawns an additional independent QuantDeck application window for multi-monitor desktop setups. |
| **`Delete` / `Backspace`** | Delete currently selected drawing or tool on the chart. |
| **`Esc`** | Cancel active drawing placement mode / Reset cursor to default. |
| **`Click on Toolbox Row`** | Instantly switches the active chart to that position's Symbol and Broker Source. |
| **`Drag Chart SL / TP Line`** | Interactively modify Stop Loss or Take Profit price directly on the candlestick view. |
| **`Click '×' on Chart Line`** | Instantly cancels or clears active Stop Loss / Take Profit. |

---

## 🛠️ Quick Recovery & Troubleshooting

> [!TIP]
> **Encountered an unexpected glitch or connection freeze?**  
> Simply press **`F5`** at any time. It instantly re-syncs the active WebSocket feed, re-reads current broker positions, and restores the workstation without restarting background Python engines.

| Issue | Resolution |
| :--- | :--- |
| **Interface Lag / Stale Quotes** | Press **`F5`** to refresh and re-establish live WebSocket quote subscriptions. |
| **Multi-Screen Trading** | Press **`Ctrl + N`** to spawn a fresh app window and drag it onto your second monitor. |
| **Window doesn't open on launch** | Verify Chrome or Edge is installed, or open `http://127.0.0.1:8765` directly in any web browser. |
| **"Port 8765 already in use"** | Double-click **`Kill_QuantDeck.exe`** to terminate orphaned processes, then re-launch. |
| **MT5 shows *Disconnected*** | Ensure your MetaTrader 5 terminal is running, logged in, and has **Algo Trading** enabled. |
| **cTrader Authentication Error** | Access tokens expire periodically. Click **🔄 Load Linked Accounts** in Source Settings to verify credentials or paste fresh tokens from your cTrader Open API portal. |
| **Orders Rejected by Broker** | Ensure **⚡ Enable Live Trading** is ticked for that specific broker and verify your account has sufficient free margin. |

---

## ⚠️ Important Disclaimers

- **Financial Risk:** Trading Forex, CFDs, Cryptocurrencies, and Derivatives carries substantial risk of loss. Always validate trading strategies on a Demo account before live capital allocation. QuantDeck is an execution workstation; it does not provide investment advice.
- **Credential Security:** All API keys and account numbers are stored exclusively in your local `config/app_config.json`. Do not commit or share this file publicly.
- **Firewall Prompt:** When first launched, allow Windows Firewall access for private/local networks so the local frontend can communicate with `127.0.0.1`.

---

## 💬 Community & Official Support

Connect with fellow quantitative traders, watch algorithm walk-throughs, and receive fast developer assistance:

- 💬 **Discord Community:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(Live discussion, indicator scripts & troubleshooting)*
- 📺 **YouTube Channel:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(Video tutorials, bot blueprints & feature guides)*
- 🐦 **X (Twitter):** [@theoris](https://x.com/theoris) *(Release announcements & quantitative market intelligence)*
- ☕ **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(Platform sponsorship & license upgrades)*
- 🐙 **GitHub Repository:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(Releases, source repository & issue tracking)*

---

**Happy Trading! 📈**  
If QuantDeck elevates your quantitative trading workflow, please consider starring the repository ⭐ and submitting feedback via [GitHub Issues](https://github.com/theoris/quantdeck/issues).
