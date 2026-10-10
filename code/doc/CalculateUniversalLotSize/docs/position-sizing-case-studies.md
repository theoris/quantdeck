## Quantitative Position Sizing: Case Studies

The following scenarios evaluate position sizing under an invariant risk budget of **\$500.00 USD** (or **40,000 THB** for domestic instruments).

---

### Case Study 1: Spot Gold (`XAUUSD`)

| Parameter | Specification | Trade Setup | Parameter Value |
| :--- | :--- | :--- | :--- |
| **Account Currency** | USD | **Entry Price** | 2,650.00 |
| **Contract Size** | 100 Troy Oz | **Stop Loss** | 2,646.00 |
| **Tick Size ($\Delta_{\text{tick}}$)** | 0.01 | **Distance ($D_{\text{price}}$)** | 4.00 USD |
| **Tick Value ($V_{\text{tick}}$)** | \$1.00 / Lot | **Volume Step** | 0.01 |

$$
\begin{aligned}
D_{\text{price}} &= 2650.00 - 2646.00 = 4.00 \text{ USD} \\
N_{\text{ticks}} &= \frac{4.00}{0.01} = 400 \text{ ticks} \\
R_{\text{lot}}   &= 400 \times \$1.00 = \$400.00 \text{ per Lot} \\
L_{\text{raw}}   &= \frac{\$500.00}{\$400.00} = 1.250 \implies \mathbf{1.25\text{ Lots}}
\end{aligned}
$$

> [!TIP]
> **Executable Order:** Buy/Sell **1.25 Lots** (Exact cash risk = \$500.00)

---

### Case Study 2: US Tech Index Cash CFD (`USTEC` / `NAS100`)

| Parameter | Specification | Trade Setup | Parameter Value |
| :--- | :--- | :--- | :--- |
| **Account Currency** | USD | **Entry Price** | 20,100.0 |
| **Contract Size** | 1 Index Unit | **Stop Loss** | 20,050.0 |
| **Tick Size ($\Delta_{\text{tick}}$)** | 0.10 | **Distance ($D_{\text{price}}$)** | 50.0 Index Pts |
| **Tick Value ($V_{\text{tick}}$)** | \$0.10 / Lot | **Volume Step** | 0.10 |

$$
\begin{aligned}
D_{\text{price}} &= 20100.0 - 20050.0 = 50.0 \text{ Index Points} \\
N_{\text{ticks}} &= \frac{50.0}{0.10} = 500 \text{ ticks} \\
R_{\text{lot}}   &= 500 \times \$0.10 = \$50.00 \text{ per Lot} \\
L_{\text{raw}}   &= \frac{\$500.00}{\$50.00} = 10.00 \implies \mathbf{10.0\text{ Lots}}
\end{aligned}
$$

> [!TIP]
> **Executable Order:** Buy/Sell **10.0 Lots** (Exact cash risk = \$500.00)

---

### Case Study 3: Foreign Exchange (`EURUSD`)

| Parameter | Specification | Trade Setup | Parameter Value |
| :--- | :--- | :--- | :--- |
| **Account Currency** | USD | **Entry Price** | 1.08500 |
| **Contract Size** | 100,000 EUR | **Stop Loss** | 1.08650 |
| **Tick Size ($\Delta_{\text{tick}}$)** | 0.00001 (5-Digit) | **Distance ($D_{\text{price}}$)** | 15.0 Pips (150 Pts) |
| **Tick Value ($V_{\text{tick}}$)** | \$1.00 / Lot | **Volume Step** | 0.01 |

$$
\begin{aligned}
D_{\text{price}} &= 1.08650 - 1.08500 = 0.00150 \\
N_{\text{ticks}} &= \frac{0.00150}{0.00001} = 150 \text{ ticks} \\
R_{\text{lot}}   &= 150 \times \$1.00 = \$150.00 \text{ per Lot} \\
L_{\text{raw}}   &= \frac{\$500.00}{\$150.00} = 3.3333\dots \implies \mathbf{3.33\text{ Lots}}
\end{aligned}
$$

> [!TIP]
> **Executable Order:** Buy/Sell **3.33 Lots** (Normalized down via `MathFloor`, actual risk = \$499.50)

---

### Case Study 4: Domestic Futures Contract (`TFEX S50`)

| Parameter | Specification | Trade Setup | Parameter Value |
| :--- | :--- | :--- | :--- |
| **Account Currency** | THB | **Entry Price** | 850.0 |
| **Contract Multiplier** | 200 THB / Pt | **Stop Loss** | 846.0 |
| **Tick Size ($\Delta_{\text{tick}}$)** | 0.10 Index Pt | **Distance ($D_{\text{price}}$)** | 4.0 Index Pts |
| **Tick Value ($V_{\text{tick}}$)** | 20.00 THB / Contract | **Volume Step** | 1 Contract |

$$
\begin{aligned}
D_{\text{price}}    &= 850.0 - 846.0 = 4.0 \text{ Points} \\
N_{\text{ticks}}    &= \frac{4.0}{0.10} = 40 \text{ ticks} \\
R_{\text{contract}} &= 40 \times 20.00\text{ THB} = 800.00\text{ THB per Contract} \\
L_{\text{raw}}      &= \frac{40,000\text{ THB}}{800.00\text{ THB}} = \mathbf{50\text{ Contracts}}
\end{aligned}
$$

> [!TIP]
> **Executable Order:** Long/Short **50 Contracts** (Exact cash risk = 40,000 THB)
