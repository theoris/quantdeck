# QuantDeck v2.0 â€” Tráº¡m LÃ m Viá»‡c PhÃ¢n TÃ­ch Ká»¹ Thuáº­t Äa SÃ n Chuáº©n Tá»• Chá»©c

> **Má»™t tráº¡m lÃ m viá»‡c (workstation) duy nháº¥t trÃªn mÃ¡y tÃ­nh dÃ nh cho phÃ¢n tÃ­ch biá»ƒu Ä‘á»“, kiá»ƒm thá»­ chiáº¿n lÆ°á»£c (backtesting) vÃ  tá»± Ä‘á»™ng khá»›p lá»‡nh.** Há»— trá»£ Forex, VÃ ng, Tiá»n mÃ£ hÃ³a, Chá»‰ sá»‘, Cá»• phiáº¿u Má»¹ vÃ  TTCK ThÃ¡i Lan SET/TFEX.  
> Káº¿t ná»‘i Ä‘á»“ng thá»i **MT5, cTrader vÃ  SimpleFX**. Váº½ biá»ƒu Ä‘á»“ vá»›i hÆ¡n 70 cÃ´ng cá»¥ chuáº©n tá»• chá»©c, backtest trá»±c quan vá»›i thuáº­t toÃ¡n tá»‘i Æ°u hÃ³a tham sá»‘ Optuna, váº­n hÃ nh bot tá»± Ä‘á»™ng 24/7 vÃ  quáº£n lÃ½ danh má»¥c toÃ n diá»‡n tá»« Execution Toolbox táº­p trung.

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

