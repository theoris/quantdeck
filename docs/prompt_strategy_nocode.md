# QuantDeck Custom Strategy — No-Code Guided Prompt Templates (`prompt_strategy_nocode.md`)

> **For Non-Coders / Beginners:** You do **not** need any programming knowledge. Simply attach [`custom_strategy.md`](./custom_strategy.md) to your AI chat (ChatGPT, Claude, Gemini, Cursor), copy the template below in your language, and write **1–2 sentences** describing how you want to trade.
>
> The AI will **analyze your trading idea first**, ask you **3–4 easy multiple-choice questions with smart recommendations** (no coding jargon), and then build a ready-to-run `.py` strategy file for Backtest & Live Bot (including News Guard protection compatibility) once you confirm.

---

## 🇺🇸 English (EN)

```text
I do NOT know how to code. Please help me design and build a QuantDeck Custom Python Strategy (.py) strictly following the attached custom_strategy.md guide.

[My Trading Idea (In Plain Words)]
- How I want the strategy to buy/sell: <e.g., "Buy when the market is in an uptrend and pulls back, and sell in a downtrend. Avoid choppy sideways markets.">
- Market / Timeframe I trade most: <e.g., "Gold (XAUUSD) on M15" or "BTCUSD on H1">
- Intended Use: <Backtest only / Backtest + Live Bot>

[How I Want You (the AI) to Help Me]
1. First, analyze my idea and DO NOT generate code yet.
2. Explain your proposed trading rules in simple, non-technical trader language (no programming jargon).
3. Ask me 3–4 short, easy questions with Recommended options (A / B / C) so I can choose:
   - Entry confirmation style (e.g., fast crossover vs. trend + pullback filter vs. multi-timeframe trend filter)
   - Stop Loss & Take Profit style (e.g., ATR-based SL + 1:2 Risk/Reward TP, close on opposite signal, or Basket Equity % TP / Trailing / Hard Stop Loss)
   - Position management & conditional closes (1 trade at a time vs. Multi-Order / Grid / Pyramiding / Split-TP, % risk vs. equity-scaled lot, partial pruning or close BUY/SELL/ALL rules)
   - What key settings I should adjust in Backtest / Optuna Optimizer without making optimization too slow
4. Once I reply with my choices (or say "use recommended"), generate the complete, zero-lookahead .py file following all rules in custom_strategy.md (using Section 10 `multi_position = True` if multiple concurrent orders or conditional/partial closes are requested, plus Live Bot & News Guard recovery compatibility).
```

---

## 🇹🇭 ไทย (TH)

