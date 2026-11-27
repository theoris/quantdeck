# QuantDeck Custom Indicator Development Guide & AI Blueprint (`.ts`)

Welcome to the official **QuantDeck Custom Indicator SDK & AI Prompting Reference** (built on **TradingView Lightweight Charts v4**).

> **💡 How to Use This File with Any AI Assistant (ChatGPT, Claude, Gemini, Cursor):**
> Attach or paste this `custom_indy.md` file into your AI chat and describe the indicator you want (or paste a Pine Script / formula). This guide provides the exact runtime compatibility rules, lifecycle contracts, multi-series patterns, canvas primitive helpers, HTF fetching templates, and data-sanitization guards so the AI generates a **100% crash-free, standalone `.ts` indicator** for `custom_indicators/`.

---

## 🚀 Quick-Start AI Prompt Structure

To get a 100% compatible `.ts` indicator on the first try, attach this `custom_indy.md` file and paste the prompt template below with your indicator details *(for localized prompt templates in TH, ZH, JA, KO, VI, ES, DE, and AR, see [`prompt_indy.md`](./prompt_indy.md))*:

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
- Sanitize all series & markers with MathUtils.sanitizeSeriesData() and verify against Section 10.
```

---

## 🤖 Section 0: Autonomous AI Assistant Directives & Decision Tree

**If you are an AI Assistant generating a QuantDeck Custom Indicator (`.ts`), follow these rules strictly:**

### 0.1 AI Decision Tree & Smart Clarification Protocol
1. **Clarify Ambiguities Before Coding (Never Guess Unclear Requirements)**:
   - **If the user's prompt is complete and unambiguous** (or explicitly says *"use defaults / decide for me"*): proceed immediately to generate a single, complete, self-contained `.ts` file.
   - **If the user's prompt is missing critical details or is ambiguous** (e.g., unclear `pane` `'main'` vs `'sub'`, missing formula/thresholds, unclear Case A standard lines vs Case B Canvas HUD/zones, or unclear HTF/Buy-Sell marker behavior): **DO NOT guess blindly.** Ask **2–4 concise, numbered questions** BEFORE writing code, and **include a QuantDeck-recommended option for each question** (e.g., *"1. Pane placement: `'main'` overlay or `'sub'` window? (Recommended: `'sub'` for bounded 0–100 oscillators)"*) so the user can simply confirm or adjust.
   - **Never ask low-level SDK/syntax questions** (e.g., Blob URL syntax, `MathUtils`, `setIndicatorMarkers`, or `isDestroyed`); handle all QuantDeck runtime contracts automatically.
2. **Write Pure ES2020 JavaScript Inside the `.ts` File (CRITICAL)**:
   - Even though the file extension is `.ts`, QuantDeck loads custom indicators dynamically in the browser via a `Blob URL` (`import(blobUrl)`) after passing through a lightweight regex transpiler.
   - **You MUST write pure ES2020 JavaScript syntax** (no TypeScript generics `<T>`, no `interface`, no `public`/`private`, no `: type` annotations). Pure ES2020 JavaScript is 100% valid `.ts` AND executes natively in the browser without any transpile errors!
3. **"Always Include" vs. "Include Only When Needed" Parameters**:
   - **Case A — Standard Line / Band / Oscillator Indicator (No Canvas HUD Table or Banner)**:
     - Include **only** the indicator's math parameters (`period`, `multiplier`, etc.), visual styling (`color`, `lineWidth`, `lineStyle`), and `showSignals` (if it plots markers).
     - **Do NOT clutter** the settings modal with `bannerPosition`, `dashboardPosition`, `themeMode`, or `priceDigits` if the indicator only draws standard chart lines/histograms.
   - **Case B — Advanced SMC / Institutional / Multi-Layer HUD Indicator (Uses Canvas Drawings, Zones, Price Badges, or Dashboard Tables)**:
     - **MUST include** `themeMode` (`'Dark'` | `'Light'`), `priceDigits` (`-1` Auto to `6`), `bannerPosition` (default `'Top Right'`), and `dashboardPosition` (default `'Bottom Right'`), along with `MathUtils.detectPricePrecision()`, `MathUtils.getThemePalette()`, and `MathUtils.drawPillBadge()`.
     - **📌 Critical Rule (Case B):** For any indicator with Canvas HUD, zones, or text badges, always copy the entire `MathUtils` class into the file.
4. **Boolean Parameters Rule**:
   - Never use `type: 'boolean'` for settings that need clear On/Off dropdowns in custom indicators; prefer `type: 'select'` with `{ label: 'Show', value: 1 }` and `{ label: 'Hide', value: 0 }`, and evaluate with `Number(this.params.showSignals) !== 0`.

### 0.2 Strict Prohibitions (What Never to Do)
- ❌ **NEVER use TypeScript Generics** (`<T>`, `<T extends ...>`, `Record<string, any>`, `Array<...>`, `Map<string, any>`, `Promise<any>`). The browser loader will fail with `SyntaxError: Unexpected token '<'`.
- ❌ **NEVER use TypeScript Type Annotations, `interface`, `type`, `public`/`private`, or `as` casts** (`const x: number = 1`, `bars: any[]`, `const arr: Array<{ time: number; value: number }> = []`). Inline object type annotations with semicolons cause `SyntaxError: Missing initializer in const declaration`. Write **plain ES2020 JavaScript**!
- ❌ **NEVER use runtime `import` statements** (e.g., `import { LineStyle } from 'lightweight-charts'` or `import ... from './utils'`). Custom indicators are loaded via `import(blobUrl)`, so external module imports will immediately fail to resolve.
- ❌ **NEVER call `mainSeries.setMarkers(...)` directly**. Always use `this.engine.setIndicatorMarkers(this.id, markers)` and `this.engine.clearIndicatorMarkers(this.id)` so you don't wipe out markers from other active indicators or backtests.
- ❌ **NEVER pass unsorted, duplicate-timestamp, `NaN`, or `Infinity` points to `series.setData(...)`**. Lightweight Charts v4 throws a fatal assertion error if timestamps are out of order, duplicated, or if values are `NaN`. Always pass series arrays through `MathUtils.sanitizeSeriesData()` (Section 3.2).
- ❌ **NEVER forget to reset `this.isDestroyed = false` inside `render()`**. When the user switches the Price Scale between Left and Right, QuantDeck calls `destroy(engine)` followed by `render(engine)` on the same indicator instance.

### 0.3 Architectural Conflict & Escalation Protocol (When Requirements Violate Platform Limits)

If a user request requires charting, mathematical, or rendering capabilities that **fundamentally violate QuantDeck's indicator architecture, browser sandboxing, or Lightweight Charts v4 contracts**—and cannot be achieved safely inside a custom indicator `.ts` file:

❌ **THE AI ASSISTANT MUST NEVER:**
1. Silently ignore or drop the user's core requirement while pretending it was implemented.
2. Hack or bypass platform boundaries (e.g. attempting network `fetch()` to external third-party servers, attempting DOM manipulation outside the chart container, importing external Node/npm packages, or hacking private chart engine internals).
3. Produce broken, unrunnable code that will crash the browser loader or freeze the 60fps chart rendering thread.

✅ **THE AI ASSISTANT MUST INSTEAD:**
Immediately stop and present a structured **"QuantDeck Architectural Conflict Report"** to the user. This report clearly explains the root technical limitation, offers safe current workarounds, and generates a formatted Feature Request that the user can copy and submit directly to the QuantDeck Development Team.

**Mandatory 4-Part Response Template for AI Assistants:**

````markdown
⚠️ **QuantDeck Architectural Conflict Report**

1. **Detected Architectural Conflict (What Cannot Be Done Directly):**
   - *State clearly which specific requirement conflicts with the QuantDeck Indicator engine.*
   - *Example: Requesting 3D surface rendering, requesting direct real-time order execution inside an indicator, requesting unrestricted external API fetching bypassing QuantDeck data sources, or requesting non-time-series freeform canvas drawing outside the chart coordinate system.*

2. **Root Technical Blocker (Why the Engine Does Not Support It):**
   - *Explain the exact architectural constraint in QuantDeck.*
   - *Example: QuantDeck custom indicators run sandboxed in the browser UI thread via TradingView Lightweight Charts v4, strictly bound to 2D time-price coordinates for 60fps performance; indicators do not hold broker execution routing permissions; or external network I/O from Blob URLs is restricted by CSP for security.*

3. **Available Workarounds & Practical Alternatives (How to Proceed Today):**
   - **Alternative A (Current In-App Mode):** *What compromise or adaptation works cleanly right now (e.g., use an 8-column Canvas HUD table to display complex multi-factor data, use `this.engine.fetchHTFBars()` for multi-timeframe alignment, or create a Custom Strategy in `custom_strategies/` if order placement is needed).*
   - **Alternative B (External Architecture):** *How the task can be handled outside the chart (e.g., Python backend script in `backend/` calculating advanced metrics and passing them via formula engine).*

4. **QuantDeck Development Team Escalation Proposal:**
   > 📋 *If you need the QuantDeck core platform to officially support this capability in future releases, copy and send the following proposal to the QuantDeck Dev Team:*
   ```text
   [Feature Request for QuantDeck Development Team]
   - Subsystem     : Custom Indicator Engine / Charting Canvas / Lightweight Charts
   - User Objective: <Brief summary of what the user is trying to achieve>
   - Technical Blocker: <Specific missing rendering hook, coordinate converter, or data provider>
   - Suggested Architecture Enhancement: <Proposed platform expansion>
   ```
````

---

## ⚡ Section 1: Runtime Compatibility & Safe Syntax Rules (Blob URL Loader)

Files inside `custom_indicators/` (whether `.ts` or `.js`) are served to the frontend and dynamically imported in the browser via a `Blob URL`. In standalone desktop builds, TypeScript stripping is handled by a lightweight fallback transpiler that does **not** support full TypeScript AST generics or complex inline object types.

### 1.1 Syntax Comparison: What Crashes vs. What Works 100%

| Feature | ❌ Unsafe Syntax (Causes Runtime SyntaxError) | ✅ Safe Syntax (100% Compatible in `.ts` & `.js`) |
| :--- | :--- | :--- |
| **Generics on Functions** | `static sanitize<T extends { time: number }>(d: T[]): T[]` | `static sanitize(d)` |
| **Generic Collections** | `new Map<string, any>()` / `Array<{ time: number; value: number }>` | `new Map()` / `[]` |
| **Variable Type Annotations** | `const basis: Array<{ time: number; value: number }> = [];` | `const basis = [];` |
| **Parameter & Return Types** | `public calculate(bars: any[], sym?: string): any` | `calculate(bars, sym)` |
| **Class Field Declarations** | `private engine: any = null;` / `public id: string;` | Initialize inside `constructor() { this.engine = null; }` |
| **Interfaces & Type Casts** | `export interface ThemePalette { ... }` / `val as number` | Plain JS objects / `Number(val)` |
| **Complex Ternary Colons (`? :`)** | `const v = ok ? objA : objB;` (regex fallback can mis-strip `: objB`) | Use explicit `let v = objB; if (ok) { v = objA; }` |

### 1.2 Standard Constants, Metadata Literals & Exports
Use plain JavaScript objects for constants and export your indicator class **both as a named export and as the `default` export**.

> **⚠️ Backend Metadata Scanner Rule (`backend/main.py`):**
> QuantDeck's `/api/custom-indicators` scanner reads the first 64 KB of your `.ts`/`.js` file via regex to populate the Indicator Browser (`name`, `pane`, `description`) and support Rename/Edit Metadata. Always declare `this.name`, `this.pane`, and `this.description` as **plain single- or double-quoted string literals** (never template backticks `` `...` `` or dynamic variables).

```js
// LineStyle numeric constants (Do NOT import LineStyle from 'lightweight-charts')
const LINE_STYLE = {
  Solid: 0,
  Dotted: 1,
  Dashed: 2,
  LargeDashed: 3,
  SparseDotted: 4,
};