> ðŸŒ **Äá»c tÃ i liá»‡u báº±ng ngÃ´n ngá»¯ cá»§a báº¡n:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) â€¢ [à¹„à¸—à¸¢](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) â€¢ [ä¸­æ–‡](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) â€¢ [æ—¥æœ¬èªž](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) â€¢ [í•œêµ­ì–´](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) â€¢ [Tiáº¿ng Viá»‡t](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) â€¢ [EspaÃ±ol](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) â€¢ [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) â€¢ [Ø§Ù„Ø¹Ø±Ø¨ÙŠØ©](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## ðŸš€ VÃ¬ sao nÃªn chá»n QuantDeck?

| | TÃ­nh nÄƒng vÆ°á»£t trá»™i | Lá»£i Ã­ch thiáº¿t thá»±c cho Trader |
| :---: | :--- | :--- |
| âš¡ | **Giao dá»‹ch Ä‘a sÃ n Ä‘á»“ng thá»i** | Váº­n hÃ nh **MetaTrader 5**, **cTrader Open API** vÃ  **SimpleFX** song song trÃªn má»™t mÃ n hÃ¬nh. Má»—i Ã´ biá»ƒu Ä‘á»“ duy trÃ¬ káº¿t ná»‘i sÃ n riÃªng biá»‡t, loáº¡i bá» hoÃ n toÃ n nguy cÆ¡ nháº§m lá»‡nh giá»¯a cÃ¡c sÃ n. |
| ðŸ“ˆ | **Tráº¡m phÃ¢n tÃ­ch biá»ƒu Ä‘á»“ chuyÃªn nghiá»‡p** | Bá»‘ cá»¥c lÆ°á»›i linh hoáº¡t (1Ã—1, 2Ã—1, 2Ã—2, 3Ã—1, 4Ã—1) Ä‘á»“ng bá»™ tÃ¢m ngáº¯m & khung thá»i gian, cÃ¹ng **hÆ¡n 70 cÃ´ng cá»¥ váº½ ká»¹ thuáº­t** (Trendline, KÃªnh giÃ¡, Pitchfork, VÃ¹ng trÃ²n Gann, Fibonacci, SÃ³ng Elliott, Harmonic, ThÆ°á»›c Ä‘o vá»‹ tháº¿). |
| ðŸ“Š | **CÃ´ng cá»¥ Khá»‘i lÆ°á»£ng & Order Flow** | **Anchored VWAP** tÃ­ch há»£p dáº£i Ä‘á»™ lá»‡ch chuáº©n (Â±1Ïƒ, Â±2Ïƒ). **Fixed Range** vÃ  **Anchored Volume Profile** tá»± Ä‘á»™ng Ä‘á»‹nh vá»‹ POC vÃ  VÃ¹ng giÃ¡ trá»‹ 70% (VAH/VAL). |
| ðŸŽ¯ | **HUD Ä‘áº·t lá»‡nh trá»±c tiáº¿p trÃªn biá»ƒu Ä‘á»“** | Báº£ng HUD BUY/SELL 1-click, lá»‡nh chá» Limit/Stop, vÃ  cÃ¡c Ä‘Æ°á»ng SL/TP kÃ©o tháº£ trá»±c quan trÃªn biá»ƒu Ä‘á»“ kÃ¨m nÃºt `Ã—` há»§y nhanh vÃ  hiá»ƒn thá»‹ P/L tháº£ ná»•i theo thá»i gian thá»±c. |
| ðŸ§° | **Quáº£n lÃ½ lá»‡nh nÃ¢ng cao** | **Dá»i SL tá»«ng bÆ°á»›c (Stepped Trailing SL)** (cÆ¡ cháº¿ dá»i hÃ²a vá»‘n Ä‘a táº§ng cÃ³ báº£o vá»‡ chá»‘ng giÃ£n Spread sÃ n), **Chá»‘t lá»i tá»«ng pháº§n Ä‘a má»¥c tiÃªu (Multi-Target Scale-Out)**, Ä‘Ã³ng má»™t pháº§n khá»‘i lÆ°á»£ng vÃ  1-click ÄÃ³ng toÃ n bá»™ lá»‡nh (Close All). |
| ðŸ’° | **Äá»“ng bá»™ tham sá»‘ kÃ½ quá»¹ thá»±c tá»« sÃ n** | Sá»‘ dÆ° (Balance), TÃ i sáº£n rÃ²ng (Equity), Tiá»n kÃ½ quá»¹ (Margin), Tiá»n kÃ½ quá»¹ kháº£ dá»¥ng (Free Margin) vÃ  Má»©c kÃ½ quá»¹ Ä‘Æ°á»£c tÃ­nh toÃ¡n chuáº©n xÃ¡c tá»« sÃ n (bao gá»“m `usedMargin` gá»‘c vÃ  Ä‘Ã²n báº©y tÃ i khoáº£n cTrader). |
| ðŸ§ª | **Backtest siÃªu tá»‘c & Tá»‘i Æ°u hÃ³a Optuna** | Backtest Ä‘a nÄƒm theo phÆ°Æ¡ng phÃ¡p vector hÃ³a trá»±c tiáº¿p trÃªn biá»ƒu Ä‘á»“ vá»›i Ä‘iá»ƒm vÃ o/ra lá»‡nh, Ä‘Æ°á»ng cong vá»‘n (Equity Curve), bÃ¡o cÃ¡o chuyÃªn sÃ¢u chuáº©n MT5, vÃ  **tá»‘i Æ°u hÃ³a tham sá»‘ tá»± Ä‘á»™ng Optuna** (xuáº¥t bÃ¡o cÃ¡o HTML, CSV, JSON). |
| ðŸ¤– | **Äá»™ng cÆ¡ Bot tá»± Ä‘á»™ng 24/7** | Khá»Ÿi cháº¡y cÃ¡c bot giao dá»‹ch tá»± Ä‘á»™ng dÆ°á»›i dáº¡ng tiáº¿n trÃ¬nh ná»n Ä‘á»™c láº­p vá»›i báº£ng Ä‘iá»u khiá»ƒn riÃªng, giÃ¡m sÃ¡t táº­p trung táº¡i tab **Bot Fleet**. |
| ðŸ§  | **TÃ­ch há»£p Machine Learning & AI Copilot** | MÃ´ hÃ¬nh phÃ¢n loáº¡i tráº¡ng thÃ¡i thá»‹ trÆ°á»ng HMM, dá»± bÃ¡o biáº¿n Ä‘á»™ng GARCH, phÃ¢n cá»¥m hÃ nh vi giÃ¡ K-Means, phÃ¡t hiá»‡n Ä‘iá»ƒm báº¥t thÆ°á»ng Isolation Forest vÃ  trá»£ lÃ½ AI phÃ¢n tÃ­ch biá»ƒu Ä‘á»“ thá»‹ giÃ¡c. |
| ðŸŒ | **9 Cá»•ng káº¿t ná»‘i dá»¯ liá»‡u & SÃ n giao dá»‹ch** | MT5 Desktop IPC, cTrader Open API, SimpleFX API, SET/TFEX (Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData vÃ  lÆ°u trá»¯ dá»¯ liá»‡u tick cá»¥c bá»™. |
| ðŸŒ | **Báº£n Ä‘á»‹a hÃ³a 9 ngÃ´n ngá»¯ toÃ n diá»‡n** | Tiáº¿ng Anh, Tiáº¿ng ThÃ¡i, Tiáº¿ng Trung, Tiáº¿ng Nháº­t, Tiáº¿ng HÃ n, Tiáº¿ng Viá»‡t, Tiáº¿ng TÃ¢y Ban Nha, Tiáº¿ng Äá»©c vÃ  Tiáº¿ng áº¢ Ráº­p (RTL). |
| ðŸª¶ | **SiÃªu nháº¹ & Hiá»‡u suáº¥t tá»‘i Ä‘a** | Dung lÆ°á»£ng táº£i vá» chá»‰ ~4 MB. Chá»‰ bÃ¡o tÃ¹y chá»‰nh Ä‘Æ°á»£c biÃªn dá»‹ch sáºµn, cÃ¡c Ä‘á»™ng cÆ¡ tÃ­nh toÃ¡n cÃ´ng thá»©c táº§n suáº¥t cao Ä‘Æ°á»£c dá»‹ch sang mÃ£ mÃ¡y x64 C/C++ (`.pyd`) nguyÃªn báº£n. |
| ðŸ”’ | **Báº£o máº­t cá»¥c bá»™ & Äá»™c láº­p hoÃ n toÃ n** | Cháº¡y an toÃ n táº¡i mÃ¡y tÃ­nh cÃ¡ nhÃ¢n á»Ÿ Ä‘á»‹a chá»‰ `127.0.0.1:8765`. KhÃ³a API vÃ  tÃ i khoáº£n giao dá»‹ch náº±m tuyá»‡t Ä‘á»‘i trong tá»‡p ná»™i bá»™ `config/app_config.json`, khÃ´ng gá»­i lÃªn mÃ¡y chá»§ bÃªn ngoÃ i. |

---

## ðŸ“¦ Táº£i vá» â€” Chá»n phiÃªn báº£n phÃ¹ há»£p

| TÃªn tá»‡p phÃ¡t hÃ nh | Dung lÆ°á»£ng | MÃ´ táº£ & Khuyáº¿n nghá»‹ |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **Khuyáº¿n nghá»‹ cho háº§u háº¿t ngÆ°á»i dÃ¹ng.** Bá»™ cÃ i Ä‘áº·t vÃ  khá»Ÿi cháº¡y Windows tá»± Ä‘á»™ng. Tá»± Ä‘á»™ng giáº£i nÃ©n, táº¡o phÃ­m táº¯t trÃªn mÃ n hÃ¬nh vÃ  má»Ÿ QuantDeck chá»‰ vá»›i 1 cÃº nháº¥p. |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **Báº£n Portable (KhÃ´ng cáº§n cÃ i Ä‘áº·t).** Giáº£i nÃ©n vÃ o báº¥t ká»³ thÆ° má»¥c nÃ o (ká»ƒ cáº£ USB) vÃ  cháº¡y ngay mÃ  khÃ´ng cáº§n quyá»n quáº£n trá»‹ há»‡ thá»‘ng. |
| **`SHA256SUMS.txt`** | **~10 KB** | **Báº£n kiá»ƒm tra tÃ­nh toÃ n váº¹n.** Chá»¯ kÃ½ mÃ£ hÃ³a SHA-256 Ä‘áº§y Ä‘á»§ cho tá»«ng tá»‡p trong báº£n phÃ¡t hÃ nh. |

### ðŸ” XÃ¡c minh tÃ­nh toÃ n váº¹n cá»§a tá»‡p (SHA-256)

```text
EF168A8AB97D0B73668D6C090FA94BA9929F8BF0E1BF91428EA5342431059D4F  QuantDeck_Standalone_Release.zip
734FD4780E0AA9434D666A963FA1295E01FB245D0F0F56FE1C3E144995F2487F  QuantDeck_Standalone_Setup.exe
```

CÃ¡ch kiá»ƒm tra mÃ£ bÄƒm SHA-256 báº±ng Windows PowerShell:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## ðŸ’Ž CÃ¡c gÃ³i Giáº¥y phÃ©p (License Tiers)

QuantDeck Ä‘Æ°á»£c xÃ¢y dá»±ng theo kiáº¿n trÃºc phÃ¢n táº§ng Ä‘Ã¡p á»©ng linh hoáº¡t cho nhÃ  giao dá»‹ch cÃ¡ nhÃ¢n, nhÃ  phÃ¢n tÃ­ch Ä‘á»‹nh lÆ°á»£ng vÃ  quá»¹ prop trader:

```
[ GÃ³i Miá»…n phÃ­ ] â”€â”€â”€â”€â”€â”€â”€â”€â–º [ DÃ¹ng thá»­ 14 ngÃ y ] â”€â”€â”€â”€â”€â”€â”€â”€â–º [ GÃ³i Pro ] â”€â”€â”€â”€â”€â”€â”€â”€â–º [ GÃ³i Premium ]
PhÃ¢n tÃ­ch biá»ƒu Ä‘á»“ cÆ¡ báº£n    Má»Ÿ khÃ³a toÃ n bá»™ tÃ­nh nÄƒng      Giao dá»‹ch Live +         Äá»™i tÃ u Bot 24/7 +
Yahoo / MT5 / Dá»¯ liá»‡u tick  Thá»­ nghiá»‡m má»i chá»‰ bÃ¡o & lá»‡nh   Backtest & Optuna        KÃªnh há»— trá»£ tÃ¹y biáº¿n riÃªng
```

| TÃ­nh nÄƒng & Pháº¡m vi há»— trá»£ | GÃ³i Miá»…n phÃ­ | DÃ¹ng thá»­ 14 ngÃ y | GÃ³i Pro ðŸ’Ž | GÃ³i Premium ðŸ‘‘ |
| :--- | :---: | :---: | :---: | :---: |
| **Biá»ƒu Ä‘á»“ cÆ¡ báº£n & Nguá»“n dá»¯ liá»‡u lÃµi** *(Yahoo, MT5, Tick ná»™i bá»™)* | âœ” | âœ” | âœ” | âœ” |
| **Nguá»“n dá»¯ liá»‡u má»Ÿ rá»™ng** *(cTrader, SimpleFX, SET, Binance, IBKR)* | ðŸ”’ | âœ” (14 NgÃ y) | âœ” | âœ” |
| **Chá»‰ bÃ¡o tÃ¹y chá»‰nh TypeScript & ML** *(Footprint, HTF MA, Regime)* | ðŸ”’ | âœ” (14 NgÃ y) | âœ” | âœ” |
| **Giao dá»‹ch trÃªn biá»ƒu Ä‘á»“ & Khá»›p lá»‡nh 1-Click** | ðŸ”’ | âœ” (14 NgÃ y) | âœ” | âœ” |
| **Execution Toolbox** *(Quáº£n lÃ½ vá»‹ tháº¿, lá»‡nh chá», Dá»i SL, Chá»‘t lá»i)* | ðŸ”’ | âœ” (14 NgÃ y) | âœ” | âœ” |
| **Há»‡ thá»‘ng Backtest trá»±c quan & BÃ¡o cÃ¡o chuáº©n MT5** | ðŸ”’ | ðŸ”’ | âœ” | âœ” |
| **AI Copilot Studio** *(Prompt Lab & PhÃ¢n tÃ­ch thá»‹ giÃ¡c)* | ðŸ”’ | ðŸ”’ | âœ” | âœ” |
| **Äá»™ng cÆ¡ Bot giao dá»‹ch tá»± Ä‘á»™ng 24/7** | ðŸ”’ | ðŸ”’ | ðŸ”’ | **âœ” Trá»n Ä‘á»i** |
| **Há»— trá»£ ká»¹ thuáº­t Backend & PhÃ¡t triá»ƒn thuáº­t toÃ¡n riÃªng** | â€” | â€” | â€” | **âœ” 6 ThÃ¡ng** |

> â³ **KÃ­ch hoáº¡t dÃ¹ng thá»­ tá»©c thÃ¬:** Má»i lÆ°á»£t cÃ i Ä‘áº·t má»›i Ä‘á»u tá»± Ä‘á»™ng báº¯t Ä‘áº§u vá»›i **GÃ³i dÃ¹ng thá»­ 14 ngÃ y** má»Ÿ khÃ³a nguá»“n dá»¯ liá»‡u má»Ÿ rá»™ng, chá»‰ bÃ¡o nÃ¢ng cao vÃ  quyá»n Ä‘áº·t lá»‡nh trá»±c tiáº¿p.

---

## ðŸ’³ HÆ°á»›ng dáº«n NÃ¢ng cáº¥p & Mua Báº£n quyá»n (Pro & Premium)

NÃ¢ng cáº¥p lÃªn **Pro** hoáº·c **Premium** Ä‘á»ƒ má»Ÿ khÃ³a toÃ n bá»™ quyá»n giao dá»‹ch trá»±c tiáº¿p, backtesting trá»±c quan, váº­n hÃ nh bot tá»± Ä‘á»™ng vÃ  phÃ¢n tÃ­ch chuyÃªn sÃ¢u chuáº©n tá»• chá»©c.

### BÆ°á»›c 1: Sao chÃ©p Machine ID cá»§a báº¡n
1. Khá»Ÿi Ä‘á»™ng **QuantDeck Workstation**.
2. Nháº¥p vÃ o huy hiá»‡u **â³ Trial / License** á»Ÿ gÃ³c thanh tiÃªu Ä‘á» trÃªn cÃ¹ng (hoáº·c vÃ o Settings â†’ License).
3. Nháº¥p nÃºt **ðŸ“‹ Copy ID** Ä‘á»ƒ sao chÃ©p mÃ£ pháº§n cá»©ng **Machine ID** duy nháº¥t cá»§a báº¡n (vÃ­ dá»¥: `QD-A1B2C3D4E5F6`).

### BÆ°á»›c 2: Chá»n phÆ°Æ¡ng thá»©c thanh toÃ¡n

Chá»n kÃªnh thanh toÃ¡n thuáº­n tiá»‡n nháº¥t cho báº¡n:

#### Lá»±a chá»n A: Tháº» tÃ­n dá»¥ng quá»‘c táº¿ / Apple Pay / PayPal (Tá»©c thÃ¬)
- Truy cáº­p trang chÃ­nh thá»©c: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- Chá»n gÃ³i báº£n quyá»n **Pro** hoáº·c **Premium**.
- âš ï¸ **LÆ°u Ã½ quan trá»ng:** HÃ£y Ä‘iá»n **Machine ID** vÃ  email liÃªn há»‡ vÃ o pháº§n ghi chÃº (Note/Message) khi thanh toÃ¡n.

#### Lá»±a chá»n B: Tiá»n mÃ£ hÃ³a (USDT) â€” ToÃ n cáº§u & Báº£o máº­t
- **USDT (TRC-20):** `[Äang cáº­p nháº­t / Nháº­n Ä‘á»‹a chá»‰ vÃ­ qua Discord]`
- **USDT (BEP-20 / Arbitrum):** `[Äang cáº­p nháº­t / Nháº­n Ä‘á»‹a chá»‰ vÃ­ qua Discord]`
- Sau khi chuyá»ƒn tiá»n, vui lÃ²ng táº¡o ticket trong [**Cá»™ng Ä‘á»“ng Discord**](https://discord.gg/qRmMWjcTE) hoáº·c nháº¯n tin tá»›i [@theoris](https://x.com/theoris) kÃ¨m mÃ£ bÄƒm giao dá»‹ch (TXID) vÃ  Machine ID.

#### Lá»±a chá»n C: Thai QR PromptPay (DÃ nh riÃªng cho ngÆ°á»i dÃ¹ng ThÃ¡i Lan)
- Tham gia Discord táº¡i [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE)
- Má»Ÿ ticket táº¡i kÃªnh `#license-ticket` Ä‘á»ƒ nháº­n mÃ£ Thai QR PromptPay
- Gá»­i biÃªn lai chuyá»ƒn tiá»n cÃ¹ng **Machine ID** Ä‘á»ƒ nháº­n KhÃ³a báº£n quyá»n ngay láº­p tá»©c.

### BÆ°á»›c 3: KÃ­ch hoáº¡t KhÃ³a báº£n quyá»n
1. Sau khi giao dá»‹ch Ä‘Æ°á»£c xÃ¡c nháº­n, báº¡n sáº½ nháº­n Ä‘Æ°á»£c KhÃ³a báº£n quyá»n cÃ¡ nhÃ¢n.
2. DÃ¡n mÃ£ vÃ o Ã´ **Activate License Key** trong á»©ng dá»¥ng QuantDeck vÃ  nháº¥n **Activate**.
3. Táº¥t cáº£ tÃ­nh nÄƒng sáº½ Ä‘Æ°á»£c kÃ­ch hoáº¡t vÄ©nh viá»…n ngay láº­p tá»©c mÃ  khÃ´ng cáº§n cÃ i Ä‘áº·t láº¡i hay máº¥t dá»¯ liá»‡u Ä‘Ã£ lÆ°u.

---

## ðŸ–¥ï¸ YÃªu cáº§u Há»‡ thá»‘ng

- **Há»‡ Ä‘iá»u hÃ nh:** Windows 10 / 11 (64-bit)
- **MÃ´i trÆ°á»ng:** Python **3.12** (x64). TrÃ¬nh khá»Ÿi cháº¡y sáº½ tá»± Ä‘á»™ng kiá»ƒm tra vÃ  hÆ°á»›ng dáº«n thiáº¿t láº­p náº¿u mÃ¡y chÆ°a cÃ³.
- **TrÃ¬nh hiá»ƒn thá»‹ giao diá»‡n:** Google Chrome hoáº·c Microsoft Edge (QuantDeck cháº¡y mÆ°á»£t mÃ  dÆ°á»›i dáº¡ng cá»­a sá»• á»©ng dá»¥ng Ä‘á»™c láº­p).
- **Pháº§n cá»©ng:** RAM tá»‘i thiá»ƒu 4 GB (khuyáº¿n nghá»‹ 8 GB+ khi xem biá»ƒu Ä‘á»“ Ä‘a khung, cháº¡y mÃ´ hÃ¬nh ML vÃ  backtest dá»¯ liá»‡u tick táº§n suáº¥t cao).
- **Káº¿t ná»‘i SÃ n (TÃ¹y chá»n):** Pháº§n má»m MetaTrader 5 mÃ¡y tÃ­nh, tÃ i khoáº£n nhÃ  phÃ¡t triá»ƒn cTrader Open API, thÃ´ng tin API SimpleFX hoáº·c tÃ i khoáº£n Settrade Open API.

---

## âš™ï¸ HÆ°á»›ng dáº«n CÃ i Ä‘áº·t & Báº¯t Ä‘áº§u Nhanh

### CÃ¡ch 1 â€” TrÃ¬nh cÃ i Ä‘áº·t tá»± Ä‘á»™ng (`.exe`)
1. Táº£i vá» **`QuantDeck_Standalone_Setup.exe`**.
2. Cháº¡y tá»‡p tin vá»«a táº£i vá».
   > *LÆ°u Ã½:* Náº¿u Windows SmartScreen hiá»ƒn thá»‹ cáº£nh bÃ¡o *"Windows protected your PC"* (do tá»‡p phÃ¡t hÃ nh má»›i xuáº¥t báº£n), nháº¥p vÃ o **More info â†’ Run anyway**.
3. Chá»n thÆ° má»¥c cÃ i Ä‘áº·t mong muá»‘n vÃ  nháº¥p **Install & Launch**. Lá»‘i táº¯t sáº½ tá»± Ä‘á»™ng Ä‘Æ°á»£c táº¡o trÃªn Desktop vÃ  Start Menu.
4. QuantDeck sáº½ tá»± Ä‘á»™ng khá»Ÿi táº¡o backend ná»™i bá»™ vÃ  má»Ÿ cá»­a sá»• á»©ng dá»¥ng.

### CÃ¡ch 2 â€” Báº£n nÃ©n di Ä‘á»™ng Portable (`.zip`)
1. Táº£i vá» **`QuantDeck_Standalone_Release.zip`**.
2. Giáº£i nÃ©n vÃ o thÆ° má»¥c báº¡n muá»‘n (vÃ­ dá»¥: `C:\QuantDeck` hoáº·c á»• cá»©ng di Ä‘á»™ng). *TrÃ¡nh cÃ¡c thÆ° má»¥c bá»‹ giá»›i háº¡n quyá»n nhÆ° `C:\Program Files`.*
3. Nháº¥p Ä‘Ãºp vÃ o **`QuantDeck.exe`** (hoáº·c cháº¡y `run_chart.bat`).
4. Trong láº§n cháº¡y Ä‘áº§u tiÃªn, cÃ¡c thÆ° viá»‡n cáº§n thiáº¿t trong `requirements.txt` sáº½ Ä‘Æ°á»£c kiá»ƒm tra vÃ  lÆ°u bá»™ nhá»› Ä‘á»‡m. CÃ¡c láº§n khá»Ÿi Ä‘á»™ng tiáº¿p theo chá»‰ máº¥t vÃ i giÃ¢y.

### HÆ°á»›ng dáº«n Cáº¥u hÃ¬nh trong 5 phÃºt
1. **Chá»n ngÃ´n ngá»¯:** Äá»•i ngÃ´n ngá»¯ hiá»ƒn thá»‹ táº¡i thanh chá»n á»Ÿ thanh bÃªn pháº£i.
2. **Cáº¥u hÃ¬nh nguá»“n dá»¯ liá»‡u & SÃ n:** Má»Ÿ **Source Settings** (trÃªn thanh menu trÃªn cÃ¹ng):
   - **Yahoo Finance:** DÃ¹ng Ä‘Æ°á»£c ngay láº­p tá»©c, hoÃ n toÃ n miá»…n phÃ­ khÃ´ng cáº§n API key.
   - **MetaTrader 5:** Má»Ÿ vÃ  Ä‘Äƒng nháº­p vÃ o pháº§n má»m MT5 trÃªn mÃ¡y; QuantDeck sáº½ tá»± Ä‘á»™ng káº¿t ná»‘i qua giao tiáº¿p cá»¥c bá»™ IPC.
   - **cTrader:** Nháº­p Client ID, Secret vÃ  Token tá»« [https://openapi.ctrader.com/](https://openapi.ctrader.com/). Nháº¥p **ðŸ”„ Load Linked Accounts** Ä‘á»ƒ tá»± Ä‘á»™ng nháº­n diá»‡n vÃ  chá»n Ä‘Ãºng sá»‘ tÃ i khoáº£n Ä‘Äƒng nháº­p cá»§a báº¡n (User App Login).
   - **SimpleFX / Binance / Polygon / SET:** Nháº­p thÃ´ng tin káº¿t ná»‘i vÃ  nháº¥p **Test Connection**.
3. **KÃ­ch hoáº¡t Giao dá»‹ch Trá»±c tiáº¿p (CÃ³ cÆ¡ cháº¿ an toÃ n):** ÄÃ¡nh dáº¥u vÃ o Ã´ **âš¡ Enable Live Trading** dÆ°á»›i sÃ n tÆ°Æ¡ng á»©ng Ä‘á»ƒ cho phÃ©p gá»­i lá»‡nh (tÃ­nh nÄƒng nÃ y máº·c Ä‘á»‹nh táº¯t Ä‘á»ƒ trÃ¡nh Ä‘áº·t nháº§m lá»‡nh).
4. **Toolbox:** Kiá»ƒm tra vá»‹ tháº¿ má»Ÿ, lá»‡nh chá», lá»‹ch sá»­ giao dá»‹ch, nháº­t kÃ½ kiá»ƒm toÃ¡n lá»‡nh vÃ  má»©c kÃ½ quá»¹ tÃ i khoáº£n.

### CÃ¡ch táº¯t QuantDeck
Chá»‰ cáº§n Ä‘Ã³ng cá»­a sá»• lÃ m viá»‡c, hoáº·c cháº¡y tá»‡p **`Kill_QuantDeck.exe`** báº¥t ká»³ lÃºc nÃ o Ä‘á»ƒ Ä‘Ã³ng hoÃ n toÃ n cÃ¡c tiáº¿n trÃ¬nh ná»n vÃ  giáº£i phÃ³ng cá»•ng 8765 ngay láº­p tá»©c.

---

## ðŸ“ Cáº¥u trÃºc ThÆ° má»¥c Báº£n phÃ¡t hÃ nh

```text
QuantDeck/
â”œâ”€â”€ QuantDeck.exe              # â–¶ TrÃ¬nh khá»Ÿi cháº¡y Windows chÃ­nh (nháº¥p Ä‘Ãºp Ä‘á»ƒ má»Ÿ)
â”œâ”€â”€ Kill_QuantDeck.exe         # â–  TrÃ¬nh Ä‘Ã³ng á»©ng dá»¥ng (dá»«ng sáº¡ch sáº½ má»i tiáº¿n trÃ¬nh ná»n)
â”œâ”€â”€ run_chart.bat              # TrÃ¬nh khá»Ÿi cháº¡y qua giao diá»‡n dÃ²ng lá»‡nh (CMD)
â”œâ”€â”€ kill_all_quantdeck.bat     # Tá»‡p dá»n dáº¹p tiáº¿n trÃ¬nh qua dÃ²ng lá»‡nh
â”œâ”€â”€ run.py                     # Bá»™ náº¡p á»©ng dá»¥ng & giáº£i phÃ³ng cá»•ng 8765
â”œâ”€â”€ requirements.txt           # Danh sÃ¡ch thÆ° viá»‡n Python cáº§n thiáº¿t
â”œâ”€â”€ python_version.txt         # Äá»‹nh danh phiÃªn báº£n Python yÃªu cáº§u (3.12)
â”œâ”€â”€ SHA256SUMS.txt             # Báº£ng mÃ£ bÄƒm kiá»ƒm tra tÃ­nh toÃ n váº¹n (hÆ¡n 150 tá»‡p)
â”‚
â”œâ”€â”€ backend/                   # MÃ¡y chá»§ FastAPI REST/WebSocket & Ä‘á»™ng cÆ¡ Cython tá»‘c Ä‘á»™ cao
â”‚   â”œâ”€â”€ main.pyc               #   Äiá»ƒm khá»Ÿi Ä‘á»™ng á»©ng dá»¥ng chÃ­nh
â”‚   â”œâ”€â”€ backtest/              #   Äá»™ng cÆ¡ Backtest vector hÃ³a & Tá»‘i Æ°u hÃ³a Optuna (.pyd / .pyc)
â”‚   â”œâ”€â”€ data_sources/          #   Bá»™ káº¿t ná»‘i MT5, cTrader, SimpleFX, SET, Yahoo, Binance...
â”‚   â”œâ”€â”€ execution/             #   Bá»™ Ä‘á»‹nh tuyáº¿n lá»‡nh Ä‘a sÃ n & kiá»ƒm tra luáº­t giao dá»‹ch
â”‚   â”œâ”€â”€ strategies/            #   Kho lÆ°u trá»¯ chiáº¿n lÆ°á»£c & tiáº¿n trÃ¬nh thá»±c thi
â”‚   â””â”€â”€ *.pyd                  #   MÃ´-Ä‘un mÃ£ mÃ¡y siÃªu tá»‘c (tÃ­nh cÃ´ng thá»©c, xÃ¡c thá»±c báº£n quyá»n)
â”‚
â”œâ”€â”€ connection/                # Bá»™ Ä‘iá»u há»£p káº¿t ná»‘i sÃ n (MT5, cTrader, SimpleFX, Settrade)
â”œâ”€â”€ frontend/dist/             # Giao diá»‡n biá»ƒu Ä‘á»“ siÃªu tá»‘c Ä‘Ã£ Ä‘Æ°á»£c biÃªn dá»‹ch & tá»‘i Æ°u dung lÆ°á»£ng
â”‚
â”œâ”€â”€ config/
â”‚   â”œâ”€â”€ app_config.json        # âœï¸ ThÃ´ng tin Ä‘Äƒng nháº­p & cáº¥u hÃ¬nh sÃ n ná»™i bá»™ (tuyá»‡t Ä‘á»‘i khÃ´ng chia sáº»)
â”‚   â””â”€â”€ logo_*.ico / *.png     # Biá»ƒu tÆ°á»£ng vÃ  Ä‘á»“ há»a nháº­n diá»‡n
â”‚
â”œâ”€â”€ custom_indicators/         # âœï¸ Chá»‰ bÃ¡o tÃ¹y chá»‰nh cá»§a ngÆ°á»i dÃ¹ng (.ts / .js / .py) & mÃ´ hÃ¬nh ML
â”‚   â”œâ”€â”€ template.ts            #   Máº«u khá»Ÿi Ä‘áº§u phÃ¡t triá»ƒn chá»‰ bÃ¡o
â”‚   â””â”€â”€ *.joblib               #   MÃ´ hÃ¬nh tráº¡ng thÃ¡i thá»‹ trÆ°á»ng HMM Ä‘Æ°á»£c huáº¥n luyá»‡n sáºµn
â”‚
â”œâ”€â”€ custom_strategies/         # âœï¸ Chiáº¿n lÆ°á»£c giao dá»‹ch Ä‘á»‹nh lÆ°á»£ng tÃ¹y chá»‰nh (.py / .pyc)
â”‚   â””â”€â”€ template_strategy.py   #   Máº«u khá»Ÿi Ä‘áº§u phÃ¡t triá»ƒn chiáº¿n lÆ°á»£c
â”‚
â”œâ”€â”€ user_data/                 # âœï¸ KhÃ´ng gian lÃ m viá»‡c, máº«u biá»ƒu Ä‘á»“, danh sÃ¡ch theo dÃµi, hÃ¬nh váº½
â”œâ”€â”€ logs/                      # BÃ¡o cÃ¡o backtest (HTML, CSV, JSON) & nháº­t kÃ½ váº­n hÃ nh bot live
â”œâ”€â”€ data_db/                   # CÆ¡ sá»Ÿ dá»¯ liá»‡u cá»¥c bá»™ (chá»‰ sá»‘ cÆ¡ báº£n cá»• phiáº¿u & phÃ¡i sinh SET)
â”œâ”€â”€ docs/                      # TÃ i liá»‡u hÆ°á»›ng dáº«n sá»­ dá»¥ng & tham kháº£o
â”œâ”€â”€ scripts/                   # Ká»‹ch báº£n tá»± Ä‘á»™ng hÃ³a tiá»‡n Ã­ch
â””â”€â”€ utils/                     # CÃ´ng cá»¥ táº¡o phÃ­m táº¯t, Ä‘á»“ng bá»™ database & xá»­ lÃ½ token
```

> ðŸ’¡ **Báº£o vá»‡ Dá»¯ liá»‡u CÃ¡ nhÃ¢n:** CÃ¡c thÆ° má»¥c cÃ³ kÃ½ hiá»‡u **âœï¸** chá»©a cÃ¡c máº«u cÃ¡ nhÃ¢n, danh sÃ¡ch theo dÃµi, nÃ©t váº½ biá»ƒu Ä‘á»“, thÃ´ng tin Ä‘Äƒng nháº­p vÃ  chiáº¿n lÆ°á»£c cá»§a riÃªng báº¡n. LuÃ´n sao lÆ°u cÃ¡c thÆ° má»¥c nÃ y trÆ°á»›c khi cáº­p nháº­t phiÃªn báº£n má»›i.

---

## âŒ¨ï¸ PhÃ­m táº¯t & Thao tÃ¡c Thiáº¿t yáº¿u

| PhÃ­m táº¯t / Thao tÃ¡c | Chá»©c nÄƒng chi tiáº¿t |
| :--- | :--- |
| **`F5`** | **LÃ m má»›i nhanh / Káº¿t ná»‘i láº¡i:** Táº£i láº¡i giao diá»‡n ngay láº­p tá»©c, Ä‘á»“ng bá»™ láº¡i luá»“ng WebSocket vÃ  loáº¡i bá» hiá»‡n tÆ°á»£ng giáº­t lag náº¿u cÃ³ sá»± cá»‘ táº¡m thá»i. |
| **`Ctrl + N`** | **Má»Ÿ Cá»­a sá»• Má»›i:** Má»Ÿ thÃªm má»™t cá»­a sá»• QuantDeck Ä‘á»™c láº­p phá»¥c vá»¥ cho thiáº¿t láº­p nhiá»u mÃ n hÃ¬nh mÃ¡y tÃ­nh. |
| **`Delete` / `Backspace`** | XÃ³a hÃ¬nh váº½ hoáº·c cÃ´ng cá»¥ phÃ¢n tÃ­ch Ä‘ang Ä‘Æ°á»£c chá»n trÃªn biá»ƒu Ä‘á»“. |
| **`Esc`** | Há»§y cháº¿ Ä‘á»™ váº½ Ä‘ang kÃ­ch hoáº¡t / ÄÆ°a con trá» chuá»™t vá» tráº¡ng thÃ¡i chá»n máº·c Ä‘á»‹nh. |
| **`Nháº¥p vÃ o hÃ ng trong Toolbox`** | Tá»± Ä‘á»™ng chuyá»ƒn biá»ƒu Ä‘á»“ hiá»‡n táº¡i Ä‘áº¿n MÃ£ sáº£n pháº©m vÃ  SÃ n cá»§a vá»‹ tháº¿ Ä‘Ã³ ngay tá»©c kháº¯c. |
| **`KÃ©o Ä‘Æ°á»ng SL / TP trÃªn biá»ƒu Ä‘á»“`** | Äiá»u chá»‰nh trá»±c tiáº¿p má»©c giÃ¡ Cáº¯t lá»— hoáº·c Chá»‘t lá»i ngay trÃªn náº¿n giÃ¡. |
| **`Nháº¥p nÃºt 'Ã—' trÃªn Ä‘Æ°á»ng giÃ¡`** | Há»§y hoáº·c xÃ³a nhanh lá»‡nh Cáº¯t lá»— / Chá»‘t lá»i Ä‘ang Ä‘áº·t. |

---

## ðŸ› ï¸ HÆ°á»›ng dáº«n Kháº¯c phá»¥c Sá»± cá»‘ Nhanh

> [!TIP]
> **Gáº·p tÃ¬nh tráº¡ng Ä‘Æ¡ hÃ¬nh hoáº·c máº¥t káº¿t ná»‘i táº¡m thá»i?**  
> Chá»‰ cáº§n nháº¥n **`F5`** báº¥t cá»© lÃºc nÃ o. Há»‡ thá»‘ng sáº½ Ä‘á»“ng bá»™ láº¡i luá»“ng dá»¯ liá»‡u WebSocket, Ä‘á»c láº¡i toÃ n bá»™ vá»‹ tháº¿ tá»« sÃ n vÃ  khÃ´i phá»¥c giao diá»‡n mÃ  khÃ´ng lÃ m giÃ¡n Ä‘oáº¡n cÃ¡c tiáº¿n trÃ¬nh Python cháº¡y ná»n.

| Váº¥n Ä‘á» | HÆ°á»›ng xá»­ lÃ½ |
| :--- | :--- |
| **Giao diá»‡n pháº£n há»“i cháº­m / GiÃ¡ Ä‘á»©ng** | Nháº¥n **`F5`** Ä‘á»ƒ lÃ m má»›i trang vÃ  kÃ­ch hoáº¡t láº¡i luá»“ng dá»¯ liá»‡u trá»±c tiáº¿p tá»« WebSocket. |
| **Giao dá»‹ch nhiá»u mÃ n hÃ¬nh** | Nháº¥n **`Ctrl + N`** Ä‘á»ƒ má»Ÿ cá»­a sá»• má»›i rá»“i kÃ©o sang mÃ n hÃ¬nh phá»¥ cá»§a báº¡n. |
| **KhÃ´ng má»Ÿ cá»­a sá»• khi khá»Ÿi cháº¡y** | Kiá»ƒm tra xem Chrome hoáº·c Edge Ä‘Ã£ Ä‘Æ°á»£c cÃ i Ä‘áº·t chÆ°a, hoáº·c truy cáº­p thá»§ cÃ´ng `http://127.0.0.1:8765` trÃªn báº¥t ká»³ trÃ¬nh duyá»‡t nÃ o. |
| **BÃ¡o lá»—i "Port 8765 already in use"** | Nháº¥p Ä‘Ãºp vÃ o **`Kill_QuantDeck.exe`** Ä‘á»ƒ táº¯t cÃ¡c tiáº¿n trÃ¬nh cÃ²n sÃ³t láº¡i, sau Ä‘Ã³ khá»Ÿi cháº¡y láº¡i. |
| **MT5 bÃ¡o tráº¡ng thÃ¡i *Disconnected*** | Äáº£m báº£o pháº§n má»m MetaTrader 5 Ä‘ang má»Ÿ, Ä‘Ã£ Ä‘Äƒng nháº­p tÃ i khoáº£n vÃ  Ä‘Ã£ báº­t nÃºt **Algo Trading**. |
| **Lá»—i xÃ¡c thá»±c cTrader** | Token truy cáº­p sáº½ háº¿t háº¡n theo thá»i gian. Nháº¥p **ðŸ”„ Load Linked Accounts** trong Source Settings Ä‘á»ƒ kiá»ƒm tra hoáº·c dÃ¡n token má»›i tá»« trang cTrader Open API. |
| **Lá»‡nh bá»‹ sÃ n tá»« chá»‘i** | Äáº£m báº£o báº¡n Ä‘Ã£ tÃ­ch chá»n **âš¡ Enable Live Trading** cho sÃ n Ä‘Ã³ vÃ  kiá»ƒm tra xem tÃ i khoáº£n cÃ³ Ä‘á»§ kÃ½ quá»¹ kháº£ dá»¥ng (free margin) hay khÃ´ng. |

---

## âš ï¸ TuyÃªn bá»‘ Tá»« chá»‘i TrÃ¡ch nhiá»‡m & An toÃ n

- **Rá»§i ro TÃ i chÃ­nh:** Giao dá»‹ch Ngoáº¡i há»‘i (Forex), CFD, Tiá»n mÃ£ hÃ³a vÃ  Chá»©ng khoÃ¡n phÃ¡i sinh tiá»m áº©n má»©c Ä‘á»™ rá»§i ro vá»‘n Ä‘Ã¡ng ká»ƒ. LuÃ´n kiá»ƒm nghiá»‡m chiáº¿n lÆ°á»£c ká»¹ lÆ°á»¡ng trÃªn tÃ i khoáº£n Demo trÆ°á»›c khi giao dá»‹ch tiá»n tháº­t. QuantDeck lÃ  ná»n táº£ng cÃ´ng cá»¥ há»— trá»£ giao dá»‹ch, khÃ´ng cung cáº¥p lá»i khuyÃªn tÃ i chÃ­nh hay Ä‘áº§u tÆ°.
- **Báº£o máº­t ThÃ´ng tin ÄÄƒng nháº­p:** ToÃ n bá»™ khÃ³a API vÃ  sá»‘ tÃ i khoáº£n chá»‰ Ä‘Æ°á»£c lÆ°u cá»¥c bá»™ trong tá»‡p `config/app_config.json` trÃªn mÃ¡y tÃ­nh cá»§a báº¡n. Tuyá»‡t Ä‘á»‘i khÃ´ng chia sáº» hoáº·c táº£i tá»‡p nÃ y lÃªn máº¡ng cÃ´ng cá»™ng.
- **Quyá»n TÆ°á»ng lá»­a Windows:** Khi khá»Ÿi cháº¡y láº§n Ä‘áº§u, hÃ£y cáº¥p quyá»n truy cáº­p qua Windows Firewall cho máº¡ng riÃªng tÆ° (Private network) Ä‘á»ƒ giao diá»‡n cÃ³ thá»ƒ giao tiáº¿p vá»›i mÃ¡y chá»§ ná»™i bá»™ táº¡i `127.0.0.1`.

---

## ðŸ’¬ Cá»™ng Ä‘á»“ng ChÃ­nh thá»©c & KÃªnh Há»— trá»£

Giao lÆ°u cÃ¹ng cá»™ng Ä‘á»“ng cÃ¡c nhÃ  giao dá»‹ch Ä‘á»‹nh lÆ°á»£ng, theo dÃµi cÃ¡c bÃ i hÆ°á»›ng dáº«n xÃ¢y dá»±ng thuáº­t toÃ¡n vÃ  nháº­n há»— trá»£ ká»¹ thuáº­t nhanh tá»« Ä‘á»™i ngÅ© phÃ¡t triá»ƒn:

- ðŸ’¬ **Cá»™ng Ä‘á»“ng Discord:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(Tháº£o luáº­n trá»±c tiáº¿p, chia sáº» chá»‰ bÃ¡o tÃ¹y chá»‰nh & há»— trá»£ ká»¹ thuáº­t)*
- ðŸ“º **KÃªnh YouTube:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(Video hÆ°á»›ng dáº«n thá»±c hÃ nh, kiáº¿n trÃºc bot & giáº£i thÃ­ch tÃ­nh nÄƒng)*
- ðŸ¦ **X (Twitter):** [@theoris](https://x.com/theoris) *(ThÃ´ng bÃ¡o báº£n phÃ¡t hÃ nh má»›i & thÃ´ng tin thá»‹ trÆ°á»ng Ä‘á»‹nh lÆ°á»£ng)*
- â˜• **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(á»¦ng há»™ dá»± Ã¡n & nÃ¢ng cáº¥p báº£n quyá»n)*
- ðŸ™ **Kho mÃ£ nguá»“n GitHub:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(Táº£i báº£n phÃ¡t hÃ nh, Ä‘Ã³ng gÃ³p mÃ£ nguá»“n & bÃ¡o lá»—i)*

---

**ChÃºc báº¡n giao dá»‹ch thÃ nh cÃ´ng vÃ  hiá»‡u quáº£! ðŸ“ˆ**  
Náº¿u QuantDeck giÃºp nÃ¢ng cao tráº£i nghiá»‡m giao dá»‹ch Ä‘á»‹nh lÆ°á»£ng cá»§a báº¡n, hÃ£y á»§ng há»™ dá»± Ã¡n báº±ng cÃ¡ch gáº¯n dáº¥u sao (â­ Star) cho kho lÆ°u trá»¯ vÃ  gá»­i pháº£n há»“i táº¡i [GitHub Issues](https://github.com/theoris/quantdeck/issues).

