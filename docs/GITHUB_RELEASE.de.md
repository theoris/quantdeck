# QuantDeck v2.0 â€” Institutionelle Charting- & Multi-Broker-Trading-Workstation

> **Eine einheitliche Desktop-Workstation fÃ¼r Chartanalyse, Backtesting und automatisierte OrderausfÃ¼hrung.** UnterstÃ¼tzt Forex, Gold, Krypto, Indizes, US-Aktien und den thailÃ¤ndischen Markt SET/TFEX.  
> Verbinden Sie **MetaTrader 5, cTrader und SimpleFX** gleichzeitig. Analysieren Sie Charts mit Ã¼ber 70 professionellen Zeichenwerkzeugen, fÃ¼hren Sie visuelle Backtests mit Optuna-Hyperparameter-Optimierung durch, betreiben Sie automatisierte 24/7-Bots und steuern Sie Ihr gesamtes Portfolio Ã¼ber die zentrale Execution Toolbox.

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

> ðŸŒ **Dokumentation in Ihrer Sprache lesen:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) â€¢ [à¹„à¸—à¸¢](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) â€¢ [ä¸­æ–‡](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) â€¢ [æ—¥æœ¬èªž](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) â€¢ [í•œêµ­ì–´](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) â€¢ [Tiáº¿ng Viá»‡t](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) â€¢ [EspaÃ±ol](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) â€¢ [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) â€¢ [Ø§Ù„Ø¹Ø±Ø¨ÙŠØ©](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## ðŸš€ Warum QuantDeck?

| | Funktion & Leistungsmerkmal | Praktischer Vorteil fÃ¼r Trader |
| :---: | :--- | :--- |
| âš¡ | **Gleichzeitiges Multi-Broker-Trading** | Betreiben Sie **MetaTrader 5**, **cTrader Open API** und **SimpleFX** parallel auf einem Bildschirm. Jeder Chart-Slot hÃ¤lt seine eigene isolierte Brokerverbindung, sodass Fehlordern ausgeschlossen sind. |
| ðŸ“ˆ | **Institutionelle Charting-Workstation** | Flexible Rasterlayouts (1Ã—1, 2Ã—1, 2Ã—2, 3Ã—1, 4Ã—1) mit synchronisiertem Fadenkreuz & Timeframe, plus **Ã¼ber 70 Zeichenwerkzeuge** (Trendlinien, KanÃ¤le, Pitchforks, Gann-Zirkelsektoren, Fibonacci, Elliott-Wellen, harmonische Muster und Positionslineale). |
| ðŸ“Š | **Volumen- & Orderflow-Tools** | **Anchored VWAP** mit StandardabweichungsbÃ¤ndern (Â±1Ïƒ, Â±2Ïƒ). **Fixed Range** und **Anchored Volume Profile** mit automatischer POC-Erkennung und 70% Value Area (VAH/VAL). |
| ðŸŽ¯ | **Chart-Trading HUD & Visuelle Orderlinien** | 1-Klick BUY/SELL HUD, Limit-/Stop-Pending-Orders sowie interaktiv auf dem Chart verschiebbare SL/TP-Linien mit SchnelllÃ¶sch-Taste `Ã—` und schwebender P/L-Echtzeitanzeige. |
| ðŸ§° | **Fortgeschrittenes Order-Management** | **Gestufter Trailing-Stop (Stepped Trailing SL)** (mehrstufiger Break-Even-Ratchet mit Spread-Schutz), **Multi-Target Scale-Out** (gestaffelte Gewinnmitnahme), TeilschlieÃŸungen und 1-Klick Gesamtpositions-SchlieÃŸung (Close All). |
| ðŸ’° | **Echte Broker-Margindaten** | Kontostand (Balance), Eigenkapital (Equity), Margin, freie Margin und Margin-Level werden exakt nach Broker-Parametern berechnet (einschlieÃŸlich nativer cTrader `usedMargin` und Kontohebel). |
| ðŸ§ª | **Vektorisierte Backtests & Optuna-Optimierung** | Ultraschnelles mehrjÃ¤hriges Backtesting direkt auf dem Chart mit Ein-/Ausstiegsmarkern, Equity-Kurven, detaillierten MT5-Metriken und **automatisierter Parameteroptimierung via Optuna** (Export als HTML, CSV, JSON). |
| ðŸ¤– | **Automatisierte 24/7 Live-Bot-Engine** | Starten Sie Trading-Bots als eigenstÃ¤ndige Hintergrundprozesse mit dedizierter KonsolenÃ¼berwachung, live Ã¼berwacht im Reiter **Bot Fleet**. |
| ðŸ§  | **Integriertes Machine Learning & AI Copilot** | Trainierte HMM-Marktregime-Klassifizierung, GARCH-VolatilitÃ¤tsprognose, K-Means-Clusteranalyse, Isolation-Forest-Anomalieerkennung und visueller KI-Copilot zur Chartanalyse. |
| ðŸŒ | **9 Daten- & Broker-Gateways** | MT5 Desktop IPC, cTrader Open API, SimpleFX API, SET/TFEX (Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData sowie lokale Tick-Archive. |
| ðŸŒ | **VollstÃ¤ndige Lokalisierung in 9 Sprachen** | Englisch, ThailÃ¤ndisch, Chinesisch, Japanisch, Koreanisch, Vietnamesisch, Spanisch, Deutsch und Arabisch (RTL). |
| ðŸª¶ | **Extrem leichtgewichtig & nativ schnell** | Download-GrÃ¶ÃŸe nur ca. 4 MB. Benutzerdefinierte Indikatoren sind vorkompiliert, und zeitkritische Formel-Engines sind in nativen x64 C/C++-Maschinencode (`.pyd`) kompiliert. |
| ðŸ”’ | **Lokale PrivatsphÃ¤re & vollstÃ¤ndige Autonomie** | LÃ¤uft vollkommen isoliert auf Ihrem PC unter `127.0.0.1:8765`. API-SchlÃ¼ssel und Kontodaten verbleiben ausschlieÃŸlich in Ihrer lokalen Datei `config/app_config.json`. |

---

## ðŸ“¦ Downloads â€” WÃ¤hlen Sie Ihre Edition

| Dateiname | DateigrÃ¶ÃŸe | Beschreibung & Empfohlene Nutzung |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **Empfohlen fÃ¼r die meisten Anwender.** All-in-One Windows-Installer & Starter. Entpackt Dateien, richtet VerknÃ¼pfungen ein und startet QuantDeck mit 1 Klick. |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **Portable Version.** In ein beliebiges Verzeichnis (auch USB-Sticks) entpacken und ohne Systeminstallation sofort starten. |
| **`SHA256SUMS.txt`** | **~10 KB** | **IntegritÃ¤ts-PrÃ¼fsummen-Manifest.** VollstÃ¤ndige kryptografische SHA-256-Signaturen fÃ¼r jede Datei des Releases. |

### ðŸ” Kryptografische Verifikation (SHA-256)

```text
EF168A8AB97D0B73668D6C090FA94BA9929F8BF0E1BF91428EA5342431059D4F  QuantDeck_Standalone_Release.zip
734FD4780E0AA9434D666A963FA1295E01FB245D0F0F56FE1C3E144995F2487F  QuantDeck_Standalone_Setup.exe
```

Zur ÃœberprÃ¼fung der Datei-IntegritÃ¤t in der Windows PowerShell:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## ðŸ’Ž Lizenzstufen der Plattform

QuantDeck bietet ein gestaffeltes Lizenzmodell fÃ¼r Retail-Trader, quantitative Analysten und Prop-Trading-Firmen:

```
[ Free-Stufe ] â”€â”€â”€â”€â”€â”€â”€â”€â–º [ 14-Tage-Hybrid-Test ] â”€â”€â”€â”€â”€â”€â”€â”€â–º [ Pro-Stufe ] â”€â”€â”€â”€â”€â”€â”€â”€â–º [ Premium-Stufe ]
Basis-Chartanalyse        Alle Funktionen Freigeschaltet   Echtes Trading +         24/7 Live-Bot-Flotte +
Yahoo / MT5 / Ticks       Indikatoren & Orders testen      Backtest & Optuna        Dedizierter Supportkanal
```

| Leistungsmerkmal | Free-Stufe | 14-Tage-Test | Pro-Stufe ðŸ’Ž | Premium-Stufe ðŸ‘‘ |
| :--- | :---: | :---: | :---: | :---: |
| **Basis-Charting & Kern-Datenquellen** *(Yahoo, MT5, Lokale Ticks)* | âœ” | âœ” | âœ” | âœ” |
| **Erweiterte Datenquellen** *(cTrader, SimpleFX, SET, Binance, IBKR)* | ðŸ”’ | âœ” (14 Tage) | âœ” | âœ” |
| **Custom TypeScript- & ML-Indikatoren** *(Footprint, HTF MA, Regime)* | ðŸ”’ | âœ” (14 Tage) | âœ” | âœ” |
| **Chart-Trading & 1-Klick-OrderausfÃ¼hrung** | ðŸ”’ | âœ” (14 Tage) | âœ” | âœ” |
| **Execution Toolbox** *(Positionen, Orders, Gestufter SL, Multi-TP)* | ðŸ”’ | âœ” (14 Tage) | âœ” | âœ” |
| **Visueller Strategie-Backtester & MT5-Berichte** | ðŸ”’ | ðŸ”’ | âœ” | âœ” |
| **AI Copilot Studio** *(Prompt Lab & Bildanalyse)* | ðŸ”’ | ðŸ”’ | âœ” | âœ” |
| **24/7 Automatisierte Live-Trading-Bot-Engine** | ðŸ”’ | ðŸ”’ | ðŸ”’ | **âœ” Lebenslang** |
| **Dedizierter Backend- & Custom-Algorithmen-Support** | â€” | â€” | â€” | **âœ” 6 Monate** |

> â³ **Sofortiger Testzeitraum:** Jede Erstinstallation startet automatisch mit einer **14-tÃ¤gigen Hybrid-Testphase**, die erweiterte Datenquellen, Profi-Indikatoren und manuelle Orderplatzierung freischaltet.

---

## ðŸ’³ Lizenz erwerben oder upgraden (Pro & Premium)

Mit dem Upgrade auf **Pro** oder **Premium** schalten Sie Live-Trading, visuelle Backtests, autonome Bot-Flotten und professionelle institutionelle Analysetools dauerhaft frei.

### Schritt 1: Kopieren Sie Ihre Machine ID
1. Ã–ffnen Sie die **QuantDeck Workstation**.
2. Klicken Sie auf das **â³ Trial / License-Badge** in der oberen Kopfzeile (oder Ã¶ffnen Sie Settings â†’ License).
3. Klicken Sie auf die SchaltflÃ¤che **ðŸ“‹ Copy ID**, um Ihre eindeutige Hardware-**Machine ID** (z. B. `QD-A1B2C3D4E5F6`) zu kopieren.

### Schritt 2: WÃ¤hlen Sie Ihre Zahlungsmethode

WÃ¤hlen Sie den fÃ¼r Sie passenden Zahlungskanal:

#### Option A: Internationale Kreditkarte / Apple Pay / PayPal (Sofort)
- Besuchen Sie unsere offizielle Plattform: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- WÃ¤hlen Sie das Paket **Pro** oder **Premium**.
- âš ï¸ **Wichtig:** Tragen Sie wÃ¤hrend des Bezahlvorgangs im Hinweisfeld (Note/Message) Ihre **Machine ID** und Kontakt-E-Mail-Adresse ein.

#### Option B: KryptowÃ¤hrung (USDT) â€” Global & Diskret
- **USDT (TRC-20):** `[Wird aktualisiert / Auf Anfrage im Discord-Ticket]`
- **USDT (BEP-20 / Arbitrum):** `[Wird aktualisiert / Auf Anfrage im Discord-Ticket]`
- Nach erfolgter Transaktion erÃ¶ffnen Sie bitte ein Ticket in unserer [**Discord-Community**](https://discord.gg/qRmMWjcTE) oder kontaktieren Sie [@theoris](https://x.com/theoris) mit dem Transaktions-Hash (TXID) und Ihrer Machine ID.

#### Option C: Thai QR PromptPay (FÃ¼r thailÃ¤ndische Nutzer)
- Treten Sie unserem Discord bei: [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE)
- Ã–ffnen Sie ein Ticket im Kanal `#license-ticket`, um den PromptPay QR-Code zu erhalten
- Senden Sie den Ãœberweisungsbeleg zusammen mit Ihrer **Machine ID**, um Ihren LizenzschlÃ¼ssel umgehend zu erhalten.

### Schritt 3: Aktivieren Sie Ihren LizenzschlÃ¼ssel
1. Nach ZahlungsÃ¼berprÃ¼fung erhalten Sie Ihren persÃ¶nlichen LizenzschlÃ¼ssel.
2. FÃ¼gen Sie den SchlÃ¼ssel in das Feld **Activate License Key** in QuantDeck ein und klicken Sie auf **Activate**.
3. Alle Funktionen werden sofort dauerhaft freigeschaltet â€“ ohne Neuinstallation oder Datenverlust.

---

## ðŸ–¥ï¸ Systemanforderungen

- **Betriebssystem:** Windows 10 / 11 (64-Bit)
- **Laufzeitumgebung:** Python **3.12** (x64). Der Starter Ã¼berprÃ¼ft automatisch, ob Python 3.12 installiert ist, und hilft bei Bedarf bei der Einrichtung.
- **Anzeige-Engine:** Google Chrome oder Microsoft Edge (QuantDeck lÃ¤uft in einem performanten, nativ wirkenden Anwendungsfenster).
- **Hardware:** Mindestens 4 GB RAM (8 GB+ empfohlen fÃ¼r Multi-Chart-Grids, Machine-Learning-Modelle und hochfrequente Tick-Backtests).
- **Broker-Anbindungen (Optional):** Installiertes MetaTrader 5 Terminal, cTrader Open API-Entwicklerdaten, SimpleFX API-Zugangsdaten oder Settrade Open API-Konto.

---

## âš™ï¸ Installation & Schnellstart-Anleitung

### Methode 1 â€” Standalone Setup (`.exe`)
1. Laden Sie **`QuantDeck_Standalone_Setup.exe`** herunter.
2. FÃ¼hren Sie die Installationsdatei aus.
   > *Hinweis:* Falls der Windows SmartScreen-Filter *"Der Computer wurde durch Windows geschÃ¼tzt"* anzeigt, klicken Sie auf **Weitere Informationen â†’ Trotzdem ausfÃ¼hren**.
3. WÃ¤hlen Sie das gewÃ¼nschte Installationsverzeichnis und klicken Sie auf **Install & Launch**. VerknÃ¼pfungen auf dem Desktop und im StartmenÃ¼ werden automatisch erstellt.
4. QuantDeck initialisiert das lokale Backend und Ã¶ffnet das Arbeitsfenster innerhalb weniger Augenblicke.

### Methode 2 â€” Portable Distribution (`.zip`)
1. Laden Sie **`QuantDeck_Standalone_Release.zip`** herunter.
2. Entpacken Sie das Archiv in einen Ordner Ihrer Wahl (z. B. `C:\QuantDeck` oder auf ein externes Laufwerk). *Vermeiden Sie restriktive Verzeichnisse wie `C:\Programme`.*
3. Starten Sie **`QuantDeck.exe`** (oder fÃ¼hren Sie `run_chart.bat` aus).
4. Beim ersten Start werden die AbhÃ¤ngigkeiten aus `requirements.txt` Ã¼berprÃ¼ft und zwischengespeichert. ZukÃ¼nftige Starts erfolgen sekundenschnell.

### 5-Minuten Ersteinrichtung
1. **Sprachauswahl:** Stellen Sie Ihre gewÃ¼nschte Sprache Ã¼ber das MenÃ¼ in der rechten Seitenleiste ein.
2. **Broker- & Datenquellen konfigurieren:** Ã–ffnen Sie **Source Settings** (obere Navigationsleiste):
   - **Yahoo Finance:** Sofort und ohne Registrierung kostenlos nutzbar.
   - **MetaTrader 5:** Starten Sie Ihr MT5-Terminal und melden Sie sich an; QuantDeck verbindet sich automatisch Ã¼ber lokale IPC.
   - **cTrader:** Geben Sie Client-ID, Secret und Token von [https://openapi.ctrader.com/](https://openapi.ctrader.com/) ein. Klicken Sie auf **ðŸ”„ Load Linked Accounts**, um Ihr Konto anhand der gewohnten Login-Nummer auszuwÃ¤hlen.
   - **SimpleFX / Binance / Polygon / SET:** Geben Sie Ihre Anmeldedaten ein und testen Sie die Verbindung mit **Test Connection**.
3. **Live-Trading aktivieren (Sicherheitsfunktion):** Setzen Sie das HÃ¤kchen bei **âš¡ Enable Live Trading** unter dem gewÃ¼nschten Broker, um echte Orders freizuschalten (standardmÃ¤ÃŸig deaktiviert, um versehentliche AusfÃ¼hrungen zu verhindern).
4. **Toolbox nutzen:** Ãœberwachen Sie offene Positionen, schwebende Orders, Trade-Historie, AusfÃ¼hrungs-Audit-Logs und Kontomargen.

### QuantDeck beenden
SchlieÃŸen Sie einfach das Arbeitsfenster, oder fÃ¼hren Sie jederzeit **`Kill_QuantDeck.exe`** aus, um alle Hintergrunddienste sauber zu beenden und Port 8765 sofort freizugeben.

---

## ðŸ“ Verzeichnisstruktur der Distribution

```text
QuantDeck/
â”œâ”€â”€ QuantDeck.exe              # â–¶ Haupt-Windows-Starter (Doppelklick zum Starten)
â”œâ”€â”€ Kill_QuantDeck.exe         # â–  Prozess-Beender (stoppt alle Hintergrundaufgaben sauber)
â”œâ”€â”€ run_chart.bat              # Konsolenbasierter Starter
â”œâ”€â”€ kill_all_quantdeck.bat     # Konsolenbasierter Prozess-Cleaner
â”œâ”€â”€ run.py                     # Workstation-Bootstrapper & Port-8765-Manager
â”œâ”€â”€ requirements.txt           # Python-AbhÃ¤ngigkeitsdefinitionen
â”œâ”€â”€ python_version.txt         # Angabe der empfohlenen Python-Version (3.12)
â”œâ”€â”€ SHA256SUMS.txt             # Kryptografisches PrÃ¼fsummen-Manifest (Ã¼ber 150 Dateien)
â”‚
â”œâ”€â”€ backend/                   # FastAPI REST/WebSocket-Server & native Cython-Engines
â”‚   â”œâ”€â”€ main.pyc               #   Zentraler Einstiegspunkt der Anwendung
â”‚   â”œâ”€â”€ backtest/              #   Vektorisierter Backtester & Optuna-Optimierer (.pyd / .pyc)
â”‚   â”œâ”€â”€ data_sources/          #   Konnektoren fÃ¼r MT5, cTrader, SimpleFX, SET, Yahoo, Binance...
â”‚   â”œâ”€â”€ execution/             #   Multi-Broker Order-Router & Handelsregel-Engine
â”‚   â”œâ”€â”€ strategies/            #   Strategieregister und AusfÃ¼hrungs-Worker
â”‚   â””â”€â”€ *.pyd                  #   Kompilierte Hochgeschwindigkeitsmodule (Formeln, Lizenz)
â”‚
â”œâ”€â”€ connection/                # Broker-Client-Adapter (MT5, cTrader, SimpleFX, Settrade)
â”œâ”€â”€ frontend/dist/             # Vorkompilierte, optimierte High-Speed-Chart-BenutzeroberflÃ¤che
â”‚
â”œâ”€â”€ config/
â”‚   â”œâ”€â”€ app_config.json        # âœï¸ Lokale Zugangsdaten & Einstellungen (niemals verÃ¶ffentlichen)
â”‚   â””â”€â”€ logo_*.ico / *.png     # Marken-Grafikressourcen
â”‚
â”œâ”€â”€ custom_indicators/         # âœï¸ Eigene Indikatoren (.ts / .js / .py) & ML-Modelle
â”‚   â”œâ”€â”€ template.ts            #   Vorlage fÃ¼r Indikatorenentwicklung
â”‚   â””â”€â”€ *.joblib               #   Vortrainierte HMM-Marktregime-Modelle
â”‚
â”œâ”€â”€ custom_strategies/         # âœï¸ Eigene quantitative Strategien (.py / .pyc)
â”‚   â””â”€â”€ template_strategy.py   #   Vorlage fÃ¼r Strategieentwicklung
â”‚
â”œâ”€â”€ user_data/                 # âœï¸ Arbeitsbereiche, Chart-Vorlagen, Watchlisten, Zeichnungen
â”œâ”€â”€ logs/                      # Backtest-Berichte (HTML, CSV, JSON) & Live-Bot-Logs
â”œâ”€â”€ data_db/                   # Lokale Datenbanken (SET-Aktien- & Derivate-Fundamentaldaten)
â”œâ”€â”€ docs/                      # Dokumentationen & Anleitungen
â”œâ”€â”€ scripts/                   # NÃ¼tzliche Automatisierungsskripte
â””â”€â”€ utils/                     # Shortcut-Ersteller, DB-Synchronisierer & Token-Utilities
```

> ðŸ’¡ **Schutz Ihrer Daten:** Ordner mit der Kennzeichnung **âœï¸** enthalten Ihre persÃ¶nlichen Vorlagen, Watchlisten, Chartzeichnungen, Anmeldedaten und Strategie-Algorithmen. Sichern Sie diese Verzeichnisse vor jedem Update.

---

## âŒ¨ï¸ Wichtige Tastenkombinationen & Bedienung

| TastenkÃ¼rzel / Aktion | Funktion |
| :--- | :--- |
| **`F5`** | **Schnell-Refresh / Reconnect:** LÃ¤dt die OberflÃ¤che sofort neu, resynchronisiert die WebSocket-DatenstrÃ¶me und behebt eventuelle UI-VerzÃ¶gerungen. |
| **`Ctrl + N`** | **Neues Workstation-Fenster:** Ã–ffnet ein zusÃ¤tzliches, unabhÃ¤ngiges QuantDeck-Fenster fÃ¼r Multi-Monitor-Setups. |
| **`Delete` / `Backspace`** | AusgewÃ¤hlte Zeichnung oder Analysewerkzeug auf dem Chart lÃ¶schen. |
| **`Esc`** | Aktiven Zeichenmodus abbrechen / Cursor auf Standardauswahl zurÃ¼cksetzen. |
| **`Klick auf Toolbox-Zeile`** | Schaltet den aktiven Chart sofort auf das Symbol und den Broker der gewÃ¤hlten Position um. |
| **`SL / TP-Linie im Chart ziehen`** | Stop-Loss- oder Take-Profit-Preise direkt interaktiv auf den Kerzen verschieben. |
| **`Klick auf 'Ã—' der Chartlinie`** | Aktive Stop-Loss- oder Take-Profit-Order sofort lÃ¶schen oder zurÃ¼cksetzen. |

---

## ðŸ› ï¸ Schnelle Fehlerbehebung & ProblemlÃ¶sungen

> [!TIP]
> **Reagiert die OberflÃ¤che trÃ¤ge oder stockt die Kursversorgung?**  
> DrÃ¼cken Sie einfach jederzeit **`F5`**. Dadurch wird der aktive WebSocket-Datenstrom neu synchronisiert, alle offenen Positionen werden direkt vom Broker neu eingelesen und die OberflÃ¤che wird wiederhergestellt, ohne die Python-Hintergrunddienste neu starten zu mÃ¼ssen.

| Problem | LÃ¶sung |
| :--- | :--- |
| **VerzÃ¶gerte OberflÃ¤che / Stockende Kurse** | DrÃ¼cken Sie **`F5`**, um die Seite neu zu laden und den Live-WebSocket-Kursfeed neu zu verbinden. |
| **Multi-Monitor-Trading** | DrÃ¼cken Sie **`Ctrl + N`**, um ein weiteres Fenster zu Ã¶ffnen, und ziehen Sie es auf Ihren zweiten Monitor. |
| **Fenster Ã¶ffnet sich beim Start nicht** | PrÃ¼fen Sie, ob Chrome oder Edge installiert ist, oder Ã¶ffnen Sie `http://127.0.0.1:8765` direkt in einem beliebigen Browser. |
| **Meldung "Port 8765 already in use"** | FÃ¼hren Sie **`Kill_QuantDeck.exe`** per Doppelklick aus, um verbliebene Prozesse zu beenden, und starten Sie erneut. |
| **MT5 zeigt Status *Disconnected*** | Stellen Sie sicher, dass das MetaTrader 5-Terminal geÃ¶ffnet, eingeloggt und **Algo-Trading** aktiviert ist. |
| **cTrader-Authentifizierungsfehler** | Zugriffstoken laufen regelmÃ¤ÃŸig ab. Klicken Sie in den Source Settings auf **ðŸ”„ Load Linked Accounts** oder fÃ¼gen Sie ein frisches Token aus dem cTrader Open API-Portal ein. |
| **Order wird vom Broker abgelehnt** | PrÃ¼fen Sie, ob **âš¡ Enable Live Trading** fÃ¼r diesen Broker aktiviert ist und ob Ihr Konto Ã¼ber ausreichend freie Margin verfÃ¼gt. |

---

## âš ï¸ Wichtige Risikohinweise & Sicherheit

- **Finanzrisiko:** Der Handel mit Devisen (Forex), CFDs, KryptowÃ¤hrungen und Derivaten birgt ein hohes Verlustrisiko. Testen Sie quantitative Handelsstrategien stets grÃ¼ndlich auf einem Demokonto, bevor Sie echtes Kapital einsetzen. QuantDeck ist ein technisches Analyse- und AusfÃ¼hrungswerkzeug und stellt keine Anlageberatung dar.
- **Sicherheit Ihrer Zugangsdaten:** SÃ¤mtliche API-SchlÃ¼ssel und Kontodaten werden ausschlieÃŸlich lokal in der Datei `config/app_config.json` gespeichert. VerÃ¶ffentlichen oder teilen Sie diese Datei unter keinen UmstÃ¤nden.
- **Windows-Firewall:** Bitte gewÃ¤hren Sie QuantDeck beim ersten Start Zugriff auf private/lokale Netzwerke in der Windows-Firewall, damit das Frontend mit dem lokalen Server unter `127.0.0.1` kommunizieren kann.

---

## ðŸ’¬ Offizielle Community & Entwickler-Support

Tauschen Sie sich mit anderen quantitativen Tradern aus, sehen Sie Video-Tutorials zu Handelsalgorithmen und erhalten Sie schnellen Support:

- ðŸ’¬ **Discord-Community:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(Live-Diskussionen, Indikator-Skripte & Hilfestellungen)*
- ðŸ“º **YouTube-Kanal:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(Praxis-Tutorials, Bot-Architekturen & Feature-Guides)*
- ðŸ¦ **X (ehemals Twitter):** [@theoris](https://x.com/theoris) *(Release-News & quantitative Marktanalysen)*
- â˜• **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(ProjektunterstÃ¼tzung & Lizenz-Upgrades)*
- ðŸ™ **GitHub-Repository:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(Releases, Quellcode & Fehlerberichte)*

---

**Erfolgreiches Trading! ðŸ“ˆ**  
Wenn QuantDeck Ihren quantitativen Handelsalltag bereichert, unterstÃ¼tzen Sie das Projekt gerne mit einem Stern (â­ Star) auf GitHub und teilen Sie Ihr Feedback in den [GitHub Issues](https://github.com/theoris/quantdeck/issues).

