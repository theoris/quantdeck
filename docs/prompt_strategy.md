# QuantDeck Custom Python Strategy — Multilingual AI Prompt Templates (`prompt_strategy.md`)

> **How to Use:** Attach [`custom_strategy.md`](./custom_strategy.md) to your AI chat (ChatGPT, Claude, Gemini, Cursor), then copy the prompt template in your preferred language below and fill in the `<...>` placeholders.
>
> **Not a coder?** If you just want to describe your trading idea in plain words and let the AI guide you with easy choices before building, use [`prompt_strategy_nocode.md`](./prompt_strategy_nocode.md) instead.

---

## 🇺🇸 English (EN)

```text
Create a QuantDeck Custom Python Strategy (.py) strictly following every rule in the attached custom_strategy.md blueprint.

[Strategy Metadata]
- File Name: <e.g., ema_rsi_pullback.py>
- Strategy Name: <e.g., EMA RSI Pullback>
- Description: <1-line summary for Backtest & Bot Manager>

[Entry & Exit Logic]
- <Describe BUY/SELL conditions, indicators, or paste Pine Script / rules here>
- Execution Architecture: <Single-Order (1 trade at a time) OR Multi-Position (multi_position = True with on_bar + check_intrabar_basket for Grid / Pyramid / Split-TP / Conditional Partial Close)>
- Multi-Order / Conditional Rules (if Multi-Position): <e.g., max orders, step distance, weighted-avg TP, LIFO pruning, basket equity TP/SL/Trail, close BUY/SELL/IDs conditions>
- HTF Requirement (if any): <e.g., H1/H4 zero-lookahead resampling>
- Reversal Mode (if Single-Order): <close_opposite True/False>

[Risk & Position Sizing]
- SL / TP: <e.g., ATR(14) * 1.5 SL, 2.0 RR TP, OR Basket Equity % TP/Hard SL>
- Lot Sizing: <Default custom_sizing = True with _calculate_lot(), OR Equity-scaled base_lot / layer progression>
- Live Bot & News Guard Compatibility: <Stateless or synced via state['open_positions'] / self.open_positions_count (do not depend on p['layer'] in Live) so restarts and News Guard CLOSE_AND_FLAT recovery work cleanly>

[Strict Output Requirements]
- Subclass BaseStrategy with the try/except fallback (including multi_position, balance, equity, on_bar, check_intrabar_basket, and coerce_bool fallback), implement get_param_defs() & get_default_params().
- Use only pandas, numpy, math, and Python stdlib (do NOT import talib, pandas_ta, or custom news/HTTP libraries).
- Keep tunable parameters concise (avoid unnecessary unfixed select dropdowns for Optuna efficiency) and do NOT declare reserved platform or News Guard keys in get_param_defs().
- Verify against Section 9 (and Section 10 if multi_position = True) before outputting.
```

---

## 🇹🇭 ไทย (TH)

```text
โปรดสร้าง QuantDeck Custom Python Strategy (.py) โดยปฏิบัติตามกฎในไฟล์ custom_strategy.md ที่แนบมานี้อย่างเคร่งครัด

[ข้อมูล Strategy]
- ชื่อไฟล์: <เช่น ema_rsi_pullback.py>
- ชื่อ Strategy: <เช่น EMA RSI Pullback>
- คำอธิบาย (description): <สรุป 1 บรรทัดสำหรับแสดงใน Backtest และ Bot Manager>

[ตรรกะการเข้า-ออกออเดอร์]
- <อธิบายเงื่อนไข BUY/SELL, อินดิเคเตอร์, หรือวางโค้ด Pine Script ที่ต้องการแปลง>
- โครงสร้างการเปิด-ปิดออเดอร์: <Single-Order (ทีละ 1 ไม้) หรือ Multi-Position (multi_position = True ใช้ on_bar + check_intrabar_basket สำหรับ Grid / Pyramid / แบ่ง TP / ปิดรายไม้ตามเงื่อนไข)>
- เงื่อนไขหลายออเดอร์และการปิดตามเงื่อนไข (ถ้าใช้ Multi-Position): <เช่น จำนวนไม้สูงสุด, ระยะก้าว ATR, ปิดรวมเฉลี่ย BUY/SELL, ตัดไม้กำไรช่วยไม้ลึก (close_ids), หรือ Basket Equity TP/SL/Trail>
- Multi-Timeframe (ถ้ามี): <เช่น H1/H4 แบบ Zero-Lookahead>
- โหมดกลับหน้า (ถ้า Single-Order): <close_opposite True/False>

[การบริหารความเสี่ยงและขนาด Lot]
- SL / TP: <เช่น ATR(14) * 1.5 SL, 2.0 RR TP หรือ Basket Equity % TP / Hard Cut-Loss>
- Lot Sizing: <ใช้ custom_sizing = True ร่วมกับ _calculate_lot() หรือปรับ Lot ตาม Equity / Layer>
- ความเข้ากันได้กับ Live Bot และ News Guard: <ใช้ข้อมูลจาก state['open_positions'] / self.open_positions_count โดยไม่อ้าง field เฉพาะ backtest อย่าง p['layer'] เพื่อให้รีสตาร์ทและฟื้นตัวหลัง News Guard สั่ง CLOSE_AND_FLAT ได้สมบูรณ์>

[ข้อกำหนดไฟล์ผลลัพธ์]
- สืบทอดจาก BaseStrategy พร้อม try/except fallback ฉบับเต็ม (มี multi_position, balance, equity, on_bar, check_intrabar_basket, coerce_bool fallback) และสร้าง get_param_defs() + get_default_params()
- ใช้ได้เฉพาะ pandas, numpy, math และ Python stdlib เท่านั้น (ห้าม import talib, pandas_ta หรือไลบรารีข่าว/HTTP)
- คุมจำนวนพารามิเตอร์ให้เหมาะสมกับการ Optimize (ไม่สร้าง select dropdown ที่ไม่จำเป็นเยอะเกินไป) และห้ามประกาศ key ที่ระบบสงวนไว้หรือ key ของ News Guard
- ตรวจสอบครบตาม Section 9 (และ Section 10 หากใช้ multi_position = True) ก่อนส่งผลลัพธ์
```

