# QuantDeck Custom Strategy Development Guide & AI Blueprint

Welcome to the official **QuantDeck Custom Strategy SDK & AI Prompting Reference**.

> **💡 How to Use This File with Any AI Assistant (ChatGPT, Claude, Gemini, Cursor):**
> Simply attach or paste this `custom_strategy.md` file into your AI chat and describe your trading idea in 2–3 sentences. This document contains all technical contracts, data schemas, anti-lookahead rules, indicator recipes, overlay specs, and position-management patterns so the AI will automatically generate a **100% production-ready, zero-bug QuantDeck Python strategy** without asking you technical questions.
> 
> **⚡ Dynamic Python Workflow (No App Rebuild):** All strategy files in `custom_strategies/*.py` are loaded dynamically at runtime via `importlib`. You can create, edit, or tune strategies directly in `.py` files and immediately click **"Scan"** in the Strategy Tester or launch them in External Bot mode **without compiling or rebuilding the QuantDeck application**.

---

## 🤖 Section 0: Autonomous AI Assistant Directives (READ FIRST)

**If you are an AI Assistant reading this document because a user asked you to build or modify a trading strategy, follow these rules strictly:**

### 0.1 AI Decision Tree & Smart Clarification Protocol

1. **Clarify Ambiguous Strategy Logic Before Coding (Never Guess Unclear Rules)**:
   - **If the user's prompt is clear and complete** (or explicitly says *"use defaults / decide for me"*): apply the decision tree below and immediately output a complete, runnable `.py` file.
   - **If trading rules are ambiguous or incomplete** (e.g., unclear exact BUY/SELL trigger, unspecified SL/TP method, unclear `close_opposite` reversal vs hold-to-SL/TP, ambiguous `max_positions`/cooldowns, or unspecified HTF timeframe for MTF logic): **DO NOT guess blindly.** Ask **2–4 concise, numbered questions** BEFORE generating code, and **propose a QuantDeck-recommended default for each question** (aligned with zero-lookahead, `custom_sizing = True`, ATR-based risk, and News Guard live recovery) so the user can confirm with a quick reply or customize.
   - **Never ask low-level SDK questions** (e.g., `BaseStrategy` inheritance, `get_param_defs` format, `_get_digits()`, `overlays`, or News Guard wiring); handle all QuantDeck platform contracts automatically.
2. **Parameter Definitions Contract (`get_param_defs` & `get_default_params`)**:
   - `BaseStrategy` is an `ABC` that requires **both** `@classmethod def get_param_defs(cls) -> List[Dict[str, Any]]` (returning a **List of Dicts**, each containing `"key"`, `"label"`, `"type"`, `"default"`, and optional `"min"`, `"max"`, `"step"`, `"options"`) **and** `@classmethod def get_default_params(cls) -> Dict[str, Any]`.
   - Supported `"type"` values for UI + Optuna parity: `"number"` (or explicit `"int"` / `"float"`), `"bool"` (native `True`/`False`), `"select"` (with `"options"` list), and `"text"`.
   - Always implement `get_default_params(cls)` as `return {p["key"]: p["default"] for p in cls.get_param_defs()}` so they never go out of sync. QuantDeck `BaseStrategy` auto-coerces `self.params` types on initialization, and strategies should still parse boolean params defensively with `_as_bool()` (never raw `bool(...)`).
3. **Lot Sizing Decision**:
   - *User did NOT specify lot sizing logic* ➔ **Always** set `custom_sizing = True` and include the standard `_calculate_lot(entry_price, sl_price)` helper (Section 3.3) so both `"Fixed Lot"` and `"% Risk per Trade"` modes in the QuantDeck UI work out-of-the-box.
   - *User explicitly asked for custom/martingale/volatility lot sizing* ➔ Set `custom_sizing = True` and implement their custom formula inside `sizes`.
4. **Position Management & Concurrency Decision**:
   - *User did NOT ask for `max_positions`, pyramid entries, or cooldown bar spacing* ➔ **Keep it simple!** Generate entries with a clean loop or vectorized signals without tracking an internal `active_positions` list, and do **NOT** add `self.is_live` concurrency checks.
   - *User asked for `max_positions`, pyramid limits, or `min_bar_spacing` cooldowns* ➔ Implement the stateful tracking loop (Section 7.3) and **MUST** gate the simulated `active_positions` count with `if self.is_live:` vs `else:`.
5. **Opposite Signal Reversal Decision (`close_opposite`)**:
   - *Trend-following / Reversal strategies (e.g., MA crossover, SuperTrend flip, MACD cross)* ➔ Include `{"key": "close_opposite", "label": "Close on Opposite Signal", "type": "bool", "default": True}` in `get_param_defs()`. QuantDeck's Backtester (`engine.py`), Optimizer (`optimizer.py`), Live Engine (`live_engine.py`), and External Bot Runner all read `self.params["close_opposite"]` identically.
   - *Fixed-target scalping / Mean-reversion strategies (where trades should only exit at SL or TP)* ➔ Set `"close_opposite"` default to `False` (and NEVER omit it expecting hold-to-SL/TP, because legacy strategies without `close_opposite` reverse by default in Backtest).
6. **Swing High / Low, Pivot, Fractal, or Market Structure (BOS/CHoCH) Decision**:
   - *User mentions Swing High/Low, Pivot Points, Fractals, Support/Resistance zones, or SMC BOS/CHoCH* ➔ **Always** use the Confirmed Swing Pivot formula with confirmation lag (`.shift(swing_len)` over a `2 * swing_len + 1` window, Section 5.3) so there is zero future peeking.
7. **Visual Overlays Decision**:
   - Whenever the strategy calculates **any** indicator (EMA, SMA, Bollinger Bands, SuperTrend, RSI, MACD, Donchian/Session High-Low, VWAP), **automatically include it in the returned `"overlays"` dictionary** using the QuantDeck Standard High-Contrast Color Palette (Section 6.2) so the user immediately sees the indicators on their chart.
8. **Stop Loss & Take Profit Decision**:
   - If the user doesn't specify SL/TP logic, default to an **ATR-based Stop Loss and Risk-Reward Take Profit** (`atr_period = 14`, `sl_atr_mult = 1.5`, `rr_ratio = 2.0`) and expose them in `get_param_defs()`.

### 0.2 Strict Prohibitions (What Never to Do)

- ❌ **NEVER return a `dict` from `get_param_defs()` or omit `get_default_params()`**:
  - `get_param_defs()` **MUST** return a `List[Dict[str, Any]]` where every item has `"key"`. Returning a `Dict[str, Dict]` or omitting `get_default_params()` will immediately fail strategy loading in `StrategyRegistry`.
