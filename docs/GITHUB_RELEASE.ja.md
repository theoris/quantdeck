# QuantDeck v2.2.2 — 機関投資家向けチャートワークステーション＆マルチブローカー統合発注システム

> **高度なチャート分析、戦略バックテスト、全自動ボット実行を統合したスタンドアロンデスクトップワークステーション。** 為替（FX）、ゴールド（XAUUSD）、暗号資産、世界主要指数、米国株、およびタイ株式（SET/TFEX）市場を完全網羅。  
> 1つの画面上で **MetaTrader 5、cTrader Open API、SimpleFX** に同時接続。70種類以上のプロ仕様の描画分析ツール、Optunaパラメータ最適化エンジン、24時間365日稼働の自動売買ボット、そして集中管理型Execution Toolboxを搭載しています。

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

> 🌍 **多言語ドキュメントナビゲーション：**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

## 🚀 QuantDeckを選ぶ理由

| | 主要機能 | トレーダーの実質的メリット |
| :---: | :--- | :--- |
| ⚡ | **マルチブローカー同時取引** | **MT5、cTrader、SimpleFX** を1画面で同時に監視・発注。各スロットごとにブローカー接続が完全に独立しており、誤発注の心配がありません。 |
| 📈 | **機関投資家仕様のチャート分析** | 1×1、2×1、2×2、3×1、4×1 などのグリッドレイアウトに対応。カーソルや時間軸の同期に加え、**70種類以上の描画ツール**（トレンドライン、チャネル、ギャン、フィボナッチ、エリオット波動、ハーモニックパターン、損益ルーラー）を搭載。 |
| 📊 | **出来高・オーダーフロー分析** | **アンカーVWAP (Anchored VWAP)**（±1σ/±2σ標準偏差バンド付き）、**固定範囲ボリュームプロファイル (Fixed Range VP)** および **アンカーボリュームプロファイル (Anchored VP)**（POCおよび70%バリューエリア自動算出）。 |
| 🎯 | **チャート上での直感的な発注** | ワンクリック発注HUD、Limit/Stop指値注文、ドラッグ可能なSL/TPライン（`×`ボタンで即座にキャンセル可能）およびリアルタイム未実現損益表示。 |
| 🧰 | **高度な注文・リスク管理ツールボックス** | **段階的トレイリングSL (Stepped Trailing SL)**（スプレッドガード付き建値ロック）、**複数目標の分割利確 (Multi-TP Scale-Out)**、部分決済、およびワンクリック全決済機能。 |
| 💰 | **ブローカー直結の正確な口座指標** | 残高、有効証拠金、必要証拠金、余力証拠金、証拠金維持率をブローカーAPIから直接算出（cTraderの個別ポジション保有証拠金 `usedMargin` および実効レバレッジに完全対応）。 |
| 🧪 | **高速ベクトル化バックテスト＆最適化** | 数年分のティック/足データを瞬時にバックテスト。売買サインと資産曲線をチャート上に直接プロットし、MT5標準の機関レポートと **Optuna多目的最適化** を実行可能（HTML/CSV/JSON出力）。 |
| 🤖 | **24時間365日稼働の自動売買ボット** | 各ボットは独立したコンソールプロセスとして動作し、チャート操作を妨げません。**Bot Fleet** パネルからリアルタイムで稼働状況を一元監視・制御可能。 |
| 🧠 | **機械学習（ML）＆ AI Copilot統合** | HMM市場レジーム分類、GARCHボラティリティ予測、K-Means価格動向クラスタリング、Isolation Forest異常検知、画像認識対応のAI Copilotを内蔵。 |
| 🌐 | **9つのデータソース＆ブローカーゲートウェイ** | MT5 Desktop IPC、cTrader Open API、SimpleFX API、SET/TFEX（Settrade）、Yahoo Finance、Binance（現物/先物）、Polygon.io、TwelveData、ローカルTickアーカイブ。 |
| 🌍 | **完全対応の9言語ローカライズ** | 日本語、English、ไทย、中文、한국어、Tiếng Việt、Español、Deutsch、العربية (RTL)。 |
| 🪶 | **超軽量設計＆ネイティブ実行速度** | パッケージサイズは約4MB。インジケーターは事前トランスパイル済み、計算負荷の高いエンジンはネイティブ C/C++ x64 (`.pyd`) にコンパイルされています。 |
| 🔒 | **完全ローカル動作とプライバシー保護** | アプリケーションはお使いのPC（`127.0.0.1:8765`）で完結動作します。口座情報やAPIキーはローカルの `config/app_config.json` にのみ保存され、外部に送信されることはありません。 |

---

## 📦 ダウンロード — パッケージの選択

| アセット名 | サイズ | 推奨用途 |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **多くのユーザーに推奨。** デスクトップやスタートメニューにショートカットを自動作成し、ワンクリックで起動できるインストーラー。 |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **ポータブル版。** インストール不要でUSBメモリや任意のフォルダーに展開してすぐに使用可能。 |
| **`SHA256SUMS.txt`** | **~10 KB** | **ファイル検証チェックサム。** パッケージ内の全ファイルのSHA-256ハッシュ一覧。 |

### 🔐 暗号学的整合性検証 (SHA-256)

