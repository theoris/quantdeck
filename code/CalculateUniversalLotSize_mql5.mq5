//+------------------------------------------------------------------+
//| Universal Multi-Asset Lot Size Calculator for MT5                |
//+------------------------------------------------------------------+
double CalculateUniversalLotSize(const string  symbol,
                                 const double  entry_price,
                                 const double  sl_price,
                                 const double  risk_cash)
{
   // Boundary Guard: Prevent execution on non-positive input values
   if(risk_cash <= 0.0 || entry_price <= 0.0 || sl_price <= 0.0)
      return 0.0;

   const double price_distance = MathAbs(entry_price - sl_price);
   if(price_distance <= 0.0)
      return 0.0;

   // Retrieve dynamic broker contract specifications
   const double tick_size  = SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE);
   const double tick_value = SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_VALUE);
   const double lot_step   = SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP);
   const double min_lot    = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN);
   const double max_lot    = SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX);

   // Zero-division and invalid feed assertion
   if(tick_size <= 0.0 || tick_value <= 0.0 || lot_step <= 0.0)
   {
      PrintFormat("[ERROR] Symbol spec invalid for %s: TickSize=%.5f, TickValue=%.5f, Step=%.2f",
                  symbol, tick_size, tick_value, lot_step);
      return 0.0;
   }

   // Core Mathematical Model
   const double ticks_at_risk = price_distance / tick_size;
   const double risk_per_lot  = ticks_at_risk * tick_value;

   if(risk_per_lot <= 0.0)
      return 0.0;

   const double raw_lot = risk_cash / risk_per_lot;

   // Conservative Quantization: Round down to prevent risk budget breaches
   double normalized_lot = MathFloor(raw_lot / lot_step) * lot_step;

   // Precision cleanup to mitigate IEEE-754 floating-point inaccuracies
   int step_decimals = 0;
   if(lot_step < 1.0)
      step_decimals = (int)MathCeil(-MathLog10(lot_step));
   normalized_lot = NormalizeDouble(normalized_lot, step_decimals);

   // Terminal Clamping
   if(normalized_lot < min_lot)
      return 0.0; // Incurring less risk than min_lot permits; reject order
   if(normalized_lot > max_lot)
      normalized_lot = max_lot;

   return normalized_lot;
}
