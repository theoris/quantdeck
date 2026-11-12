# QuantDeck v2.0 — 기관급 차트 분석 및 다중 브로커 트레이딩 워크스테이션

> **차트 분석, 백테스팅, 자동 매매 실행을 하나의 데스크톱 워크스테이션에서.** 외환(Forex), 금(Gold), 암호화폐, 지수(Indices), 미국 주식 및 태국 SET/TFEX 지원.  
> **MetaTrader 5, cTrader, SimpleFX**를 동시에 연결하세요. 70개 이상의 기관급 분석 도구로 차트를 작도하고, Optuna 최적화를 통한 시각적 백테스팅을 실행하며, 24시간 실시간 봇을 가동하고 중앙 집중식 Execution Toolbox에서 포트폴리오를 완벽하게 관리하세요.

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

> 🌍 **원하는 언어로 문서 읽기:**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

<!-- Workstation Preview Screenshot / Demo GIF -->
<!-- ![QuantDeck Multi-Broker Workstation](https://raw.githubusercontent.com/theoris/quantdeck/main/docs/assets/quantdeck_preview.png) -->

---

## 🚀 왜 QuantDeck인가요?

| | 핵심 기능 | 트레이더를 위한 실질적 이점 |
| :---: | :--- | :--- |
| ⚡ | **동시 다중 브로커 트레이딩** | 단일 화면에서 **MetaTrader 5**, **cTrader Open API**, **SimpleFX**를 동시에 운영합니다. 각 차트 슬롯이 독립적인 브로커 연결을 유지하여 주문 충돌이 전혀 발생하지 않습니다. |
| 📈 | **기관급 차트 분석 워크스테이션** | 다중 차트 분할 레이아웃(1×1, 2×1, 2×2, 3×1, 4×1), 십자선 및 타임프레임 동기화, **70개 이상의 드로잉 도구**(추세선, 채널, 피치포크, 서클 섹터, 간(Gann), 피보나치, 엘리어트 파동, 하모닉 패턴, 포지션 자) 제공. |
| 📊 | **볼륨 및 오더플로우(Order Flow) 도구** | 표준편차 밴드(±1σ, ±2σ)를 지원하는 **앵커드 VWAP (Anchored VWAP)**. 자동 POC 및 70% Value Area (VAH/VAL)를 산출하는 **고정 범위(Fixed Range) 및 앵커드 볼륨 프로파일**. |
| 🎯 | **차트 직접 매매 HUD & 시각화 라인** | 원클릭 BUY/SELL 헤드업 디스플레이(HUD), Limit/Stop 지정가 주문, 차트 위에서 드래그 가능한 SL/TP 선, 빠른 `×` 취소 버튼 및 실시간 평가 손익(Floating P/L) 표시. |
| 🧰 | **고급 주문 관리 시스템** | **단계별 트레일링 SL(Stepped Trailing SL)**(브로커 스프레드 가드 보호 기능 탑재 본전 래칫), **다중 익절 분할 청산(Multi-Target Scale-Out)**, 부분 로트 청산, 원클릭 전량 청산(Close All). |
| 💰 | **실제 브로커 마진 지표 동기화** | cTrader 고유의 `usedMargin` 및 계좌 레버리지를 포함하여 실제 브로커 파라미터를 기반으로 계산되는 정확한 잔고(Balance), 순자산(Equity), 증거금(Margin), 여유 증거금(Free Margin), 마진 레벨. |
| 🧪 | **초고속 백테스팅 & Optuna 최적화** | 매수/매도 진입 마커, 자산 곡선(Equity Curve), MT5 스타일의 정밀 성과 분석, **Optuna 하이퍼파라미터 자동 최적화**(HTML, CSV, JSON 내보내기 지원)를 포함한 벡터화 다년도 백테스팅. |
| 🤖 | **24시간 자동 라이브 봇 엔진** | 전용 콘솔 모니터링을 갖춘 독립 백그라운드 프로세스로 자동 매매 봇을 실행하고, **Bot Fleet** 탭에서 실시간으로 모든 봇을 감독합니다. |
| 🧠 | **내장 머신러닝 & AI 코파일럿** | 사전 학습된 HMM 시장 체제(Regime) 분류, GARCH 변동성 예측, K-Means 가격 행동 클러스터링, Isolation Forest 이상치 탐지 및 비전 지원 AI Copilot. |
| 🌐 | **9개 데이터 및 브로커 게이트웨이** | MT5 데스크톱 IPC, cTrader Open API, SimpleFX API, SET/TFEX(Settrade Open API), Yahoo Finance, Binance Spot/Futures, Polygon.io, TwelveData 및 로컬 틱 아카이브 지원. |
| 🌍 | **완벽한 9개 국어 다국어 인터페이스** | 영어, 태국어, 중국어, 일본어, 한국어, 베트남어, 스페인어, 독일어, 아랍어(RTL). |
| 🪶 | **초경량 & 초고속 네이티브 성능** | 약 4MB 다운로드 용량. 커스텀 지표는 사전 트랜스파일되며, 고주파 수식 계산 엔진은 순수 x64 C/C++ (`.pyd`) 머신 코드로 컴파일되어 즉각적인 반응성을 제공합니다. |
| 🔒 | **로컬 프라이버시 & 독립형 보안** | PC 내부 `127.0.0.1:8765`에서 로컬로 안전하게 실행됩니다. API 키와 계정 정보는 외부 서버로 전송되지 않고 로컬 `config/app_config.json`에만 안전하게 보관됩니다. |

---

## 📦 다운로드 — 배포 버전 선택

| 파일명 | 파일 크기 | 설명 및 권장 대상 |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **대부분의 사용자에게 권장.** 올인원 Windows 인스톨러 및 런처. 파일 압축 해제, 바탕화면 바로가기 생성, 원클릭 실행을 지원합니다. |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **포터블(무설치) 패키지.** USB 드라이브 등 원하는 경로에 압축을 풀고 설치 과정 없이 즉시 실행 가능합니다. |
| **`SHA256SUMS.txt`** | **~10 KB** | **무결성 검증 체크섬 매니페스트.** 릴리스 내 모든 파일에 대한 암호화 SHA-256 서명 목록입니다. |

### 🔐 파일 무결성 암호화 검증 (SHA-256)

```text
D70420B2112DE1A74FBE064D6F3D7FF27330A7D17C295A47FB5092CD4488FF2A  QuantDeck_Standalone_Release.zip
E088FEF0608466C6A37762F7834DF5A9B105108E8858952C9EE39F0180C4F87D  QuantDeck_Standalone_Setup.exe
```

Windows PowerShell에서 파일 무결성을 검증하는 방법:
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 플랫폼 라이선스 등급 안내

QuantDeck은 개인 트레이더, 퀀트 분석가, 프랍 트레이더를 위한 단계별 라이선스 모델을 제공합니다:

```
[ Free 등급 ] ────────► [ 14일 하이브리드 체험 ] ────────► [ Pro 등급 ] ────────► [ Premium 등급 ]
핵심 차트 분석           모든 고급 기능 잠금 해제          실계좌 매매 +              24/7 라이브 봇 함대 +
Yahoo / MT5 / 로컬 틱     모든 지표/주문 기능 테스트        백테스트 & 최적화기         커스텀 개발 지원 창구
```

| 기능 및 지원 범위 | Free 등급 | 14일 체험판 | Pro 등급 💎 | Premium 등급 👑 |
| :--- | :---: | :---: | :---: | :---: |
| **기본 차트 & 핵심 데이터** *(Yahoo, MT5, 로컬 틱)* | ✔ | ✔ | ✔ | ✔ |
| **확장 데이터 소스** *(cTrader, SimpleFX, SET, Binance, IBKR)* | 🔒 | ✔ (14일) | ✔ | ✔ |
| **커스텀 TypeScript & ML 지표** *(Footprint, HTF MA, Regime)* | 🔒 | ✔ (14일) | ✔ | ✔ |
| **차트 직접 매매 & 원클릭 주문 실행** | 🔒 | ✔ (14일) | ✔ | ✔ |
| **Execution Toolbox** *(포지션, 주문, 계단식 SL, 분할 TP)* | 🔒 | ✔ (14일) | ✔ | ✔ |
| **시각적 전략 백테스터 & MT5 정밀 보고서** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot Studio** *(Prompt Lab & 차트 비전 분석)* | 🔒 | 🔒 | ✔ | ✔ |
| **24/7 자동 라이브 트레이딩 봇 엔진** | 🔒 | 🔒 | 🔒 | **✔ 평생 소장** |
| **전용 백엔드 및 커스텀 알고리즘 기술 지원** | — | — | — | **✔ 6개월 지원** |

> ⏳ **즉시 체험 가능:** 처음 설치 시 모든 사용자에게 **14일 하이브리드 체험판**이 자동 적용되어 확장 데이터 소스, 커스텀 지표, 수동 주문 실행 기능을 즉시 테스트할 수 있습니다.

---

## 💳 라이선스 업그레이드 및 구매 방법 (Pro & Premium)

**Pro** 또는 **Premium**으로 업그레이드하면 수동 매매 기능, 시각적 백테스팅, 자동 봇 함대 및 기관급 분석 엔진이 완전히 잠금 해제됩니다.

### 1단계: 본인의 Machine ID 복사
1. **QuantDeck Workstation**을 실행합니다.
2. 상단 헤더 바의 **⏳ Trial / License 뱃지**를 클릭합니다 (또는 Settings → License 열기).
3. **📋 Copy ID** 버튼을 클릭하여 본인 PC 고유의 **Machine ID**(예: `QD-A1B2C3D4E5F6`)를 복사합니다.

### 2단계: 결제 수단 선택

편리한 결제 채널을 선택하세요:

#### 옵션 A: 글로벌 신용카드 / Apple Pay / PayPal (즉시 결제)
- 공식 후원 페이지 방문: [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
- **Pro** 또는 **Premium** 패키지를 선택합니다.
- ⚠️ **중요:** 결제 시 메모(Note/Message) 란에 본인의 **Machine ID**와 연락 가능한 이메일 주소를 반드시 입력해 주세요.

#### 옵션 B: 암호화폐 (USDT) — 글로벌 & 프라이버시
- **USDT (TRC-20):** `[업데이트 예정 / Discord 티켓에서 안내]`
- **USDT (BEP-20 / Arbitrum):** `[업데이트 예정 / Discord 티켓에서 안내]`
- 이체 완료 후, 공식 [**Discord 커뮤니티**](https://discord.gg/qRmMWjcTE)에서 티켓을 생성하거나 [@theoris](https://x.com/theoris)로 트랜잭션 해시(TXID) 및 Machine ID를 보내주세요.

#### 옵션 C: 태국 QR PromptPay (태국 사용자 전용)
- 공식 Discord [**discord.gg/qRmMWjcTE**](https://discord.gg/qRmMWjcTE) 접속
- `#license-ticket` 채널에서 티켓을 열고 PromptPay QR 코드 요청
- 이체 영수증과 **Machine ID**를 제출하면 즉시 라이선스 키가 발급됩니다.

### 3단계: 라이선스 키 등록 및 활성화
1. 결제 확인 후 발급받은 개인 라이선스 키를 수령합니다.
2. QuantDeck 내 **Activate License Key** 입력란에 키를 붙여넣고 **Activate**를 클릭합니다.
3. 재설치나 데이터 손실 없이 모든 기능이 즉시 영구 활성화됩니다.

---

## 🖥️ 시스템 요구 사항

- **운영체제:** Windows 10 / 11 (64비트)
- **런타임:** Python **3.12** (x64). 런타임이 감지되지 않으면 런처가 자동으로 안내합니다.
- **디스플레이 엔진:** Google Chrome 또는 Microsoft Edge (네이티브 애플리케이션 창 모드로 렌더링).
- **하드웨어 사양:** 최소 4 GB RAM (멀티 차트 그리드, ML 모델 분석, 틱 단위 백테스트 시 8 GB 이상 권장).
- **브로커 연결(선택 사항):** MetaTrader 5 데스크톱 터미널, cTrader Open API 개발자 계정, SimpleFX API 자격 증명 또는 Settrade Open API 계정.

---

## ⚙️ 설치 및 빠른 시작 가이드

### 방법 1 — 스탠드얼론 설치 파일 (`.exe`)
1. **`QuantDeck_Standalone_Setup.exe`**를 다운로드합니다.
2. 설치 프로그램을 실행합니다.
   > *참고:* 신규 배포 파일로 인해 Windows SmartScreen 경고("Windows의 PC 보호")가 나타날 경우, **추가 정보 → 실행**을 클릭하세요.
3. 원하는 설치 경로를 지정하고 **Install & Launch**를 클릭합니다. 바탕화면 및 시작 메뉴 바로가기가 자동 생성됩니다.
4. 백엔드가 자동으로 초기화되고 워크스테이션 창이 실행됩니다.

### 방법 2 — 무설치 포터블 패키지 (`.zip`)
1. **`QuantDeck_Standalone_Release.zip`**을 다운로드합니다.
2. 원하는 폴더(예: `C:\QuantDeck` 또는 외장 드라이브)에 압축을 풉니다. *권한 제한이 있는 `C:\Program Files` 폴더는 권장하지 않습니다.*
3. **`QuantDeck.exe`**(또는 `run_chart.bat`)를 더블클릭합니다.
4. 첫 실행 시 `requirements.txt`에 정의된 종속 라이브러리가 확인 및 캐시됩니다. 이후 실행은 몇 초 만에 완료됩니다.

### 5분 초기 세팅 가이드
1. **언어 설정:** 우측 사이드바 언어 선택기에서 언어를 변경합니다.
2. **브로커 데이터 소스 연결:** 상단 바의 **Source Settings**를 엽니다:
   - **Yahoo Finance:** API 키 없이 즉시 무료 사용 가능.
   - **MetaTrader 5:** MT5 터미널을 실행하고 로그인해 두면 로컬 IPC를 통해 자동 연동됩니다.
   - **cTrader:** [https://openapi.ctrader.com/](https://openapi.ctrader.com/)에서 발급받은 Client ID, Secret, Token을 입력하고 **🔄 Load Linked Accounts**를 클릭하여 실제 사용자 계정 번호(User App Login)를 선택합니다.
   - **SimpleFX / Binance / Polygon / SET:** 자격 증명을 입력하고 **Test Connection**을 누릅니다.
3. **실계좌 매매 활성화 (안전 보호 기능):** 주문을 발주하려는 브로커 항목 아래의 **⚡ Enable Live Trading**에 체크합니다 (실수 방지를 위해 기본적으로 비활성화되어 있습니다).
4. **Toolbox 활용:** 하단 도구상자에서 포지션, 대기 주문, 거래 내역, 실행 감사 로그, 계좌 증거금을 모니터링합니다.

### 워크스테이션 종료 방법
창을 닫거나, 포트가 묶였을 경우 언제든지 **`Kill_QuantDeck.exe`**를 실행하면 모든 백그라운드 프로세스가 안전하게 즉시 종료되고 8765 포트가 해제됩니다.

---

## 📁 패키지 디렉터리 구조

```text
QuantDeck/
├── QuantDeck.exe              # ▶ 메인 Windows 런처 (더블클릭하여 실행)
├── Kill_QuantDeck.exe         # ■ 프로세스 강제 종료 도구 (백그라운드 서비스 완전 종료)
├── run_chart.bat              # 콘솔 모드 런처
├── kill_all_quantdeck.bat     # 콘솔 모드 프로세스 정리 스크립트
├── run.py                     # 워크스테이션 부트스트랩 및 8765 포트 리졸버
├── requirements.txt           # Python 종속 라이브러리 목록
├── python_version.txt         # 권장 런타임 버전 명시 (3.12)
├── SHA256SUMS.txt             # 암호화 무결성 체크섬 매니페스트 (150개 이상 파일)
│
├── backend/                   # FastAPI REST/WebSocket 서버 & 고속 Cython 엔진
│   ├── main.pyc               #   애플리케이션 메인 엔트리포인트
│   ├── backtest/              #   벡터화 백테스터 & Optuna 최적화기 (.pyd / .pyc)
│   ├── data_sources/          #   MT5, cTrader, SimpleFX, SET, Yahoo, Binance, Polygon...
│   ├── execution/             #   다중 브로커 주문 라우터 & 트레이딩 룰 엔진
│   ├── strategies/            #   전략 레지스트리 및 백그라운드 워커
│   └── *.pyd                  #   네이티브 초고속 연산 모듈 (수식 엔진, 라이선스)
│
├── connection/                # 브로커 클라이언트 어댑터 (MT5, cTrader, SimpleFX, Settrade)
├── frontend/dist/             # 사전 빌드 및 경량화된 고속 차트 인터페이스
│
├── config/
│   ├── app_config.json        # ✏️ 로컬 인증 정보 및 소스 설정 (외부 공개 금지)
│   └── logo_*.ico / *.png     # 브랜드 아이콘 리소스
│
├── custom_indicators/         # ✏️ 사용자 커스텀 지표 (.ts / .js / .py) & 사전 학습 ML 모델
│   ├── template.ts            #   지표 개발 시작 템플릿
│   └── *.joblib               #   사전 학습된 HMM 시장 체제 모델
│
├── custom_strategies/         # ✏️ 커스텀 퀀트 전략 스크립트 (.py / .pyc)
│   └── template_strategy.py   #   전략 개발 시작 템플릿
│
├── user_data/                 # ✏️ 사용자 작업공간, 차트 템플릿, 관심종목, 드로잉 데이터
├── logs/                      # 백테스트 보고서(HTML, CSV, JSON) & 라이브 봇 체결 로그
├── data_db/                   # 로컬 데이터베이스 (SET 주식/파생상품 펀더멘털)
├── docs/                      # 사용자 매뉴얼 및 참조 문서
├── scripts/                   # 자동화 유틸리티 스크립트
└── utils/                     # 바로가기 생성기, DB 동기화 도구 및 토큰 유틸리티
```

> 💡 **사용자 데이터 보호 안내:** **✏️** 표시가 된 디렉터리에는 사용자의 템플릿, 관심종목, 차트 드로잉, API 키, 커스텀 전략이 저장됩니다. 프로그램 업데이트 시 이 폴더들을 반드시 백업해 두세요.

---

## ⌨️ 필수 단축키 및 주요 조작법

| 단축키 / 동작 | 기능 설명 |
| :--- | :--- |
| **`F5`** | **빠른 새로고침 / 재연결:** 일시적인 네트워크 지연이나 인터페이스 지연이 발생할 때 즉시 워크스테이션을 새로고침하고 WebSocket 피드를 재동기화합니다. |
| **`Ctrl + N`** | **새 워크스테이션 창 열기:** 듀얼 모니터 및 다중 모니터 트레이딩 환경을 위해 독립된 새 창을 띄웁니다. |
| **`Delete` / `Backspace`** | 차트에서 현재 선택된 드로잉 요소나 분석 도구를 삭제합니다. |
| **`Esc`** | 활성화된 작도 모드를 취소하거나 커서를 기본 선택 모드로 리셋합니다. |
| **`Toolbox 행 클릭`** | 해당 포지션의 심볼 및 브로커 소스로 활성 차트를 즉시 전환합니다. |
| **`차트 SL / TP 라인 드래그`** | 캔들 차트 위에서 손절매(SL) 또는 익절(TP) 라인을 직접 끌어서 실시간으로 수정합니다. |
| **`차트 라인 '×' 버튼 클릭`** | 설정된 손절매 또는 익절매 주문을 즉시 취소하거나 초기화합니다. |

---

## 🛠️ 신속 복구 및 문제 해결 가이드

> [!TIP]
> **예기치 않은 멈춤이나 연결 지연이 발생하셨나요?**  
> 언제든지 **`F5`**를 누르세요. 백그라운드 파이썬 엔진을 재시작할 필요 없이 활성 WebSocket 피드를 재동기화하고 현재 브로커 포지션을 즉시 갱신합니다.

| 현상 | 해결 방법 |
| :--- | :--- |
| **화면 지연 또는 시세 멈춤** | **`F5`**를 눌러 화면을 새로고침하고 실시간 WebSocket 시세 스트림을 재연결합니다. |
| **다중 모니터 차트 구성** | **`Ctrl + N`**을 눌러 새 앱 창을 열고 두 번째 모니터로 드래그하여 배치합니다. |
| **실행 시 창이 열리지 않음** | Chrome 또는 Edge 브라우저 설치 여부를 확인하거나, 임의의 웹 브라우저에서 `http://127.0.0.1:8765`에 직접 접속합니다. |
| **"Port 8765 already in use" 에러** | **`Kill_QuantDeck.exe`**를 더블클릭하여 잔여 프로세스를 종료한 뒤 다시 실행합니다. |
| **MT5 상태가 *Disconnected*로 표시됨** | MetaTrader 5 터미널이 실행되어 로그인되어 있는지, **알고리즘 트레이딩(Algo Trading)**이 켜져 있는지 확인합니다. |
| **cTrader 인증 오류** | 액세스 토큰은 주기적으로 만료됩니다. Source Settings에서 **🔄 Load Linked Accounts**를 클릭하거나 cTrader Open API 포털에서 새 토큰을 발급받아 입력하세요. |
| **브로커에서 주문이 거부됨** | 해당 브로커 설정에서 **⚡ Enable Live Trading**이 체크되어 있는지, 계좌의 여유 증거금이 충분한지 확인하세요. |

---

## ⚠️ 중요한 면책 조항 및 보안 주의사항

- **금융 투자 위험 고지:** 외환, CFD, 암호화폐 및 파생상품 거래는 높은 원금 손실 위험을 수반합니다. 실계좌 자금을 투입하기 전에 반드시 데모 계좌에서 충분한 전략 검증을 거치시기 바랍니다. QuantDeck은 전문 트레이딩 워크스테이션 도구이며 투자 자문을 제공하지 않습니다.
- **인증 정보 보안:** 모든 API 키 및 계좌 정보는 사용자의 로컬 `config/app_config.json`에만 저장됩니다. 이 파일을 외부에 공개하거나 깃허브 등에 업로드하지 마세요.
- **방화벽 허용:** 첫 실행 시 나타나는 Windows 방화벽 안내 창에서 로컬 프론트엔드가 `127.0.0.1`과 원활히 통신할 수 있도록 개인/로컬 네트워크 접근을 허용해 주세요.

---

## 💬 공식 커뮤니티 및 지원 채널

전 세계의 퀀트 트레이더들과 교류하고, 알고리즘 튜토리얼을 시청하며, 개발팀의 빠른 지원을 받아보세요:

- 💬 **Discord 커뮤니티:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(실시간 질의응답, 지표 스크립트 공유 & 문제 해결)*
- 📺 **YouTube 채널:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(동영상 튜토리얼, 봇 설계 가이드 & 기능 소개)*
- 🐦 **X (구 Twitter):** [@theoris](https://x.com/theoris) *(릴리스 업데이트 & 퀀트 시장 인텔리전스)*
- ☕ **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(프로젝트 후원 & 라이선스 업그레이드)*
- 🐙 **GitHub 저장소:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(릴리스 다운로드, 소스 코드 & 버그 제보)*

---

**성공적인 트레이딩을 기원합니다! 📈**  
QuantDeck이 여러분의 퀀트 트레이딩 환경을 혁신하는 데 도움이 되었다면 GitHub 저장소에 스타(⭐)를 눌러주시고 [GitHub Issues](https://github.com/theoris/quantdeck/issues)를 통해 소중한 피드백을 남겨주세요.

