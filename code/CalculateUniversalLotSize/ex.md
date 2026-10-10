Quantitative Walkthroughs
The following test scenarios 
assume an account denominated in USD with a target cash risk of $500.00 ($R_{\text{cash}} = 500$).                      
UNIVERSAL RISK ENGINE WORKFLOW

  +--------------------------------------------------------------------+
  | Inputs: Target Cash Risk ($500), Entry Price, Stop Loss Price      |
  +---------------------------------+----------------------------------+
                                    |
                                    v
                     [ Calculate Price Distance ]
                     D_price = |Entry - StopLoss|
                                    |
                                    v
            [ Query Exchange/Broker Specification Feed ]
            - Tick Size (Delta_tick)
            - Tick Value per Lot (V_tick)
                                    |
                                    v
                   [ Derive Discrete Exposure ]
                   Ticks At Risk = D_price / Delta_tick
                   Risk Per Lot  = Ticks At Risk * V_tick
                                    |
                                    v
                    [ Compute Raw Position Size ]
                    Raw Lots = Cash Risk / Risk Per Lot
                                    |
                                    v
              [ Normalize to Venue Constraints (Floor) ]
              - Volume Step Truncation
              - Clamp between Min Lot and Max Lot
                                    |
                                    v
                +---------------------------------------+
                | Final Executable Orders               |
                | - Gold (XAUUSD):        1.25 Lots     |
                | - Nasdaq (USTEC):       10.00 Lots    |
                | - Forex (EURUSD):       3.33 Lots     |
                +---------------------------------------+
Case Study 1: 
Spot Gold (XAUUSD)
Account Currency: USD
Contract Specification: 1 Lot = 100 Troy Oz | $\Delta_{\text{tick}} = 0.01$ | $V_{\text{tick}} = \$1.00$ | $\text{Step}_{\text{vol}} = 0.01$
Trade Context: Long entry at $2,650.00$, Stop Loss at $2,646.00
$$$D_{\text{price}} = 2650.00 - 2646.00 = 4.00 \text{ USD}$$$$N_{\text{ticks}} = \frac{4.00}{0.01} = 400 \text{ ticks}$$$$R_{\text{lot}} = 400 \times \$1.00 = \$400.00 \text{ per Lot}$$$$L_{\text{raw}} = \frac{\$500.00}{\$400.00} = 1.250 \implies \mathbf{1.25\text{ Lots}}$$

Case Study 2: US Tech Index Cash CFD (USTEC / NAS100)

Account Currency: USD
Contract Specification: 1 Lot = 1 Index Unit | $\Delta_{\text{tick}} = 0.10$ | $V_{\text{tick}} = \$0.10$ | $\text{Step}_{\text{vol}} = 0.1$
Trade Context: Long entry at $20,100.0$, Stop Loss at $20,050.0
$$$D_{\text{price}} = 20100.0 - 20050.0 = 50.0 \text{ Index Points}
$$$$N_{\text{ticks}} = \frac{50.0}{0.10} = 500 \text{ ticks}
$$$$R_{\text{lot}} = 500 \times \$0.10 = \$50.00 \text{ per Lot}
$$$$L_{\text{raw}} = \frac{\$500.00}{\$50.00} = 10.00 \implies \mathbf{10.0\text{ Lots}}$$


Case Study 3: Foreign Exchange (EURUSD)

Account Currency: USD
Contract Specification: 1 Lot = 100,000 EUR | $\Delta_{\text{tick}} = 0.00001$ | $V_{\text{tick}} = \$1.00$ | $\text{Step}_{\text{vol}} = 0.01$
Trade Context: Short entry at $1.08500$, Stop Loss at $1.08650$ 
($15.0\text{ pips} = 150\text{ points}
$)$$D_{\text{price}} = 1.08650 - 1.08500 = 0.00150
$$$$N_{\text{ticks}} = \frac{0.00150}{0.00001} = 150 \text{ ticks}
$$$$R_{\text{lot}} = 150 \times \$1.00 = \$150.00 \text{ per Lot}
$$$$L_{\text{raw}} = \frac{\$500.00}{\$150.00} = 3.3333... \implies \mathbf{3.33\text{ Lots}}$$

Case Study 4: Domestic Futures Contract (TFEX\ S50)

Account Currency: THB
Contract Specification: 1 Contract = Multiplier of 200 THB/Point | $\Delta_{\text{tick}} = 0.10$ Index Point
Tick Value: $0.10 \times 200\text{ THB} = 20.0\text{ THB per tick}$
Trade Context: 
Long entry at $850.0$, Stop Loss at $846.0$ ($D_{\text{price}} = 4.0\text{ Points}$), Risk Budget = $40,000\text{ THB}
$$$N_{\text{ticks}} = \frac{4.0}{0.10} = 40 \text{ ticks}
$$$$R_{\text{contract}} = 40 \times 20.0\text{ THB} = 800\text{ THB per Contract}
$$$$L_{\text{raw}} = \frac{40,000\text{ THB}}{800\text{ THB}} = \mathbf{50\text{ Contracts}}$$