```text
ฉันไม่รู้เรื่องการเขียนโค้ดเลย โปรดช่วยออกแบบและสร้าง QuantDeck Custom Python Strategy (.py) โดยปฏิบัติตามคู่มือ custom_strategy.md ที่แนบมานี้อย่างเคร่งครัด

[ไอเดียการเทรดของฉัน (อธิบายด้วยภาษาธรรมดา)]
- อยากให้ระบบเข้า Buy / Sell และทำกำไรอย่างไร: <เช่น "อยากให้เข้า Buy ช่วงเทรนด์ขาขึ้นแล้วย่อตัว และเข้า Sell ช่วงขาลง โดยหลีกเลี่ยงช่วงตลาดไซด์เวย์">
- สินค้า / Timeframe ที่เทรดประจำ: <เช่น "ทองคำ XAUUSD กราฟ M15" หรือ "BTCUSD กราฟ H1">
- เป้าหมายการใช้งาน: <Backtest / รัน Live Bot จริง>

[ขั้นตอนที่อยากให้ AI ช่วย]
1. ให้วิเคราะห์ไอเดียของฉันก่อน และ **ยังไม่ต้องเขียนโค้ดทันที**
2. สรุปกติกาการเทรดที่แนะนำเป็นภาษาเทรดเดอร์ที่เข้าใจง่าย (ไม่ต้องใช้ศัพท์เทคนิคโค้ด)
3. ตั้งคำถามสั้นๆ 3–4 ข้อ พร้อม **ตัวเลือกแนะนำ (A / B / C)** ให้ฉันเลือกง่ายๆ ได้แก่:
   - รูปแบบการยืนยันจุดเข้า (เช่น ตัดกันเร็วๆ, รอย่อตัวตามเทรนด์, หรือกรองด้วย Timeframe ใหญ่)
   - การตั้ง Stop Loss / Take Profit (เช่น SL ตามความผันผวน ATR + TP 1:2, ปิดเมื่อมีสัญญาณกลับทิศ, หรือปิดรวบตะกร้า Basket % Equity / Trailing / Hard Cut-Loss)
   - การคุมจำนวนออเดอร์และเงื่อนไขปิดเฉพาะบางไม้ (เปิดทีละ 1 ออเดอร์ vs หลายออเดอร์แบบ Grid / เติมไม้ / แบ่ง TP / ปิดแยกฝั่ง BUY-SELL หรือตัดไม้ลึก, คำนวณ Lot ตาม % ความเสี่ยง หรือปรับตาม Equity)
   - ค่าที่ควรเปิดให้ปรับจูนในหน้า Backtest / Optimizer โดยไม่ให้พารามิเตอร์รกเกินไป
4. เมื่อฉันตอบเลือกตัวเลือกแล้ว (หรือบอกว่า "ใช้ตามที่แนะนำได้เลย") ให้สร้างไฟล์ .py ที่สมบูรณ์ ไม่มองอนาคต (Zero-Lookahead) โดยใช้ Section 10 (`multi_position = True`) หากมีการเปิด-ปิดหลายออเดอร์หรือปิดตามเงื่อนไข และรองรับ Live Bot และ News Guard ตามกฎทั้งหมดใน custom_strategy.md ทันที
```

---

## 🇨🇳 中文 (CN / ZH)

```text
我不懂任何编程。请严格按照附件 custom_strategy.md 的规范，帮我设计并生成一个 QuantDeck 自定义 Python 策略（.py）。

[我的交易想法（用通俗语言描述）]
- 我希望策略如何判断买卖与止盈止损: <例如："在上涨趋势回调时买入，下跌趋势反弹时卖出，尽量避开震荡行情。">
- 我常交易的品种 / 周期: <例如："黄金 XAUUSD M15" 或 "BTCUSD H1">
- 使用场景: <回测 / 回测与实盘机器人>

[我希望 AI 按以下步骤协助我]
1. 请先分析我的想法，**暂时不要直接生成代码**。
2. 用交易员能听懂的通俗语言概括交易规则（不要使用编程术语）。
3. 向我提出 3–4 个简短易懂的选择题，并为每题提供 **推荐选项 (A / B / C)** 供我挑选：
   - 入场确认方式（例如：快速交叉、顺势回调确认、或大周期趋势过滤）
   - 止损与止盈方式（例如：ATR 动态止损 + 1:2 盈亏比止盈、反向信号平仓，或按账户净值百分比% 整体止盈/追踪止盈/硬止损）
   - 仓位与多单管理（单笔持仓 vs 多单网格/加仓/分批止盈/条件平仓，按风险百分比 vs 按净值动态计算手数）
   - 希望在回测/参数优化中开放哪些核心参数（避免参数过多影响优化收敛）
4. 当我回复选择结果后（或回复"按推荐方案生成"），请严格依据 custom_strategy.md 生成完整、无未来函数的 .py 文件；若涉及多单或条件部分平仓请使用 Section 10（`multi_position = True`），并确保兼容实盘与 News Guard 恢复机制。
```

---

## 🇯🇵 日本語 (JP / JA)

