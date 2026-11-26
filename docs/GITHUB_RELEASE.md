# QuantDeck v2.4.21 — Institutional Charting & Multi-Broker Trading Workstation

> **One desktop workstation for charting, backtesting, and automated execution.** Covers Forex, Gold, Crypto, Indices, US Equities, and Thai SET/TFEX.
> Connect **MT5, cTrader, and SimpleFX** simultaneously. Draw with 70+ institutional tools, run visual backtests with Optuna optimization, operate 24/7 live bots, and manage your portfolio from a centralized Execution Toolbox.

![Platform](https://img.shields.io/badge/platform-Windows%2010%2F11%20x64-blue)
![Python](https://img.shields.io/badge/runtime-Python%203.12-yellow)
![Languages](https://img.shields.io/badge/UI-9%20languages-green)
![License Tiers](https://img.shields.io/badge/tiers-Free%20%7C%20Trial%20%7C%20Pro%20%7C%20Premium-orange)
![Download Size](https://img.shields.io/badge/download-~5.3%20MB-brightgreen)
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

## ✨ What's New in v2.4.21

- **CAD Measurement Tools Shift-Snap Alignment (`drawing-manager.ts`):**
  - Enabled Shift-key 45° / 0° / 90° angle snapping (with live `📐 XX°` badge) across all 6 CAD dimension tools (`dim_linear`, `dim_aligned`, `dim_radial`, `dim_diameter`, `dim_angular`, `dim_ordinate`) during creation, live hover preview, and selected handle dragging.
  - Added specialized vertex-anchored snapping for `dim_angular` Point 3 / Arm 2 dragging so both arms lock cleanly relative to the `Vertex` point (`points[0]`) rather than `Arm 1`.
- **AI Authoring Quick-Guide & 1-Click Spec Downloads (`indicator-modal.ts` + `strategy-panel.ts` + `guide-links.ts` + `backend/main.py`):**
  - Added a compact AI Quick-Guide action strip directly above `Open Folder` in the Custom Indicators tab and above the `In-Chart` / `External` tabs in Strategy Workstation, featuring an interactive `?` workflow tooltip, 1-click `.md` specification downloads (`custom_indy.md` / `custom_strategy.md` via `/api/docs/download/{filename}` with GitHub raw fallback), No-Code AI Prompt links, and YouTube video tutorial links for both Custom Indicators and Custom Strategies.

---

## ✨ What's New in v2.4.20

- **Optimizer ↔ Backtest Parameter Parity & Safe Boolean Coercion (`base.py` + `multi_base.py` + `optimizer.py` + `engine.py`):**
  - Fixed a silent mismatch where `"bool"` strategy parameters (e.g., `tp_at_poc: false`, `close_opposite: false`) serialized as JSON strings from the Strategy Panel UI and evaluated as `bool("false") == True` in Python during single backtests while Optuna used native `False`.
  - Added `coerce_bool()` and `coerce_strategy_params()` to `backend/strategies/base.py` (automatically invoked in `BaseStrategy.__init__()` and `BaseMultiAssetStrategy.__init__()`) and applied `coerce_bool()` across `optimizer.py`, `engine.py`, `live_engine.py`, and `external_bot_runner.py`.
  - Updated Backtest Engine (`engine.py`) Signal Reversal exit handling to explicitly honor `self.params["close_opposite"]` when declared by a strategy, matching Live Engine and External Bot Runner behavior.
- **Typed Strategy Inputs, Boolean Search Space & State Persistence (`strategy-panel.ts` + `live-trading-modal.ts`):**
  - Rendered `"bool"` parameters as native `True`/`False` dropdowns and typed `"number"`/`"int"`/`"float"`/`"select"` inputs in both `StrategyPanel` (In-Chart & External) and `LiveTradingModal`, returning exact JSON types from `collectParams()`.
  - Exposed `"bool"` parameters inside the Optuna Parameter Search Space UI with `Auto-sweep [True, False]` and `🔒 Fix` constant lock support.
  - Preserved `Initial Capital ($)`, `Spread / Cost ($)`, and `Bar Count` state across **`✔ Apply & Test`** and tab switches instead of resetting back to `10000` / `0.0`.
- **Custom Strategy AI Authoring Guidelines (`docs/custom_strategy.md` + `template_strategy.py`):**
  - Documented supported `"type"` fields (`"bool"`, `"int"`, `"float"`, `"number"`, `"select"`, `"text"`), added strict prohibitions against raw `bool(...)` string coercion and bar-index modulo phase drift (`(i - warmup) % step` when `step > 1`), and aligned `Section 9` verification checklist.

---

## ✨ What's New in v2.4.19

- **Authoritative Broker Volume Specs & Human-Readable Error Translation (`ctrader_source.py` + `ctrader_client.py` + `router.py`):**
  - Added non-blocking cTrader symbol specification lookup via `ProtoOASymbolByIdReq`/`ProtoOASymbolByIdRes` (`payloadType 2116/2117`), exposing real `min_lot`, `step_lot`, `max_lot`, `contract_size`, and `digits` (plus extended index symbol aliases such as `NAS100`, `USTEC`, `US100`, `NDX100`, `SPX500`, `US500`, `US30`, `DOW`).
  - Wired `OrderRouter.get_symbol_specs()` with authoritative broker metadata and a 300s TTL cache (preserving `0.01` default fallback for standard FX/Gold and `1.0` for stocks when no custom broker minimum is specified), added pre-flight order volume min/max/step validation in `OrderRouter.place_order()`, surfaced cTrader `ProtoOAOrderErrorEvent (2132)` rejections cleanly, and added `_translate_broker_error()` for clear, actionable volume/margin/market status messages.
- **Dynamic Min-Lot Sync Across Order Panels, Live Bot Runner, and Price & PnL Ruler (`asset-specs.ts` + `drawing-manager.ts` + `quick-trade-hud.ts` + `orders-panel.ts` + `live-trading-modal.ts`):**
  - Centralized `getSymbolLotConstraints()`, `normalizeLotToConstraints()`, and `validateLotAgainstConstraints()` in `asset-specs.ts` with `qd_symbol_specs_updated` change propagation from `main.ts` and `layout-manager.ts`.
  - Updated **Quick Trade HUD**, **New Order Modal**, and **Live Auto-Trading Modal** with live `(Min: ...)` hints, dynamic lot `min`/`step`/`max` attributes, adaptive quick-lot chips, and pre-flight validation.
  - Updated **Price & PnL Ruler / Risk-Reward Settings** (`drawing-manager.ts`) and inline property bar lot controls to default to `0.01` while automatically honoring each symbol/broker's detected `min_lot` (such as `1.0` on cTrader `NAS100`).

---

## ✨ What's New in v2.4.18

- **Execution Automation & Stepped-SL Loop Resilience (`trade_manager.py` + `ctrader_client.py` + `reconciler.py`):**
  - Eliminated a silent monitoring loop termination bug where cancelling a shared `CTraderClient` in-flight reconcile future propagated `asyncio.CancelledError` into `TradeAutomationManager._monitor_loop()` without error logs.
  - Hardened `CTraderClient.get_open_positions()` single-flight waiting with `asyncio.shield()`, owner-checked `_pending["reconcile"]` cleanup, `CancelledError` isolation for waiting callers, and cache preservation when reconcile resolves empty (`None`), plus stopped `ProtoOAOrderErrorEvent (2132)` from aborting active reconcile futures and made `close_position()` cache-aware so market closes do not trigger spurious pending-order `ORDER_NOT_FOUND` errors.
  - Widened `PositionReconciler` per-broker timeout from `6.0s` to `9.0s` (above cTrader's internal `8.0s` timeout) and guarded `_reconcile_loop()` and `_monitor_loop()` against leaked child `CancelledError` exceptions using `Task.cancelling()`, paired with an `_ensure_loop_running()` self-healing watchdog on rule access/updates.
  - Offloaded synchronous data-source `get_tick()` lookups in `TradeAutomationManager` to worker threads (`asyncio.to_thread` with `2.5s` timeout) and ensured Ratchet Guard step completions persist immediately to `trade_rules.json` and broadcast `trade_rule_updated`.
- **WebSocket Broadcast & SimpleFX Stability (`ws_manager.py` + `simplefx_client.py`):**
  - Added a `2.0s` `asyncio.wait_for` timeout across all WebSocket broadcast helpers (`broadcast_bar_update`, `broadcast_execution_event`, `broadcast_tick`) to automatically evict hung clients instead of blocking execution automation.
  - Added a `10s` failure backoff and `5.0s` request timeout on `SimpleFXClient.fetch_account_balance()` plus explicit exception type/detail logging (`type(ex).__name__: repr(ex)`) for blank `TimeoutError` messages.
- **Unified Chart Order & SL/TP Sign Formatting (`frontend/src/chart/position-overlay.ts`):**
  - Added shared `formatSignedUsd()` and `formatSignedDist()` formatters across price-scale axis titles, canvas badges, hover tooltips, and drag previews so open and pending order SL/TP labels display matching signs on both left and right sides (e.g. `+$9.00` / `+90.0p` when SL trails into profit).
- *(Includes all `v2.4.17` cTrader Zero-Zombie Socket & Handshake Isolation and SimpleFX Single-Task WebSocket Guard improvements, plus `v2.4.16`–`v2.4.13` updates.)*

## ✨ What's New in v2.4.17

- **cTrader Zero-Zombie Socket & Handshake Isolation (`connection/ctrader_protocol.py` + `CTraderDataSource` / `CTraderClient`):**
  - Replaced `ctrader_open_api.TcpProtocol` with `IsolatedTcpProtocol` giving every connection its own `_send_queue` / `_send_task`, preventing disconnected sockets from stealing `ProtoOAApplicationAuthReq` / `ProtoOAAccountAuthReq` frames off another socket's shared class queue and breaking the infinite 32-second disconnect loop after temporary internet drops.
  - Added `force_stop_ctrader_client()` bypassing `Client.stopService()`'s broken `if self.isConnected:` guard so stopped/replaced Twisted `ClientService` instances never linger as background zombies, paired with a bounded `1s → 10s` Twisted reconnect policy and `_app_authorized` gating (`ProtoOAApplicationAuthRes 2101`) so a single live client recovers cleanly on its own.
- **SimpleFX Single-Task WebSocket Guard (`SimpleFXClient`):** Prevented `start()` from spawning duplicate concurrent `_ws_task` loops and tied `_ws_loop` cleanly to `_explicit_stop`.
- *(Includes all `v2.4.16` DNS-Resilient IPv4 + Direct-DNS + Sticky-IP Cache Protection, `v2.4.15` Broker Reconnection Grace Period & Minimal Theme-Adaptive Order Lines & Startup Layout Preference, plus `v2.4.14` & `v2.4.13` improvements.)*

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
| **`QuantDeck_Standalone_Setup.exe`** | **~5.3 MB** | **Recommended for most users.** Self-contained Windows installer & launcher. Extracts files, configures desktop shortcuts, and launches QuantDeck in 1 click. |
| **`QuantDeck_Standalone_Release.zip`** | **~5.2 MB** | **Portable package.** Extract anywhere (including USB drives) and run without system installation. |
| **`SHA256SUMS.txt`** | **~10 KB** | **Integrity Checksum Manifest.** Complete cryptographic SHA-256 signatures for every file in the release. |

### 🔐 Cryptographic Verification (SHA-256)

```text
CC3B0AD61D5A590327F778AF22044E0B28638ACF4AFFD2808568820C912946B1  QuantDeck_Standalone_Release.zip
935FF6304B960776F7F0C89E9F70C6C813D7AA91D79AA1D84C2A9FA960E9B825  QuantDeck_Standalone_Setup.exe
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

## 🧩 Custom Indicator & Strategy Guides (AI Blueprints)

Attach these official specs and AI prompt templates directly in ChatGPT, Claude, Gemini, or Cursor (or find them locally inside `QuantDeck/docs/`):

### 1. Custom Indicator Guide (`custom_indicators/`)
- [`docs/custom_indy.md`](https://github.com/theoris/quantdeck/blob/main/docs/custom_indy.md) — Complete Custom Indicator SDK specification, rendering rules & AI blueprint
- [`docs/prompt_indy.md`](https://github.com/theoris/quantdeck/blob/main/docs/prompt_indy.md) — Multilingual AI prompt templates (9 languages) for building indicators
- [`docs/prompt_indy_nocode.md`](https://github.com/theoris/quantdeck/blob/main/docs/prompt_indy_nocode.md) — Guided No-Code prompt templates (interactive Q&A for non-coders)

### 2. Custom Strategy Guide (`custom_strategies/`)
- [`docs/custom_strategy.md`](https://github.com/theoris/quantdeck/blob/main/docs/custom_strategy.md) — Complete Python Strategy SDK specification, Zero-Lookahead rules & AI blueprint
- [`docs/prompt_strategy.md`](https://github.com/theoris/quantdeck/blob/main/docs/prompt_strategy.md) — Multilingual AI prompt templates (9 languages) for building strategies
- [`docs/prompt_strategy_nocode.md`](https://github.com/theoris/quantdeck/blob/main/docs/prompt_strategy_nocode.md) — Guided No-Code prompt templates (interactive Q&A for non-coders)

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