export class MyCustomIndicator {
  constructor() {
    this.id = `custom_ind_${Date.now()}_${Math.random().toString(36).substring(2, 6)}`;
    this.name = 'My Custom Indicator';
    this.pane = 'main'; // 'main' or 'sub'
    this.description = 'Concise description shown in the Indicator Browser';
    this.isVisible = true;
    this.isDestroyed = false;
    // ...
  }
}

export default MyCustomIndicator;
```

> **Note on Export Formats (`CustomIndicatorLoader`):**
> QuantDeck supports **two** export patterns:
> 1. **Full `IIndicator` Class (Recommended):** Implements `render`, `calculate`, `setData`, `updateParams`, `destroy`, `setVisible` — required for multi-series, histograms, markers, HTF fetching, or Canvas `ISeriesPrimitive` HUDs.
> 2. **Lightweight Definition Object:** `export default { name, pane, description, params, paramDefs, calculate(bars, params) { return [...]; } }` — automatically wrapped by `CustomIndicatorWrapper` for simple single-line or `{ k, d }` sub-pane indicators.

---

## 🔄 Section 2: Standard Lifecycle Sequence & Data Flow

Understanding the exact order in which QuantDeck's `IndicatorManager` calls your methods prevents null-reference bugs and missing plots:

### 2.1 Execution Order in QuantDeck
1. **When Indicator is Added to Chart (`addIndicator`)**:
   `new Indicator()` ➔ `setSymbol(sym)` & `setSource(src)` ➔ **`render(engine, onSettings, onClose)`** ➔ **`calculate(bars, sym)`** (sync or `async`) ➔ **`setData(result)`**
2. **When Symbol, Timeframe, or History Refreshes (`updateAll`)**:
   `setSymbol(sym)` & `setSource(src)` ➔ **`calculate(bars, sym)`** ➔ **`setData(result)`**
3. **When User Edits Settings Modal (`updateIndicatorParams`)**:
   **`updateParams(newParams, engine)`** ➔ **`calculate(bars, sym)`** ➔ **`setData(result)`**
4. **When User Switches Price Scale Left ↔ Right (`setPriceScalePosition`)**:
   **`destroy(engine)`** ➔ **`render(engine, ...)`** ➔ **`calculate(bars, sym)`** ➔ **`setData(result)`**
5. **When Live Tick / New Bar Arrives**:
   - **Intrabar Tick**: QuantDeck mutates `engine.allBars[last]` in-place and calls `mainSeries.update(...)`, which immediately triggers `ISeriesPrimitive.draw()` on that frame (it does **not** call `updateAll()` on every intrabar tick — see Section 7.1 for the Zero-Lag Live Bar Sync pattern).
   - **New Bar Open / Explicit `update(bar)`**: Calls `updateAll(bars)` (or `update(bar)` when invoked incrementally).
6. **When User Hides/Shows Indicator (`Eye Icon`)**:
   **`setVisible(visible)`**
7. **When User Removes Indicator (`X Icon`)**:
   **`destroy(engine)`**

### 2.2 Responsibility of Each Method (`calculate` vs. `render` vs. `setData`)

| Method | Exact Responsibility |
| :--- | :--- |
| **`render(engine, onSettings, onClose)`** | 1. Set `this.isDestroyed = false;` and `this.engine = engine;`<br>2. Create Lightweight Charts series (`addLineSeries`, `addAreaSeries`, `addHistogramSeries`) on `engine.chart` (for `pane === 'main'`) or on `this.subChart = engine.createSubPane(...)` (for `pane === 'sub'`).<br>3. Attach any custom canvas primitive via `this.ensurePrimitiveAttached()`.<br>4. If `this.cachedData` already exists, call `this.setData(this.cachedData)`. |
| **`calculate(bars, symbol)`** | 1. Pure computation (can be synchronous or `async`).<br>2. Save `this._rawBars = Array.isArray(bars) ? [...bars] : [];`<br>3. Compute line/band/histogram series arrays, sanitize them with `MathUtils.sanitizeSeriesData()`, store in `this.cachedData`, store any markers in `this.cachedMarkers`, and **return `this.cachedData`**. |
| **`setData(data)`** | 1. Guard `if (this.isDestroyed) return;`<br>2. Feed `data` into `this.series.setData(...)` (or multiple series if multi-line).<br>3. If `pane === 'sub'`, update the sub-pane crosshair value map via `this.engine.registerSubPaneSeries(this.id, this.series, dataMap)`.<br>4. Call `this.ensurePrimitiveAttached()`, `this.applyMarkers()`, and `this._primitive?.requestUpdate()`. |
| **`update(bar)`** | Real-time tick handler. If `bar.time > lastBar.time` (new bar), append to `this._rawBars` and run `calculate` + `setData`. If `bar.time === lastBar.time` (intrabar tick), update the last element in `this._rawBars` and either call `this.series.update(...)` (for recursive indicators) or re-run `calculate` + `setData` (for complex indicators). |
| **`updateParams(newParams, engine)`** | Merge `this.params = { ...this.params, ...newParams }`, update series styling via `applyOptions(...)`, and recalculate if `this._rawBars.length > 0`. |
| **`setVisible(visible)`** | Set `this.isVisible = visible !== false`, toggle `visible` option on **all** owned series, call `applyMarkers()` / `clearMarkers()`, and call `this._primitive?.requestUpdate()`. |
| **`destroy(engine)`** | Set `this.isDestroyed = true`, call `this.clearMarkers()`, detach any primitive from `_attachedMainSeries`, and remove all series (`engine.chart.removeSeries(...)`) or sub-pane (`engine.removeSubPane(this.id)`). |

---

## 🛡️ Section 3: Edge Cases, Input Guards & Data Sanitization

AI-generated indicators most commonly fail due to 4 edge cases: empty/short `bars`, missing `volume`, duplicate/unsorted timestamps, or `NaN`/`Infinity` values passed into Lightweight Charts.

### 3.1 Input Bar Guards
- Always check `if (!Array.isArray(bars) || bars.length === 0)` at the start of `calculate()`.
- `bar.volume` is optional on some Forex feeds — always read volume as `const vol = Number(bar.volume) || 0;`.
- If `bars.length < period`, return an empty result cleanly without throwing.

### 3.2 Mandatory Series Sanitizer (`MathUtils.sanitizeSeriesData` — Pure JS, Zero Generics)
Lightweight Charts v4 crashes the entire chart canvas if `.setData()` receives:
- Any `NaN`, `null`, `undefined`, or `Infinity` in `time` or `value`
- Two points with the exact same `time`
- Points not strictly sorted by `time` ascending

**Always include and use `MathUtils.sanitizeSeriesData` (written without TypeScript generics!) before returning series arrays:**

```js
export class MathUtils {
  /**
   * Guarantees that a series data array contains only finite numbers,
   * is strictly sorted in ascending order by `time`, and has no duplicate timestamps.
   */
  static sanitizeSeriesData(data) {
    if (!Array.isArray(data) || data.length === 0) return [];
    const valid = data.filter((pt) => {
      if (!pt || typeof pt.time !== 'number' || !Number.isFinite(pt.time)) return false;
      if ('value' in pt && (typeof pt.value !== 'number' || !Number.isFinite(pt.value))) return false;
      return true;
    });
    if (valid.length <= 1) return valid;

    // Sort ascending by time
    valid.sort((a, b) => a.time - b.time);

    // Deduplicate timestamps (keep latest entry for any identical timestamp)
    const deduped = [];
    for (let i = 0; i < valid.length; i++) {
      if (deduped.length > 0 && deduped[deduped.length - 1].time === valid[i].time) {
        deduped[deduped.length - 1] = valid[i];
      } else {
        deduped.push(valid[i]);
      }
    }
    return deduped;
  }
}
```

---

## 📈 Section 4: Multi-Series Patterns (`Line`, `Area`, `Histogram`, and `Sub-Pane`)

Many indicators require more than a single line (e.g., Bollinger Bands with Upper/Mid/Lower lines, MACD with MACD Line + Signal Line + Histogram, or SuperTrend with separate Bull/Bear series).

### 4.1 Multi-Series Pattern on `pane = 'main'` (e.g., Bollinger Bands / Channels)

```js
// Inside render(engine):
this.isDestroyed = false;
this.engine = engine;
if (!engine || !engine.chart) return;