```text
90BD65A60E5DD7CDC786AA483880CCF3C594E08161ADB8B39336EA63B051A9B7  QuantDeck_Standalone_Release.zip
2437DF3166FF40B98473C46772F3D8EFBF26C1F4411BADEAC7D194D090C9ADCF  QuantDeck_Standalone_Setup.exe
```

PowerShellでのハッシュ検証コマンド：
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 ライセンスプラン (Licensing Tiers)

| 機能 | 無料版 (Free) | 14日間トライアル (Trial) | Proプラン 💎 | Premiumプラン 👑 |
| :--- | :---: | :---: | :---: | :---: |
| **基本チャート＆主要データ** *(Yahoo, MT5, Tick)* | ✔ | ✔ | ✔ | ✔ |
| **拡張データソース** *(cTrader, SimpleFX, SET, Binance等)* | 🔒 | ✔ (14日間) | ✔ | ✔ |
| **カスタム TypeScript / ML インジケーター** | 🔒 | ✔ (14日間) | ✔ | ✔ |
| **チャート上でのワンクリック手動発注** | 🔒 | ✔ (14日間) | ✔ | ✔ |
| **Execution Toolbox** *(ポジション管理、Stepped SL等)* | 🔒 | ✔ (14日間) | ✔ | ✔ |
| **戦略バックテスト＆MT5詳細レポート** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot Studio** *(プロンプトラボ＆チャート視覚分析)* | 🔒 | 🔒 | ✔ | ✔ |
| **全自動24/7ライブ売買ボット実行エンジン** | 🔒 | 🔒 | 🔒 | **✔ 永久ライセンス** |
| **バックエンド・アルゴリズム専任サポート窓口** | — | — | — | **✔ 6か月間** |

> ⏳ **インストール後すぐに使える14日間無料トライアル：** 初回起動時に自動で14日間のハイブリッドトライアルが開始され、全機能を無制限で体験可能です。

---

## 💳 ライセンスの購入・アクティベーション方法

### ステップ 1: ハードウェア Machine ID のコピー
1. **QuantDeck** を起動します。
2. 画面上部ヘッダーの **⏳ Trial / License** バッジをクリックします（または Settings → License）。
3. **📋 Copy ID** ボタンをクリックして固有の Machine ID をコピーします。

### ステップ 2: お支払い方法の選択
- **方法 A: クレジットカード / Apple Pay / PayPal**
  - 公式ページ [**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck) にアクセスし、購入備考欄に **Machine ID** を入力してください。
- **方法 B: 暗号資産（USDT）**
  - **USDT (TRC-20):** `[後日更新 / Discordコミュニティにて随時対応]`
  - **USDT (BEP-20 / Arbitrum):** `[後日更新 / Discordコミュニティにて随時対応]`
  - 送金後、[**Discord コミュニティ**](https://discord.gg/qRmMWjcTE) にてチケットを作成いただくか、[@theoris](https://x.com/theoris) まで TXID と Machine ID をご連絡ください。
- **方法 C: タイ国内決済 (Thai QR PromptPay)**
  - Discord の `#license-ticket` チャンネルよりお問い合わせください。

### ステップ 3: キーのアクティベート
取得したライセンスキーをアプリ内の **Activate License Key** 欄に貼り付け、**Activate** をクリックすると即座に機能がアンロックされます。

---

## ⌨️ 便利なショートカット＆基本操作

| ショートカット / 操作 | 機能・役割 |
| :--- | :--- |
| **`F5`** | **クイックリフレッシュ / 再接続：** 一時的なネットワーク遅延や描画不具合が発生した際、F5を押すだけでWebSocket接続と口座状況を即座に再同期します。 |
| **`Ctrl + N`** | **新規ウィンドウ作成：** 独立したQuantDeckウィンドウを新たに開き、マルチモニター環境に最適化できます。 |
| **`Delete` / `Backspace`** | 選択中の描画ツールを削除。 |
| **`Esc`** | 描画モードのキャンセル / 通常カーソルへの復帰。 |
| **`Toolboxの行をクリック`** | チャートを該当ポジションの銘柄およびブローカーソースへ瞬時に切り替え。 |
| **`SL / TP ラインのドラッグ`** | チャート上で直感的にストップロス・利確価格を変更。 |
| **`ライン上の '×' ボタン`** | 設定済みのSLまたはTP注文を即座に解除。 |

---

## 💬 コミュニティ＆公式サポート

- 💬 **Discord コミュニティ:** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(トレーダー交流、インジケーター共有、質疑応答)*
- 📺 **YouTube チャンネル:** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(チュートリアル動画、ボット設計解説)*
- 🐦 **X (Twitter):** [@theoris](https://x.com/theoris) *(アップデート速報、クオンツ分析)*
- ☕ **Buy Me a Coffee:** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(スポンサー支援・ライセンス購入)*
- 🐙 **GitHub リポジトリ:** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(リリース最新版・ソースコード)*

---

**スマートなクオンツトレードを！📈**  
QuantDeckがお役に立ちましたら、ぜひ [GitHub](https://github.com/theoris/quantdeck) にて ⭐ Star のご支援をお願いいたします！