---

## 🇨🇳 中文 (CN / ZH)

```text
请严格按照附件 custom_strategy.md 中的所有规范，创建一个 QuantDeck 自定义 Python 策略（.py）。

[策略基本信息]
- 文件名: <例如：ema_rsi_pullback.py>
- 策略名称: <例如：EMA RSI Pullback>
- 简介 (Description): <用于回测与机器人管理的一句话说明>

[开平仓逻辑]
- <描述 BUY/SELL 条件、指标公式，或粘贴 Pine Script 逻辑>
- 执行架构: <单笔持仓 (Single-Order) 或 多单持仓 (multi_position = True + on_bar + check_intrabar_basket，适用于网格/加仓/分批止盈/条件平仓)>
- 多单与条件平仓规则 (若使用多单): <例如：最大单数、ATR 间距、均价止盈、LIFO 剪枝、账户权益% 整体止盈止损>
- 多周期需求 (如有): <例如：H1/H4 无未来函数重采样>
- 反手模式 (单笔模式): <close_opposite True/False>

[风控与仓位管理]
- 止损 / 止盈 (SL / TP): <例如：ATR(14) * 1.5 止损，2.0 盈亏比止盈，或 Basket 权益% 止盈/硬止损>
- 仓位计算: <默认 custom_sizing = True 并使用 _calculate_lot()，或按账户净值动态计算手数>
- 实盘机器人与 News Guard 兼容性: <使用 state['open_positions'] / self.open_positions_count 同步实盘持仓（实盘不要依赖 p['layer']），确保重启及 News Guard 触发 CLOSE_AND_FLAT 后正常恢复>

[严格输出要求]
- 继承 BaseStrategy（包含 Section 8 完整 try/except fallback），并实现 get_param_defs() 和 get_default_params()。
- 仅使用 pandas、numpy、math 和 Python 标准库（禁止导入 talib、pandas_ta 或外部新闻/HTTP 库）。
- 控制可调参数数量以利于 Optuna 优化（避免非必要的多选 select 下拉框），禁止声明平台保留键或 News Guard 保留键。
- 输出前请逐项对照 Section 9（若启用 multi_position = True 则并核对 Section 10）。
```

---

## 🇯🇵 日本語 (JP / JA)

