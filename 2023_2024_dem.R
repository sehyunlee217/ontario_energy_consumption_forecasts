energy_dem_2023 <- read_csv("data/PUB_Demand_2023.csv")
energy_dem_2024 <- read_csv("data/PUB_Demand_2024.csv")


energy_dem_23_24 <- energy_dem_2023 |> 
  rbind(energy_dem_2024) |> 
  select(Date, `Ontario Demand`) |> 
  mutate(
    hourly_demand = `Ontario Demand`
  ) |> 
  group_by(Date) |> 
  summarize(
    daily_demand = sum(hourly_demand),
  ) |> 
  mutate(
    Month = yearmonth(Date)
  ) |> 
  group_by(Month) |> 
  summarize(
    monthly_demand = sum(daily_demand)
  ) |> 
  mutate(
    monthly_demand = monthly_demand
  ) |> 
  as_tsibble(index = Month) |> 
  filter(Month < yearmonth("2024 Sep") & Month > yearmonth("2023 April") )

fc_future <- fc1 |> 
  filter(Month < yearmonth("2024 Sep") & Month > yearmonth("2023 April")) 

fc_future |> 
  autoplot() + 
  autolayer(energy_dem_23_24) + 
  theme_ipsum() + 
  labs(title = "Actual Energy Consumption v.s Forecasted Consumptions", y = "Energy Consumption (MW)")
