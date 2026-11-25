# QuantDeck Custom Indicator — Multilingual AI Prompt Templates (`prompt_indy.md`)

> **How to Use:** Attach [`custom_indy.md`](./custom_indy.md) to your AI chat (ChatGPT, Claude, Gemini, Cursor), then copy the prompt template in your preferred language below and fill in the `<...>` placeholders.
>
> **Not a coder?** If you just want to describe your idea in plain words and let the AI guide you with easy choices before building, use [`prompt_indy_nocode.md`](./prompt_indy_nocode.md) instead.

---

## 🇺🇸 English (EN)

```text
Create a QuantDeck Custom Indicator (.ts) strictly following every rule in the attached custom_indy.md blueprint.

[Metadata]
- Indicator Name: <e.g., Adaptive Keltner Breakout>
- Description: <1-line summary for the Indicator Browser>
- Pane: <'main' or 'sub'>
- Complexity Tier: <Case A (Standard lines/histogram/markers) or Case B (Canvas HUD/zones/badges)>

[Calculation Logic / Pine Script]
- <Describe the formula, entry/exit rules, or paste Pine Script here>
- HTF Requirement (if any): <e.g., H1/H4 non-repainting closed-bar alignment>

[User Settings (paramDefs)]
- <e.g., length (14), mult (2.0), showSignals (Show/Hide)>

[Visuals]
- <e.g., Line colors, histogram bars, Buy/Sell markers, or Canvas HUD table>

[Strict Output Requirements]
- Return a single self-contained .ts file using pure ES2020 JS syntax (no TS generics, no type annotations, no runtime imports).
- Use plain string literals for this.name, this.pane, and this.description.
- Sanitize all series & markers with MathUtils.sanitizeSeriesData() and verify against Section 11.
```

---

## 🇹🇭 ไทย (TH)

```text
โปรดสร้าง QuantDeck Custom Indicator (.ts) โดยปฏิบัติตามกฎในไฟล์ custom_indy.md ที่แนบมานี้อย่างเคร่งครัด

[ข้อมูลทั่วไป]
- ชื่อ Indicator: <ระบุชื่อ เช่น SuperTrend ATR Bands>
- คำอธิบาย (description): <ระบุสั้นๆ 1 บรรทัด สำหรับแสดงใน Indicator Browser>
- ตำแหน่งแสดงผล (pane): <'main' (ทับบนกราฟราคา) หรือ 'sub' (หน้าต่างแยกด้านล่าง)>
- ระดับความซับซ้อน: <Case A (เส้น/Histogram/Marker มาตรฐาน) หรือ Case B (มี Canvas HUD/ตาราง/Badge/โซนราคา)>

[ตรรกะและสูตรคำนวณ]
- <อธิบายเงื่อนไข, สูตรคณิตศาสตร์, หรือวางโค้ด Pine Script / Python ที่ต้องการแปลง>
- Multi-Timeframe (ถ้ามี): <เช่น ดึงข้อมูล H1/H4 มาเทียบแบบ Zero-Lookahead>

[พารามิเตอร์ที่ให้ผู้ใช้ปรับใน Settings (paramDefs)]
- <เช่น length (14), mult (2.0), showSignals (Show/Hide)>

[การแสดงผลบนกราฟ]
- <เช่น สีเส้น, แท่ง Histogram, จุดเข้า Buy/Sell Marker, หรือ Canvas HUD>

[ข้อกำหนดไฟล์ผลลัพธ์]
- ส่งออกเป็นไฟล์ .ts ไฟล์เดียวที่สมบูรณ์ โดยใช้เฉพาะ Pure ES2020 JS syntax (ห้ามใช้ TS generics, type annotations, หรือ runtime imports)
- กำหนด this.name, this.pane และ this.description เป็น string literal ('...' หรือ "...")
- ผ่านข้อมูลทุก series และ marker ด้วย MathUtils.sanitizeSeriesData() และตรวจสอบครบตาม Section 11
```

---

## 🇨🇳 中文 (CN / ZH)

```text
请严格按照附件 custom_indy.md 中的所有规范，创建一个 QuantDeck 自定义指标（.ts）。

[基本信息]
- 指标名称 (Indicator Name): <例如：Adaptive Keltner Breakout>
- 简介 (Description): <一句话描述，用于指标浏览器显示>
- 显示面板 (Pane): <'main'（主图叠加）或 'sub'（副图窗口）>
- 复杂度级别: <Case A（标准线条/柱状图/标记）或 Case B（Canvas HUD/区域/徽章）>

[计算逻辑 / Pine Script]
- <描述计算公式、买卖条件，或直接粘贴 Pine Script 代码>
- 多周期需求 (如有): <例如：H1/H4 无未来函数收盘 K 线对齐>

[用户设置参数 (paramDefs)]
- <例如：length (14), mult (2.0), showSignals (Show/Hide)>

[图表视觉样式]
- <例如：线条颜色、柱状图样式、Buy/Sell 信号标记、或 Canvas HUD 面板>

[严格输出要求]
- 输出单个完整的 .ts 文件，必须使用纯 ES2020 JS 语法（禁止使用 TS 泛型、类型注解或外部 runtime import）。
- this.name、this.pane 和 this.description 必须使用普通字符串字面量。
- 所有序列和标记必须通过 MathUtils.sanitizeSeriesData() 清洗，并对照 Section 11 完成检查。
```