const scalePos = typeof engine.getPriceScalePosition === 'function'
  ? engine.getPriceScalePosition()
  : 'right';

this.upperSeries = engine.chart.addLineSeries({
  priceScaleId: scalePos,
  color: String(this.params.upperColor || '#00BCD4'),
  lineWidth: Number(this.params.lineWidth) || 1,
  lineStyle: 0,
  visible: this.isVisible,
  lastValueVisible: false,
  priceLineVisible: false,
});

this.midSeries = engine.chart.addLineSeries({
  priceScaleId: scalePos,
  color: String(this.params.midColor || '#FFD600'),
  lineWidth: Number(this.params.lineWidth) || 2,
  lineStyle: 0,
  visible: this.isVisible,
  lastValueVisible: true,
  priceLineVisible: false,
});

this.lowerSeries = engine.chart.addLineSeries({
  priceScaleId: scalePos,
  color: String(this.params.lowerColor || '#00BCD4'),
  lineWidth: Number(this.params.lineWidth) || 1,
  lineStyle: 0,
  visible: this.isVisible,
  lastValueVisible: false,
  priceLineVisible: false,
});
```

And manage all of them together in `setData`, `setVisible`, and `destroy`:

```js
setData(data) {
  if (this.isDestroyed || !data) return;
  this.upperSeries?.setData(MathUtils.sanitizeSeriesData(data.upper || []));
  this.midSeries?.setData(MathUtils.sanitizeSeriesData(data.mid || []));
  this.lowerSeries?.setData(MathUtils.sanitizeSeriesData(data.lower || []));
  this.applyMarkers();
}

setVisible(visible) {
  this.isVisible = visible !== false;
  for (const s of [this.upperSeries, this.midSeries, this.lowerSeries]) {
    s?.applyOptions({ visible: this.isVisible });
  }
  this.isVisible ? this.applyMarkers() : this.clearMarkers();
}

destroy(engine) {
  this.isDestroyed = true;
  const eng = engine || this.engine;
  this.clearMarkers();
  for (const s of [this.upperSeries, this.midSeries, this.lowerSeries]) {
    if (s && eng?.chart) {
      try { eng.chart.removeSeries(s); } catch (_e) {}
    }
  }
  this.upperSeries = null;
  this.midSeries = null;
  this.lowerSeries = null;
}
```

### 4.2 Sub-Pane Indicator Pattern (`pane = 'sub'` with Histogram + Lines)
When `this.pane = 'sub'`, always guard `if (!this.subChart) return;` and register the primary series with `engine.registerSubPaneSeries`:

```js
// Inside render(engine, onSettings, onClose) when this.pane === 'sub':
this.isDestroyed = false;
this.engine = engine;
if (!engine || typeof engine.createSubPane !== 'function') return;

const scalePos = typeof engine.getPriceScalePosition === 'function'
  ? engine.getPriceScalePosition()
  : 'right';

this.subChart = engine.createSubPane(
  this.id,
  this.name,
  () => onSettings && onSettings(),
  () => onClose && onClose(),
  (vis) => this.setVisible(vis)
);
if (!this.subChart) return; // Safety guard if DOM wrapper is unavailable

// Example: Histogram + Line in the same sub-pane
this.histSeries = this.subChart.addHistogramSeries({
  priceScaleId: scalePos,
  priceLineVisible: false,
  lastValueVisible: false,
});

this.lineSeries = this.subChart.addLineSeries({
  priceScaleId: scalePos,
  color: String(this.params.lineColor || '#2962FF'),
  lineWidth: Number(this.params.lineWidth) || 2,
  priceLineVisible: false,
});

// Inside setData(data):
if (this.lineSeries && Array.isArray(data.line)) {
  const cleanLine = MathUtils.sanitizeSeriesData(data.line);
  this.lineSeries.setData(cleanLine);
  // Register time -> value Map so sub-pane header displays live crosshair values
  const dataMap = new Map(cleanLine.map((d) => [d.time, d.value]));
  if (typeof this.engine?.registerSubPaneSeries === 'function') {
    this.engine.registerSubPaneSeries(this.id, this.lineSeries, dataMap);
  }
}
if (this.histSeries && Array.isArray(data.hist)) {
  // Histogram items can include per-bar color: { time, value, color: '#00E676' }
  this.histSeries.setData(MathUtils.sanitizeSeriesData(data.hist));
}

// Inside destroy(engine) for pane === 'sub':
const eng = engine || this.engine;
if (eng && typeof eng.removeSubPane === 'function') {
  try { eng.removeSubPane(this.id); } catch (_e) {}
}
this.subChart = null;
this.lineSeries = null;
this.histSeries = null;
```

---

## 📍 Section 5: Centralized Marker Registry & Safe Primitive Re-Attachment

### 5.1 Centralized Marker Registry (Prevents Marker Collisions)
Never call `mainSeries.setMarkers()` directly unless `engine.setIndicatorMarkers` is absent:

```js
applyMarkers() {
  if (!this.engine || !this.isVisible || Number(this.params.showSignals) === 0) {
    this.clearMarkers();
    return;
  }
  const safeMarkers = MathUtils.sanitizeSeriesData(this.cachedMarkers || []);
  if (typeof this.engine.setIndicatorMarkers === 'function') {
    this.engine.setIndicatorMarkers(this.id, safeMarkers);
    return;
  }
}

clearMarkers() {
  if (!this.engine) return;
  if (typeof this.engine.clearIndicatorMarkers === 'function') {
    this.engine.clearIndicatorMarkers(this.id);
  }
}
```
- Valid marker item format:
  `{ time: 1710000000, position: 'aboveBar' | 'belowBar' | 'inBar', color: '#00E676', shape: 'arrowUp' | 'arrowDown' | 'circle' | 'square', text: 'BUY' }`
- **Note on Same-Bar Markers**: `MathUtils.sanitizeSeriesData()` deduplicates identical `time` values (required for line/histogram series). If your indicator emits multiple distinct markers on the same candle (e.g., `BOS` and `MSS` on the same bar), filter for finite `time` and sort ascending (`(a, b) => a.time - b.time`) without deduplicating by `time`.

### 5.2 Safe `ISeriesPrimitive` Attachment Helper (`ensurePrimitiveAttached`)
When the user changes the chart style (e.g., Candlesticks ➔ Heikin-Ashi or Area), `engine.getMainSeries()` creates a **new** series instance. If your custom canvas primitive stays attached only to the old main series, your custom drawings disappear!
**Always use this `ensurePrimitiveAttached()` helper inside both `render()` and `setData()`:**

```js
ensurePrimitiveAttached() {
  if (this.isDestroyed) return;
  if (!this.engine || typeof this.engine.getMainSeries !== 'function') return;
  const mainSeries = this.engine.getMainSeries();
  if (!mainSeries) return;

  if (!this._primitive) {
    this._primitive = new MyCanvasPrimitive(this);
  }

  // If mainSeries was recreated by ChartEngine, detach from old and attach to new
  if (this._attachedMainSeries !== mainSeries) {
    if (this._attachedMainSeries && typeof this._attachedMainSeries.detachPrimitive === 'function') {
      try {
        this._attachedMainSeries.detachPrimitive(this._primitive);
      } catch (_e) {}
    }
    if (typeof mainSeries.attachPrimitive === 'function') {
      try {
        mainSeries.attachPrimitive(this._primitive);
        this._attachedMainSeries = mainSeries;
      } catch (_e) {}
    }
  }
}
```

### 5.3 Mandatory `ISeriesPrimitive` Canvas Rendering (`useMediaCoordinateSpace`)
In **Lightweight Charts v4**, `renderer.draw(target)` receives a `CanvasRenderingTarget2D` object from `fancy-canvas`.
- ❌ **NEVER** read `target.context` or `target.mediaSize` directly — both are `undefined` in Lightweight Charts v4, causing the HUD to silently skip rendering!
- ✅ **ALWAYS** wrap all Canvas 2D drawing inside `target.useMediaCoordinateSpace((scope) => { ... })`:

```js
class MyCanvasRenderer {
  constructor(source) {
    this._source = source;
  }

