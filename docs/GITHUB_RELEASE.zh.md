# QuantDeck v2.0 — 机构级量化图表工作站与多经纪商统一交易系统

> **集专业图表分析、量化回测与全自动交易于一体的独立桌面工作站。** 全面覆盖外汇、黄金（XAUUSD）、加密货币、全球指数、美股以及泰国 SET/TFEX 市场。  
> 支持在同一屏幕内同时连接 **MetaTrader 5、cTrader Open API 与 SimpleFX**。配备 70 多种专业绘图分析工具、基于 Optuna 的参数优化回测引擎、24/7 全天候自动化交易机器人，并通过中央交易工具箱（Toolbox）统筹掌控多账户风险。

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

> 🌍 **多语言文档导航：**  
> [English](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.md) • [ไทย](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.th.md) • [中文](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.zh.md) • [日本語](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ja.md) • [한국어](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ko.md) • [Tiếng Việt](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.vi.md) • [Español](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.es.md) • [Deutsch](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.de.md) • [العربية](https://github.com/theoris/quantdeck/blob/main/docs/GITHUB_RELEASE.ar.md)

---

## 🚀 为什么选择 QuantDeck？

| | 核心特性 | 为交易者带来的核心价值 |
| :---: | :--- | :--- |
| ⚡ | **单屏多经纪商并发交易** | 同屏并发运行 **MT5、cTrader 与 SimpleFX**。每个图表视口独占独立的经纪商通道，确保执行指令精准送达目标账户，杜绝误操作。 |
| 📈 | **机构级图表分析工作站** | 灵活的多视口网格布局（1×1、2×1、2×2、3×1、4×1），支持光标十字线与周期跨图表同步。内置 **70+ 种绘图工具**（趋势线、通道、扇形、甘氏、斐波那契、艾略特波浪、谐波形态及盈亏测量标尺）。 |
| 📊 | **成交量与订单流分析工具** | **锚定 VWAP (Anchored VWAP)** 配备标准差带（±1σ、±2σ），**固定范围成交量分布 (Fixed Range VP)** 与 **锚定成交量分布 (Anchored VP)**，自动计算 POC 控制点与 70% 价值区（VAH/VAL）。 |
| 🎯 | **图表可视化交互交易** | 一键快捷交易抬头显示（Quick Trade HUD），挂单（Limit/Stop），在 K 线图上直接拖动设置 SL/TP 止损止盈线，配备一键 `×` 取消按钮与实时浮动盈亏计算。 |
| 🧰 | **高级订单风控管理系统** | **阶梯式移动止损 (Stepped Trailing SL)**（多级保本锁盈机制并内置滑点保护）、**多目标分批止盈 (Multi-TP Scale-Out)**，支持部分平仓以及一键全部平仓（Close All）。 |
| 💰 | **经纪商原生真实财务指标** | 实时计算账户余额、净值、已用保证金、可用保证金及保证金比例（完美适配 cTrader 原生持仓保证金 `usedMargin` 与真实杠杆计算）。 |
| 🧪 | **高速向量化回测与参数调优** | 向量化回测秒级完成数年历史仿真，K 线图直接标注入场出场点位与净值曲线。提供 MT5 级深度回测绩效报表，并集成 **Optuna 多目标参数优化**（支持导出 HTML、CSV、JSON）。 |
| 🤖 | **24/7 全天候自动化交易机器人** | 量化交易策略作为独立的后台控制台进程运行，图表界面完全不卡顿。通过 **Bot Fleet** 面板实时掌控所有在线机器人的运行状态。 |
| 🧠 | **内置机器学习模型与 AI Copilot** | 隐马尔可夫模型（HMM）市场状态分类、GARCH 波动率预测、K-Means 价格行为聚类、孤立森林异常检测，以及具备图表视觉分析能力的 AI 助手。 |
| 🌐 | **支持 9 大行情源与经纪商网关** | MT5 Desktop IPC、cTrader Open API、SimpleFX API、泰国 SET/TFEX (Settrade)、Yahoo Finance、Binance 现货/合约、Polygon.io、TwelveData 及本地 Tick 归档。 |
| 🌍 | **原生支持 9 种国际化语言** | 简体中文、English、ไทย、日本語、한국어、Tiếng Việt、Español、Deutsch 与 العربية (RTL)。 |
| 🪶 | **超轻量体积与极致运行性能** | 安装包仅约 4 MB。指标脚本已预先转译，核心高频公式引擎采用原生 C/C++ x64 (`.pyd`) 机器代码编译，资源占用极低。 |
| 🔒 | **本地独立部署与隐私安全** | 本地运行于 `127.0.0.1:8765`。交易账户与 API 密钥完整保存在本地 `config/app_config.json` 中，零数据外传。 |

---

## 📦 下载中心 — 选择分发格式

| 发布资产文件 | 文件大小 | 适用场景与建议 |
| :--- | :---: | :--- |
| **`QuantDeck_Standalone_Setup.exe`** | **3.91 MB** | **绝大多数用户的首选。** 单文件免复杂配置安装器，自动解压并在桌面与开始菜单生成快捷方式，一键启动。 |
| **`QuantDeck_Standalone_Release.zip`** | **3.84 MB** | **绿色便携版。** 解压到任意目录（包括移动硬盘）即可直接运行，不写入系统注册表。 |
| **`SHA256SUMS.txt`** | **~10 KB** | **文件完整性校验清单。** 包含发布包内所有文件的 SHA-256 密码学签名。 |

### 🔐 完整性安全校验码 (SHA-256)

```text
A452536082D2B80D682BE0146E0162B97485D3C93D1F24366D09578396EE5CB1  QuantDeck_Standalone_Release.zip
269FF6136A1A6DFC15A3A61491BF294BCDFAF1EA37C4355633C7F2937C690C5A  QuantDeck_Standalone_Setup.exe
```

在 Windows PowerShell 中进行文件校验：
```powershell
Get-FileHash .\QuantDeck_Standalone_Setup.exe -Algorithm SHA256
```

---

## 💎 授权等级与服务方案 (Licensing Tiers)

QuantDeck 采用分层授权体系，全面满足普通投资者、专业量化交易员与机构自营团队的需求：

| 平台功能权限 | 免费版 (Free) | 14天试用期 (Trial) | 专业版 (Pro 💎) | 旗舰版 (Premium 👑) |
| :--- | :---: | :---: | :---: | :---: |
| **基础图表与核心数据** *(Yahoo、MT5、本地数据)* | ✔ | ✔ | ✔ | ✔ |
| **高级数据源** *(cTrader、SimpleFX、SET、Binance等)* | 🔒 | ✔ (14天) | ✔ | ✔ |
| **自定义 TypeScript 与机器学习指标** | 🔒 | ✔ (14天) | ✔ | ✔ |
| **图表交互式直接下单与快捷交易** | 🔒 | ✔ (14天) | ✔ | ✔ |
| **执行工具箱** *(持仓管理、阶梯止损、分批止盈)* | 🔒 | ✔ (14天) | ✔ | ✔ |
| **策略可视化回测与 MT5 级报表导出** | 🔒 | 🔒 | ✔ | ✔ |
| **AI Copilot 智能工坊** *(提示词实验室与视觉看盘)* | 🔒 | 🔒 | ✔ | ✔ |
| **24/7 全自动量化交易机器人引擎** | 🔒 | 🔒 | 🔒 | **✔ 终身激活 (Lifetime)** |
| **后台定制技术支持与算法调试窗口** | — | — | — | **✔ 6 个月专属支持** |

> ⏳ **开箱即享 14 天完整试用：** 首次安装后系统自动开启 14 天混合试用期，无门槛体验所有高级数据源与交易工具箱。

---

## 💳 如何升级与购买正式授权 (Pro & Premium)

### 第一步：获取您的机器识别码 (Machine ID)
1. 启动 **QuantDeck** 工作站。
2. 点击顶部导航栏的 **⏳ Trial / License** 徽标（或进入 Settings → License）。
3. 点击 **📋 Copy ID** 复制您的硬件机器特征码（例如 `QD-A1B2C3D4E5F6`）。

### 第二步：选择便捷的付款方式
- **方式 A：国际信用卡 / Apple Pay / PayPal（即时便捷）**
  - 访问官方主页：[**buymeacoffee.com/quantdeck**](https://buymeacoffee.com/quantdeck)
  - 选择对应的 **Pro** 或 **Premium** 方案，并在支付备注中填入您的 **Machine ID**。
- **方式 B：加密货币 (USDT) — 适合全球专业交易者**
  - **USDT (TRC-20):** `[待更新钱包地址 / 可在 Discord 内向管理团队索取]`
  - **USDT (BEP-20 / Arbitrum):** `[待更新钱包地址 / 可在 Discord 内向管理团队索取]`
  - 付款后，请在官方 [**Discord 社区**](https://discord.gg/qRmMWjcTE) 提交工单，或私信 [@theoris](https://x.com/theoris) 提供交易哈希（TXID）与 Machine ID。
- **方式 C：泰国本土 QR PromptPay**
  - 加入 [**Discord**](https://discord.gg/qRmMWjcTE) 并在 `#license-ticket` 频道发起申请。

### 第三步：输入授权密钥并激活
在 License 弹窗中粘贴收到的密钥，点击 **Activate** 即可瞬间解锁相应等级的全部功能，无需重新下载安装。

---

## 🖥️ 运行环境要求

- **操作系统：** Windows 10 / 11 (64位)
- **运行依赖：** Python **3.12** (x64)（初次启动时安装器会自动检测并辅助配置）
- **渲染内核：** Google Chrome 或 Microsoft Edge（工作站以极简无干扰的本地应用窗口呈现）
- **硬件配置：** 最低 4 GB 内存（推荐 8 GB 及以上以获得顺畅的多视口及机器学习体验）

---

## ⌨️ 常用快捷键与操作技巧

| 快捷键 / 交互操作 | 操作说明 |
| :--- | :--- |
| **`F5`** | **快速刷新应用 / 立即重连：** 遇到任何网络波动或界面卡顿，按下 F5 可在保留后台 Python 进程的同时瞬间重连 WebSocket 并同步持仓。 |
| **`Ctrl + N`** | **新建工作站窗口：** 开启一个全新独立的 QuantDeck 窗口，便于拖拽到双屏或多屏显示器。 |
| **`Delete` / `Backspace`** | 快速删除当前选中的图表绘图对象。 |
| **`Esc`** | 退出绘图放置状态，重置光标为默认选择模式。 |
| **`点击 Toolbox 持仓行`** | 主图表自动平滑切换至该笔持仓的品种代码及对应经纪商行情源。 |
| **`拖拽图表 SL / TP 线`** | 在 K 线图上直观拖拉止损线或止盈线调整点位。 |
| **`点击线条上的 '×' 按钮`** | 瞬间取消或移除当前持仓的止损或止盈挂单。 |

---

## 💬 官方社区与技术支持

- 💬 **Discord 社区：** [discord.gg/qRmMWjcTE](https://discord.gg/qRmMWjcTE) *(策略讨论、指标分享与技术支持)*
- 📺 **YouTube 频道：** [@QuantDeck](https://www.youtube.com/@QuantDeck) *(功能演练、量化机器人架构指南)*
- 🐦 **X (Twitter)：** [@theoris](https://x.com/theoris) *(版本更新公告与量化市场动态)*
- ☕ **Buy Me a Coffee：** [buymeacoffee.com/quantdeck](https://buymeacoffee.com/quantdeck) *(开发者支持与授权方案购买)*
- 🐙 **GitHub 仓库：** [github.com/theoris/quantdeck](https://github.com/theoris/quantdeck) *(源码库与工单反馈)*

---

**祝您量化交易顺利，稳健前行！📈**  
如果 QuantDeck 对您的交易系统有所助益，请前往 [GitHub 仓库](https://github.com/theoris/quantdeck) 为我们点亮一颗 ⭐ Star 鼓励！