```text
私はプログラミングの知識がありません。添付の custom_strategy.md に厳密に従って、QuantDeck カスタム Python ストラテジー（.py）の設計と作成を手伝ってください。

[トレードのアイデア（普段の言葉で）]
- どのような場面で買い/売りをしたいか: <例：「上昇トレンドの押し目で買い、下降トレンドの戻りで売りたい。レンジ相場はなるべく避けたい。」>
- 主に取引する銘柄 / 時間足: <例：「ゴールド XAUUSD 15分足」または「BTCUSD 1時間足」>
- 利用目的: <バックテスト / ライブボット自動売買>

[AI へのお願い（進め方）]
1. まず私のアイデアを分析し、**まだコードは書かないでください**。
2. 専門的なプログラム用語を使わず、トレーダー向けの分かりやすい言葉で売買ルール案を説明してください。
3. 私が選びやすいように、**おすすめ案付きの選択式質問（A / B / C）を 3〜4 個** 出してください：
   - エントリー確認方法（例：素早いクロス / 押し目・戻り目フィルター / 上位足トレンドフィルター）
   - 損切り・利確（SL/TP）の決め方（例：ATR ベースの SL + リスクリワード 1:2、逆シグナル決済、またはバスケット有効証拠金% 利確/トレール/強制損切り）
   - ポジション管理と条件決済（1ポジション vs グリッド・ピラミッディング・分割利確・条件付き部分決済、% リスク計算 vs 証拠金連動ロット）
   - バックテストや最適化（Optuna）が重くならない範囲で調整したい主要項目
4. 私が選択肢を返信したら（または「おすすめで作成して」と伝えたら）、複数注文・条件付き決済の場合は Section 10（`multi_position = True`）を使用し、ライブボット＆News Guard 復帰対応も含めて custom_strategy.md 準拠の完全な .py ファイルを出力してください。
```

---

## 🇰🇷 한국어 (KR / KO)

```text
저는 코딩을 전혀 모릅니다. 첨부된 custom_strategy.md 규칙을 엄격히 따라 QuantDeck 커스텀 Python 전략(.py)을 설계하고 만들어 주세요.

[매매 아이디어 (쉬운 말로 설명)]
- 어떤 방식으로 매수/매도하고 싶은지: <예: "상승 추세에서 눌림목일 때 매수하고, 하락 추세에서 반등 시 매도하며 횡보장은 피하고 싶어요.">
- 주로 매매하는 종목 / 타임프레임: <예: "골드(XAUUSD) 15분봉" 또는 "BTCUSD 1시간봉">
- 사용 목적: <백테스트 / 실전 라이브 봇>

[AI 진행 방식 요청]
1. 먼저 제 아이디어를 분석하고 **아직 코드를 바로 작성하지 마세요**.
2. 코딩 전문 용어 없이 트레이더가 이해하기 쉬운 말로 매매 규칙을 설명해 주세요.
3. 제가 고르기 쉽도록 **추천 옵션(A / B / C)이 포함된 간단한 질문 3~4개**를 해주세요:
   - 진입 확인 방식 (예: 빠른 크로스 vs 추세 눌림목 필터 vs 상위 타임프레임 추세 필터)
   - 손절/익절(SL/TP) 방식 (예: ATR 기반 손절 + 1:2 손익비 익절, 반대 신호 청산, 또는 바스켓 자산 % 익절/트레일링/강제 손절)
   - 다중 주문 및 조건부 청산 (1포지션 유지 vs 그리드·물타기·피라미딩·분할 익절·조건부 부분 청산, 리스크 % vs 자산 연동 랏 계산)
   - 백테스트 및 Optuna 최적화 속도를 해치지 않으면서 조절하고 싶은 핵심 파라미터
4. 제가 선택을 답변하면(또는 "추천대로 만들어 줘"라고 하면) 다중 주문/조건 청산 시 Section 10(`multi_position = True`)을 적용하고, 라이브 봇 및 News Guard 복구를 지원하도록 custom_strategy.md의 모든 규칙에 맞춰 완성형 .py 파일을 생성해 주세요.
```

---

## 🇻🇳 Tiếng Việt (VN / VI)

