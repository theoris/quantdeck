# QuantDeck v2.1.9 — Trạm Làm Việc Phân Tích Kỹ Thuật Đa Sàn Chuẩn Tổ Chức

> **Một trạm làm việc (workstation) duy nhất trên máy tính dành cho phân tích biểu đồ, kiểm thử chiến lược (backtesting) và tự động khớp lệnh.** Hỗ trợ Forex, Vàng, Tiền mã hóa, Chỉ số, Cổ phiếu Mỹ và TTCK Thái Lan SET/TFEX.  
> Kết nối đồng thời **MT5, cTrader và SimpleFX**. Vẽ biểu đồ với hơn 70 công cụ chuẩn tổ chức, backtest trực quan với thuật toán tối ưu hóa tham số Optuna, vận hành bot tự động 24/7 và quản lý danh mục toàn diện từ Execution Toolbox tập trung.

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

> 🌍 **Đọc tài liệu bằng ngôn ngữ của bạn:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## 🚀 Vì sao nên chọn QuantDeck?

| | Tính năng vượt trội | Lợi ích thiết thực cho Trader |
| :---: | :--- | :--- |
| ⚡ | **Giao dịch đa sàn đồng thời** | Vận hành **MetaTrader 5**, **cTrader Open API** và **SimpleFX** song song trên một màn hình. Mỗi ô biểu đồ duy trì kết nối sàn riêng biệt, loại bỏ hoàn toàn nguy cơ nhầm lệnh giữa các sàn. |
| 📈 | **Trạm phân tích biểu đồ chuyên nghiệp** | Bố cục lưới linh hoạt (1×1, 2×1, 2×2, 3×1, 4×1) đồng bộ tâm ngắm & khung thời gian, cùng **hơn 70 công cụ vẽ kỹ thuật** (Trendline, Kênh giá, Pitchfork, Vùng tròn Gann, Fibonacci, Sóng Elliott, Harmonic, Thước đo vị thế). |
| 📊 | **Công cụ Khối lượng & Order Flow** | **Anchored VWAP** tích hợp dải độ lệch chuẩn (±1σ, ±2σ). **Fixed Range** và **Anchored Volume Profile** tự động định vị POC và Vùng giá trị 70% (VAH/VAL). |
| 🎯 | **HUD đặt lệnh trực tiếp trên biểu đồ** | Bảng HUD BUY/SELL 1-click, lệnh chờ Limit/Stop, và các đường SL/TP kéo thả trực quan trên biểu đồ kèm nút `×` hủy nhanh và hiển thị P/L thả nổi theo thời gian thực. |
| 🧰 | **Quản lý lệnh nâng cao** | **Dời SL từng bước (Stepped Trailing SL)** (cơ chế dời hòa vốn đa tầng có bảo vệ chống giãn Spread sàn), **Chốt lời từng phần đa mục tiêu (Multi-Target Scale-Out)**, đóng một phần khối lượng và 1-click Đóng toàn bộ lệnh (Close All). |
| 💰 | **Đồng bộ tham số ký quỹ thực từ sàn** | Số dư (Balance), Tài sản ròng (Equity), Tiền ký quỹ (Margin), Tiền ký quỹ khả dụng (Free Margin) và Mức ký quỹ được tính toán chuẩn xác từ sàn (bao gồm `usedMargin` gốc và đòn bẩy tài khoản cTrader). |
| 🧪 | **Backtest siêu tốc & Tối ưu hóa Optuna** | Backtest đa năm theo phương pháp vector hóa trực tiếp trên biểu đồ với điểm vào/ra lệnh, đường cong vốn (Equity Curve), báo cáo chuyên sâu chuẩn MT5, và **tối ưu hóa tham số tự động Optuna** (xuất báo cáo HTML, CSV, JSON). |
| 🤖 | **Động cơ Bot tự động 24/7** | Khởi chạy các bot giao dịch tự động dưới dạng tiến trình nền độc lập với bảng điều khiển riêng, giám sát tập trung tại tab **Bot Fleet**. |
| 🧠 | **Tích hợp Machine Learning & AI Copilot** | Mô hình phân loại trạng thái thị trường HMM, dự báo biến động GARCH, phân cụm hành vi giá K-Means, phát hiện điểm bất thường Isolation Forest và trợ lý AI phân tích biểu đồ thị giác. |
| 🌐 | **9 Cổng kết nối dữ liệu & Sàn giao dịch** | MT5 Desktop IPC, cTrader Open API, SimpleFX API, SET/TFEX (Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData và lưu trữ dữ liệu tick cục bộ. |
| 🌍 | **Bản địa hóa 9 ngôn ngữ toàn diện** | Tiếng Anh, Tiếng Thái, Tiếng Trung, Tiếng Nhật, Tiếng Hàn, Tiếng Việt, Tiếng Tây Ban Nha, Tiếng Đức và Tiếng Ả Rập (RTL). |
| 🪶 | **Siêu nhẹ & Hiệu suất tối đa** | Dung lượng tải về chỉ ~4 MB. Chỉ báo tùy chỉnh được biên dịch sẵn, các động cơ tính toán công thức tần suất cao được dịch sang mã máy x64 C/C++ (`.pyd`) nguyên bản. |
| 🔒 | **Bảo mật cục bộ & Độc lập hoàn toàn** | Chạy an toàn tại máy tính cá nhân ở địa chỉ `127.0.0.1:8765`. Khóa API và tài khoản giao dịch nằm tuyệt đối trong tệp nội bộ `config/app_config.json`, không gửi lên máy chủ bên ngoài. |

---

## 📦 Tải về — Chọn phiên bản phù hợp

| Tên tệp phát hành | Dung lượng | Mô tả & Khuyến nghị |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **Khuyến nghị cho hầu hết người dùng.** Bộ cài đặt và khởi chạy Windows tự động. Tự động giải nén, tạo phím tắt trên màn hình và mở QuantDeck chỉ với 1 cú nhấp. |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **Bản Portable (Không cần cài đặt).** Giải nén vào bất kỳ thư mục nào (kể cả USB) và chạy ngay mà không cần quyền quản trị hệ thống. |
| **`SHA256SUMS.txt`** | **~10 KB** | **Bản kiểm tra tính toàn vẹn.** Chữ ký mã hóa SHA-256 đầy đủ cho từng tệp trong bản phát hành. |

### 🔐 Xác minh tính toàn vẹn của tệp (SHA-256)

```text
90BD65A60E5DD7CDC786AA483880CCF3C594E08161ADB8B39336EA63B051A9B7  QuantDeck_Standalone_Release.zip
2437DF3166FF40B98473C46772F3D8EFBF26C1F4411BADEAC7D194D090C9ADCF  QuantDeck_Standalone_Setup.exe
```

Cách kiểm tra mã băm SHA-256 bằng Windows PowerShell:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 Các gói Giấy phép (License Tiers)

QuantDeck được xây dựng theo kiến trúc phân tầng đáp ứng linh hoạt cho nhà giao dịch cá nhân, nhà phân tích định lượng và quỹ prop trader:

```
[ Gói Miễn phí ] ────────► [ Dùng thử 14 ngày ] ────────► [ Gói Pro ] ────────► [ Gói Premium ]
Phân tích biểu đồ cơ bản    Mở khóa toàn bộ tính năng      Giao dịch Live +         Đội tàu Bot 24/7 +
Yahoo / MT5 / Dữ liệu tick  Thử nghiệm mọi chỉ báo & lệnh   Backtest & Optuna        Kênh hỗ trợ tùy biến riêng
```

| Tính năng & Phạm vi hỗ trợ | Gói Miễn phí | Dùng thử 14 ngày | Gói Pro 💎 | Gói Premium 👑 |
| :--- | :---: | :---: | :---: | :---: |
| **Biểu đồ cơ bản & Nguồn dữ liệu lõi** *(Yahoo, MT5, Tick nội bộ)* | ✔ | ✔ | ✔ | ✔ |
| **Nguồn dữ liệu mở rộng** *(cTrader, SimpleFX, SET, Binance, IBKR)* | 🔒 | ✔ (14 Ngày) | ✔ | ✔ |
| **Chỉ báo tùy chỉnh TypeScript & ML** *(Footprint, HTF MA, Regime)* | 🔒 | ✔ (14 Ngày) | ✔ | ✔ |
| **Giao dịch trên biểu đồ & Khớp lệnh 1-Click** | 🔒 | ✔ (14 Ngày) | ✔ | ✔ |
| **Execution Toolbox** *(Quản lý vị thế, lệnh chờ, Dời SL, Chốt lời)* | 🔒 | ✔ (14 Ngày) | ✔ | ✔ |
| **Hệ thống Backtest trực quan & Báo cáo chuẩn MT5** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot Studio** *(Prompt Lab & Phân tích thị giác)* | 🔒 | 🔒 | ✔ | ✔ |
| **Động cơ Bot giao dịch tự động 24/7** | 🔒 | 🔒 | 🔒 | **✔ Trọn đời** |
| **Hỗ trợ kỹ thuật Backend & Phát triển thuật toán riêng** | — | — | — | **✔ 6 Tháng** |

> ⏳ **Kích hoạt dùng thử tức thì:** Mọi lượt cài đặt mới đều tự động bắt đầu với **Gói dùng thử 14 ngày** mở khóa nguồn dữ liệu mở rộng, chỉ báo nâng cao và quyền đặt lệnh trực tiếp.

---

## 💳 Hướng dẫn Nâng cấp & Mua Bản quyền (Pro & Premium)

Nâng cấp lên **Pro** hoặc **Premium** để mở khóa toàn bộ quyền giao dịch trực tiếp, backtesting trực quan, vận hành bot tự động và phân tích chuyên sâu chuẩn tổ chức.

### Bước 1: Sao chép Machine ID của bạn
1. Khởi động **QuantDeck Workstation**.
2. Nhấp vào huy hiệu **⏳ Trial / License** ở góc thanh tiêu đề trên cùng (hoặc vào Settings → License).
3. Nhấp nút **📋 Copy ID** để sao chép mã phần cứng **Machine ID** duy nhất của bạn (ví dụ: `QD-A1B2C3D4E5F6`).

### Bước 2: Chọn phương thức thanh toán

Chọn kênh thanh toán thuận tiện nhất cho bạn:

#### Lựa chọn A: Thẻ tín dụng quốc tế / Apple Pay / PayPal (Tức thì)
- Truy cập trang chính thức: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- Chọn gói bản quyền **Pro** hoặc **Premium**.
- ⚠️ **Lưu ý quan trọng:** Hãy điền **Machine ID** và email liên hệ vào phần ghi chú (Note/Message) khi thanh toán.

#### Lựa chọn B: Tiền mã hóa (USDT) — Toàn cầu & Bảo mật
- **USDT (TRC-20):** `[Đang cập nhật / Nhận địa chỉ ví qua Discord]`
- **USDT (BEP-20 / Arbitrum):** `[Đang cập nhật / Nhận địa chỉ ví qua Discord]`
- Sau khi chuyển tiền, vui lòng tạo ticket trong [**Cộng đồng Discord**](https://discord.gg/qRmMWjcTE) hoặc nhắn tin tới [@theoris](https://x.com/theoris) kèm mã băm giao dịch (TXID) và Machine ID.

#### Lựa chọn C: Thai QR PromptPay (Dành riêng cho người dùng Thái Lan)
- Tham gia Discord tại [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE)
- Mở ticket tại kênh `#license-ticket` để nhận mã Thai QR PromptPay
- Gửi biên lai chuyển tiền cùng **Machine ID** để nhận Khóa bản quyền ngay lập tức.

### Bước 3: Kích hoạt Khóa bản quyền
1. Sau khi giao dịch được xác nhận, bạn sẽ nhận được Khóa bản quyền cá nhân.
2. Dán mã vào ô **Activate License Key** trong ứng dụng QuantDeck và nhấn **Activate**.
3. Tất cả tính năng sẽ được kích hoạt vĩnh viễn ngay lập tức mà không cần cài đặt lại hay mất dữ liệu đã lưu.

---

## 🖥️ Yêu cầu Hệ thống

- **Hệ điều hành:** Windows 10 / 11 (64-bit)
- **Môi trường:** Python **3.12** (x64). Trình khởi chạy sẽ tự động kiểm tra và hướng dẫn thiết lập nếu máy chưa có.
- **Trình hiển thị giao diện:** Google Chrome hoặc Microsoft Edge (QuantDeck chạy mượt mà dưới dạng cửa sổ ứng dụng độc lập).
- **Phần cứng:** RAM tối thiểu 4 GB (khuyến nghị 8 GB+ khi xem biểu đồ đa khung, chạy mô hình ML và backtest dữ liệu tick tần suất cao).
- **Kết nối Sàn (Tùy chọn):** Phần mềm MetaTrader 5 máy tính, tài khoản nhà phát triển cTrader Open API, thông tin API SimpleFX hoặc tài khoản Settrade Open API.

---

## ⚙️ Hướng dẫn Cài đặt & Bắt đầu Nhanh

### Cách 1 — Trình cài đặt tự động (`.exe`)
1. Tải về **`QuantDeck_Standalone_Setup.exe`**.
2. Chạy tệp tin vừa tải về.
   > *Lưu ý:* Nếu Windows SmartScreen hiển thị cảnh báo *"Windows protected your PC"* (do tệp phát hành mới xuất bản), nhấp vào **More info → Run anyway**.
3. Chọn thư mục cài đặt mong muốn và nhấp **Install & Launch**. Lối tắt sẽ tự động được tạo trên Desktop và Start Menu.
4. QuantDeck sẽ tự động khởi tạo backend nội bộ và mở cửa sổ ứng dụng.

### Cách 2 — Bản nén di động Portable (`.zip`)
1. Tải về **`QuantDeck_Standalone_Release.zip`**.
2. Giải nén vào thư mục bạn muốn (ví dụ: `C:\QuantDeck` hoặc ổ cứng di động). *Tránh các thư mục bị giới hạn quyền như `C:\Program Files`.*
3. Nhấp đúp vào **`QuantDeck.exe`** (hoặc chạy `run_chart.bat`).
4. Trong lần chạy đầu tiên, các thư viện cần thiết trong `requirements.txt` sẽ được kiểm tra và lưu bộ nhớ đệm. Các lần khởi động tiếp theo chỉ mất vài giây.

### Hướng dẫn Cấu hình trong 5 phút
1. **Chọn ngôn ngữ:** Đổi ngôn ngữ hiển thị tại thanh chọn ở thanh bên phải.
2. **Cấu hình nguồn dữ liệu & Sàn:** Mở **Source Settings** (trên thanh menu trên cùng):
   - **Yahoo Finance:** Dùng được ngay lập tức, hoàn toàn miễn phí không cần API key.
   - **MetaTrader 5:** Mở và đăng nhập vào phần mềm MT5 trên máy; QuantDeck sẽ tự động kết nối qua giao tiếp cục bộ IPC.
   - **cTrader:** Nhập Client ID, Secret và Token từ [https://openapi.ctrader.com/](https://openapi.ctrader.com/). Nhấp **🔄 Load Linked Accounts** để tự động nhận diện và chọn đúng số tài khoản đăng nhập của bạn (User App Login).
   - **SimpleFX / Binance / Polygon / SET:** Nhập thông tin kết nối và nhấp **Test Connection**.
3. **Kích hoạt Giao dịch Trực tiếp (Có cơ chế an toàn):** Đánh dấu vào ô **⚡ Enable Live Trading** dưới sàn tương ứng để cho phép gửi lệnh (tính năng này mặc định tắt để tránh đặt nhầm lệnh).
4. **Toolbox:** Kiểm tra vị thế mở, lệnh chờ, lịch sử giao dịch, nhật ký kiểm toán lệnh và mức ký quỹ tài khoản.

### Cách tắt QuantDeck
Chỉ cần đóng cửa sổ làm việc, hoặc chạy tệp **`Kill_QuantDeck.exe`** bất kỳ lúc nào để đóng hoàn toàn các tiến trình nền và giải phóng cổng 8765 ngay lập tức.

---

## 📁 Cấu trúc Thư mục Bản phát hành

```text
QuantDeck/
├── QuantDeck.exe              # ▶ Trình khởi chạy Windows chính (nhấp đúp để mở)
├── Kill_QuantDeck.exe         # ■ Trình đóng ứng dụng (dừng sạch sẽ mọi tiến trình nền)
├── run_chart.bat              # Trình khởi chạy qua giao diện dòng lệnh (CMD)
├── kill_all_quantdeck.bat     # Tệp dọn dẹp tiến trình qua dòng lệnh
├── run.py                     # Bộ nạp ứng dụng & giải phóng cổng 8765
├── requirements.txt           # Danh sách thư viện Python cần thiết
├── python_version.txt         # Định danh phiên bản Python yêu cầu (3.12)
├── SHA256SUMS.txt             # Bảng mã băm kiểm tra tính toàn vẹn (hơn 150 tệp)
│
├── backend/                   # Máy chủ FastAPI REST/WebSocket & động cơ Cython tốc độ cao
│   ├── main.pyc               #   Điểm khởi động ứng dụng chính
│   ├── backtest/              #   Động cơ Backtest vector hóa & Tối ưu hóa Optuna (.pyd / .pyc)
│   ├── data_sources/          #   Bộ kết nối MT5, cTrader, SimpleFX, SET, Yahoo, Binance...
│   ├── execution/             #   Bộ định tuyến lệnh đa sàn & kiểm tra luật giao dịch
│   ├── strategies/            #   Kho lưu trữ chiến lược & tiến trình thực thi
│   └── *.pyd                  #   Mô-đun mã máy siêu tốc (tính công thức, xác thực bản quyền)
│
├── connection/                # Bộ điều hợp kết nối sàn (MT5, cTrader, SimpleFX, Settrade)
├── frontend/dist/             # Giao diện biểu đồ siêu tốc đã được biên dịch & tối ưu dung lượng
│
├── config/
│   ├── app_config.json        # ✏️ Thông tin đăng nhập & cấu hình sàn nội bộ (tuyệt đối không chia sẻ)
│   └── logo_*.ico / *.png     # Biểu tượng và đồ họa nhận diện
│
├── custom_indicators/         # ✏️ Chỉ báo tùy chỉnh của người dùng (.ts / .js / .py) & mô hình ML
│   ├── template.ts            #   Mẫu khởi đầu phát triển chỉ báo
│   └── *.joblib               #   Mô hình trạng thái thị trường HMM được huấn luyện sẵn
│
├── custom_strategies/         # ✏️ Chiến lược giao dịch định lượng tùy chỉnh (.py / .pyc)
│   └── template_strategy.py   #   Mẫu khởi đầu phát triển chiến lược
│
├── user_data/                 # ✏️ Không gian làm việc, mẫu biểu đồ, danh sách theo dõi, hình vẽ
├── logs/                      # Báo cáo backtest (HTML, CSV, JSON) & nhật ký vận hành bot live
├── data_db/                   # Cơ sở dữ liệu cục bộ (chỉ số cơ bản cổ phiếu & phái sinh SET)
├── docs/                      # Tài liệu hướng dẫn sử dụng & tham khảo
├── scripts/                   # Kịch bản tự động hóa tiện ích
└── utils/                     # Công cụ tạo phím tắt, đồng bộ database & xử lý token
```

> 💡 **Bảo vệ Dữ liệu Cá nhân:** Các thư mục có ký hiệu **✏️** chứa các mẫu cá nhân, danh sách theo dõi, nét vẽ biểu đồ, thông tin đăng nhập và chiến lược của riêng bạn. Luôn sao lưu các thư mục này trước khi cập nhật phiên bản mới.

---

## ⌨️ Phím tắt & Thao tác Thiết yếu

| Phím tắt / Thao tác | Chức năng chi tiết |
| :--- | :--- |
| **`F5`** | **Làm mới nhanh / Kết nối lại:** Tải lại giao diện ngay lập tức, đồng bộ lại luồng WebSocket và loại bỏ hiện tượng giật lag nếu có sự cố tạm thời. |
| **`Ctrl + N`** | **Mở Cửa sổ Mới:** Mở thêm một cửa sổ QuantDeck độc lập phục vụ cho thiết lập nhiều màn hình máy tính. |
| **`Delete` / `Backspace`** | Xóa hình vẽ hoặc công cụ phân tích đang được chọn trên biểu đồ. |
| **`Esc`** | Hủy chế độ vẽ đang kích hoạt / Đưa con trỏ chuột về trạng thái chọn mặc định. |
| **`Nhấp vào hàng trong Toolbox`** | Tự động chuyển biểu đồ hiện tại đến Mã sản phẩm và Sàn của vị thế đó ngay tức khắc. |
| **`Kéo đường SL / TP trên biểu đồ`** | Điều chỉnh trực tiếp mức giá Cắt lỗ hoặc Chốt lời ngay trên nến giá. |
| **`Nhấp nút '×' trên đường giá`** | Hủy hoặc xóa nhanh lệnh Cắt lỗ / Chốt lời đang đặt. |

---

## 🛠️ Hướng dẫn Khắc phục Sự cố Nhanh

> [!TIP]
> **Gặp tình trạng đơ hình hoặc mất kết nối tạm thời?**  
> Chỉ cần nhấn **`F5`** bất cứ lúc nào. Hệ thống sẽ đồng bộ lại luồng dữ liệu WebSocket, đọc lại toàn bộ vị thế từ sàn và khôi phục giao diện mà không làm gián đoạn các tiến trình Python chạy nền.

| Vấn đề | Hướng xử lý |
| :--- | :--- |
| **Giao diện phản hồi chậm / Giá đứng** | Nhấn **`F5`** để làm mới trang và kích hoạt lại luồng dữ liệu trực tiếp từ WebSocket. |
| **Giao dịch nhiều màn hình** | Nhấn **`Ctrl + N`** để mở cửa sổ mới rồi kéo sang màn hình phụ của bạn. |
| **Không mở cửa sổ khi khởi chạy** | Kiểm tra xem Chrome hoặc Edge đã được cài đặt chưa, hoặc truy cập thủ công `http://127.0.0.1:8765` trên bất kỳ trình duyệt nào. |
| **Báo lỗi "Port 8765 already in use"** | Nhấp đúp vào **`Kill_QuantDeck.exe`** để tắt các tiến trình còn sót lại, sau đó khởi chạy lại. |
| **MT5 báo trạng thái *Disconnected*** | Đảm bảo phần mềm MetaTrader 5 đang mở, đã đăng nhập tài khoản và đã bật nút **Algo Trading**. |
| **Lỗi xác thực cTrader** | Token truy cập sẽ hết hạn theo thời gian. Nhấp **🔄 Load Linked Accounts** trong Source Settings để kiểm tra hoặc dán token mới từ trang cTrader Open API. |
| **Lệnh bị sàn từ chối** | Đảm bảo bạn đã tích chọn **⚡ Enable Live Trading** cho sàn đó và kiểm tra xem tài khoản có đủ ký quỹ khả dụng (free margin) hay không. |

---

## ⚠️ Tuyên bố Từ chối Trách nhiệm & An toàn

- **Rủi ro Tài chính:** Giao dịch Ngoại hối (Forex), CFD, Tiền mã hóa và Chứng khoán phái sinh tiềm ẩn mức độ rủi ro vốn đáng kể. Luôn kiểm nghiệm chiến lược kỹ lưỡng trên tài khoản Demo trước khi giao dịch tiền thật. QuantDeck là nền tảng công cụ hỗ trợ giao dịch, không cung cấp lời khuyên tài chính hay đầu tư.
- **Bảo mật Thông tin Đăng nhập:** Toàn bộ khóa API và số tài khoản chỉ được lưu cục bộ trong tệp `config/app_config.json` trên máy tính của bạn. Tuyệt đối không chia sẻ hoặc tải tệp này lên mạng công cộng.
- **Quyền Tường lửa Windows:** Khi khởi chạy lần đầu, hãy cấp quyền truy cập qua Windows Firewall cho mạng riêng tư (Private network) để giao diện có thể giao tiếp với máy chủ nội bộ tại `127.0.0.1`.

---

## 💬 Cộng đồng Chính thức & Kênh Hỗ trợ

Giao lưu cùng cộng đồng các nhà giao dịch định lượng, theo dõi các bài hướng dẫn xây dựng thuật toán và nhận hỗ trợ kỹ thuật nhanh từ đội ngũ phát triển:

- 💬 **Cộng đồng Discord:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(Thảo luận trực tiếp, chia sẻ chỉ báo tùy chỉnh & hỗ trợ kỹ thuật)*
- 📺 **Kênh YouTube:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(Video hướng dẫn thực hành, kiến trúc bot & giải thích tính năng)*
- 🐦 **X (Twitter):** [@theoris](https://x.com/theoris) *(Thông báo bản phát hành mới & thông tin thị trường định lượng)*
- ☕ **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(Ủng hộ dự án & nâng cấp bản quyền)*
- 🐙 **Kho mã nguồn GitHub:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(Tải bản phát hành, đóng góp mã nguồn & báo lỗi)*

---

**Chúc bạn giao dịch thành công và hiệu quả! 📈**  
Nếu QuantDeck giúp nâng cao trải nghiệm giao dịch định lượng của bạn, hãy ủng hộ dự án bằng cách gắn dấu sao (⭐ Star) cho kho lưu trữ và gửi phản hồi tại [GitHub Issues](https://github.com/theoris/quantdeck/issues).

