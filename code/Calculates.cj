using System;
using cAlgo.API;

namespace cAlgo.Robots
{
    public static class RiskEngine
    {
        /// <summary>
        /// Calculates execution volume in units based on absolute cash risk.
        /// </summary>
        public static double CalculateVolumeInUnits(Symbol symbol, 
                                                    double entryPrice, 
                                                    double slPrice, 
                                                    double riskCash)
        {
            if (riskCash <= 0 || entryPrice <= 0 || slPrice <= 0)
                return 0.0;

            double priceDistance = Math.Abs(entryPrice - slPrice);
            if (priceDistance <= 0.0)
                return 0.0;

            double tickSize = symbol.TickSize;
            double tickValue = symbol.TickValue;

            if (tickSize <= 0.0 || tickValue <= 0.0)
                return 0.0;

            // In cTrader, Symbol.TickValue represents the cash value per tick for 1 unit of Volume.
            // Tick Count = Distance / Tick Size
            double ticksAtRisk = priceDistance / tickSize;
            
            // Monetary Risk per Unit of Volume
            double riskPerUnit = ticksAtRisk * tickValue;
            if (riskPerUnit <= 0.0)
                return 0.0;

            double rawUnits = riskCash / riskPerUnit;

            // cTrader API built-in normalization to broker step volume
            double normalizedUnits = symbol.NormalizeVolumeInUnits(rawUnits, RoundingMode.Down);

            // Clamp against account trading parameters
            if (normalizedUnits < symbol.VolumeInUnitsMin)
                return 0.0;
            if (normalizedUnits > symbol.VolumeInUnitsMax)
                normalizedUnits = symbol.VolumeInUnitsMax;

            return normalizedUnits;
        }
    }
}
