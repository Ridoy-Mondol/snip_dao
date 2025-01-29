You have a stake of 10,000,000,000 SNIPS starting at time 0, locked for 3 months (lock multiplier = 1.5), then unlocked afterwards (default multiplier = 0.75). The APYs are:

0 to 1.5 months: 6.2%
1.5 to 7.5 months: 4.8%
7.5 to 9 months: 2.9%
9 to 11 months: 4.3%
After 11 months: 3.5% continuously
Base formula for each interval:
Reward = Principal * (APY/100) * (Duration_in_months / 12)
Then apply the multiplier (1.5 if locked, 0.75 if unlocked).

Locking periods:

From 0 to 3 months: Locked → multiplier = 1.5
After 3 months: Unlocked → multiplier = 0.75
Detailed Calculations
After 0.1 month (still under 6.2% APY, Locked)
Duration = 0.1 month
Year fraction = 0.1/12 ≈ 0.0083333
Raw reward = 10,000,000,000 * 0.062 * 0.0083333
≈ 10,000,000,000 * 0.000516666 ≈ 5,166,666 SNIPS
Locked (x1.5) = 5,166,666 * 1.5 ≈ 7,750,000 SNIPS

After 3 months

0 to 1.5 months (6.2% APY)
Fraction = 1.5/12 = 0.125
Raw = 10,000,000,000 * 0.062 * 0.125 = 77,500,000 SNIPS
Lock x1.5 = 116,250,000 SNIPS

1.5 to 3 months (4.8% APY)
Fraction = 1.5/12 = 0.125
Raw = 10,000,000,000 * 0.048 * 0.125 = 60,000,000 SNIPS
Lock x1.5 = 90,000,000 SNIPS

Total at 3 months = 116,250,000 + 90,000,000 = 206,250,000 SNIPS

After 4.5 months (3 to 4.5 months at 4.8% APY, Unlocked)
Duration = 1.5 months
Raw = 10,000,000,000 * 0.048 * 0.125 = 60,000,000 SNIPS
Unlocked x0.75 = 45,000,000 SNIPS
Total at 4.5 months = 206,250,000 + 45,000,000 = 251,250,000 SNIPS

After 5.3 months (4.5 to 5.3 months, 4.8% APY, Unlocked)
Duration = 0.8 months
Fraction = 0.8/12 ≈ 0.0667
Raw = 10,000,000,000 * 0.048 * 0.0667 = 32,000,000 SNIPS
Unlocked x0.75 = 24,000,000 SNIPS
Total at 5.3 months = 251,250,000 + 24,000,000 = 275,250,000 SNIPS

After 7 months (5.3 to 7 months, 4.8% APY, Unlocked)
Duration = 1.7 months
Fraction = 1.7/12 ≈ 0.1417
Raw = 10,000,000,000 * 0.048 * 0.1417 ≈ 68,000,000 SNIPS
Unlocked x0.75 = 51,000,000 SNIPS
Total at 7 months = 275,250,000 + 51,000,000 = 326,250,000 SNIPS

After 9.2 months
Segments:
7 to 7.5 months (0.5 months at 4.8%)
Raw = 10,000,000,000 * 0.048 * (0.5/12) = 20,000,000 SNIPS
Unlocked x0.75 = 15,000,000 SNIPS
Total at 7.5 months = 326,250,000 + 15,000,000 = 341,250,000 SNIPS

7.5 to 9 months (1.5 months at 2.9%)
Raw = 10,000,000,000 * 0.029 * (1.5/12) = 36,250,000 SNIPS
Unlocked x0.75 = 27,187,500 SNIPS
341,250,000 + 27,187,500 = 368,437,500 SNIPS at 9 months

9 to 9.2 months (0.2 months at 4.3%)
Raw = 10,000,000,000 * 0.043 * (0.2/12) ≈ 7,166,667 SNIPS
Unlocked x0.75 = 5,375,000 SNIPS

Total at 9.2 months = 368,437,500 + 5,375,000 = 373,812,500 SNIPS

After 9.21 months (9.2 to 9.21 months, 4.3%)
Duration = 0.01 month
Fraction = 0.01/12 ≈ 0.0008333
Raw = 10,000,000,000 * 0.043 * 0.0008333 ≈ 358,333 SNIPS
Unlocked x0.75 = 268,750 SNIPS
Total at 9.21 months = 373,812,500 + 268,750 = 374,081,250 SNIPS

After 11 months (9.21 to 11 months, 4.3%)
Duration = 1.79 months
Fraction = 1.79/12 ≈ 0.14917
Raw = 10,000,000,000 * 0.043 * 0.14917 ≈ 64,137,000 SNIPS
Unlocked x0.75 = 48,102,750 SNIPS
Total at 11 months = 374,081,250 + 48,102,750 = 422,184,000 SNIPS

After 15 months (11 to 15 months, 3.5%)
Duration = 4 months
Fraction = 4/12 = 0.3333
Raw = 10,000,000,000 * 0.035 * 0.3333 ≈ 116,666,667 SNIPS
Unlocked x0.75 = 87,500,000 SNIPS
Total at 15 months = 422,184,000 + 87,500,000 = 509,684,000 SNIPS

Summary (month => amount)
After 0.1 month ≈ 7,750,000 SNIPS
After 3 months ≈ 206,250,000 SNIPS
After 4.5 months ≈ 251,250,000 SNIPS
After 5.3 months ≈ 275,250,000 SNIPS
After 7 months ≈ 326,250,000 SNIPS
After 9.2 months ≈ 373,812,500 SNIPS
After 9.21 months ≈ 374,081,250 SNIPS
After 11 months ≈ 422,184,000 SNIPS
After 15 months ≈ 509,684,000 SNIPS