  draw(target) {
    const ind = this._source._indicator;
    if (!ind || ind.isDestroyed || !ind.isVisible) return;

    target.useMediaCoordinateSpace((scope) => {
      const ctx = scope.context;
      const width = scope.mediaSize?.width || 0;
      const height = scope.mediaSize?.height || 0;
      if (!ctx || width <= 0 || height <= 0) return;

      // Safe HUD offsets to avoid overlapping QuantDeck UI:
      // - Top Left: y >= 44 clears .chart-cell-header & OverlayLegend
      // - Top Right: y >= 38 clears .main-pane-controls (▲/▼ pane reorder pill)
      const bannerW = 230;
      const isTopLeft = ind.params.bannerPosition === 'Top Left';
      const bannerX = isTopLeft ? 12 : Math.max(10, width - bannerW - 14);
      const bannerY = isTopLeft ? 44 : 38;

      // Draw HUD using ctx, bannerX, bannerY, width, height...
    });
  }
}
```

### 5.4 Canvas-Only / Marker-Only Indicators & Right-Side Margin (`rightOffset`)
- **No Dummy Series Required**: If your indicator only renders Canvas graphics (via `ISeriesPrimitive`) and/or candlestick markers (via `engine.setIndicatorMarkers`) without plotting a continuous line/histogram, **do NOT create a dummy `addLineSeries()`**. Simply call `this.ensurePrimitiveAttached()` inside `render()` and `setData()`, and return a plain state object (e.g., `{ levels, markers }`) from `calculate()`.
- **Right-Side Label Margin (`rightOffset`)**: When drawing right-side level lines or text badges past the latest candle (`lastX + offset`), expand the chart's right margin inside `render()` so labels are not clipped by the price scale:
  ```js
  if (typeof engine.chart.timeScale === 'function') {
    try {
      engine.chart.timeScale().applyOptions({ rightOffset: 16 });
    } catch (_e) {}
  }
  ```

---

## ⏱️ Section 6: Complete Multi-Timeframe (HTF) Fetching & Zero-Lookahead Mapping

When an indicator needs Higher Timeframe data (e.g., `H1`, `H4`, `D1`, `W1`), resampling 1,000 `M5` chart bars only gives ~3.5 days of history (insufficient for `D1 EMA 100` or `H4 SMC Structure`).
Instead, fetch 1,000 native HTF bars from `/api/bars` with a **25-second in-memory cache**, a **local resampler fallback** (if offline), and **zero-lookahead timestamp alignment**:

```js
const _HTF_BARS_CACHE = new Map();

// 1. Implement setSymbol and setSource so IndicatorManager keeps them updated
setSymbol(symbol) {
  if (symbol && typeof symbol === 'string') this.currentSymbol = symbol.trim().toUpperCase();
}

setSource(source) {
  if (source && typeof source === 'string') this.currentSource = source.trim().toUpperCase();
}

// 2. Fetch Native HTF Bars with Cache + Offline Fallback Resampler
async _fetchHtfBars(symbol, source, apiTf, fallbackBars) {
  const cacheKey = `${source || 'AUTO'}:${symbol}:${apiTf}`;
  const now = Date.now();
  const cached = _HTF_BARS_CACHE.get(cacheKey);
  if (cached && cached.bars.length > 0 && now - cached.ts < 25000) {
    return cached.bars;
  }

  try {
    const srcQuery = source ? `&source=${encodeURIComponent(source)}` : '';
    const url = `/api/bars?symbol=${encodeURIComponent(symbol)}&timeframe=${encodeURIComponent(apiTf)}&count=1000${srcQuery}`;
    const resp = await fetch(url);
    if (resp.ok) {
      const data = await resp.json();
      if (Array.isArray(data) && data.length > 0) {
        const clean = MathUtils.sanitizeSeriesData(data);
        _HTF_BARS_CACHE.set(cacheKey, { ts: now, bars: clean });
        return clean;
      }
    }
  } catch (err) {
    console.warn(`[${this.name}] HTF fetch failed, using fallback resampler:`, err);
  }

  if (cached && cached.bars.length > 0) return cached.bars;
  return this._resampleFallbackHtf(fallbackBars, apiTf);
}

_resampleFallbackHtf(bars, apiTf) {
  const tfSecMap = { M1: 60, M5: 300, M15: 900, M30: 1800, H1: 3600, H4: 14400, D1: 86400, W1: 604800 };
  const intervalSec = tfSecMap[apiTf] || 3600;
  const htfBars = [];
  let cur = null;

  for (const b of bars) {
    const bucket = Math.floor(Number(b.time) / intervalSec) * intervalSec;
    if (!cur || cur.time !== bucket) {
      cur = { time: bucket, open: b.open, high: b.high, low: b.low, close: b.close, volume: Number(b.volume) || 0 };
      htfBars.push(cur);
    } else {
      cur.high = Math.max(cur.high, b.high);
      cur.low = Math.min(cur.low, b.low);
      cur.close = b.close;
      cur.volume += Number(b.volume) || 0;
    }
  }
  return htfBars;
}

// 3. Map HTF Values to LTF Bars with Zero Lookahead Bias
// For any LTF bar at `ltfTime`, find the current HTF bucket index `htfIdx`,
// and use `htfValues[htfIdx - 1]` (the last COMPLETED HTF bar) for confirmed signals/levels!
_mapHtfToLtfZeroLookahead(ltfBars, htfBars, htfValues) {
  const out = [];
  if (!ltfBars.length || !htfBars.length) return out;

  let htfIdx = 0;
  const m = htfBars.length;

  for (let i = 0; i < ltfBars.length; i++) {
    const t = ltfBars[i].time;
    while (htfIdx + 1 < m && htfBars[htfIdx + 1].time <= t) {
      htfIdx++;
    }
    // Use htfIdx - 1 (last closed HTF bar) to prevent lookahead bias on historical bars
    const closedIdx = Math.max(0, htfIdx - 1);
    const val = htfValues[closedIdx];
    if (typeof val === 'number' && Number.isFinite(val)) {
      out.push({ time: t, value: val });
    }
  }
  return MathUtils.sanitizeSeriesData(out);
}