```text
添付の custom_strategy.md のすべてのルールに厳密に従って、QuantDeck カスタム Python ストラテジー（.py）を作成してください。

[ストラテジー情報]
- ファイル名: <例: ema_rsi_pullback.py>
- ストラテジー名: <例: EMA RSI Pullback>
- 説明 (Description): <バックテストおよびボット管理用の1行サマリー>

[エントリー・エグジットロジック]
- <BUY/SELL 条件、インジケーター、または Pine Script を記述>
- 執行アーキテクチャ: <単一ポジション OR マルチポジション (multi_position = True + on_bar + check_intrabar_basket: グリッド/ピラミッディング/分割利確/条件付き部分決済用)>
- マルチオーダー/条件決済ルール (該当時): <例: 最大ポジション数、ATR 間隔、加重平均 TP、LIFO 剪定、バスケット有効証拠金% TP/SL>
- マルチタイムフレーム要件 (ある場合): <例: H1/H4 のリペイントなしリサンプリング>
- ドテン反転モード (単一ポジション時): <close_opposite True/False>

[リスク管理・ロット計算]
- SL / TP: <例: ATR(14) * 1.5 SL、2.0 RR TP、またはバスケット証拠金% 利確/損切り>
- ロット計算: <custom_sizing = True と _calculate_lot()、または証拠金連動ロット>
- ライブボット & News Guard 互換性: <state['open_positions'] / self.open_positions_count で同期し（ライブでは p['layer'] に依存しない）、再起動や News Guard の CLOSE_AND_FLAT 後に正常復帰できるようにすること>

[厳守すべき出力要件]
- Section 8 の完全な try/except フォールバック付きで BaseStrategy を継承し、get_param_defs() と get_default_params() を実装すること。
- pandas、numpy、math、Python 標準ライブラリのみを使用すること（talib、pandas_ta、外部ニュース/HTTP ライブラリは禁止）。
- Optuna 最適化効率のため不要な select ドロップダウンを増やしすぎず、予約キーも定義しないこと。
- 出力前に Section 9（multi_position = True の場合は Section 10 も）を確認すること。
```

---

## 🇰🇷 한국어 (KR / KO)

```text
첨부된 custom_strategy.md 블루프린트의 모든 규칙을 엄격히 준수하여 QuantDeck 커스텀 Python 전략(.py)을 작성해 주세요.

[전략 메타데이터]
- 파일명: <예: ema_rsi_pullback.py>
- 전략 이름: <예: EMA RSI Pullback>
- 설명 (Description): <백테스트 및 봇 매니저용 한 줄 요약>

[진입 및 청산 로직]
- <BUY/SELL 조건, 지표 설명 또는 Pine Script 코드 붙여넣기>
- 실행 아키텍처: <단일 포지션 OR 다중 포지션 (multi_position = True + on_bar + check_intrabar_basket: 그리드/피라미딩/분할 익절/조건부 부분 청산용)>
- 다중 주문 및 조건부 청산 규칙 (해당 시): <예: 최대 주문 수, ATR 간격, 평균 진입가 TP, LIFO 부분 정리, 바스켓 자산 % 익절/손절>
- 다중 타임프레임 (필요 시): <예: H1/H4 리페인팅 없는 리샘플링>
- 반대 신호 청산 모드 (단일 포지션 시): <close_opposite True/False>

[리스크 및 랏 사이징]
- SL / TP: <예: ATR(14) * 1.5 SL, 2.0 RR TP 또는 바스켓 자산 % TP/Hard SL>
- 랏 사이징: <custom_sizing = True 및 _calculate_lot() 또는 자산 연동 랏 계산>
- 라이브 봇 및 News Guard 호환성: <state['open_positions'] / self.open_positions_count 기반으로 동기화(라이브에서 p['layer'] 의존 금지)하여 재시작 및 News Guard CLOSE_AND_FLAT 이후에도 정상 복구되도록 구현>

[엄격한 출력 요구사항]
- Section 8의 완전한 try/except 폴백이 포함된 BaseStrategy를 상속하고 get_param_defs() 및 get_default_params()를 구현할 것.
- pandas, numpy, math 및 Python 표준 라이브러리만 사용할 것 (talib, pandas_ta, 외부 뉴스/HTTP 라이브러리 사용 금지).
- Optuna 효율을 위해 불필요한 select 드롭다운 남발을 피하고 예약 키를 선언하지 말 것.
- 출력 전 Section 9(다중 포지션은 Section 10 포함) 체크리스트를 검증할 것.
```

---

## 🇻🇳 Tiếng Việt (VN / VI)