- ❌ **NEVER import external TA libraries** (`import talib`, `import pandas_ta`, `import scipy`, `import sklearn`) or network/news-scraping libraries (`requests`, `urllib`, `NewsGuard`). The QuantDeck standalone `.exe` runtime guarantees **only** `pandas`, `numpy`, `math`, and the Python standard library. Write all indicators using pure `pandas` / `numpy` (copy recipes from Section 4).
- ❌ **NEVER invent unrequested filter parameters** (e.g., do not add random ADX, Volume, or Session filters unless the user asked for them). Keep `get_param_defs()` focused strictly on the user's strategy and basic SL/TP risk parameters.
- ❌ **NEVER declare Reserved Platform Keys** in `get_param_defs()`:
  - Forbidden backtest/execution keys: `initial_capital`, `lot_size`, `risk_pct`, `spread_usd`, `slippage_usd`, `sizing_mode`, `symbol`, `timeframe`.
  - Forbidden News Guard keys (managed natively by QuantDeck's live/external bot runner): `news_guard_enabled`, `news_min_impact`, `news_freeze_mins_before`, `news_close_positions_enabled`, `news_close_mins_before`, `news_resume_mins_after`.
- ❌ **NEVER violate Built-in Parameter Validation Rules**:
  - If your strategy uses any Fast/Slow or Short/Long crossover period pair (e.g., `fast_period`/`slow_period`, `ema_fast`/`ema_slow`, `fast_len`/`slow_len`, `short_period`/`long_period`), you **MUST**:
    1. Set defaults so `fast < slow` strictly, and choose sensible Optuna `min`/`max` ranges (e.g., Fast `min: 5, max: 50`, Slow `min: 20, max: 200`) to minimize overlap.
    2. Add a safety guard at the top of `generate_signals(df)` (`if fast_period >= slow_period: return empty signals`).
  - If your strategy uses `use_BE`, `plus_ATR`, and `trigger_BE_at_ATR`, default `plus_ATR < trigger_BE_at_ATR` strictly when `use_BE` is `True`.
- ❌ **NEVER introduce Lookahead Bias**:
  - Forbidden: `.shift(-1)`, `.bfill()` on indicators or price series (use `.fillna(0.0)` instead), `center=True` in `.rolling()`, or merging unshifted Higher-Timeframe (HTF) bars onto Lower-Timeframe (LTF) bars (see Section 5).
- ❌ **NEVER leave `NaN` or `np.inf` in outputs**:
  - `signals`, `sl`, `tp`, `sizes` must have all `NaN`/`inf` replaced before returning, and `overlays["..."]["data"]` must filter out non-finite values using `np.isfinite(val)`.
- ❌ **NEVER hardcode decimal places (e.g., `round(val, 5)`)** without checking asset precision. Always use `self._get_digits()` (Section 3.2) so the strategy works accurately on Gold (`XAUUSD`, 2 digits), JPY pairs (3 digits), Forex (5 digits), and Crypto (2–4 digits).
- ❌ **NEVER evaluate parameters with raw `bool(self.params.get(...))` (`bool("false") == True` trap)**:
  - Always declare explicit types in `get_param_defs()` (`"bool"`, `"int"`, `"float"`, `"number"`, `"select"`, `"text"`) and ensure boolean values parse safely via `BaseStrategy` auto-coercion or a dedicated `_as_bool()` helper handling `"false"`, `"0"`, `"no"`, `"off"`, and `""`.
- ❌ **NEVER introduce bar-index modulo phase drift (`(i - warmup) % step == 0` when `step > 1`) on sliding windows**:
  - If an algorithm skips bars using `i % step` or `(i - warmup) % step`, shifting a rolling window by even 1 new bar changes which bars get recalculated and produces different Optimizer vs Backtest results when live bars advance. Use timestamp-aligned boundaries or `step = 1` by default.

### 0.3 Architectural Conflict & Escalation Protocol (When Requirements Violate Platform Limits)

If a user request requires functionality that **fundamentally violates QuantDeck's architecture, sandbox constraints, or zero-lookahead integrity**—and cannot be achieved safely within the strategy script:

❌ **THE AI ASSISTANT MUST NEVER:**
1. Silently ignore or drop the user's core requirement while pretending it was implemented.
2. Hack or bypass platform boundaries (e.g. importing prohibited external libraries like `talib` or `requests`, attempting network I/O, inventing fake context fields, or introducing lookahead bias).
3. Produce broken, unrunnable code that will crash in `StrategyRegistry` or during live order execution.

✅ **THE AI ASSISTANT MUST INSTEAD:**
Immediately stop and present a structured **"QuantDeck Architectural Conflict Report"** to the user. This report clearly explains the root technical limitation, offers safe current workarounds, and generates a formatted Feature Request that the user can copy and submit directly to the QuantDeck Development Team.

**Mandatory 4-Part Response Template for AI Assistants:**

````markdown
⚠️ **QuantDeck Architectural Conflict Report**

1. **Detected Architectural Conflict (What Cannot Be Done Directly):**
   - *State clearly which specific requirement conflicts with the QuantDeck engine.*
   - *Example: Requesting multi-symbol execution (Pairs/Hedge) inside a Single-Asset BaseStrategy, requesting Orderbook L2 Level-2 DOM depth, or requesting sub-millisecond tick streaming inside an In-Chart OHLC loop.*

2. **Root Technical Blocker (Why the Engine Does Not Support It):**
   - *Explain the exact architectural constraint in QuantDeck.*
   - *Example: BaseStrategy is locked to a single `df` and single symbol context; standalone execution runtime guarantees only pure pandas/numpy without C-extensions; or In-Chart backtester runs on closed OHLC bars.*

3. **Available Workarounds & Practical Alternatives (How to Proceed Today):**
   - **Alternative A (Current In-App Mode):** *What compromise or adaptation works cleanly right now (e.g., use the new `Multiple Sym` tab with `BaseMultiAssetStrategy` instead of `BaseStrategy`, or use Tick Volume instead of L2 DOM).*
   - **Alternative B (External Architecture):** *How the task can be handled outside the constraint (e.g., standalone Python script using `connection/mt5_client.py`).*

4. **QuantDeck Development Team Escalation Proposal:**
   > 📋 *If you need the QuantDeck core platform to officially support this capability in future releases, copy and send the following proposal to the QuantDeck Dev Team:*
   ```text
   [Feature Request for QuantDeck Development Team]
   - Subsystem     : <Strategy Engine / Backtester / Order Router / Data Source>
   - User Objective: <Brief summary of what the user is trying to achieve>
   - Technical Blocker: <Specific missing interface, data feed, or context attribute>
   - Suggested Architecture Enhancement: <Proposed platform expansion, e.g. add aux_dfs to context, support DOM feed, etc.>
   ```
````

---

## 💬 Section 1: Minimal Prompt Templates & Multilingual Guide

For structured, copy-pasteable prompt templates across all 9 QuantDeck languages (`EN`, `TH`, `ZH`, `JA`, `KO`, `VI`, `ES`, `DE`, `AR`), see [`prompt_strategy.md`](./prompt_strategy.md).

### Quick-Start Prompt Structure (English)
```text
Create a QuantDeck Custom Python Strategy (.py) strictly following every rule in the attached custom_strategy.md blueprint.

[Strategy Metadata]
- File Name: <e.g., ema_rsi_pullback.py>
- Strategy Name: <e.g., EMA RSI Pullback>
- Description: <1-line summary>

[Entry & Exit Logic]
- <Describe BUY/SELL conditions, indicators, or paste Pine Script / rules>
- HTF Requirement (if any): <e.g., H1/H4 zero-lookahead resampling>
- Reversal Mode: <close_opposite True/False>

[Risk & Position Sizing]
- SL / TP: <e.g., ATR(14) * 1.5 SL, 2.0 RR TP>
- Lot Sizing: <Default custom_sizing = True with _calculate_lot()>
- Live Bot & News Guard Compatibility: <Stateless or synced via self.is_live / self.open_positions_count>

[Strict Output Requirements]
- Subclass BaseStrategy with the try/except fallback, implement get_param_defs() & get_default_params().
- Use only pandas, numpy, math, and Python stdlib (no external TA or news libraries).
- Verify against Section 9 before outputting.
```

---

## 📊 Section 2: Guaranteed DataFrame Contract (`df` Schema)

When QuantDeck calls `generate_signals(self, df: pd.DataFrame)` (in both Backtest and Live Auto-Trading), the `df` argument strictly obeys the following contract:

### 2.1 Guaranteed Columns & Data Types

| Column | Type | Guaranteed? | Description |
| :--- | :--- | :---: | :--- |
| `df["time"]` | `int64` | ✅ **Yes** | **Unix Epoch Timestamp in Seconds (UTC)** representing bar open time (e.g., `1710000000`). |
| `df["open"]` | `float64` | ✅ **Yes** | Bar open price. |
| `df["high"]` | `float64` | ✅ **Yes** | Bar high price. |
| `df["low"]` | `float64` | ✅ **Yes** | Bar low price. |
| `df["close"]` | `float64` | ✅ **Yes** | Bar close price. |
| `df["volume"]` | `float64` | ✅ **Yes** | Tick/bar volume (defaults to `0.0` on feeds without volume). |
| `df["bid_open"]`, `df["bid_high"]`, `df["bid_low"]`, `df["bid_close"]` | `float64` | ⚪ Optional | Present when backtesting on Local Tick Data (True Bid/Ask execution model). |
| `df["ask_open"]`, `df["ask_high"]`, `df["ask_low"]`, `df["ask_close"]` | `float64` | ⚪ Optional | Present when backtesting on Local Tick Data (True Bid/Ask execution model). |

### 2.2 Index Guarantee
- **`df.index` is ALWAYS a standard `pd.RangeIndex(0, len(df))`** (`0, 1, 2, ..., n-1`).
- `df.index` is **NOT** a `DatetimeIndex`.
- Always align returned `pd.Series` (`signals`, `sl`, `tp`, `sizes`) with `index=df.index`.

### 2.3 Safe Column & Dynamic Warmup Extraction Pattern
Always compute `warmup` dynamically from your strategy's longest indicator period and check `len(df) < warmup` at the top of `generate_signals(self, df)`:

```python
n = len(df)
# 1. Dynamic Warmup & Empty DataFrame Guard (MANDATORY RULE)
warmup = max(fast_len, slow_len, rsi_len, atr_len) + 5
if n < warmup:
    return {
        "signals": pd.Series(0, index=df.index, dtype=int),
        "sl": pd.Series(0.0, index=df.index, dtype=float),
        "tp": pd.Series(0.0, index=df.index, dtype=float),
        "sizes": pd.Series(0.0, index=df.index, dtype=float),
        "overlays": {},
    }

# 2. Safe Time Array Extraction (int64 Unix seconds UTC)
times = (
    df["time"].to_numpy(dtype=np.int64)
    if "time" in df.columns
    else np.arange(n, dtype=np.int64)
)
```

### 2.4 Optional True Bid/Ask Price Extraction Snippet
When backtesting on Local Tick Data, QuantDeck's engine automatically fills Long entries at `ask` and Short entries at `bid`. If your strategy logic itself needs to inspect True Bid/Ask extremes (e.g., checking whether `ask_high` broke a resistance level or `bid_low` swept liquidity), extract them with a clean fallback to standard OHLC:

```python
# Optional: Use Bid/Ask series when available (Local Tick Data), falling back to standard OHLC
bid_lows = df["bid_low"].to_numpy(dtype=float) if "bid_low" in df.columns else df["low"].to_numpy(dtype=float)
ask_highs = df["ask_high"].to_numpy(dtype=float) if "ask_high" in df.columns else df["high"].to_numpy(dtype=float)
bid_closes = df["bid_close"].to_numpy(dtype=float) if "bid_close" in df.columns else df["close"].to_numpy(dtype=float)
ask_closes = df["ask_close"].to_numpy(dtype=float) if "ask_close" in df.columns else df["close"].to_numpy(dtype=float)
```

---

## 🏗️ Section 3: Platform Architecture, Context & Precision Helpers

### 3.1 Context Attributes & Properties on `BaseStrategy`
Before running `generate_signals(df)`, QuantDeck automatically calls `strategy.set_context(context)`. The following properties are built into `BaseStrategy`:

| Property / Lookup | Type | Default | Meaning |
| :--- | :--- | :--- | :--- |
| `self.symbol` | `str` | `"XAUUSD"` | Active instrument ticker (e.g., `"XAUUSD"`, `"EURUSD"`, `"BTCUSD"`, `"USDJPY"`). |
| `self.initial_capital` | `float` | `10000.0` | Starting account balance from the Strategy Tester UI. |
| `self.lot_size` | `float` | `1.0` | Fixed lot size chosen in the UI (`1.0` default). |
| `self.risk_pct` | `float` | `1.0` | Risk percentage per trade (e.g., `1.0` = 1% of capital) chosen in the UI. |
| `self.sizing_mode` | `str` | `"strategy"` if `custom_sizing` else `"fixed"` | `"fixed"` (Fixed Lot), `"risk_pct"` (% Risk of Equity), or `"strategy"` (Strategy-Defined Sizes). |
| `self.spread_usd` | `float` | `0.0` | Configured spread cost in price units. |
| `self.is_live` | `bool` | `False` | `True` when running in Live Auto-Trading; `False` during Backtest / Optimization. |
| `self.open_positions_count` | `int` | `0` | Live broker open positions count for this symbol (only populated when `self.is_live == True`). |
| `self.open_positions` | `list` | `[]` | List of active live broker position dicts (only populated when `self.is_live == True`). |
| `self.multiplier` | `float` | Auto | Contract value per 1.0 lot per $1.00 price move (`100` for XAUUSD, `100000` for Forex, `1000` for JPY, `1` for Crypto/Indices/Stocks). |
| `self.context.get("digits")` | `int` | Auto | Price decimal precision (`2` for Gold/Stocks/Crypto, `3` for JPY/Silver, `5` for Forex). |

### 3.2 Dynamic Price Rounding Helper (`_get_digits`)
Different assets have vastly different decimal scales (`XAUUSD` = `2650.25` [2 digits], `EURUSD` = `1.08456` [5 digits], `USDJPY` = `154.325` [3 digits]). **Always include `_get_digits(self)` in your strategy class:**

```python
def _get_digits(self) -> int:
    """Return accurate decimal precision for rounding SL, TP, and Overlays."""
    ctx_digits = self.context.get("digits")
    if ctx_digits is not None:
        return int(ctx_digits)
    sym = getattr(self, "symbol", "XAUUSD").upper()
    if any(k in sym for k in ("XAU", "GOLD", "BTC", "ETH", "SOL", "BNB", "US30", "NAS", "SPX", "HK50", "DE40")):
        return 2
    if any(k in sym for k in ("JPY", "XAG", "SILVER")):
        return 3
    return 5
```

### 3.3 Dynamic Lot Sizing Helper (`_calculate_lot`)
Always set `custom_sizing = True` on the strategy class and include `_calculate_lot` so both UI sizing modes (`Fixed Lot` and `% Risk per Trade`) work seamlessly across Forex, Metals, Crypto, Indices, and Stocks:

```python
def _calculate_lot(self, entry_price: float, sl_price: float) -> float:
    """Calculate position size in Lots respecting UI Sizing Mode ('fixed', 'risk_pct', or 'strategy')."""
    default_mode = "strategy" if getattr(self, "custom_sizing", False) else "fixed"
    mode = getattr(self, "sizing_mode", default_mode)
    if mode in ("risk_pct", "strategy") and sl_price > 0:
        sl_dist = abs(entry_price - sl_price)
        if sl_dist > 1e-9:
            multiplier = float(getattr(self, "multiplier", 0.0) or self.context.get("multiplier", 0.0))
            if multiplier <= 0:
                sym = getattr(self, "symbol", "XAUUSD").upper()
                if "XAU" in sym or "GOLD" in sym:
                    multiplier = 100.0
                elif "XAG" in sym or "SILVER" in sym:
                    multiplier = 5000.0
                elif "JPY" in sym:
                    multiplier = 1000.0
                elif any(c in sym for c in ("EUR", "GBP", "AUD", "NZD", "CAD", "CHF")):
                    multiplier = 100000.0
                else:
                    # Crypto (BTC, ETH, SOL, etc.), Indices (US30, NAS100), and Stocks
                    multiplier = 1.0
            risk_dollars = float(self.initial_capital) * (float(self.risk_pct) / 100.0)
            lot = risk_dollars / (sl_dist * multiplier)
            return max(0.01, round(lot, 2))
    return max(0.01, round(float(getattr(self, "lot_size", 1.0)), 2))
```

---

## 🧮 Section 4: Pure Pandas / NumPy Indicator Recipes (No External TA Libraries)

Because standalone QuantDeck builds do **not** bundle C-extensions like `talib` or `pandas_ta`, **all indicators MUST be computed with vectorized `pandas` and `numpy`**.

### 4.1 When to Vectorize vs. When to Loop
1. **Indicators**: **ALWAYS vectorize** before the signal loop using `pandas` / `numpy` operations, and convert to `.to_numpy(dtype=float)` for $O(1)$ lookup inside any loop. Never use `.bfill()` on indicators; use `.fillna(0.0)` if needed and start your signal loop at `range(warmup, n)`.
2. **Entry/Exit Signals & SL/TP**:
   - You may use a single fast Python loop `for i in range(warmup, len(df)):` over pre-extracted NumPy arrays (`closes[i]`, `highs[i]`, `atr_vals[i]`) to assign `sig_arr[i]`, `sl_arr[i]`, `tp_arr[i]`, and `size_arr[i]`. Iterating over NumPy arrays takes `< 2ms` for 20,000 bars and prevents broadcast bugs.

### 4.2 Standard Vectorized Indicator Snippets

```python
# --- 1. EMA & SMA ---
ema_fast = df["close"].ewm(span=fast_period, adjust=False).mean()
sma_slow = df["close"].rolling(window=slow_period).mean()

# --- 2. ATR (Wilder's RMA Smoothing, No .bfill()) ---
high_low = df["high"] - df["low"]
high_close = (df["high"] - df["close"].shift(1)).abs()
low_close = (df["low"] - df["close"].shift(1)).abs()
tr = pd.concat([high_low, high_close, low_close], axis=1).max(axis=1)
atr = tr.ewm(alpha=1.0 / atr_period, adjust=False).mean().fillna(0.0)

# --- 3. RSI (Wilder's Smoothing, Safe Division) ---
delta = df["close"].diff()
gain = delta.clip(lower=0.0).ewm(alpha=1.0 / rsi_period, adjust=False).mean()
loss = (-delta.clip(upper=0.0)).ewm(alpha=1.0 / rsi_period, adjust=False).mean()
rs = gain / loss.replace(0.0, np.nan)
rsi = (100.0 - (100.0 / (1.0 + rs))).fillna(50.0)

# --- 4. Bollinger Bands ---
bb_mid = df["close"].rolling(window=bb_period).mean()
bb_std = df["close"].rolling(window=bb_period).std(ddof=0)
bb_upper = bb_mid + (bb_mult * bb_std)
bb_lower = bb_mid - (bb_mult * bb_std)

# --- 5. MACD ---
ema12 = df["close"].ewm(span=12, adjust=False).mean()
ema26 = df["close"].ewm(span=26, adjust=False).mean()
macd_line = ema12 - ema26
macd_signal = macd_line.ewm(span=9, adjust=False).mean()
macd_hist = macd_line - macd_signal

# --- 6. Donchian Channel (Shifted by 1 bar to prevent breakout lookahead!) ---
donchian_high = df["high"].shift(1).rolling(window=dc_period).max()
donchian_low = df["low"].shift(1).rolling(window=dc_period).min()
```

### 4.3 SuperTrend Recipe (Fast NumPy Loop)

```python
def _calc_supertrend(df: pd.DataFrame, period: int = 10, multiplier: float = 3.0):
    high = df["high"].to_numpy(dtype=float)
    low = df["low"].to_numpy(dtype=float)
    close = df["close"].to_numpy(dtype=float)
    n = len(df)

    tr = np.zeros(n, dtype=float)
    tr[0] = high[0] - low[0]
    for i in range(1, n):
        tr[i] = max(high[i] - low[i], abs(high[i] - close[i - 1]), abs(low[i] - close[i - 1]))
    atr = pd.Series(tr, index=df.index).ewm(alpha=1.0 / period, adjust=False).mean().to_numpy()

    hl2 = (high + low) / 2.0
    basic_ub = hl2 + multiplier * atr
    basic_lb = hl2 - multiplier * atr

    final_ub = np.copy(basic_ub)
    final_lb = np.copy(basic_lb)
    st = np.zeros(n, dtype=float)
    trend = np.ones(n, dtype=int)  # 1 = Bullish, -1 = Bearish

    for i in range(1, n):
        final_ub[i] = basic_ub[i] if (basic_ub[i] < final_ub[i - 1] or close[i - 1] > final_ub[i - 1]) else final_ub[i - 1]
        final_lb[i] = basic_lb[i] if (basic_lb[i] > final_lb[i - 1] or close[i - 1] < final_lb[i - 1]) else final_lb[i - 1]

        if trend[i - 1] == 1 and close[i] < final_lb[i]:
            trend[i] = -1
        elif trend[i - 1] == -1 and close[i] > final_ub[i]:
            trend[i] = 1
        else:
            trend[i] = trend[i - 1]

        st[i] = final_lb[i] if trend[i] == 1 else final_ub[i]

    return pd.Series(st, index=df.index), pd.Series(trend, index=df.index)
```

---

## ⏱️ Section 5: Zero-Lookahead Multi-Timeframe (HTF) Resampling Template

A very common mistake in AI-generated multi-timeframe strategies is **Lookahead Bias during resampling**: if you resample M5 bars into H1 bars (`09:00` to `09:55`) and merge the `09:00` H1 close back onto the `09:05` M5 bar without shifting, the `09:05` M5 bar sees the `09:55` H1 close 50 minutes in the future!

### 5.1 The Golden Rule of HTF Resampling
1. Convert `df["time"]` (Unix seconds UTC) to a `DatetimeIndex`.
2. Resample using `closed="left", label="left"`.
3. Compute your HTF indicators on the resampled HTF DataFrame.
4. **MANDATORY: Apply `.shift(1)` to all HTF series BEFORE calling `.reindex(..., method="ffill")`** back to the LTF timestamps. That way, during the `10:00–10:55` LTF bars, the strategy uses the **completed `09:00` HTF bar**.

### 5.2 Copy-Pasteable Multi-Timeframe Helper

```python
def _compute_htf_ema(self, df: pd.DataFrame, htf_minutes: int = 60, ema_period: int = 50) -> pd.Series:
    """
    Resample LTF bars to HTF (e.g. 60min), compute EMA, shift(1) to prevent lookahead,
    and forward-fill back onto df.index.
    """
    if "time" not in df.columns or len(df) < 10:
        return df["close"].ewm(span=ema_period, adjust=False).mean()

    # 1. Build temporary DataFrame indexed by UTC Datetime
    dt_index = pd.to_datetime(df["time"], unit="s", utc=True)
    ltf_df = pd.DataFrame({
        "open": df["open"].to_numpy(dtype=float),
        "high": df["high"].to_numpy(dtype=float),
        "low": df["low"].to_numpy(dtype=float),
        "close": df["close"].to_numpy(dtype=float),
    }, index=dt_index)

    # 2. Resample to HTF using closed='left', label='left'
    rule = f"{max(1, int(htf_minutes))}min"
    htf_close = ltf_df["close"].resample(rule, closed="left", label="left").last().dropna()

    # 3. Calculate HTF Indicator AND .shift(1) so only CLOSED HTF bars are used!
    htf_ema = htf_close.ewm(span=ema_period, adjust=False).mean().shift(1)

    # 4. Align back to LTF timestamps via forward-fill and restore RangeIndex
    aligned_ema = htf_ema.reindex(dt_index, method="ffill")
    return pd.Series(aligned_ema.to_numpy(dtype=float), index=df.index)
```

### 5.3 Confirmed Swing High / Swing Low Pivot Rule (No Future Peeking)
Never detect a swing pivot at bar `i` by checking `df['high'][i+1 : i+length]` at bar `i`. A swing pivot of window `length` is only confirmed **`length` bars later**:

```python
# Confirmed Swing High/Low (Zero Lookahead):
# A pivot at bar (i - swing_len) is confirmed at bar i if it was the highest/lowest of the last (2 * swing_len + 1) bars.
win = 2 * swing_len + 1
is_swing_high = df["high"].shift(swing_len) == df["high"].rolling(window=win).max()
is_swing_low = df["low"].shift(swing_len) == df["low"].rolling(window=win).min()
last_swing_high = df["high"].shift(swing_len).where(is_swing_high).ffill()
last_swing_low = df["low"].shift(swing_len).where(is_swing_low).ffill()
```

---

## 🎨 Section 6: Complete Overlay Specification & Standard Color Palette

Every entry in the returned `"overlays"` dictionary tells QuantDeck to render an indicator line on the chart.

### 6.1 Overlay Schema Contract

```python
"overlays": {
    "Unique Key Name": {
        "color": "#00E676",       # Hex color string
        "lineWidth": 2,           # Integer 1 to 4
        "pane": "main",           # "main" = on price chart (default) | "sub" = lower oscillator pane
        "data": [                 # List of {"time": int, "value": float} dicts
            {"time": 1710000000, "value": 2650.12},
            ...
        ]
    }
}
```

> **📌 Important Notes on Markers & Overlays:**
> 1. **Entry & Exit Markers (`BUY`, `SELL`, `SL`, `TP`) are drawn AUTOMATICALLY by QuantDeck** from your returned `signals`, `sl`, and `tp` Series. You do **not** need to put trade markers inside `"overlays"`.
> 2. **Strict `NaN` & `Inf` Filtering**: Lightweight Charts will crash if any `"value"` in `"data"` is `NaN`, `None`, or `Infinity`. Always use the `_build_overlay_data` helper below.
> 3. **Sub-Pane Oscillators (`"pane": "sub"`)**: For indicators whose scale differs from price (e.g., RSI `0–100`, MACD, ADX, ATR), set `"pane": "sub"` and round to `2` or `4` decimals.

### 6.2 QuantDeck Standard High-Contrast Color Palette
Use these standard hex colors so every strategy has a consistent, institutional dark/light-theme look:

| Role / Indicator Type | Hex Color | Visual Color | Recommended `lineWidth` |
| :--- | :---: | :--- | :---: |
| **Fast MA / Bullish / Upper Trend** | `#00E676` | Neon Emerald Green | `2` |
| **Slow MA / Bearish / Lower Trend** | `#FF5252` | Coral Crimson Red | `2` |
| **Midline / Baseline / EMA 200** | `#FFD600` | Vivid Gold / Amber | `2` |
| **Primary Oscillator (RSI / MACD)** | `#2962FF` | Electric Royal Blue | `2` |
| **Bands / Channels (Bollinger / Donchian)** | `#00BCD4` | Cyan / Aqua | `1` |
| **HTF Structure / VWAP / Pivot** | `#AB47BC` | Vivid Purple | `2` |
| **Support / Resistance / Trailing Stop** | `#FF9800` | Bright Orange | `1` |

### 6.3 Safe Overlay Builder Helper (`_build_overlay_data`)
Always include this helper method in your strategy class:

```python
def _build_overlay_data(self, times: np.ndarray, values, digits: int) -> list:
    """Safely convert a Series/ndarray into a NaN/Inf-free list of {time, value} dicts."""
    arr = np.asarray(values, dtype=float)
    valid_mask = np.isfinite(arr)  # Filters out NaN, +inf, -inf in C speed
    return [
        {"time": int(t), "value": round(float(v), digits)}
        for t, v in zip(times[valid_mask], arr[valid_mask])
    ]
```

### 6.4 Multi-Line Overlay Examples (Bollinger Bands, SuperTrend, Sub-Pane RSI)

```python
digits = self._get_digits()
overlays = {
    # 1. Bollinger Bands (3 separate line entries on "main" pane)
    f"BB Upper ({bb_period})": {
        "color": "#00BCD4",
        "lineWidth": 1,
        "pane": "main",
        "data": self._build_overlay_data(times, bb_upper, digits),
    },
    f"BB Basis ({bb_period})": {
        "color": "#FFD600",
        "lineWidth": 1,
        "pane": "main",
        "data": self._build_overlay_data(times, bb_mid, digits),
    },
    f"BB Lower ({bb_period})": {
        "color": "#00BCD4",
        "lineWidth": 1,
        "pane": "main",
        "data": self._build_overlay_data(times, bb_lower, digits),
    },
    # 2. SuperTrend split into Bullish (Green) and Bearish (Red) segments
    "SuperTrend Bull": {
        "color": "#00E676",
        "lineWidth": 2,
        "pane": "main",
        "data": self._build_overlay_data(times, st_series.where(st_trend == 1), digits),
    },
    "SuperTrend Bear": {
        "color": "#FF5252",
        "lineWidth": 2,
        "pane": "main",
        "data": self._build_overlay_data(times, st_series.where(st_trend == -1), digits),
    },
    # 3. RSI in Lower Sub-Pane ("pane": "sub")
    f"RSI ({rsi_period})": {
        "color": "#2962FF",
        "lineWidth": 2,
        "pane": "sub",
        "data": self._build_overlay_data(times, rsi, 2),
    },
}
```

---

## 🛡️ Section 7: Stateful Logic & Position Management Cheat Sheet

Understanding how QuantDeck's Backtest Engine (`engine.py`) and Live Execution Engine (`live_engine.py`) process your signals ensures 100% predictable trade execution.

### 7.1 Pattern A: Standard Single-Position Strategy (Default — Recommended for 90% of Strategies)
- You output `1` (BUY) or `-1` (SELL) on signal bars, along with `sl[i]`, `tp[i]`, and `sizes[i]`.
- QuantDeck's engine automatically tracks the open position, checks every bar's High/Low against your `sl` and `tp`, and closes the trade when hit.
- **You do NOT need `active_positions` tracking or `self.is_live` checks** for standard strategies.

### 7.2 Pattern B: Opposite Signal Reversal (`close_opposite`)
- **In Backtesting (`engine.py`)**: If a `BUY` position is still open (hasn't hit SL/TP yet) and a `-1` (`SELL`) signal fires, the backtester reverses the position automatically.
- **In Live Auto-Trading (`live_engine.py`)**: Live broker positions are **only** automatically closed on an opposite signal if `self.params.get("close_opposite")` is `True`.
- **How to enable**: Add `{"key": "close_opposite", "label": "Close on Opposite Signal", "type": "bool", "default": True}` to the list returned by `get_param_defs()`. You do **not** need extra code inside `generate_signals` because the execution engine reads `self.params["close_opposite"]` directly.

### 7.3 Pattern C: Concurrency-Limited Strategy (`max_positions` / `min_bar_spacing`)
**ONLY use this pattern if the user asks for `max_positions`, pyramid scaling, or a cooldown between trades.**
Why is `self.is_live` needed here?
- In **Backtest** (`self.is_live == False`), your loop simulates `active_positions` hitting SL/TP on historical bars.
- In **Live Auto-Trading** (`self.is_live == True`), a trade might be closed manually by the user on cTrader/MT5. If your loop only checked historical bars, a phantom historical trade would block new live signals!

```python
active_positions = []  # List of dicts: {"dir": 1|-1, "sl": float, "tp": float}
last_entry_bar = -9999

for i in range(warmup, n):
    # 1. Expire simulated historical positions that hit SL or TP on bar i
    active_positions = [
        p for p in active_positions
        if not (
            (p["dir"] == 1 and (lows[i] <= p["sl"] or highs[i] >= p["tp"]))
            or (p["dir"] == -1 and (highs[i] >= p["sl"] or lows[i] <= p["tp"]))
        )
    ]

    # 2. Live vs Backtest Concurrency Check
    if self.is_live:
        current_open = self.open_positions_count if i == n - 1 else 0
    else:
        current_open = len(active_positions)

    if current_open >= max_positions or (i - last_entry_bar) < min_bar_spacing:
        continue

    # 3. Evaluate Entry Conditions ...
```

### 7.4 Pattern D: Simulated Trailing Stop / Dynamic Exit via Opposite Signal
Because QuantDeck's vectorized backtester locks in the initial `sl` and `tp` at entry bar `i`, if a user asks for a **Trailing Stop** or **Indicator Exit** (e.g., *"Exit long when price closes below EMA 20"*), you can trigger an immediate exit in the engine by emitting the opposite signal (`-1` to close a Long, `1` to close a Short) or by tracking the trailing stop line in your loop and plotting it in `overlays`.

### 7.5 News Guard Production Protection & Live State Recovery
In QuantDeck's live execution engines (`LiveTradingEngine` and `external_bot_runner.py`), **News Guard** (`backend/news/news_guard.py`) enforces 4-stage high-impact economic news protection automatically at the bot-runner layer:
1. **`NORMAL`**: Normal trading allowed.
2. **`FREEZE_ENTRIES`** *(default 180 mins before High-impact news)*: New entries are blocked while existing positions remain open.
3. **`CLOSE_AND_FLAT`** *(default 45 mins before news until resume window)*: All bot-tracked broker positions are force-closed and the bot stays flat.
4. **`AUTO_RESUME`** *(default 60 mins after news)*: Normal trading resumes automatically.

**Strategy Compatibility Rules for News Guard:**
- **Never implement custom news scraping or `NewsGuard` imports** inside your `.py` strategy file.
- **Never declare News Guard config keys** (`news_guard_enabled`, `news_min_impact`, `news_freeze_mins_before`, `news_close_positions_enabled`, `news_close_mins_before`, `news_resume_mins_after`) inside `get_param_defs()`.
- **Keep live position checks synced with the broker:** When `self.is_live` is `True`, always rely on `self.open_positions_count` / `self.open_positions` (not a persistent in-memory `self._in_trade` flag) so that after News Guard force-closes positions during `CLOSE_AND_FLAT`, your strategy cleanly resumes trading once `AUTO_RESUME` begins.

### 7.6 Dual Execution Architecture: Bar-Close Entry vs. Broker Tick SL/TP
A critical concern in live algorithmic trading is whether evaluating on completed bars misses opportunities or delays stop losses:
1. **Entry Evaluation (Completed Bar Close, Zero Lookahead)**:
   - Signals are calculated on completed bars (`df.iloc[-1]` or `all_bars[bar_idx - 1]`).
   - Entering on every intra-bar tick is prohibited: it creates severe false breakout whipsaws from transient spread widening, invalidates backtest assumptions, and generates massive commission churn.
2. **Stop Loss & Take Profit (Tick-by-Tick Execution on Broker Server)**:
   - When QuantDeck places an order, it submits the calculated `sl_price` and `tp_price` directly to the broker server.
   - The broker executes SL and TP **tick-by-tick at sub-millisecond hardware speed**. You do **NOT** have to wait for a 15-minute or 1-hour bar to close for your stop loss or take profit to trigger.
3. **Dynamic / Indicator Exits (`close_opposite = True`)**:
   - If a strategy exits based on indicator flips (e.g., Fast EMA crossing back under Slow EMA), QuantDeck checks for opposite signals on every newly closed bar and sends immediate market close orders to the broker gateway.

### 7.7 Live State Recovery & Bot Restart Resilience
When an In-Chart or External Bot is closed, restarted, or restored after a power cycle:
1. **Comment Tagging Isolation**:
   - Every market order placed by the live runner includes a unique tag in the broker order comment: `EB_{strategy_id}_{tag_num}` (or `IC_{strategy_id}_{tag_num}` for In-Chart).
2. **Automatic Ticket Re-acquisition**:
   - On startup, the runner calls `order_router.get_open_positions(symbol)` and filters positions matching its tag.
   - It re-populates `tracked_tickets` and injects active position records into `self.open_positions` and `self.open_positions_count`.
3. **Zero In-Memory Orphan State**:
   - Strategies must **never** assume a trade is flat simply because a Python variable `self._is_holding = False` defaulted on `__init__`.
   - Always check `if self.open_positions_count > 0:` to restore active management of existing trades cleanly.

---

## 🏆 Section 8: Complete Gold-Standard Reference Template

Use this complete, self-contained template as the structural foundation for any custom strategy. It includes:
- Full `BaseStrategy` fallback class (matching `backend/strategies/base.py` properties 1:1 for standalone testing)
- Both `@classmethod def get_param_defs(cls) -> List[Dict[str, Any]]` and `@classmethod def get_default_params(cls) -> Dict[str, Any]`
- Guaranteed DataFrame dynamic warmup & column checks
- `_get_digits()`, `_calculate_lot()`, and `_build_overlay_data()` helpers
- Pure-pandas vectorized indicators (without `.bfill()`) + clean NumPy signal loop
- Full NaN/Inf sanitization

```python
import pandas as pd
import numpy as np
from typing import Dict, Any, List, Optional

try:
    from backend.strategies.base import BaseStrategy
except ImportError:
    class BaseStrategy:
        name: str = "BaseStrategy"
        description: str = ""
        version: str = "1.0.0"
        author: str = "QuantDeck"
        custom_sizing: bool = False

        def __init__(self, params: Optional[Dict[str, Any]] = None):
            self.params = self.get_default_params()
            if params:
                self.params.update(params)
            self.context: Dict[str, Any] = {}

        def set_context(self, context: Dict[str, Any]):
            self.context = context or {}

        @property
        def initial_capital(self) -> float:
            return float(self.context.get("initial_capital", 10000.0))

        @property
        def lot_size(self) -> float:
            return float(self.context.get("lot_size", 1.0))

        @property
        def risk_pct(self) -> float:
            return float(self.context.get("risk_pct", 1.0))

        @property
        def sizing_mode(self) -> str:
            return str(self.context.get("sizing_mode", "strategy" if self.custom_sizing else "fixed"))

        @property
        def spread_usd(self) -> float:
            return float(self.context.get("spread_usd", 0.0))

        @property
        def symbol(self) -> str:
            return str(self.context.get("symbol", "XAUUSD"))

        @property
        def is_live(self) -> bool:
            return bool(self.context.get("is_live", False))

        @property
        def open_positions_count(self) -> int:
            return int(self.context.get("open_positions_count", 0))

        @property
        def open_positions(self) -> list:
            return list(self.context.get("open_positions", []))

        @property
        def multiplier(self) -> float:
            if "multiplier" in self.context and self.context["multiplier"]:
                return float(self.context["multiplier"])
            sym = self.symbol.upper()
            if "XAU" in sym or "GOLD" in sym:
                return 100.0
            elif "XAG" in sym or "SILVER" in sym:
                return 5000.0
            elif "JPY" in sym:
                return 1000.0
            elif any(c in sym for c in ("EUR", "GBP", "AUD", "NZD", "CAD", "CHF")):
                return 100000.0
            return 1.0

        @classmethod
        def get_param_defs(cls) -> List[Dict[str, Any]]:
            return []

        @classmethod
        def get_default_params(cls) -> Dict[str, Any]:
            return {p["key"]: p.get("default") for p in cls.get_param_defs() if "key" in p}


class EmaRsiTrendStrategy(BaseStrategy):
    """
    EMA Crossover + RSI Momentum Filter with ATR Dynamic Risk Management.
    Fully compliant with QuantDeck Backtester, Optuna Optimizer, and Live Engine.
    """
    name = "EMA RSI Trend Strategy"
    description = "EMA Fast/Slow crossover filtered by RSI momentum with ATR SL/TP and dynamic lot sizing."
    version = "1.0.0"
    author = "QuantDeck AI"
    custom_sizing = True

    @classmethod
    def get_param_defs(cls) -> List[Dict[str, Any]]:
        return [
            {
                "key": "fast_ema",
                "label": "Fast EMA Period",
                "type": "int",
                "default": 9,
                "min": 3,
                "max": 50,
                "step": 1,
            },
            {
                "key": "slow_ema",
                "label": "Slow EMA Period",
                "type": "int",
                "default": 21,
                "min": 10,
                "max": 200,
                "step": 1,
            },
            {
                "key": "rsi_period",
                "label": "RSI Period",
                "type": "int",
                "default": 14,
                "min": 5,
                "max": 30,
                "step": 1,
            },
            {
                "key": "atr_period",
                "label": "ATR Period",
                "type": "int",
                "default": 14,
                "min": 5,
                "max": 50,
                "step": 1,
            },
            {
                "key": "sl_atr_mult",
                "label": "Stop Loss (ATR Mult)",
                "type": "float",
                "default": 1.5,
                "min": 0.5,
                "max": 5.0,
                "step": 0.1,
            },
            {
                "key": "rr_ratio",
                "label": "Risk-Reward Ratio (TP)",
                "type": "float",
                "default": 2.0,
                "min": 1.0,
                "max": 5.0,
                "step": 0.25,
            },
            {
                "key": "close_opposite",
                "label": "Close on Opposite Signal",
                "type": "bool",
                "default": True,
            },
        ]

    @classmethod
    def get_default_params(cls) -> Dict[str, Any]:
        return {p["key"]: p["default"] for p in cls.get_param_defs()}

    def _get_digits(self) -> int:
        """Return accurate decimal precision for the active symbol."""
        ctx_digits = self.context.get("digits")
        if ctx_digits is not None:
            return int(ctx_digits)
        sym = getattr(self, "symbol", "XAUUSD").upper()
        if any(k in sym for k in ("XAU", "GOLD", "BTC", "ETH", "SOL", "BNB", "US30", "NAS", "SPX", "HK50", "DE40")):
            return 2
        if any(k in sym for k in ("JPY", "XAG", "SILVER")):
            return 3
        return 5

    def _calculate_lot(self, entry_price: float, sl_price: float) -> float:
        """Calculate lot size respecting UI Sizing Mode ('fixed', 'risk_pct', or 'strategy')."""
        default_mode = "strategy" if getattr(self, "custom_sizing", False) else "fixed"
        mode = getattr(self, "sizing_mode", default_mode)
        if mode in ("risk_pct", "strategy") and sl_price > 0:
            sl_dist = abs(entry_price - sl_price)
            if sl_dist > 1e-9:
                multiplier = float(getattr(self, "multiplier", 0.0) or self.context.get("multiplier", 0.0))
                if multiplier <= 0:
                    sym = getattr(self, "symbol", "XAUUSD").upper()
                    if "XAU" in sym or "GOLD" in sym:
                        multiplier = 100.0
                    elif "XAG" in sym or "SILVER" in sym:
                        multiplier = 5000.0
                    elif "JPY" in sym:
                        multiplier = 1000.0
                    elif any(c in sym for c in ("EUR", "GBP", "AUD", "NZD", "CAD", "CHF")):
                        multiplier = 100000.0
                    else:
                        multiplier = 1.0
                risk_dollars = float(self.initial_capital) * (float(self.risk_pct) / 100.0)
                lot = risk_dollars / (sl_dist * multiplier)
                return max(0.01, round(lot, 2))
        return max(0.01, round(float(getattr(self, "lot_size", 1.0)), 2))

    def _build_overlay_data(self, times: np.ndarray, values, digits: int) -> list:
        """Convert indicator values into a NaN/Inf-free list of {time, value} dicts."""
        arr = np.asarray(values, dtype=float)
        valid = np.isfinite(arr)
        return [
            {"time": int(t), "value": round(float(v), digits)}
            for t, v in zip(times[valid], arr[valid])
        ]

    def generate_signals(self, df: pd.DataFrame) -> Dict[str, Any]:
        fast_len = int(self.params.get("fast_ema", 9))
        slow_len = int(self.params.get("slow_ema", 21))
        rsi_len = int(self.params.get("rsi_period", 14))
        atr_len = int(self.params.get("atr_period", 14))
        sl_mult = float(self.params.get("sl_atr_mult", 1.5))
        rr_ratio = float(self.params.get("rr_ratio", 2.0))
        # Note: self.params["close_opposite"] is read directly by QuantDeck's execution engine.

        n = len(df)
        warmup = max(fast_len, slow_len, rsi_len, atr_len) + 5

        # 1. Dynamic Warmup Guard
        if n < warmup:
            return {
                "signals": pd.Series(0, index=df.index, dtype=int),
                "sl": pd.Series(0.0, index=df.index, dtype=float),
                "tp": pd.Series(0.0, index=df.index, dtype=float),
                "sizes": pd.Series(0.0, index=df.index, dtype=float),
                "overlays": {},
            }

        digits = self._get_digits()
        times = (
            df["time"].to_numpy(dtype=np.int64)
            if "time" in df.columns
            else np.arange(n, dtype=np.int64)
        )

        # 2. Vectorized Indicator Calculation (Pure Pandas/NumPy — No .bfill())
        closes = df["close"].to_numpy(dtype=float)

        ema_fast = df["close"].ewm(span=fast_len, adjust=False).mean().to_numpy(dtype=float)
        ema_slow = df["close"].ewm(span=slow_len, adjust=False).mean().to_numpy(dtype=float)

        delta = df["close"].diff()
        gain = delta.clip(lower=0.0).ewm(alpha=1.0 / rsi_len, adjust=False).mean()
        loss = (-delta.clip(upper=0.0)).ewm(alpha=1.0 / rsi_len, adjust=False).mean()
        rs = gain / loss.replace(0.0, np.nan)
        rsi = (100.0 - (100.0 / (1.0 + rs))).fillna(50.0).to_numpy(dtype=float)

        high_low = df["high"] - df["low"]
        high_close = (df["high"] - df["close"].shift(1)).abs()
        low_close = (df["low"] - df["close"].shift(1)).abs()
        tr = pd.concat([high_low, high_close, low_close], axis=1).max(axis=1)
        atr = tr.ewm(alpha=1.0 / atr_len, adjust=False).mean().fillna(0.0).to_numpy(dtype=float)

        # 3. Signal, SL, TP, and Lot Size Generation
        sig_arr = np.zeros(n, dtype=int)
        sl_arr = np.zeros(n, dtype=float)
        tp_arr = np.zeros(n, dtype=float)
        size_arr = np.zeros(n, dtype=float)

        for i in range(warmup, n):
            curr_atr = atr[i]
            if not np.isfinite(curr_atr) or curr_atr <= 0:
                continue

            bull_cross = ema_fast[i] > ema_slow[i] and ema_fast[i - 1] <= ema_slow[i - 1]
            bear_cross = ema_fast[i] < ema_slow[i] and ema_fast[i - 1] >= ema_slow[i - 1]

            if bull_cross and 50.0 < rsi[i] < 75.0:
                entry = closes[i]
                sl_dist = curr_atr * sl_mult
                sl_price = round(entry - sl_dist, digits)
                tp_price = round(entry + (sl_dist * rr_ratio), digits)

                sig_arr[i] = 1
                sl_arr[i] = sl_price
                tp_arr[i] = tp_price
                size_arr[i] = self._calculate_lot(entry, sl_price)

            elif bear_cross and 25.0 < rsi[i] < 50.0:
                entry = closes[i]
                sl_dist = curr_atr * sl_mult
                sl_price = round(entry + sl_dist, digits)
                tp_price = round(entry - (sl_dist * rr_ratio), digits)

                sig_arr[i] = -1
                sl_arr[i] = sl_price
                tp_arr[i] = tp_price
                size_arr[i] = self._calculate_lot(entry, sl_price)

        # 4. Build Visual Overlays (Using Standard High-Contrast Palette)
        overlays = {
            f"EMA Fast ({fast_len})": {
                "color": "#00E676",
                "lineWidth": 2,
                "pane": "main",
                "data": self._build_overlay_data(times, ema_fast, digits),
            },
            f"EMA Slow ({slow_len})": {
                "color": "#FF5252",
                "lineWidth": 2,
                "pane": "main",
                "data": self._build_overlay_data(times, ema_slow, digits),
            },
            f"RSI ({rsi_len})": {
                "color": "#2962FF",
                "lineWidth": 2,
                "pane": "sub",
                "data": self._build_overlay_data(times, rsi, 2),
            },
        }

        return {
            "signals": pd.Series(sig_arr, index=df.index, dtype=int),
            "sl": pd.Series(np.nan_to_num(sl_arr, nan=0.0, posinf=0.0, neginf=0.0), index=df.index, dtype=float),
            "tp": pd.Series(np.nan_to_num(tp_arr, nan=0.0, posinf=0.0, neginf=0.0), index=df.index, dtype=float),
            "sizes": pd.Series(np.nan_to_num(size_arr, nan=0.0, posinf=0.0, neginf=0.0), index=df.index, dtype=float),
            "overlays": overlays,
        }
```

---

## ✅ Section 9: Pre-Output Verification Checklist for AI Assistants

Before presenting the generated `.py` file to the user, verify all 11 items:
1. [ ] **Class Inheritance & Fallback**: Subclasses `BaseStrategy` with the complete `@property`-based `try / except ImportError` fallback class.
2. [ ] **Both `@classmethod` Parameter Methods**: Implements `get_param_defs(cls) -> List[Dict[str, Any]]` (returning a **List of Dicts** with `"key"`) AND `get_default_params(cls) -> Dict[str, Any]`.
3. [ ] **No External TA or News Libraries**: Uses **only** `pandas`, `numpy`, `math`, and Python standard library (`talib`, `pandas_ta`, `requests`, and `NewsGuard` are NOT imported).
4. [ ] **No Reserved Platform or News Guard Keys in `get_param_defs()`**: Does NOT define `initial_capital`, `lot_size`, `risk_pct`, `spread_usd`, `slippage_usd`, `sizing_mode`, `symbol`, `timeframe`, or `news_*` keys, and obeys parameter inequalities (`fast_period < slow_period`, `plus_ATR < trigger_BE_at_ATR`).
5. [ ] **Dynamic Warmup Guard**: Computes `warmup` from the strategy's indicator periods and returns valid zeroed `pd.Series` (with `index=df.index`) and `"overlays": {}` when `len(df) < warmup`.
6. [ ] **Dynamic Precision & Lot Sizing**: Uses `self._get_digits()` for price rounding (`2`, `3`, or `5` decimals) and sets `custom_sizing = True` with `self._calculate_lot(entry_price, sl_price)` to populate `sizes`.
7. [ ] **Zero Lookahead Bias**: No `.shift(-1)`, no `.bfill()`, no unshifted HTF `.resample()` merges (HTF series MUST call `.shift(1)` before `.reindex(..., method="ffill")`), and swing pivots use `.shift(swing_len)` confirmation lag.
8. [ ] **Overlay Hygiene**: Uses `_build_overlay_data()` with `np.isfinite()` to strip all `NaN` / `inf` values and applies the QuantDeck Standard High-Contrast Color Palette.
9. [ ] **Simplified Position Management**: Only includes `active_positions` / `self.is_live` concurrency tracking if the user requested `max_positions` or bar spacing cooldowns.
10. [ ] **Output Dictionary Contract**: Returns `{"signals": pd.Series, "sl": pd.Series, "tp": pd.Series, "sizes": pd.Series, "overlays": dict}` aligned to `df.index`.
11. [ ] **Zero-Division Safe Vectorized Math**: Never write `np.where(denom > 0, num / denom, 0.0)` (NumPy evaluates `num / denom` before filtering and emits `RuntimeWarning: divide by zero`). Always use `out = np.zeros_like(num, dtype=float); np.divide(num, denom, out=out, where=denom > 0)`.
12. [ ] **Typed Parameters & Optimizer↔Backtest Parity**: Every `get_param_defs()` entry declares explicit `"type"` (`"bool"`, `"int"`, `"float"`, `"number"`, `"select"`, `"text"`), boolean flags are parsed safely via `_as_bool()` / `BaseStrategy` auto-coercion (never raw `bool(...)`), and rolling calculations avoid bar-index modulo phase drift (`(i - warmup) % step` with `step > 1`).