// 4. Complete End-to-End async calculate() Example with HTF Data
async calculate(bars, symbol) {
  if (symbol) this.setSymbol(symbol);
  if (!Array.isArray(bars) || bars.length === 0) {
    this._rawBars = [];
    this.cachedData = [];
    return [];
  }
  this._rawBars = [...bars];

  const apiTf = String(this.params.htf || 'H1').toUpperCase();
  const htfBars = await this._fetchHtfBars(this.currentSymbol, this.currentSource, apiTf, bars);

  // Compute HTF EMA on htfBars
  const period = Math.max(1, Number(this.params.period) || 50);
  const k = 2 / (period + 1);
  const htfEma = new Array(htfBars.length).fill(NaN);
  let ema = Number(htfBars[0]?.close) || 0;
  for (let i = 0; i < htfBars.length; i++) {
    const c = Number(htfBars[i].close);
    ema = i === 0 ? c : c * k + ema * (1 - k);
    htfEma[i] = ema;
  }

  // Project closed HTF EMA (htfIdx - 1) onto LTF chart bars (Zero Lookahead)
  this.cachedData = this._mapHtfToLtfZeroLookahead(bars, htfBars, htfEma);
  return this.cachedData;
}
```

---

## ⚡ Section 7: Real-Time Tick Update Pattern & Zero-Lag Live Bar Sync

### 7.1 Zero-Lag Live Bar Sync Inside `ISeriesPrimitive.draw()` (CRITICAL for Live HUD / Levels)
During intrabar live ticks, QuantDeck updates `engine.allBars[last]` and calls `mainSeries.update(curBar)` (immediately triggering a canvas repaint of all `ISeriesPrimitive` renderers), while calling `indManager.updateAll(bars)` only when a **new candle opens**.
- ⚠️ **Do NOT rely solely on a frozen copy `this._rawBars = [...bars]`** if your Canvas HUD or Live Levels track `currentPrice` in real time — otherwise your overlay will lag until the next bar opens!
- ⚠️ **Future Whitespace Bar Trap**: QuantDeck pads `mainSeries.data()` with ~150 trailing future whitespace points (`{ time }` with no `close`/`value`). Calling `series.data().at(-1).close` directly will return `undefined` / `NaN`! Always scan backwards to skip whitespace points.

Call this lightweight helper at the start of `renderer.draw(target)` for **0ms-lag, frame-synced** live prices:

```js
_syncLiveLastBar(series) {
  if (!Array.isArray(this._rawBars) || this._rawBars.length === 0) return;
  let cur = this._rawBars[this._rawBars.length - 1];

  // 1. Pull latest forming bar from ChartEngine's live allBars reference
  if (this.engine && Array.isArray(this.engine.allBars) && this.engine.allBars.length > 0) {
    const engLast = this.engine.allBars[this.engine.allBars.length - 1];
    if (engLast && typeof engLast.time === 'number' && Number.isFinite(engLast.time)) {
      if (engLast.time > cur.time) {
        cur = { ...engLast };
        this._rawBars.push(cur);
      } else if (engLast.time === cur.time) {
        cur = { ...cur, open: Number(engLast.open), high: Number(engLast.high), low: Number(engLast.low), close: Number(engLast.close), volume: Number(engLast.volume) || Number(cur.volume) || 0 };
        this._rawBars[this._rawBars.length - 1] = cur;
      }
    }
  }

  // 2. Cross-check mainSeries rendered data (skipping trailing future whitespace points)
  if (series && typeof series.data === 'function') {
    try {
      const sd = series.data();
      if (Array.isArray(sd) && sd.length > 0) {
        const minIdx = Math.max(0, sd.length - 220);
        let livePt = null;
        for (let i = sd.length - 1; i >= minIdx; i--) {
          const pt = sd[i];
          if (pt && ((typeof pt.close === 'number' && Number.isFinite(pt.close)) || (typeof pt.value === 'number' && Number.isFinite(pt.value)))) {
            livePt = pt;
            break;
          }
        }
        if (livePt && typeof livePt.time === 'number' && livePt.time >= cur.time) {
          let liveClose = cur.close;
          if (typeof livePt.close === 'number' && Number.isFinite(livePt.close)) liveClose = livePt.close;
          else if (typeof livePt.value === 'number' && Number.isFinite(livePt.value)) liveClose = livePt.value;
          let liveOpen = cur.open;
          if (typeof livePt.open === 'number' && Number.isFinite(livePt.open)) liveOpen = livePt.open;
          let liveHigh = Math.max(cur.high, liveClose);
          if (typeof livePt.high === 'number' && Number.isFinite(livePt.high)) liveHigh = Math.max(liveHigh, livePt.high);
          let liveLow = Math.min(cur.low, liveClose);
          if (typeof livePt.low === 'number' && Number.isFinite(livePt.low)) liveLow = Math.min(liveLow, livePt.low);
          cur = { ...cur, time: livePt.time, open: liveOpen, high: liveHigh, low: liveLow, close: liveClose };
          if (livePt.time > this._rawBars[this._rawBars.length - 1].time) this._rawBars.push(cur);
          else this._rawBars[this._rawBars.length - 1] = cur;
        }
      }
    } catch (_e) {}
  }

  this.lastBar = cur;
}
```

### 7.2 Incremental `update(bar)` Pattern (Series-Based Indicators)

When a live tick arrives via `update(bar)`, choose the appropriate update strategy based on your indicator's mathematical structure:
- **Recursive Indicators (`EMA`, `ATR`, `RSI`, `RMA`)**:
  - Can use the **$O(1)$ Incremental Path** below when `bar.time === lastBar.time` (updating only the forming bar from cached `n - 2` state like `this._prevEma`), and full `calculate()` + `setData()` only when a new bar opens (`bar.time > lastBar.time`).
- **Complex / Multi-State / Windowed Indicators (`SuperTrend`, `Swing Pivots`, `SMC Market Structure`, `Rolling StdDev`)**:
  - **Do NOT guess incremental formulas** if your indicator depends on complex historical state or multi-bar windows. Instead, simply call `const data = await this.calculate(this._rawBars, this.currentSymbol); this.setData(data);` on every `update(bar)` so state is always 100% consistent!

```js
async update(bar) {
  if (this.isDestroyed || !bar || typeof bar.time !== 'number' || !Number.isFinite(bar.time)) return;

  const n = this._rawBars.length;
  let isNewBar = false;

  if (n === 0) {
    this._rawBars.push({ ...bar });
    isNewBar = true;
  } else {
    const lastBar = this._rawBars[n - 1];
    if (bar.time > lastBar.time) {
      this._rawBars.push({ ...bar });
      isNewBar = true;
    } else if (bar.time === lastBar.time) {
      this._rawBars[n - 1] = { ...bar };
    } else {
      return; // Ignore out-of-order historical ticks
    }
  }

  // NOTE:
  // - Incremental path below is ideal for recursive indicators (EMA, ATR, RSI).
  // - For complex multi-state or long-history indicators (SuperTrend, Pivots, SMC),
  //   always run full recalculate (`calculate` + `setData`) even when `isNewBar` is false.
  if (isNewBar || this._prevEma === undefined) {
    const data = await this.calculate(this._rawBars, this.currentSymbol);
    this.setData(data);
  } else {
    // O(1) Incremental intrabar update for recursive EMA
    const k = 2 / (Math.max(1, Number(this.params.period) || 20) + 1);
    const liveVal = Number(bar.close) * k + this._prevEma * (1 - k);
    if (Number.isFinite(liveVal)) {
      const pt = { time: Number(bar.time), value: liveVal };
      if (this.cachedData.length > 0 && this.cachedData[this.cachedData.length - 1].time === pt.time) {
        this.cachedData[this.cachedData.length - 1] = pt;
      }
      try { this.series?.update(pt); } catch (_e) {}
    }
    this._primitive?.requestUpdate();
  }
}
```

---

## 🎨 Section 8: Price Precision, Dual Theme Adaptation & HUD Auto-Stacking (For HUD / Canvas Indicators)

> **⚠️ MANDATORY FOR CASE B (Canvas HUD / Text Badges):**
> When generating an indicator that renders a Canvas HUD Banner, Dashboard Table, Zone Labels, or Price Pill Badges via `ISeriesPrimitive`, you MUST copy the complete `MathUtils` class—including `sanitizeSeriesData`, `detectPricePrecision`, `formatPrice`, `getThemePalette`, and `drawPillBadge`—into your file. The Gold-Standard Template in Section 9 already bundles the entire `MathUtils` class in pure, zero-type-annotation JS.

### 8.1 4-Tier Price Precision Auto-Detection (`MathUtils.detectPricePrecision`)

```js
static detectPricePrecision(params, engine, symbol, bars) {
  // Tier 1: User Manual Override (0 to 6)
  const paramDigits = Number(params?.priceDigits);
  if (!isNaN(paramDigits) && paramDigits >= 0 && paramDigits <= 6) {
    return paramDigits;
  }

  // Tier 2: ChartEngine Main Series priceFormat configuration
  if (engine && typeof engine.getMainSeries === 'function') {
    const ms = engine.getMainSeries();
    const precision = ms?.options?.()?.priceFormat?.precision;
    if (typeof precision === 'number' && precision >= 0) return precision;
    const minMove = ms?.options?.()?.priceFormat?.minMove;
    if (typeof minMove === 'number' && minMove > 0) {
      const d = Math.round(-Math.log10(minMove));
      if (d >= 0 && d <= 6) return d;
    }
  }

  // Tier 3: Symbol Heuristics
  const sym = (symbol || '').toUpperCase().trim();
  if (sym.includes('JPY')) return 3;
  if (sym.includes('XAU') || sym.includes('GOLD')) return 2;
  if (sym.includes('XAG') || sym.includes('SILVER')) return 3;
  if (sym.includes('BTC') || sym.includes('ETH') || sym.includes('SOL')) return 2;
  if (/^[A-Z]{6}$/.test(sym) || sym.includes('EUR') || sym.includes('GBP') || sym.includes('AUD')) return 5;
  if (/^(US30|NAS100|SPX500|GER40|UK100|SET50|S50)/.test(sym)) return 1;
  if (sym.length <= 5 && !sym.includes('/')) return 2;

  // Tier 4: Empirical trailing decimals across last 100 bars
  if (Array.isArray(bars) && bars.length > 0) {
    const sample = bars.slice(-100);
    let maxDigits = 2;
    for (const b of sample) {
      for (const p of [b.close, b.open, b.high, b.low]) {
        if (typeof p === 'number' && isFinite(p)) {
          const parts = p.toString().split('.');
          if (parts.length > 1) {
            maxDigits = Math.max(maxDigits, Math.min(parts[1].length, 6));
          }
        }
      }
    }
    return maxDigits;
  }
  return 2;
}

static formatPrice(price, digits) {
  if (price === null || price === undefined || !isFinite(price)) return '-';
  return Number(price).toFixed(digits);
}