```text
Hãy tạo một QuantDeck Custom Python Strategy (.py) tuân thủ nghiêm ngặt mọi quy tắc trong tệp custom_strategy.md đính kèm.

[Thông tin Strategy]
- Tên tệp: <ví dụ: ema_rsi_pullback.py>
- Tên Strategy: <ví dụ: EMA RSI Pullback>
- Mô tả (Description): <Tóm tắt 1 dòng cho Backtest & Bot Manager>

[Logic vào/ra lệnh]
- <Mô tả điều kiện BUY/SELL, chỉ báo hoặc dán mã Pine Script tại đây>
- Kiến trúc thực thi: <1 lệnh (Single-Order) HOẶC Nhiều lệnh (multi_position = True kèm on_bar + check_intrabar_basket cho Grid / Nhồi lệnh / Chia TP / Đóng từng phần theo điều kiện)>
- Quy tắc nhiều lệnh & đóng có điều kiện (nếu dùng Multi-Position): <ví dụ: số lệnh tối đa, bước giá ATR, TP theo giá trung bình, tỉa lệnh LIFO, chốt lời/cắt lỗ rổ % Equity>
- Đa khung thời gian (nếu có): <ví dụ: lấy mẫu lại H1/H4 không lookahead>
- Chế độ đảo chiều (chế độ 1 lệnh): <close_opposite True/False>

[Quản lý rủi ro & khối lượng]
- SL / TP: <ví dụ: ATR(14) * 1.5 SL, 2.0 RR TP hoặc Basket Equity % TP/Hard SL>
- Tính Lot: <Dùng custom_sizing = True cùng _calculate_lot() hoặc lot tỷ lệ theo Equity>
- Tương thích Live Bot & News Guard: <Đồng bộ qua state['open_positions'] / self.open_positions_count (không phụ thuộc p['layer'] khi chạy Live) để khởi động lại và phục hồi sạch sau khi News Guard kích hoạt CLOSE_AND_FLAT>

[Yêu cầu đầu ra bắt buộc]
- Kế thừa BaseStrategy kèm try/except fallback đầy đủ (Section 8), triển khai đủ get_param_defs() và get_default_params().
- Chỉ dùng pandas, numpy, math và thư viện chuẩn Python (KHÔNG import talib, pandas_ta hay thư viện tin tức/HTTP).
- Giữ số lượng tham số gọn cho Optuna (tránh lạm dụng select dropdown không cần thiết) và không khai báo khóa hệ thống hoặc khóa News Guard.
- Kiểm tra đối chiếu theo Section 9 (và Section 10 nếu multi_position = True) trước khi xuất mã.
```

---

## 🇪🇸 Español (ES)

```text
Crea una Estrategia Personalizada en Python para QuantDeck (.py) siguiendo estrictamente todas las reglas de la guía custom_strategy.md adjunta.

[Metadatos de la Estrategia]
- Nombre de archivo: <ej., ema_rsi_pullback.py>
- Nombre de estrategia: <ej., EMA RSI Pullback>
- Descripción: <Resumen de 1 línea para Backtest y Bot Manager>

[Lógica de Entrada y Salida]
- <Describe las condiciones BUY/SELL, indicadores o pega aquí tu Pine Script>
- Arquitectura de ejecución: <Orden única (Single-Order) O Multi-Posición (multi_position = True con on_bar + check_intrabar_basket para Grid / Piramidación / TP dividido / Cierre parcial condicional)>
- Reglas Multi-Orden / Cierre Condicional (si aplica): <ej., máximo de órdenes, paso por ATR, TP por precio medio, poda LIFO, TP/SL global por % de Equidad>
- Requisito Multi-Timeframe (si aplica): <ej., remuestreo H1/H4 sin lookahead>
- Modo Reversión (Orden única): <close_opposite True/False>

[Riesgo y Tamaño de Lote]
- SL / TP: <ej., ATR(14) * 1.5 SL, 2.0 RR TP o TP/SL de Cesta por % de Equidad>
- Lotaje: <custom_sizing = True con _calculate_lot() o lote escalado por Equidad>
- Compatibilidad con Live Bot y News Guard: <Sincronizada vía state['open_positions'] / self.open_positions_count (sin depender de p['layer'] en Vivo) para recuperarse tras reinicios o CLOSE_AND_FLAT de News Guard>

[Requisitos Estrictos de Salida]
- Hereda de BaseStrategy con el fallback completo try/except (Section 8) e implementa get_param_defs() y get_default_params().
- Usa solo pandas, numpy, math y la librería estándar de Python (NO importes talib, pandas_ta ni librerías externas de noticias/HTTP).
- Mantén concisos los parámetros ajustables para Optuna (evita select innecesarios) y no declares claves reservadas de la plataforma ni de News Guard.
- Verifica todo según la Section 9 (y Section 10 si multi_position = True) antes de responder.
```

---

## 🇩🇪 Deutsch (DE)