---

## 🇯🇵 日本語 (JP / JA)

```text
添付の custom_indy.md のすべてのルールに厳密に従って、QuantDeck カスタムインジケーター（.ts）を作成してください。

[メタデータ]
- インジケーター名: <例: Adaptive Keltner Breakout>
- 説明 (Description): <インジケーターブラウザ用の1行サマリー>
- 表示ペイン (Pane): <'main'（メインチャート）または 'sub'（サブペイン）>
- 複雑度ティア: <Case A（標準ライン/ヒストグラム/マーカー）または Case B（Canvas HUD/ゾーン/バッジ）>

[計算ロジック / Pine Script]
- <計算式、エントリー/エグジット条件、または Pine Script を記述>
- マルチタイムフレーム要件 (ある場合): <例: H1/H4 のリペイントなし確定足アライメント>

[ユーザー設定 (paramDefs)]
- <例: length (14), mult (2.0), showSignals (Show/Hide)>

[ビジュアル表示]
- <例: ラインカラー、ヒストグラム、Buy/Sell マーカー、または Canvas HUD テーブル>

[厳守すべき出力要件]
- 純粋な ES2020 JS 構文のみで完結した単一の .ts ファイルを出力すること（TS ジェネリクス、型注釈、外部 runtime import は禁止）。
- this.name、this.pane、this.description にはプレーンな文字列リテラルを使用すること。
- すべてのシリーズとマーカーを MathUtils.sanitizeSeriesData() でサニタイズし、Section 11 を満たすこと。
```

---

## 🇰🇷 한국어 (KR / KO)

```text
첨부된 custom_indy.md 블루프린트의 모든 규칙을 엄격히 준수하여 QuantDeck 커스텀 지표(.ts)를 작성해 주세요.

[메타데이터]
- 지표 이름 (Indicator Name): <예: Adaptive Keltner Breakout>
- 설명 (Description): <지표 브라우저에 표시할 한 줄 요약>
- 표시 위치 (Pane): <'main' (메인 차트) 또는 'sub' (하단 보조 차트)>
- 복잡도 등급: <Case A (기본 라인/히스토그램/마커) 또는 Case B (Canvas HUD/존/배지)>

[계산 로직 / Pine Script]
- <공식, 매수/매도 조건을 설명하거나 Pine Script 코드를 붙여넣기>
- 다중 타임프레임 (필요 시): <예: H1/H4 리페인팅 없는 확정봉 정렬>

[사용자 설정 (paramDefs)]
- <예: length (14), mult (2.0), showSignals (Show/Hide)>

[시각적 표시]
- <예: 라인 색상, 히스토그램 막대, Buy/Sell 마커 또는 Canvas HUD 테이블>

[엄격한 출력 요구사항]
- 순수 ES2020 JS 문법만 사용한 단일 독립 .ts 파일로 반환할 것 (TS 제네릭, 타입 어노테이션, 외부 runtime import 금지).
- this.name, this.pane, this.description 은 일반 문자열 리터럴로 작성할 것.
- 모든 시리즈와 마커는 MathUtils.sanitizeSeriesData()로 정제하고 Section 11 체크리스트를 검증할 것.
```

---

## 🇻🇳 Tiếng Việt (VN / VI)

```text
Hãy tạo một QuantDeck Custom Indicator (.ts) tuân thủ nghiêm ngặt mọi quy tắc trong tệp custom_indy.md đính kèm.

[Thông tin chung]
- Tên Indicator: <ví dụ: Adaptive Keltner Breakout>
- Mô tả (Description): <Tóm tắt 1 dòng hiển thị trong Indicator Browser>
- Khung hiển thị (Pane): <'main' (trên biểu đồ giá) hoặc 'sub' (khung phụ bên dưới)>
- Mức độ phức tạp: <Case A (Đường/Histogram/Marker cơ bản) hoặc Case B (Canvas HUD/Vùng giá/Badge)>

[Logic tính toán / Pine Script]
- <Mô tả công thức, điều kiện tín hiệu, hoặc dán mã Pine Script tại đây>
- Đa khung thời gian (nếu có): <ví dụ: đồng bộ nến đóng H1/H4 không repaint>

[Tham số người dùng (paramDefs)]
- <ví dụ: length (14), mult (2.0), showSignals (Show/Hide)>

[Hiển thị trực quan]
- <ví dụ: Màu đường, cột histogram, marker Buy/Sell, hoặc bảng Canvas HUD>

[Yêu cầu đầu ra bắt buộc]
- Trả về một tệp .ts hoàn chỉnh duy nhất dùng cú pháp thuần ES2020 JS (không dùng TS generics, type annotations, hay runtime imports).
- Dùng chuỗi ký tự thuần (string literal) cho this.name, this.pane, và this.description.
- Làm sạch toàn bộ series & marker qua MathUtils.sanitizeSeriesData() và kiểm tra theo Section 11.
```