static getPipAndPointSizes(symbol, digits) {
  const pointSize = Math.pow(10, -digits);
  const sym = String(symbol || '').toUpperCase().trim();
  let pipSize = pointSize;
  let prefersPips = false;

  const isCryptoOrIndex = /^(BTC|ETH|SOL|BNB|XRP|US30|NAS100|SPX500|GER40|UK100|JP225|SET50|S50)/.test(sym);
  if (!isCryptoOrIndex) {
    if (sym.includes('XAU') || sym.includes('GOLD')) {
      pipSize = 0.1;
      prefersPips = true;
    } else if (sym.includes('XAG') || sym.includes('SILVER')) {
      pipSize = 0.01;
      prefersPips = true;
    } else if (sym.includes('JPY') && digits === 3) {
      pipSize = 0.01;
      prefersPips = true;
    } else if (digits === 5 || (digits === 4 && /^[A-Z]{6}$/.test(sym))) {
      pipSize = 0.0001;
      prefersPips = true;
    }
  }
  return { pointSize, pipSize, prefersPips };
}
```

### 8.2 Dual Theme Palette & High-Contrast Pill Badges (`getThemePalette` & `drawPillBadge`)
Never draw bare text directly over candlesticks. Always adapt colors to `themeMode` (`'Dark'` vs `'Light'`) and draw rounded pill badges behind labels:

```js
static getThemePalette(themeMode = 'Dark') {
  const isDark = String(themeMode).toLowerCase() !== 'light';
  if (!isDark) {
    return {
      isDark: false,
      hudBg: 'rgba(255, 255, 255, 0.96)',
      hudBorder: 'rgba(100, 116, 139, 0.45)',
      textPrimary: '#0f172a',
      textSecondary: '#475569',
      bullish: '#047857',
      bearish: '#b91c1c',
      neutral: '#b45309',
      accent: '#1d4ed8',
      gridLine: 'rgba(203, 213, 225, 0.8)',
    };
  }
  return {
    isDark: true,
    hudBg: 'rgba(15, 23, 42, 0.94)',
    hudBorder: 'rgba(51, 65, 85, 0.8)',
    textPrimary: '#f8fafc',
    textSecondary: '#94a3b8',
    bullish: '#34d399',
    bearish: '#f87171',
    neutral: '#fbbf24',
    accent: '#38bdf8',
    gridLine: 'rgba(51, 65, 85, 0.6)',
  };
}

static drawPillBadge(ctx, text, x, y, options) {
  const opts = options || {};
  const fontSize = opts.fontSize || 10;
  ctx.font = `bold ${fontSize}px sans-serif`;
  ctx.textAlign = 'left';
  ctx.textBaseline = 'middle';

  const metrics = ctx.measureText(text);
  const padX = opts.paddingX || 6;
  const padY = opts.paddingY || 3;
  const w = metrics.width + padX * 2;
  const h = fontSize + padY * 2;
  const radius = opts.borderRadius || 4;

  let drawX = x;
  if (opts.align === 'center') drawX = x - w / 2;
  else if (opts.align === 'right') drawX = x - w;
  const drawY = y - h / 2;

  ctx.beginPath();
  ctx.fillStyle = opts.bgColor || 'rgba(15, 23, 42, 0.94)';
  ctx.roundRect ? ctx.roundRect(drawX, drawY, w, h, radius) : ctx.rect(drawX, drawY, w, h);
  ctx.fill();

  if (opts.borderColor) {
    ctx.strokeStyle = opts.borderColor;
    ctx.lineWidth = 1;
    ctx.stroke();
  }

  ctx.fillStyle = opts.textColor || '#f8fafc';
  ctx.fillText(text, drawX + padX, y);
}
```

### 8.3 HUD Auto-Stacking Offset (Collision Avoidance)
- Default `bannerPosition` to `'Top Right'` (never `'Top Left'`, which is occupied by QuantDeck's symbol/OHLC header).
- Default `dashboardPosition` to `'Bottom Right'`.
- If both are placed in the same corner, apply `autoStackY = bannerHeight + bannerMargin` so they stack vertically without overlapping.

---

## 🏆 Section 9: Complete Gold-Standard Reference Template (100% Safe Pure ES2020 in `.ts`)

Use this complete, self-contained template as the structural foundation for any custom indicator. It uses **100% pure ES2020 JavaScript syntax** (zero generics, zero type annotations, so it never triggers transpile or Blob loader errors), bundles the **complete `MathUtils` toolkit** (all 5 methods), multi-series management, **$O(1)$ incremental `update(bar)`**, and full marker/series sanitization:

```js
// QuantDeck Custom Indicator Template (Zero Runtime Imports, Zero TypeScript Generics, 100% Blob-URL Safe)

export class MathUtils {
  static sanitizeSeriesData(data) {
    if (!Array.isArray(data) || data.length === 0) return [];
    const valid = data.filter((pt) => {
      if (!pt || typeof pt.time !== 'number' || !Number.isFinite(pt.time)) return false;
      if ('value' in pt && (typeof pt.value !== 'number' || !Number.isFinite(pt.value))) return false;
      return true;
    });
    if (valid.length <= 1) return valid;
    valid.sort((a, b) => a.time - b.time);

    const deduped = [];
    for (let i = 0; i < valid.length; i++) {
      if (deduped.length > 0 && deduped[deduped.length - 1].time === valid[i].time) {
        deduped[deduped.length - 1] = valid[i];
      } else {
        deduped.push(valid[i]);
      }
    }
    return deduped;
  }

  static detectPricePrecision(params, engine, symbol, bars) {
    const paramDigits = Number(params?.priceDigits);
    if (!isNaN(paramDigits) && paramDigits >= 0 && paramDigits <= 6) return paramDigits;

    if (engine && typeof engine.getMainSeries === 'function') {
      const ms = engine.getMainSeries();
      const precision = ms?.options?.()?.priceFormat?.precision;
      if (typeof precision === 'number' && precision >= 0) return precision;
      const minMove = ms?.options?.()?.priceFormat?.minMove;
      if (typeof minMove === 'number' && minMove > 0) {
        const d = Math.round(-Math.log10(minMove));
        if (d >= 0 && d <= 6) return d;
      }
    }

    const sym = (symbol || '').toUpperCase().trim();
    if (sym.includes('JPY') || sym.includes('XAG') || sym.includes('SILVER')) return 3;
    if (sym.includes('XAU') || sym.includes('GOLD') || sym.includes('BTC') || sym.includes('ETH') || sym.includes('SOL')) return 2;
    if (/^[A-Z]{6}$/.test(sym) || sym.includes('EUR') || sym.includes('GBP') || sym.includes('AUD')) return 5;
    if (/^(US30|NAS100|SPX500|GER40|UK100|SET50|S50)/.test(sym)) return 1;
    if (sym.length <= 5 && !sym.includes('/')) return 2;

    if (Array.isArray(bars) && bars.length > 0) {
      const sample = bars.slice(-100);
      let maxDigits = 2;
      for (const b of sample) {
        for (const p of [b.close, b.open, b.high, b.low]) {
          if (typeof p === 'number' && isFinite(p)) {
            const parts = p.toString().split('.');
            if (parts.length > 1) {
              maxDigits = Math.max(maxDigits, Math.min(parts[1].length, 6));
            }
          }
        }
      }
      return maxDigits;
    }
    return 2;
  }

  static formatPrice(price, digits) {
    if (price === null || price === undefined || !isFinite(price)) return '-';
    return Number(price).toFixed(digits);
  }

  static getThemePalette(themeMode = 'Dark') {
    const isDark = String(themeMode).toLowerCase() !== 'light';
    if (!isDark) {
      return {
        isDark: false,
        hudBg: 'rgba(255, 255, 255, 0.96)',
        hudBorder: 'rgba(100, 116, 139, 0.45)',
        textPrimary: '#0f172a',
        textSecondary: '#475569',
        bullish: '#047857',
        bearish: '#b91c1c',
        neutral: '#b45309',
        accent: '#1d4ed8',
        gridLine: 'rgba(203, 213, 225, 0.8)',
      };
    }
    return {
      isDark: true,
      hudBg: 'rgba(15, 23, 42, 0.94)',
      hudBorder: 'rgba(51, 65, 85, 0.8)',
      textPrimary: '#f8fafc',
      textSecondary: '#94a3b8',
      bullish: '#34d399',
      bearish: '#f87171',
      neutral: '#fbbf24',
      accent: '#38bdf8',
      gridLine: 'rgba(51, 65, 85, 0.6)',
    };
  }

  static drawPillBadge(ctx, text, x, y, options) {
    const opts = options || {};
    const fontSize = opts.fontSize || 10;
    ctx.font = `bold ${fontSize}px sans-serif`;
    ctx.textAlign = 'left';
    ctx.textBaseline = 'middle';

    const metrics = ctx.measureText(text);
    const padX = opts.paddingX || 6;
    const padY = opts.paddingY || 3;
    const w = metrics.width + padX * 2;
    const h = fontSize + padY * 2;
    const radius = opts.borderRadius || 4;

    let drawX = x;
    if (opts.align === 'center') drawX = x - w / 2;
    else if (opts.align === 'right') drawX = x - w;
    const drawY = y - h / 2;

    ctx.beginPath();
    ctx.fillStyle = opts.bgColor || 'rgba(15, 23, 42, 0.94)';
    ctx.roundRect ? ctx.roundRect(drawX, drawY, w, h, radius) : ctx.rect(drawX, drawY, w, h);
    ctx.fill();

    if (opts.borderColor) {
      ctx.strokeStyle = opts.borderColor;
      ctx.lineWidth = 1;
      ctx.stroke();
    }

    ctx.fillStyle = opts.textColor || '#f8fafc';
    ctx.fillText(text, drawX + padX, y);
  }
}