```text
Tôi KHÔNG biết lập trình. Hãy giúp tôi thiết kế và tạo một QuantDeck Custom Python Strategy (.py) tuân thủ nghiêm ngặt hướng dẫn custom_strategy.md đính kèm.

[Ý tưởng giao dịch của tôi (bằng ngôn ngữ thông thường)]
- Tôi muốn chiến lược mua/bán như thế nào: <ví dụ: "Mua khi xu hướng tăng và giá hồi về, bán khi xu hướng giảm, tránh giao dịch khi thị trường đi ngang.">
- Cặp tiền / Khung thời gian hay giao dịch: <ví dụ: "Vàng XAUUSD khung M15" hoặc "BTCUSD khung H1">
- Mục đích sử dụng: <Backtest / Chạy Bot Live>

[Cách tôi muốn AI hỗ trợ]
1. Trước tiên hãy phân tích ý tưởng của tôi và **CHƯA viết mã ngay**.
2. Giải thích quy tắc giao dịch đề xuất bằng ngôn ngữ trader dễ hiểu (không dùng thuật ngữ lập trình).
3. Hỏi tôi 3–4 câu ngắn gọn kèm **gợi ý lựa chọn (A / B / C)** để tôi chọn:
   - Cách xác nhận điểm vào lệnh (ví dụ: cắt nhau nhanh, lọc theo xu hướng + hồi giá, hoặc lọc theo khung thời gian lớn)
   - Cách đặt Stop Loss / Take Profit (ví dụ: SL theo ATR + TP 1:2, đóng khi đảo chiều, hoặc chốt lời/cắt lỗ cả rổ theo % Equity)
   - Quản lý nhiều lệnh & đóng theo điều kiện (1 lệnh vs Grid / nhồi lệnh / chia TP / đóng từng phần theo điều kiện, lot theo % rủi ro vs theo Equity)
   - Các thông số cốt lõi cần tùy chỉnh trong Backtest / Optimizer mà không làm quá tải số tham số
4. Sau khi tôi chọn xong (hoặc nói "làm theo gợi ý"), hãy áp dụng Section 10 (`multi_position = True`) nếu chiến lược có nhiều lệnh hoặc đóng từng phần, và xuất tệp .py hoàn chỉnh tương thích Live Bot & News Guard theo đúng custom_strategy.md.
```

---

## 🇪🇸 Español (ES)

```text
NO sé programar. Por favor ayúdame a diseñar y crear una Estrategia Personalizada en Python para QuantDeck (.py) siguiendo estrictamente la guía custom_strategy.md adjunta.

[Mi Idea de Trading (En Palabras Sencillas)]
- Cómo quiero que compre/venda la estrategia: <ej., "Comprar cuando hay tendencia alcista tras un retroceso, vender en tendencia bajista y evitar mercados laterales.">
- Mercado / Temporalidad que opero más: <ej., "Oro XAUUSD en M15" o "BTCUSD en H1">
- Uso previsto: <Backtest / Bot en Vivo>

[Cómo Quiero Que Me Ayudes]
1. Primero analiza mi idea y **NO generes código todavía**.
2. Explica las reglas propuestas en lenguaje sencillo de trading (sin jerga de programación).
3. Hazme 3–4 preguntas cortas con **opciones recomendadas (A / B / C)** para elegir:
   - Estilo de confirmación de entrada (cruce rápido vs. filtro de tendencia + retroceso vs. filtro de temporalidad superior)
   - Estilo de Stop Loss y Take Profit (SL por ATR + TP 1:2, cerrar con señal contraria, o TP/SL de cesta por % de Equidad y Trailing)
   - Gestión multi-orden y cierre condicional (1 operación vs. Grid / piramidación / TP dividido / cierre parcial condicional, lote por % riesgo vs. escalado por Equidad)
   - Ajustes clave que conviene dejar editables en Backtest / Optuna sin sobrecargar la optimización
4. Cuando responda mis elecciones (o diga "usa lo recomendado"), utiliza la Section 10 (`multi_position = True`) si requiere múltiples órdenes o cierres condicionales, y genera el .py completo sin lookahead compatible con Live Bot y News Guard según custom_strategy.md.
```

---

## 🇩🇪 Deutsch (DE)

