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
- HTF Requirement (if any): <e.g., H1/H4 zero-lookahead resampling>
- Reversal Mode: <close_opposite True/False>

[Risk & Position Sizing]
- SL / TP: <e.g., ATR(14) * 1.5 SL, 2.0 RR TP>
- Lot Sizing: <Default custom_sizing = True with _calculate_lot()>
- Live Bot & News Guard Compatibility: <Stateless or synced via self.is_live / self.open_positions_count so News Guard CLOSE_AND_FLAT recovery works cleanly>

[Strict Output Requirements]
- Subclass BaseStrategy with the try/except fallback, implement get_param_defs() & get_default_params().
- Use only pandas, numpy, math, and Python stdlib (do NOT import talib, pandas_ta, or custom news/HTTP libraries).
- Do NOT declare reserved platform or News Guard keys in get_param_defs().
- Verify against Section 9 before outputting.
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
- Multi-Timeframe (ถ้ามี): <เช่น H1/H4 แบบ Zero-Lookahead>
- โหมดกลับหน้า (Reversal): <close_opposite True/False>

[การบริหารความเสี่ยงและขนาด Lot]
- SL / TP: <เช่น ATR(14) * 1.5 SL, 2.0 RR TP>
- Lot Sizing: <ใช้ custom_sizing = True ร่วมกับ _calculate_lot()>
- ความเข้ากันได้กับ Live Bot และ News Guard: <ไม่เก็บ state ภายใน หรือซิงก์ผ่าน self.is_live / self.open_positions_count เพื่อให้กลับมาเทรดได้ถูกต้องหลัง News Guard สั่ง CLOSE_AND_FLAT>

[ข้อกำหนดไฟล์ผลลัพธ์]
- สืบทอดจาก BaseStrategy พร้อม try/except fallback และสร้างทั้ง get_param_defs() และ get_default_params()
- ใช้ได้เฉพาะ pandas, numpy, math และ Python stdlib เท่านั้น (ห้าม import talib, pandas_ta หรือไลบรารีข่าว/HTTP)
- ห้ามประกาศ key ที่ระบบสงวนไว้หรือ key ของ News Guard ใน get_param_defs()
- ตรวจสอบครบตาม Section 9 ก่อนส่งผลลัพธ์
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
- 多周期需求 (如有): <例如：H1/H4 无未来函数重采样>
- 反手模式: <close_opposite True/False>

[风控与仓位管理]
- 止损 / 止盈 (SL / TP): <例如：ATR(14) * 1.5 止损，2.0 盈亏比止盈>
- 仓位计算: <默认 custom_sizing = True 并使用 _calculate_lot()>
- 实盘机器人与 News Guard 兼容性: <无状态信号，或通过 self.is_live / self.open_positions_count 同步实盘持仓，确保 News Guard 触发 CLOSE_AND_FLAT 后可正常恢复>

[严格输出要求]
- 继承 BaseStrategy（包含 try/except fallback），并实现 get_param_defs() 和 get_default_params()。
- 仅使用 pandas、numpy、math 和 Python 标准库（禁止导入 talib、pandas_ta 或外部新闻/HTTP 库）。
- 禁止在 get_param_defs() 中声明平台保留键或 News Guard 保留键。
- 输出前请逐项对照 Section 9 检查。
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
- マルチタイムフレーム要件 (ある場合): <例: H1/H4 のリペイントなしリサンプリング>
- ドテン反転モード: <close_opposite True/False>

[リスク管理・ロット計算]
- SL / TP: <例: ATR(14) * 1.5 SL、2.0 RR TP>
- ロット計算: <custom_sizing = True と _calculate_lot() を使用>
- ライブボット & News Guard 互換性: <ステートレス設計、または self.is_live / self.open_positions_count と同期し、News Guard の CLOSE_AND_FLAT 後に正常復帰できるようにすること>

[厳守すべき出力要件]
- try/except フォールバック付きで BaseStrategy を継承し、get_param_defs() と get_default_params() を実装すること。
- pandas、numpy、math、Python 標準ライブラリのみを使用すること（talib、pandas_ta、外部ニュース/HTTP ライブラリは禁止）。
- get_param_defs() にプラットフォーム予約キーや News Guard 予約キーを定義しないこと。
- 出力前に Section 9 のチェックリストを確認すること。
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
- 다중 타임프레임 (필요 시): <예: H1/H4 리페인팅 없는 리샘플링>
- 반대 신호 청산 모드: <close_opposite True/False>

[리스크 및 랏 사이징]
- SL / TP: <예: ATR(14) * 1.5 SL, 2.0 RR TP>
- 랏 사이징: <custom_sizing = True 및 _calculate_lot() 사용>
- 라이브 봇 및 News Guard 호환성: <무상태(Stateless) 구조 또는 self.is_live / self.open_positions_count 기반 동기화로 News Guard CLOSE_AND_FLAT 이후에도 정상 복구되도록 구현>