```text
Erstelle eine QuantDeck Custom Python Strategy (.py) und befolge dabei strikt alle Regeln der beigefügten Datei custom_strategy.md.

[Strategie-Metadaten]
- Dateiname: <z. B. ema_rsi_pullback.py>
- Strategiename: <z. B. EMA RSI Pullback>
- Beschreibung: <1-zeilige Zusammenfassung für Backtest & Bot Manager>

[Einstiegs- & Ausstiegslogik]
- <BUY/SELL-Bedingungen und Indikatoren beschreiben oder Pine Script einfügen>
- Ausführungsarchitektur: <Single-Order ODER Multi-Position (multi_position = True mit on_bar + check_intrabar_basket für Grid / Pyramiding / Split-TP / bedingte Teilschließung)>
- Multi-Order- & Bedingte Schließungsregeln (falls zutreffend): <z. B. Max-Orders, ATR-Abstand, Durchschnittskurs-TP, LIFO-Pruning, Basket-Equity-% TP/SL>
- Multi-Timeframe-Anforderung (falls vorhanden): <z. B. H1/H4 Resampling ohne Lookahead>
- Umkehrmodus (Single-Order): <close_opposite True/False>

[Risiko- & Positionsgrößenmanagement]
- SL / TP: <z. B. ATR(14) * 1.5 SL, 2.0 RR TP oder Basket-Equity-% TP/Hard-SL>
- Lot-Berechnung: <custom_sizing = True mit _calculate_lot() oder Equity-skalierte Lotgröße>
- Live-Bot- & News-Guard-Kompatibilität: <Über state['open_positions'] / self.open_positions_count synchronisiert (im Live-Betrieb nicht auf p['layer'] verlassen), damit Neustarts und News-Guard CLOSE_AND_FLAT sauber funktionieren>

[Strikte Ausgabeanforderungen]
- Leite von BaseStrategy mit vollständigem try/except-Fallback (Section 8) ab und implementiere get_param_defs() sowie get_default_params().
- Verwende ausschließlich pandas, numpy, math und die Python-Standardbibliothek (KEIN talib, pandas_ta oder externe News/HTTP-Bibliotheken).
- Halte Tuning-Parameter kompakt für Optuna (vermeide unnötige select-Dropdowns) und deklariere keine reservierten Plattform- oder News-Guard-Schlüssel.
- Prüfe vor der Ausgabe alle Punkte in Section 9 (und Section 10 bei multi_position = True).
```

---

## 🇸🇦 العربية (AE / AR)

```text
قم بإنشاء استراتيجية بايثون مخصصة لـ QuantDeck بصيغة (.py) مع الالتزام التام بجميع القواعد الواردة في ملف custom_strategy.md المرفق.

[البيانات التعريفية للاستراتيجية]
- اسم الملف: <مثال: ema_rsi_pullback.py>
- اسم الاستراتيجية: <مثال: EMA RSI Pullback>
- الوصف (Description): <ملخص من سطر واحد للاختبار الخلفي ومدير البوت>

[منطق الدخول والخروج]
- <اشرح شروط BUY/SELL والمؤشرات أو الصق كود Pine Script هنا>
- معمارية التنفيذ: <صفقة واحدة (Single-Order) أو صفقات متعددة (multi_position = True مع on_bar + check_intrabar_basket للشبكة Grid / التبريد / تقسيم الأهداف / الإغلاق الجزئي الشرطي)>
- قواعد الصفقات المتعددة والإغلاق الشرطي (عند التعدد): <مثال: أقصى عدد صفقات، خطوة ATR، جني ربح متوسط السعر، تقليم LIFO، حماية السلة بنسبة % من الرصيد>
- متطلب الإطار الزمني الأعلى (إن وجد): <مثال: إعادة تشكيل H1/H4 بدون تطلع مستقبلي>
- وضع الانعكاس (للصفقة الواحدة): <close_opposite True/False>

[إدارة المخاطر وحجم اللوت]
- وقف الخسارة / جني الأرباح (SL / TP): <مثال: ATR(14) * 1.5 SL و 2.0 RR TP أو نسبة % من Equity للسلة>
- حساب اللوت: <تفعيل custom_sizing = True مع _calculate_lot() أو لوت متدرج حسب رأس المال>
- التوافق مع البوت الحي و News Guard: <مزامنة عبر state['open_positions'] / self.open_positions_count (عدم الاعتماد على p['layer'] في الحساب الحقيقي) لضمان التعافي السليم بعد إعادة التشغيل أو CLOSE_AND_FLAT>

[متطلبات الإخراج الصارمة]
- ارث من BaseStrategy مع try/except fallback الكامل (Section 8) ونفّذ get_param_defs() و get_default_params().
- استخدم فقط pandas و numpy و math ومكتبة بايثون القياسية (يُمنع استيراد talib أو pandas_ta أو مكتبات الأخبار/HTTP).
- أبقِ المعاملات القابلة للتحسين مركّزة لكفاءة Optuna وتجنب المفاتيح المحجوزة للمنصة أو News Guard.
- تحقق من بنود Section 9 (و Section 10 عند استخدام multi_position = True) قبل إخراج الكود.
```