```text
Ich kann NICHT programmieren. Bitte hilf mir, eine QuantDeck Custom Python Strategy (.py) strikt nach der beigefügten Anleitung custom_strategy.md zu entwerfen und zu erstellen.

[Meine Trading-Idee (In einfachen Worten)]
- Wie die Strategie kaufen/verkaufen soll: <z. B. „Kaufe im Aufwärtstrend nach einem Rücksetzer, verkaufe im Abwärtstrend und vermeide Seitwärtsphasen.“>
- Markt / Zeiteinheit, die ich meistens handle: <z. B. „Gold XAUUSD auf M15“ oder „BTCUSD auf H1“>
- Geplante Nutzung: <Backtest / Live-Bot>

[Wie du mir dabei helfen sollst]
1. Analysiere zuerst meine Idee und **erstelle noch keinen Code**.
2. Erkläre die vorgeschlagenen Handelsregeln in verständlicher Trading-Sprache (ohne Programmier-Jargon).
3. Stelle mir 3–4 kurze Fragen mit **empfohlenen Auswahlmöglichkeiten (A / B / C)**:
   - Einstiegsbestätigung (schnelles Kreuzen vs. Trend- + Pullback-Filter vs. übergeordneter Zeitrahmen-Filter)
   - Stop-Loss- & Take-Profit-Logik (ATR-SL + 1:2 CRV, Gegensignal oder Basket-Equity-% TP/Trailing/Hard-SL)
   - Multi-Order- & Teilschließungslogik (1 Trade gleichzeitig vs. Grid / Pyramiding / Split-TP / bedingte Teilschließung, % Risiko vs. Equity-Lot)
   - Welche wichtigen Parameter für Backtest / Optuna anpassbar bleiben sollen, ohne die Optimierung zu überladen
4. Sobald ich meine Auswahl antworte (oder „nimm deine Empfehlung“ sage), nutze Section 10 (`multi_position = True`) bei mehreren Orders oder bedingten Schließungen und erstelle die vollständige .py-Datei nach allen Regeln aus custom_strategy.md.
```

---

## 🇸🇦 العربية (AE / AR)

```text
أنا لا أعرف البرمجة إطلاقًا. أرجو مساعدتي في تصميم وبناء استراتيجية بايثون مخصصة لـ QuantDeck بصيغة (.py) مع الالتزام التام بدليل custom_strategy.md المرفق.

[فكرة التداول الخاصة بي (بكلمات بسيطة)]
- كيف أريد للاستراتيجية أن تشتري وتبيع: <مثال: "الشراء في الاتجاه الصاعد بعد التصحيح، والبيع في الاتجاه الهابط، مع تجنب السوق العرضي.">
- السوق / الإطار الزمني الذي أتداوله غالبًا: <مثال: "الذهب XAUUSD على فريم M15" أو "BTCUSD على H1">
- الغرض من الاستخدام: <اختبار خلفي Backtest / تشغيل بوت حي Live Bot>

[كيف أريدك أن تساعدني]
1. حلّل فكرتي أولًا و**لا تكتب أي كود برمجي بعد**.
2. اشرح قواعد التداول المقترحة بلغة تداول بسيطة وواضحة (بدون مصطلحات برمجية).
3. اسألني 3–4 أسئلة قصيرة مع **خيارات مقترحة (A / B / C)** لأختار منها:
   - أسلوب تأكيد الدخول (تقاطع سريع أم فلتر اتجاه + تصحيح أم فلتر إطار زمني أعلى)
   - أسلوب وقف الخسارة وجني الأرباح (SL حسب ATR + هدف 1:2 أو الإغلاق عند الإشارة المعاكسة أو إغلاق السلة بنسبة % من Equity)
   - إدارة الصفقات المتعددة والإغلاق الشرطي (صفقة واحدة أم صفقات متعددة / Grid / تعزيز / تقسيم الأهداف / إغلاق جزئي شرطي، لوت % مخاطرة أم متدرج حسب رأس المال)
   - الإعدادات الأساسية التي أحتاج لتعديلها في Backtest / Optimizer دون إبطاء التحسين
4. بمجرد أن أختار (أو أقول "استخدم التوصية")، طبّق Section 10 (`multi_position = True`) عند وجود تعدد صفقات أو إغلاق شرطي وأنشئ ملف .py الكامل المتوافق مع البوت الحي و News Guard وفق custom_strategy.md.
```