export class EmaBandsCustomIndicator {
  constructor() {
    this.id = `custom_ema_bands_${Date.now()}_${Math.random().toString(36).substring(2, 6)}`;
    this.name = 'EMA ATR Volatility Bands';
    this.pane = 'main';
    this.isVisible = true;
    this.isDestroyed = false;

    this.engine = null;
    this.currentSymbol = 'XAUUSD';
    this.currentSource = '';
    this._rawBars = [];
    this.cachedData = { basis: [], upper: [], lower: [] };
    this.cachedMarkers = [];

    // Cached state from bar (n - 2) for O(1) incremental real-time tick updates
    this._prevEma = undefined;
    this._prevAtr = undefined;
    this._prevClose = undefined;

    this.basisSeries = null;
    this.upperSeries = null;
    this.lowerSeries = null;

    this.params = {
      emaPeriod: 20,
      atrPeriod: 14,
      atrMult: 2.0,
      basisColor: '#FFD600',
      bandColor: '#00BCD4',
      lineWidth: 2,
      lineStyle: 0,
      showSignals: 1,
    };

    this.paramDefs = [
      { key: 'emaPeriod', label: 'EMA Period', type: 'number', default: 20, min: 2, max: 500, step: 1 },
      { key: 'atrPeriod', label: 'ATR Period', type: 'number', default: 14, min: 2, max: 200, step: 1 },
      { key: 'atrMult', label: 'ATR Multiplier', type: 'number', default: 2.0, min: 0.5, max: 10.0, step: 0.1 },
      { key: 'basisColor', label: 'Basis Line Color', type: 'color', default: '#FFD600' },
      { key: 'bandColor', label: 'Upper/Lower Band Color', type: 'color', default: '#00BCD4' },
      {
        key: 'lineWidth',
        label: 'Basis Line Width',
        type: 'select',
        default: 2,
        options: [
          { label: '1px', value: 1 },
          { label: '2px', value: 2 },
          { label: '3px', value: 3 },
          { label: '4px', value: 4 },
        ],
      },
      {
        key: 'lineStyle',
        label: 'Band Line Style',
        type: 'select',
        default: 0,
        options: [
          { label: 'Solid', value: 0 },
          { label: 'Dotted', value: 1 },
          { label: 'Dashed', value: 2 },
        ],
      },
      {
        key: 'showSignals',
        label: 'Show Breakout Signals',
        type: 'select',
        default: 1,
        options: [
          { label: 'Show', value: 1 },
          { label: 'Hide', value: 0 },
        ],
      },
    ];
  }

  setSymbol(symbol) {
    if (symbol && typeof symbol === 'string') {
      this.currentSymbol = symbol.trim().toUpperCase();
    }
  }

  setSource(source) {
    if (source && typeof source === 'string') {
      this.currentSource = source.trim().toUpperCase();
    }
  }

  calculate(bars, symbol) {
    if (symbol) this.setSymbol(symbol);
    if (!Array.isArray(bars) || bars.length === 0) {
      this._rawBars = [];
      this.cachedData = { basis: [], upper: [], lower: [] };
      this.cachedMarkers = [];
      return this.cachedData;
    }

    this._rawBars = [...bars];
    const n = bars.length;
    const emaP = Math.max(1, Number(this.params.emaPeriod) || 20);
    const atrP = Math.max(1, Number(this.params.atrPeriod) || 14);
    const mult = Number(this.params.atrMult) || 2.0;

    const kEma = 2 / (emaP + 1);
    const kAtr = 1 / atrP;

    const basis = [];
    const upper = [];
    const lower = [];
    const markers = [];

    let ema = Number(bars[0].close) || 0;
    let atr = (Number(bars[0].high) - Number(bars[0].low)) || 0;

    for (let i = 0; i < n; i++) {
      const b = bars[i];
      const t = Number(b.time);
      const c = Number(b.close);
      const h = Number(b.high);
      const l = Number(b.low);
      if (!Number.isFinite(t) || !Number.isFinite(c)) continue;

      if (i > 0) {
        const prevC = Number(bars[i - 1].close);
        if (i === n - 1) {
          // Cache state at bar (n - 2) for O(1) incremental intrabar updates in update(bar)
          this._prevEma = ema;
          this._prevAtr = atr;
          this._prevClose = prevC;
        }
        const tr = Math.max(h - l, Math.abs(h - prevC), Math.abs(l - prevC));
        ema = c * kEma + ema * (1 - kEma);
        atr = tr * kAtr + atr * (1 - kAtr);
      }

      const upVal = ema + atr * mult;
      const dnVal = ema - atr * mult;

      basis.push({ time: t, value: ema });
      upper.push({ time: t, value: upVal });
      lower.push({ time: t, value: dnVal });

      if (i > Math.max(emaP, atrP)) {
        const prevClose = Number(bars[i - 1].close);
        const prevUp = upper[upper.length - 2]?.value ?? upVal;
        const prevDn = lower[lower.length - 2]?.value ?? dnVal;

        if (c > upVal && prevClose <= prevUp) {
          markers.push({
            time: t,
            position: 'belowBar',
            color: '#00E676',
            shape: 'arrowUp',
            text: 'BUY',
          });
        } else if (c < dnVal && prevClose >= prevDn) {
          markers.push({
            time: t,
            position: 'aboveBar',
            color: '#FF5252',
            shape: 'arrowDown',
            text: 'SELL',
          });
        }
      }
    }

    this.cachedData = {
      basis: MathUtils.sanitizeSeriesData(basis),
      upper: MathUtils.sanitizeSeriesData(upper),
      lower: MathUtils.sanitizeSeriesData(lower),
    };
    this.cachedMarkers = MathUtils.sanitizeSeriesData(markers);
    return this.cachedData;
  }

  render(engine, _onSettings, _onClose) {
    this.isDestroyed = false;
    this.engine = engine;
    if (!engine || !engine.chart) return;

    const scalePos =
      typeof engine.getPriceScalePosition === 'function'
        ? engine.getPriceScalePosition()
        : 'right';

    const digits = MathUtils.detectPricePrecision(this.params, engine, this.currentSymbol, this._rawBars);
    const minMove = Number(Math.pow(10, -digits).toFixed(digits));

    this.basisSeries = engine.chart.addLineSeries({
      priceScaleId: scalePos,
      color: String(this.params.basisColor || '#FFD600'),
      lineWidth: Number(this.params.lineWidth) || 2,
      lineStyle: 0,
      visible: this.isVisible,
      lastValueVisible: true,
      priceLineVisible: false,
      priceFormat: { type: 'price', precision: digits, minMove },
    });

    this.upperSeries = engine.chart.addLineSeries({
      priceScaleId: scalePos,
      color: String(this.params.bandColor || '#00BCD4'),
      lineWidth: 1,
      lineStyle: Number(this.params.lineStyle) || 0,
      visible: this.isVisible,
      lastValueVisible: false,
      priceLineVisible: false,
      priceFormat: { type: 'price', precision: digits, minMove },
    });

    this.lowerSeries = engine.chart.addLineSeries({
      priceScaleId: scalePos,
      color: String(this.params.bandColor || '#00BCD4'),
      lineWidth: 1,
      lineStyle: Number(this.params.lineStyle) || 0,
      visible: this.isVisible,
      lastValueVisible: false,
      priceLineVisible: false,
      priceFormat: { type: 'price', precision: digits, minMove },
    });

    if (this.cachedData.basis.length > 0) {
      this.setData(this.cachedData);
    }
  }

  setData(data) {
    if (this.isDestroyed || !data) return;
    this.basisSeries?.setData(MathUtils.sanitizeSeriesData(data.basis || []));
    this.upperSeries?.setData(MathUtils.sanitizeSeriesData(data.upper || []));
    this.lowerSeries?.setData(MathUtils.sanitizeSeriesData(data.lower || []));
    this.applyMarkers();
  }

  update(bar) {
    if (this.isDestroyed || !bar || typeof bar.time !== 'number' || !Number.isFinite(bar.time)) return;
    const n = this._rawBars.length;
    let isNewBar = false;

    if (n === 0 || bar.time > this._rawBars[n - 1].time) {
      this._rawBars.push({ ...bar });
      isNewBar = true;
    } else if (bar.time === this._rawBars[n - 1].time) {
      this._rawBars[n - 1] = { ...bar };
    } else {
      return;
    }

    // NOTE: Incremental update below is suitable for recursive indicators (EMA, ATR, RSI).
    // For complex indicators that depend on long history or multi-variable state (e.g., SuperTrend,
    // Swing Pivots, SMC Structure), replace the `else` branch with full recalculate:
    // `const data = this.calculate(this._rawBars, this.currentSymbol); this.setData(data);`
    if (isNewBar || this._prevEma === undefined || this._prevAtr === undefined || this._prevClose === undefined) {
      // New bar opened: run full calculation to advance cached state & markers
      const data = this.calculate(this._rawBars, this.currentSymbol);
      this.setData(data);
    } else {
      // O(1) Incremental intrabar update on the forming bar without recalculating all bars
      const emaP = Math.max(1, Number(this.params.emaPeriod) || 20);
      const atrP = Math.max(1, Number(this.params.atrPeriod) || 14);
      const mult = Number(this.params.atrMult) || 2.0;
      const kEma = 2 / (emaP + 1);
      const kAtr = 1 / atrP;

      const t = Number(bar.time);
      const c = Number(bar.close);
      const h = Number(bar.high);
      const l = Number(bar.low);
      const tr = Math.max(h - l, Math.abs(h - this._prevClose), Math.abs(l - this._prevClose));
      const liveEma = c * kEma + this._prevEma * (1 - kEma);
      const liveAtr = tr * kAtr + this._prevAtr * (1 - kAtr);

      if (Number.isFinite(liveEma) && Number.isFinite(liveAtr)) {
        try {
          this.basisSeries?.update({ time: t, value: liveEma });
          this.upperSeries?.update({ time: t, value: liveEma + liveAtr * mult });
          this.lowerSeries?.update({ time: t, value: liveEma - liveAtr * mult });
        } catch (_e) {}
      }
    }
  }

