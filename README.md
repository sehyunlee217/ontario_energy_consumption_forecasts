## [Live R Quarto Document](https://sehyunlee217.github.io/ontario_energy_consumption_forecasts/)
![Screenshot 2024-09-20 at 20 55 18](https://github.com/user-attachments/assets/e3fc99d6-3281-4807-8d9b-f9e9b3e07289)

## Forecasts of Ontario's Monthly Energy Consumptions
- Investigating the relationship between temperature and monthly energy consumption in Ontario, modeling dynamic regression model with ARIMA. 

## Historical Trends
**Temperature**:
- Historical data shows an increase in temperature percentiles (10%, 50%, and 90%) over the past 30 years, with a strong upward trend and clear seasonality.

**Energy Consumption**:
- The decomposition of energy consumption data reveals a decreasing trend with strong seasonal components, indicating regular fluctuations throughout the year.

## Methods 
**1. Temperature Forecasting:**
- Utilized ARIMA(1,0,0)(2,1,2) model to forecast future temperatures based on ACF and PACF plots.
- Applied seasonal adjustments to address non-stationarity in the data.

**2. Model Selection for Energy Consumption:**
- ARIMA Model based solely on historical data.
- Dynamic Regression Model that includes temperature as an explanatory variable.

**3. Model Evaluation:**
- Compared performance using metrics such as AICc and BIC and conducted rolling-forecast-origin cross-validation to assess predictive accuracy.

## Main Findings
- The dynamic regression model outperforms the ARIMA model by 1-2% in terms of error, highlighting temperature’s significance as a predictor for energy consumption in Ontario.
- Accurate forecasts for energy consumption can facilitate planning for maintenance and repairs of electricity-generating facilities.
- Future developments could explore optimization techniques using dynamic programming to enhance production efficiency and reduce costs based on available supply data.


## Datasets & Sources 
- [Climate Canada](https://climate.weather.gc.ca/historical_data/search_historic_data_e.html)
- [Independent Electricity System Operator (IESO)](https://www.ieso.ca/power-data)