---

## 🇪🇸 Español (ES)

```text
Crea un Indicador Personalizado de QuantDeck (.ts) siguiendo estrictamente todas las reglas de la guía custom_indy.md adjunta.

[Metadatos]
- Nombre del Indicador: <ej., Adaptive Keltner Breakout>
- Descripción: <Resumen de 1 línea para el Explorador de Indicadores>
- Panel (Pane): <'main' o 'sub'>
- Nivel de Complejidad: <Case A (líneas/histograma/marcadores estándar) o Case B (Canvas HUD/zonas/etiquetas)>

[Lógica de Cálculo / Pine Script]
- <Describe la fórmula, reglas de entrada/salida o pega aquí tu código Pine Script>
- Requisito Multi-Timeframe (si aplica): <ej., alineación sin repintado con velas cerradas H1/H4>

[Configuración de Usuario (paramDefs)]
- <ej., length (14), mult (2.0), showSignals (Show/Hide)>

[Visualización]
- <ej., Colores de línea, barras de histograma, marcadores Buy/Sell o tabla Canvas HUD>

[Requisitos Estrictos de Salida]
- Devuelve un único archivo .ts autocontenido usando sintaxis pura ES2020 JS (sin genéricos TS, sin anotaciones de tipo ni imports externos).
- Usa literales de cadena simples para this.name, this.pane y this.description.
- Limpia todas las series y marcadores con MathUtils.sanitizeSeriesData() y verifica según la Section 11.
```

---

## 🇩🇪 Deutsch (DE)

```text
Erstelle einen QuantDeck Custom Indicator (.ts) und befolge dabei strikt alle Regeln der beigefügten Datei custom_indy.md.

[Metadaten]
- Indikator-Name: <z. B. Adaptive Keltner Breakout>
- Beschreibung (Description): <1-zeilige Zusammenfassung für den Indikator-Browser>
- Bereich (Pane): <'main' oder 'sub'>
- Komplexitätsstufe: <Case A (Standard-Linien/Histogramm/Marker) oder Case B (Canvas HUD/Zonen/Badges)>

[Berechnungslogik / Pine Script]
- <Formel, Ein-/Ausstiegsregeln beschreiben oder Pine Script hier einfügen>
- Multi-Timeframe-Anforderung (falls vorhanden): <z. B. H1/H4 Non-Repainting-Abgleich abgeschlossener Kerzen>

[Benutzereinstellungen (paramDefs)]
- <z. B. length (14), mult (2.0), showSignals (Show/Hide)>

[Visuelle Darstellung]
- <z. B. Linienfarben, Histogramm-Balken, Buy/Sell-Marker oder Canvas-HUD-Tabelle>

[Strikte Ausgabeanforderungen]
- Gib eine einzelne, eigenständige .ts-Datei in reinem ES2020-JS zurück (keine TS-Generics, keine Typ-Annotationen, keine externen Imports).
- Verwende einfache String-Literale für this.name, this.pane und this.description.
- Bereinige alle Serien & Marker mit MathUtils.sanitizeSeriesData() und prüfe gegen Section 11.
```

---

## 🇸🇦 العربية (AE / AR)

```text
قم بإنشاء مؤشر مخصص لـ QuantDeck بصيغة (.ts) مع الالتزام التام بجميع القواعد الواردة في ملف custom_indy.md المرفق.

[البيانات التعريفية]
- اسم المؤشر (Indicator Name): <مثال: Adaptive Keltner Breakout>
- الوصف (Description): <ملخص من سطر واحد لعرضه في متصفح المؤشرات>
- موضع العرض (Pane): <'main' (على الرسم البياني الرئيسي) أو 'sub' (نافذة فرعية أسفل الشارت)>
- مستوى التعقيد: <Case A (خطوط/هيستوغرام/إشارات قياسية) أو Case B (لوحة Canvas HUD / مناطق / شارات)>

[منطق الحساب / Pine Script]
- <اشرح المعادلة أو شروط الدخول والخروج أو الصق كود Pine Script هنا>
- متطلب الإطار الزمني الأعلى (إن وجد): <مثال: محاذاة الشموع المغلقة H1/H4 بدون إعادة رسم>

[إعدادات المستخدم (paramDefs)]
- <مثال: length (14), mult (2.0), showSignals (Show/Hide)>

[العرض المرئي]
- <مثال: ألوان الخطوط، أعمدة الهيستوغرام، إشارات Buy/Sell، أو جدول Canvas HUD>

[متطلبات الإخراج الصارمة]
- أعد ملف .ts واحد متكامل باستخدام صيغة ES2020 JS الصافية فقط (يُمنع استخدام TS generics أو type annotations أو runtime imports).
- استخدم نصوصًا ثابتة مباشرة (string literals) لكل من this.name و this.pane و this.description.
- قم بتنظيف جميع السلاسل والإشارات عبر MathUtils.sanitizeSeriesData() وتحقق من مطابقة Section 11.
```