[엄격한 출력 요구사항]
- try/except 폴백이 포함된 BaseStrategy를 상속하고 get_param_defs() 및 get_default_params()를 구현할 것.
- pandas, numpy, math 및 Python 표준 라이브러리만 사용할 것 (talib, pandas_ta, 외부 뉴스/HTTP 라이브러리 사용 금지).
- get_param_defs()에 플랫폼 예약 키나 News Guard 예약 키를 선언하지 말 것.
- 출력 전 Section 9 체크리스트를 검증할 것.
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
- Đa khung thời gian (nếu có): <ví dụ: lấy mẫu lại H1/H4 không lookahead>
- Chế độ đảo chiều: <close_opposite True/False>

[Quản lý rủi ro & khối lượng]
- SL / TP: <ví dụ: ATR(14) * 1.5 SL, 2.0 RR TP>
- Tính Lot: <Dùng custom_sizing = True cùng _calculate_lot()>
- Tương thích Live Bot & News Guard: <Không lưu state nội bộ hoặc đồng bộ qua self.is_live / self.open_positions_count để phục hồi chính xác sau khi News Guard kích hoạt CLOSE_AND_FLAT>

[Yêu cầu đầu ra bắt buộc]
- Kế thừa BaseStrategy kèm try/except fallback, triển khai đủ get_param_defs() và get_default_params().
- Chỉ dùng pandas, numpy, math và thư viện chuẩn Python (KHÔNG import talib, pandas_ta hay thư viện tin tức/HTTP).
- Không khai báo các khóa hệ thống hoặc khóa News Guard trong get_param_defs().
- Kiểm tra đối chiếu theo Section 9 trước khi xuất mã.
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
- Requisito Multi-Timeframe (si aplica): <ej., remuestreo H1/H4 sin lookahead>
- Modo Reversión: <close_opposite True/False>

[Riesgo y Tamaño de Lote]
- SL / TP: <ej., ATR(14) * 1.5 SL, 2.0 RR TP>
- Lotaje: <custom_sizing = True con _calculate_lot()>
- Compatibilidad con Live Bot y News Guard: <Sin estado interno o sincronizada con self.is_live / self.open_positions_count para recuperarse limpiamente tras un CLOSE_AND_FLAT de News Guard>

[Requisitos Estrictos de Salida]
- Hereda de BaseStrategy con el fallback try/except e implementa get_param_defs() y get_default_params().
- Usa solo pandas, numpy, math y la librería estándar de Python (NO importes talib, pandas_ta ni librerías externas de noticias/HTTP).
- No declares claves reservadas de la plataforma ni de News Guard en get_param_defs().
- Verifica todo según la Section 9 antes de responder.
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
- Multi-Timeframe-Anforderung (falls vorhanden): <z. B. H1/H4 Resampling ohne Lookahead>
- Umkehrmodus: <close_opposite True/False>

[Risiko- & Positionsgrößenmanagement]
- SL / TP: <z. B. ATR(14) * 1.5 SL, 2.0 RR TP>
- Lot-Berechnung: <custom_sizing = True mit _calculate_lot()>
- Live-Bot- & News-Guard-Kompatibilität: <Zustandslos oder über self.is_live / self.open_positions_count synchronisiert, damit nach einem News-Guard CLOSE_AND_FLAT eine saubere Wiederaufnahme erfolgt>

[Strikte Ausgabeanforderungen]
- Leite von BaseStrategy mit try/except-Fallback ab und implementiere get_param_defs() sowie get_default_params().
- Verwende ausschließlich pandas, numpy, math und die Python-Standardbibliothek (KEIN talib, pandas_ta oder externe News/HTTP-Bibliotheken).
- Deklariere keine reservierten Plattform- oder News-Guard-Schlüssel in get_param_defs().
- Prüfe vor der Ausgabe alle Punkte in Section 9.
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
- متطلب الإطار الزمني الأعلى (إن وجد): <مثال: إعادة تشكيل H1/H4 بدون تطلع مستقبلي>
- وضع الانعكاس: <close_opposite True/False>

[إدارة المخاطر وحجم اللوت]
- وقف الخسارة / جني الأرباح (SL / TP): <مثال: ATR(14) * 1.5 SL و 2.0 RR TP>
- حساب اللوت: <تفعيل custom_sizing = True مع _calculate_lot()>
- التوافق مع البوت الحي و News Guard: <تصميم بدون حالة داخلية أو متزامن عبر self.is_live / self.open_positions_count لضمان التعافي السليم بعد تفعيل CLOSE_AND_FLAT من News Guard>

[متطلبات الإخراج الصارمة]
- ارث من BaseStrategy مع try/except fallback ونفّذ كلًا من get_param_defs() و get_default_params().
- استخدم فقط pandas و numpy و math ومكتبة بايثون القياسية (يُمنع استيراد talib أو pandas_ta أو مكتبات الأخبار/HTTP).
- لا تعرّف المفاتيح المحجوزة للمنصة أو لـ News Guard داخل get_param_defs().
- تحقق من مطابقة جميع بنود Section 9 قبل إخراج الكود.
```