  updateParams(newParams, engine) {
    this.params = { ...this.params, ...newParams };
    if (engine) this.engine = engine;

    this.basisSeries?.applyOptions({
      color: String(this.params.basisColor || '#FFD600'),
      lineWidth: Number(this.params.lineWidth) || 2,
      visible: this.isVisible,
    });
    for (const s of [this.upperSeries, this.lowerSeries]) {
      s?.applyOptions({
        color: String(this.params.bandColor || '#00BCD4'),
        lineStyle: Number(this.params.lineStyle) || 0,
        visible: this.isVisible,
      });
    }

    const bars =
      this.engine && Array.isArray(this.engine.allBars) && this.engine.allBars.length > 0
        ? this.engine.allBars
        : this._rawBars;

    if (bars && bars.length > 0) {
      const data = this.calculate(bars, this.currentSymbol);
      this.setData(data);
    } else {
      this.applyMarkers();
    }
  }

  setVisible(visible) {
    this.isVisible = visible !== false;
    for (const s of [this.basisSeries, this.upperSeries, this.lowerSeries]) {
      s?.applyOptions({ visible: this.isVisible });
    }
    if (!this.isVisible) {
      this.clearMarkers();
    } else {
      this.applyMarkers();
    }
  }

  destroy(engine) {
    this.isDestroyed = true;
    const eng = engine || this.engine;
    this.clearMarkers();

    for (const s of [this.basisSeries, this.upperSeries, this.lowerSeries]) {
      if (s && eng?.chart && typeof eng.chart.removeSeries === 'function') {
        try {
          eng.chart.removeSeries(s);
        } catch (_e) {}
      }
    }
    this.basisSeries = null;
    this.upperSeries = null;
    this.lowerSeries = null;
  }

  applyMarkers() {
    if (!this.engine || !this.isVisible || Number(this.params.showSignals) === 0) {
      this.clearMarkers();
      return;
    }
    const safeMarkers = MathUtils.sanitizeSeriesData(this.cachedMarkers || []);
    if (typeof this.engine.setIndicatorMarkers === 'function') {
      this.engine.setIndicatorMarkers(this.id, safeMarkers);
    }
  }

  clearMarkers() {
    if (!this.engine) return;
    if (typeof this.engine.clearIndicatorMarkers === 'function') {
      this.engine.clearIndicatorMarkers(this.id);
    }
  }
}

export default EmaBandsCustomIndicator;
```

---

## ✅ Section 10: Pre-Output Verification Checklist for AI Assistants

Before returning the `.ts` indicator file to the user, verify all 12 items:
1. [ ] **Zero Runtime Imports**: No `import { ... } from 'lightweight-charts'` or relative imports.
2. [ ] **Pure ES2020 Syntax (No TypeScript Generics, Type Annotations, or Complex Ternary Colons)**: Zero `<T>`, `Array<...>`, `Record<...>`, `Map<...>`, `interface`, `public`/`private`, or `: type` annotations — prefer `if / else` over complex `? :` ternaries so the file is 100% safe for both native `Blob URL` execution and the regex fallback transpiler.
3. [ ] **Metadata String Literals & Dual Export**: Declares `this.name`, `this.pane` (`'main'` or `'sub'`), and `this.description` as plain quoted string literals (not template backticks) in the first 64 KB, and exports the class as both named (`export class ...`) and `default` (`export default ...`).
4. [ ] **Series Data Sanitization**: Every array passed to `.setData()` or `setIndicatorMarkers()` is filtered through `MathUtils.sanitizeSeriesData()` (strictly ascending `time`, deduplicated timestamps, no `NaN` or `Infinity`).
5. [ ] **Centralized Marker Registry**: Uses `engine.setIndicatorMarkers(this.id, ...)` and `engine.clearIndicatorMarkers(this.id)` — never `mainSeries.setMarkers()` directly.
6. [ ] **`isDestroyed` Reset in `render()`**: Sets `this.isDestroyed = false` at the start of `render()` and `this.isDestroyed = true` in `destroy()`, and cleans up all series / sub-panes / primitives.
7. [ ] **Safe Primitive Re-Attachment & `useMediaCoordinateSpace`**: If using `ISeriesPrimitive`, calls `this.ensurePrimitiveAttached()` in both `render()` and `setData()`, and draws exclusively inside `target.useMediaCoordinateSpace((scope) => { const ctx = scope.context; ... })` (NEVER `target.context` / `target.mediaSize` directly) with safe HUD offsets (`y >= 44` Top Left, `y >= 38` Top Right).
8. [ ] **Price Scale & Visibility Sync**: Implements `setPriceScalePosition(pos)` to update `priceScaleId` on all owned series, and `setVisible(visible)` to toggle all owned series, call `applyMarkers()` / `clearMarkers()`, and trigger `_primitive?.requestUpdate()`.
9. [ ] **Zero-Lookahead HTF Mapping**: If fetching `/api/bars` for HTF, wraps `fetch` in `try/catch` with a local resampler fallback and maps closed HTF bars (`htfIdx - 1`) to avoid future peeking.
10. [ ] **Clean Parameter Scope**: Only adds `bannerPosition`, `dashboardPosition`, `themeMode`, or `priceDigits` in `paramDefs` if they are actually wired and used in the indicator logic/HUD.
11. [ ] **Valid `paramDefs` Types**: Uses only supported `IndicatorParamDef` types (`'number'`, `'color'`, `'select'`, `'text'`, `'boolean'`), preferring `'select'` (`Show: 1` / `Hide: 0`) for On/Off dropdowns.
12. [ ] **Zero-Lag Intrabar Sync & Whitespace Safety**: If rendering real-time Canvas HUD / live price levels, syncs the forming bar from `engine.allBars` / `series.data()` inside `draw()` (skipping trailing future whitespace `{ time }` points) rather than relying solely on a static copy of `_rawBars`.

---

## 📏 Section 11: Central Level Lines (`defaultLevels` & Theme-Aware `'auto'` Colors)

When writing oscillators or sub-pane indicators (such as RSI, Stochastic, CCI, Williams %R) that need horizontal reference lines (e.g., `70 / 30` or `80 / 20`):

- **Do NOT hardcode** `series.createPriceLine(...)` with fixed light/dark colors like `'rgba(255,255,255,0.2)'` inside `render()` — hardcoded white lines become invisible on Light Theme, and users will not be able to add, edit, or hide levels from the Indicator Settings UI.
- Instead, declare `this.defaultLevels` inside your indicator `constructor()` (or `render()`), and register your primary series cleanly so `IndicatorManager` manages every horizontal line **per indicator instance (`ind.id`)**:

```javascript
constructor(id) {
  this.id = id;
  this.name = 'My Oscillator';
  this.pane = 'sub';

  // Managed centrally by IndicatorManager + "📏 Levels" tab in Settings
  // Users can add/edit/hide/delete levels per instance without modifying code.
  this.defaultLevels = [
    { price: 70, color: 'auto', lineStyle: 2, lineWidth: 1, label: '70', visible: true },
    { price: 30, color: 'auto', lineStyle: 2, lineWidth: 1, label: '30', visible: true },
  ];
}

// Optional helper when your indicator manages multiple series on its pane:
getPrimarySeries() {
  return this.mainSeries || null;
}
```

### Rules & Contract
1. **Shorthand Supported**: Numeric arrays such as `this.defaultLevels = [80, 50, 20];` are automatically normalized to `{ price, color: 'auto', lineStyle: 2, lineWidth: 1, label: String(price), visible: true }`.
2. **Theme-Aware `'auto'` Color**: Setting `color: 'auto'` (the default) automatically picks high-contrast slate ink on Light Theme (`rgba(30, 41, 59, 0.42)`) and cool silver on Dark Theme (`rgba(203, 213, 225, 0.40)`), and live-updates immediately when toggling Dark ↔ Light themes (`qd_theme_changed`).
3. **`lineStyle` Values**: `0` = Solid, `1` = Dotted, `2` = Dashed (default).
4. **Per-Instance Isolation & Persistence**: Edits made in `⚙️ Settings → 📏 Levels` are stored on that specific indicator instance (`ind.levels`) and persisted in workspace JSON without affecting other active indicators (e.g., editing RSI levels does not touch MACD or a second RSI).
5. **Sub-pane Registration**: Always call `engine.registerSubPaneSeries(this.id, primarySeries)` inside `render()` for `'sub'` indicators (or expose `getPrimarySeries()`) so Central Levels attach cleanly to the indicator's Y-axis scale.
6. **ES2020 Syntax**: Declare `this.defaultLevels = [...]` using plain JavaScript values (no TypeScript interfaces or type casts) inside custom `.ts` / `.js` indicator files.
