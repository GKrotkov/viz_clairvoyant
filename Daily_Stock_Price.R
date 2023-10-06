# Access packages ---------------------------------------------------------

library(tidyverse)
library(tidyquant)

# Stock Price for Booz Allen
booz_allen <- tq_get(c("BAH"), get  = "stock.prices",
                     from = "2015-01-01", to = "2023-10-01")

# Stock Price for Verizon
verizon <- tq_get(c("VZ"), get  = "stock.prices",
                  from = "2015-01-01", to = "2023-10-01")

# Stock Price for Robert Half
robert_half <- tq_get(c("RHI"), get  = "stock.prices",
                      from = "2015-01-01", to = "2023-10-01")


# Stock Price for Truist
truist <- tq_get(c("TFC"), get  = "stock.prices",
                 from = "2015-01-01", to = "2023-10-01")

# Stock price for Honeywell
honeywell <- tq_get(c("HON"), get  = "stock.prices",
                    from = "2015-01-01", to = "2023-10-01")

# Stock Price for MasterCard
mastercard <- tq_get(c("MA"), get  = "stock.prices",
                     from = "2015-01-01", to = "2023-10-01")

# Stock Price for Apex Systems
apex_systems <- tq_get(c("ASGN"), get  = "stock.prices",
                       from = "2015-01-01", to = "2023-10-01")


# Combine all Company Stock Prices into 1 data frame
combine_stocks <- rbind(booz_allen, verizon, robert_half, truist, honeywell, mastercard, apex_systems)




# Plot the daily closing stock price of each company Jan 1, 2015 to October 1, 2023
combine_stocks %>%
  ggplot(aes(x = date, y = close, color = symbol)) +
  geom_line(alpha = 0.5) +
  labs(x = "Date",
       y = "Close Price of Stock",
       title = "Closing Stock Price of Company from 2015-2023",
       color = "Company Ticker Symbol") +
  theme_bw()