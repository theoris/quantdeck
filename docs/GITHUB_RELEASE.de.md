# QuantDeck v2.2.2 — Institutionelle Charting- & Multi-Broker-Trading-Workstation

> **Eine einheitliche Desktop-Workstation für Chartanalyse, Backtesting und automatisierte Orderausführung.** Unterstützt Forex, Gold, Krypto, Indizes, US-Aktien und den thailändischen Markt SET/TFEX.  
> Verbinden Sie **MetaTrader 5, cTrader und SimpleFX** gleichzeitig. Analysieren Sie Charts mit über 70 professionellen Zeichenwerkzeugen, führen Sie visuelle Backtests mit Optuna-Hyperparameter-Optimierung durch, betreiben Sie automatisierte 24/7-Bots und steuern Sie Ihr gesamtes Portfolio über die zentrale Execution Toolbox.

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

> 🌍 **Dokumentation in Ihrer Sprache lesen:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## 🚀 Warum QuantDeck?

| | Funktion & Leistungsmerkmal | Praktischer Vorteil für Trader |
| :---: | :--- | :--- |
| ⚡ | **Gleichzeitiges Multi-Broker-Trading** | Betreiben Sie **MetaTrader 5**, **cTrader Open API** und **SimpleFX** parallel auf einem Bildschirm. Jeder Chart-Slot hält seine eigene isolierte Brokerverbindung, sodass Fehlordern ausgeschlossen sind. |
| 📈 | **Institutionelle Charting-Workstation** | Flexible Rasterlayouts (1×1, 2×1, 2×2, 3×1, 4×1) mit synchronisiertem Fadenkreuz & Timeframe, plus **über 70 Zeichenwerkzeuge** (Trendlinien, Kanäle, Pitchforks, Gann-Zirkelsektoren, Fibonacci, Elliott-Wellen, harmonische Muster und Positionslineale). |
| 📊 | **Volumen- & Orderflow-Tools** | **Anchored VWAP** mit Standardabweichungsbändern (±1σ, ±2σ). **Fixed Range** und **Anchored Volume Profile** mit automatischer POC-Erkennung und 70% Value Area (VAH/VAL). |
| 🎯 | **Chart-Trading HUD & Visuelle Orderlinien** | 1-Klick BUY/SELL HUD, Limit-/Stop-Pending-Orders sowie interaktiv auf dem Chart verschiebbare SL/TP-Linien mit Schnelllösch-Taste `×` und schwebender P/L-Echtzeitanzeige. |
| 🧰 | **Fortgeschrittenes Order-Management** | **Gestufter Trailing-Stop (Stepped Trailing SL)** (mehrstufiger Break-Even-Ratchet mit Spread-Schutz), **Multi-Target Scale-Out** (gestaffelte Gewinnmitnahme), Teilschließungen und 1-Klick Gesamtpositions-Schließung (Close All). |
| 💰 | **Echte Broker-Margindaten** | Kontostand (Balance), Eigenkapital (Equity), Margin, freie Margin und Margin-Level werden exakt nach Broker-Parametern berechnet (einschließlich nativer cTrader `usedMargin` und Kontohebel). |
| 🧪 | **Vektorisierte Backtests & Optuna-Optimierung** | Ultraschnelles mehrjähriges Backtesting direkt auf dem Chart mit Ein-/Ausstiegsmarkern, Equity-Kurven, detaillierten MT5-Metriken und **automatisierter Parameteroptimierung via Optuna** (Export als HTML, CSV, JSON). |
| 🤖 | **Automatisierte 24/7 Live-Bot-Engine** | Starten Sie Trading-Bots als eigenständige Hintergrundprozesse mit dedizierter Konsolenüberwachung, live überwacht im Reiter **Bot Fleet**. |
| 🧠 | **Integriertes Machine Learning & AI Copilot** | Trainierte HMM-Marktregime-Klassifizierung, GARCH-Volatilitätsprognose, K-Means-Clusteranalyse, Isolation-Forest-Anomalieerkennung und visueller KI-Copilot zur Chartanalyse. |
| 🌐 | **9 Daten- & Broker-Gateways** | MT5 Desktop IPC, cTrader Open API, SimpleFX API, SET/TFEX (Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData sowie lokale Tick-Archive. |
| 🌍 | **Vollständige Lokalisierung in 9 Sprachen** | Englisch, Thailändisch, Chinesisch, Japanisch, Koreanisch, Vietnamesisch, Spanisch, Deutsch und Arabisch (RTL). |
| 🪶 | **Extrem leichtgewichtig & nativ schnell** | Download-Größe nur ca. 4 MB. Benutzerdefinierte Indikatoren sind vorkompiliert, und zeitkritische Formel-Engines sind in nativen x64 C/C++-Maschinencode (`.pyd`) kompiliert. |
| 🔒 | **Lokale Privatsphäre & vollständige Autonomie** | Läuft vollkommen isoliert auf Ihrem PC unter `127.0.0.1:8765`. API-Schlüssel und Kontodaten verbleiben ausschließlich in Ihrer lokalen Datei `config/app_config.json`. |

---

## 📦 Downloads — Wählen Sie Ihre Edition

| Dateiname | Dateigröße | Beschreibung & Empfohlene Nutzung |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **Empfohlen für die meisten Anwender.** All-in-One Windows-Installer & Starter. Entpackt Dateien, richtet Verknüpfungen ein und startet QuantDeck mit 1 Klick. |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **Portable Version.** In ein beliebiges Verzeichnis (auch USB-Sticks) entpacken und ohne Systeminstallation sofort starten. |
| **`SHA256SUMS.txt`** | **~10 KB** | **Integritäts-Prüfsummen-Manifest.** Vollständige kryptografische SHA-256-Signaturen für jede Datei des Releases. |

### 🔐 Kryptografische Verifikation (SHA-256)

```text
90BD65A60E5DD7CDC786AA483880CCF3C594E08161ADB8B39336EA63B051A9B7  QuantDeck_Standalone_Release.zip
2437DF3166FF40B98473C46772F3D8EFBF26C1F4411BADEAC7D194D090C9ADCF  QuantDeck_Standalone_Setup.exe
```

Zur Überprüfung der Datei-Integrität in der Windows PowerShell:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 Lizenzstufen der Plattform

QuantDeck bietet ein gestaffeltes Lizenzmodell für Retail-Trader, quantitative Analysten und Prop-Trading-Firmen:

```
[ Free-Stufe ] ────────► [ 14-Tage-Hybrid-Test ] ────────► [ Pro-Stufe ] ────────► [ Premium-Stufe ]
Basis-Chartanalyse        Alle Funktionen Freigeschaltet   Echtes Trading +         24/7 Live-Bot-Flotte +
Yahoo / MT5 / Ticks       Indikatoren & Orders testen      Backtest & Optuna        Dedizierter Supportkanal
```

| Leistungsmerkmal | Free-Stufe | 14-Tage-Test | Pro-Stufe 💎 | Premium-Stufe 👑 |
| :--- | :---: | :---: | :---: | :---: |
| **Basis-Charting & Kern-Datenquellen** *(Yahoo, MT5, Lokale Ticks)* | ✔ | ✔ | ✔ | ✔ |
| **Erweiterte Datenquellen** *(cTrader, SimpleFX, SET, Binance, IBKR)* | 🔒 | ✔ (14 Tage) | ✔ | ✔ |
| **Custom TypeScript- & ML-Indikatoren** *(Footprint, HTF MA, Regime)* | 🔒 | ✔ (14 Tage) | ✔ | ✔ |
| **Chart-Trading & 1-Klick-Orderausführung** | 🔒 | ✔ (14 Tage) | ✔ | ✔ |
| **Execution Toolbox** *(Positionen, Orders, Gestufter SL, Multi-TP)* | 🔒 | ✔ (14 Tage) | ✔ | ✔ |
| **Visueller Strategie-Backtester & MT5-Berichte** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot Studio** *(Prompt Lab & Bildanalyse)* | 🔒 | 🔒 | ✔ | ✔ |
| **24/7 Automatisierte Live-Trading-Bot-Engine** | 🔒 | 🔒 | 🔒 | **✔ Lebenslang** |
| **Dedizierter Backend- & Custom-Algorithmen-Support** | — | — | — | **✔ 6 Monate** |

> ⏳ **Sofortiger Testzeitraum:** Jede Erstinstallation startet automatisch mit einer **14-tägigen Hybrid-Testphase**, die erweiterte Datenquellen, Profi-Indikatoren und manuelle Orderplatzierung freischaltet.

---

## 💳 Lizenz erwerben oder upgraden (Pro & Premium)

Mit dem Upgrade auf **Pro** oder **Premium** schalten Sie Live-Trading, visuelle Backtests, autonome Bot-Flotten und professionelle institutionelle Analysetools dauerhaft frei.

### Schritt 1: Kopieren Sie Ihre Machine ID
1. Öffnen Sie die **QuantDeck Workstation**.
2. Klicken Sie auf das **⏳ Trial / License-Badge** in der oberen Kopfzeile (oder öffnen Sie Settings → License).
3. Klicken Sie auf die Schaltfläche **📋 Copy ID**, um Ihre eindeutige Hardware-**Machine ID** (z. B. `QD-A1B2C3D4E5F6`) zu kopieren.

### Schritt 2: Wählen Sie Ihre Zahlungsmethode

Wählen Sie den für Sie passenden Zahlungskanal:

#### Option A: Internationale Kreditkarte / Apple Pay / PayPal (Sofort)
- Besuchen Sie unsere offizielle Plattform: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- Wählen Sie das Paket **Pro** oder **Premium**.
- ⚠️ **Wichtig:** Tragen Sie während des Bezahlvorgangs im Hinweisfeld (Note/Message) Ihre **Machine ID** und Kontakt-E-Mail-Adresse ein.

#### Option B: Kryptowährung (USDT) — Global & Diskret
- **USDT (TRC-20):** `[Wird aktualisiert / Auf Anfrage im Discord-Ticket]`
- **USDT (BEP-20 / Arbitrum):** `[Wird aktualisiert / Auf Anfrage im Discord-Ticket]`
- Nach erfolgter Transaktion eröffnen Sie bitte ein Ticket in unserer [**Discord-Community**](https://discord.gg/qRmMWjcTE) oder kontaktieren Sie [@theoris](https://x.com/theoris) mit dem Transaktions-Hash (TXID) und Ihrer Machine ID.

#### Option C: Thai QR PromptPay (Für thailändische Nutzer)
- Treten Sie unserem Discord bei: [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE)
- Öffnen Sie ein Ticket im Kanal `#license-ticket`, um den PromptPay QR-Code zu erhalten
- Senden Sie den Überweisungsbeleg zusammen mit Ihrer **Machine ID**, um Ihren Lizenzschlüssel umgehend zu erhalten.

### Schritt 3: Aktivieren Sie Ihren Lizenzschlüssel
1. Nach Zahlungsüberprüfung erhalten Sie Ihren persönlichen Lizenzschlüssel.
2. Fügen Sie den Schlüssel in das Feld **Activate License Key** in QuantDeck ein und klicken Sie auf **Activate**.
3. Alle Funktionen werden sofort dauerhaft freigeschaltet – ohne Neuinstallation oder Datenverlust.

---

## 🖥️ Systemanforderungen

- **Betriebssystem:** Windows 10 / 11 (64-Bit)
- **Laufzeitumgebung:** Python **3.12** (x64). Der Starter überprüft automatisch, ob Python 3.12 installiert ist, und hilft bei Bedarf bei der Einrichtung.
- **Anzeige-Engine:** Google Chrome oder Microsoft Edge (QuantDeck läuft in einem performanten, nativ wirkenden Anwendungsfenster).
- **Hardware:** Mindestens 4 GB RAM (8 GB+ empfohlen für Multi-Chart-Grids, Machine-Learning-Modelle und hochfrequente Tick-Backtests).
- **Broker-Anbindungen (Optional):** Installiertes MetaTrader 5 Terminal, cTrader Open API-Entwicklerdaten, SimpleFX API-Zugangsdaten oder Settrade Open API-Konto.

---

## ⚙️ Installation & Schnellstart-Anleitung

### Methode 1 — Standalone Setup (`.exe`)
1. Laden Sie **`QuantDeck_Standalone_Setup.exe`** herunter.
2. Führen Sie die Installationsdatei aus.
   > *Hinweis:* Falls der Windows SmartScreen-Filter *"Der Computer wurde durch Windows geschützt"* anzeigt, klicken Sie auf **Weitere Informationen → Trotzdem ausführen**.
3. Wählen Sie das gewünschte Installationsverzeichnis und klicken Sie auf **Install & Launch**. Verknüpfungen auf dem Desktop und im Startmenü werden automatisch erstellt.
4. QuantDeck initialisiert das lokale Backend und öffnet das Arbeitsfenster innerhalb weniger Augenblicke.

### Methode 2 — Portable Distribution (`.zip`)
1. Laden Sie **`QuantDeck_Standalone_Release.zip`** herunter.
2. Entpacken Sie das Archiv in einen Ordner Ihrer Wahl (z. B. `C:\QuantDeck` oder auf ein externes Laufwerk). *Vermeiden Sie restriktive Verzeichnisse wie `C:\Programme`.*
3. Starten Sie **`QuantDeck.exe`** (oder führen Sie `run_chart.bat` aus).
4. Beim ersten Start werden die Abhängigkeiten aus `requirements.txt` überprüft und zwischengespeichert. Zukünftige Starts erfolgen sekundenschnell.

### 5-Minuten Ersteinrichtung
1. **Sprachauswahl:** Stellen Sie Ihre gewünschte Sprache über das Menü in der rechten Seitenleiste ein.
2. **Broker- & Datenquellen konfigurieren:** Öffnen Sie **Source Settings** (obere Navigationsleiste):
   - **Yahoo Finance:** Sofort und ohne Registrierung kostenlos nutzbar.
   - **MetaTrader 5:** Starten Sie Ihr MT5-Terminal und melden Sie sich an; QuantDeck verbindet sich automatisch über lokale IPC.
   - **cTrader:** Geben Sie Client-ID, Secret und Token von [https://openapi.ctrader.com/](https://openapi.ctrader.com/) ein. Klicken Sie auf **🔄 Load Linked Accounts**, um Ihr Konto anhand der gewohnten Login-Nummer auszuwählen.
   - **SimpleFX / Binance / Polygon / SET:** Geben Sie Ihre Anmeldedaten ein und testen Sie die Verbindung mit **Test Connection**.
3. **Live-Trading aktivieren (Sicherheitsfunktion):** Setzen Sie das Häkchen bei **⚡ Enable Live Trading** unter dem gewünschten Broker, um echte Orders freizuschalten (standardmäßig deaktiviert, um versehentliche Ausführungen zu verhindern).
4. **Toolbox nutzen:** Überwachen Sie offene Positionen, schwebende Orders, Trade-Historie, Ausführungs-Audit-Logs und Kontomargen.

### QuantDeck beenden
Schließen Sie einfach das Arbeitsfenster, oder führen Sie jederzeit **`Kill_QuantDeck.exe`** aus, um alle Hintergrunddienste sauber zu beenden und Port 8765 sofort freizugeben.

---

## 📁 Verzeichnisstruktur der Distribution

```text
QuantDeck/
├── QuantDeck.exe              # ▶ Haupt-Windows-Starter (Doppelklick zum Starten)
├── Kill_QuantDeck.exe         # ■ Prozess-Beender (stoppt alle Hintergrundaufgaben sauber)
├── run_chart.bat              # Konsolenbasierter Starter
├── kill_all_quantdeck.bat     # Konsolenbasierter Prozess-Cleaner
├── run.py                     # Workstation-Bootstrapper & Port-8765-Manager
├── requirements.txt           # Python-Abhängigkeitsdefinitionen
├── python_version.txt         # Angabe der empfohlenen Python-Version (3.12)
├── SHA256SUMS.txt             # Kryptografisches Prüfsummen-Manifest (über 150 Dateien)
│
├── backend/                   # FastAPI REST/WebSocket-Server & native Cython-Engines
│   ├── main.pyc               #   Zentraler Einstiegspunkt der Anwendung
│   ├── backtest/              #   Vektorisierter Backtester & Optuna-Optimierer (.pyd / .pyc)
│   ├── data_sources/          #   Konnektoren für MT5, cTrader, SimpleFX, SET, Yahoo, Binance...
│   ├── execution/             #   Multi-Broker Order-Router & Handelsregel-Engine
│   ├── strategies/            #   Strategieregister und Ausführungs-Worker
│   └── *.pyd                  #   Kompilierte Hochgeschwindigkeitsmodule (Formeln, Lizenz)
│
├── connection/                # Broker-Client-Adapter (MT5, cTrader, SimpleFX, Settrade)
├── frontend/dist/             # Vorkompilierte, optimierte High-Speed-Chart-Benutzeroberfläche
│
├── config/
│   ├── app_config.json        # ✏️ Lokale Zugangsdaten & Einstellungen (niemals veröffentlichen)
│   └── logo_*.ico / *.png     # Marken-Grafikressourcen
│
├── custom_indicators/         # ✏️ Eigene Indikatoren (.ts / .js / .py) & ML-Modelle
│   ├── template.ts            #   Vorlage für Indikatorenentwicklung
│   └── *.joblib               #   Vortrainierte HMM-Marktregime-Modelle
│
├── custom_strategies/         # ✏️ Eigene quantitative Strategien (.py / .pyc)
│   └── template_strategy.py   #   Vorlage für Strategieentwicklung
│
├── user_data/                 # ✏️ Arbeitsbereiche, Chart-Vorlagen, Watchlisten, Zeichnungen
├── logs/                      # Backtest-Berichte (HTML, CSV, JSON) & Live-Bot-Logs
├── data_db/                   # Lokale Datenbanken (SET-Aktien- & Derivate-Fundamentaldaten)
├── docs/                      # Dokumentationen & Anleitungen
├── scripts/                   # Nützliche Automatisierungsskripte
└── utils/                     # Shortcut-Ersteller, DB-Synchronisierer & Token-Utilities
```

> 💡 **Schutz Ihrer Daten:** Ordner mit der Kennzeichnung **✏️** enthalten Ihre persönlichen Vorlagen, Watchlisten, Chartzeichnungen, Anmeldedaten und Strategie-Algorithmen. Sichern Sie diese Verzeichnisse vor jedem Update.

---

## ⌨️ Wichtige Tastenkombinationen & Bedienung

| Tastenkürzel / Aktion | Funktion |
| :--- | :--- |
| **`F5`** | **Schnell-Refresh / Reconnect:** Lädt die Oberfläche sofort neu, resynchronisiert die WebSocket-Datenströme und behebt eventuelle UI-Verzögerungen. |
| **`Ctrl + N`** | **Neues Workstation-Fenster:** Öffnet ein zusätzliches, unabhängiges QuantDeck-Fenster für Multi-Monitor-Setups. |
| **`Delete` / `Backspace`** | Ausgewählte Zeichnung oder Analysewerkzeug auf dem Chart löschen. |
| **`Esc`** | Aktiven Zeichenmodus abbrechen / Cursor auf Standardauswahl zurücksetzen. |
| **`Klick auf Toolbox-Zeile`** | Schaltet den aktiven Chart sofort auf das Symbol und den Broker der gewählten Position um. |
| **`SL / TP-Linie im Chart ziehen`** | Stop-Loss- oder Take-Profit-Preise direkt interaktiv auf den Kerzen verschieben. |
| **`Klick auf '×' der Chartlinie`** | Aktive Stop-Loss- oder Take-Profit-Order sofort löschen oder zurücksetzen. |

---

## 🛠️ Schnelle Fehlerbehebung & Problemlösungen

> [!TIP]
> **Reagiert die Oberfläche träge oder stockt die Kursversorgung?**  
> Drücken Sie einfach jederzeit **`F5`**. Dadurch wird der aktive WebSocket-Datenstrom neu synchronisiert, alle offenen Positionen werden direkt vom Broker neu eingelesen und die Oberfläche wird wiederhergestellt, ohne die Python-Hintergrunddienste neu starten zu müssen.

| Problem | Lösung |
| :--- | :--- |
| **Verzögerte Oberfläche / Stockende Kurse** | Drücken Sie **`F5`**, um die Seite neu zu laden und den Live-WebSocket-Kursfeed neu zu verbinden. |
| **Multi-Monitor-Trading** | Drücken Sie **`Ctrl + N`**, um ein weiteres Fenster zu öffnen, und ziehen Sie es auf Ihren zweiten Monitor. |
| **Fenster öffnet sich beim Start nicht** | Prüfen Sie, ob Chrome oder Edge installiert ist, oder öffnen Sie `http://127.0.0.1:8765` direkt in einem beliebigen Browser. |
| **Meldung "Port 8765 already in use"** | Führen Sie **`Kill_QuantDeck.exe`** per Doppelklick aus, um verbliebene Prozesse zu beenden, und starten Sie erneut. |
| **MT5 zeigt Status *Disconnected*** | Stellen Sie sicher, dass das MetaTrader 5-Terminal geöffnet, eingeloggt und **Algo-Trading** aktiviert ist. |
| **cTrader-Authentifizierungsfehler** | Zugriffstoken laufen regelmäßig ab. Klicken Sie in den Source Settings auf **🔄 Load Linked Accounts** oder fügen Sie ein frisches Token aus dem cTrader Open API-Portal ein. |
| **Order wird vom Broker abgelehnt** | Prüfen Sie, ob **⚡ Enable Live Trading** für diesen Broker aktiviert ist und ob Ihr Konto über ausreichend freie Margin verfügt. |

---

## ⚠️ Wichtige Risikohinweise & Sicherheit

- **Finanzrisiko:** Der Handel mit Devisen (Forex), CFDs, Kryptowährungen und Derivaten birgt ein hohes Verlustrisiko. Testen Sie quantitative Handelsstrategien stets gründlich auf einem Demokonto, bevor Sie echtes Kapital einsetzen. QuantDeck ist ein technisches Analyse- und Ausführungswerkzeug und stellt keine Anlageberatung dar.
- **Sicherheit Ihrer Zugangsdaten:** Sämtliche API-Schlüssel und Kontodaten werden ausschließlich lokal in der Datei `config/app_config.json` gespeichert. Veröffentlichen oder teilen Sie diese Datei unter keinen Umständen.
- **Windows-Firewall:** Bitte gewähren Sie QuantDeck beim ersten Start Zugriff auf private/lokale Netzwerke in der Windows-Firewall, damit das Frontend mit dem lokalen Server unter `127.0.0.1` kommunizieren kann.

---

## 💬 Offizielle Community & Entwickler-Support

Tauschen Sie sich mit anderen quantitativen Tradern aus, sehen Sie Video-Tutorials zu Handelsalgorithmen und erhalten Sie schnellen Support:

- 💬 **Discord-Community:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(Live-Diskussionen, Indikator-Skripte & Hilfestellungen)*
- 📺 **YouTube-Kanal:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(Praxis-Tutorials, Bot-Architekturen & Feature-Guides)*
- 🐦 **X (ehemals Twitter):** [@theoris](https://x.com/theoris) *(Release-News & quantitative Marktanalysen)*
- ☕ **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(Projektunterstützung & Lizenz-Upgrades)*
- 🐙 **GitHub-Repository:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(Releases, Quellcode & Fehlerberichte)*

---

**Erfolgreiches Trading! 📈**  
Wenn QuantDeck Ihren quantitativen Handelsalltag bereichert, unterstützen Sie das Projekt gerne mit einem Stern (⭐ Star) auf GitHub und teilen Sie Ihr Feedback in den [GitHub Issues](https://github.com/theoris/quantdeck/issues).

