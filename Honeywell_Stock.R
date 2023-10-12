library(tidyverse)
library(tidyquant)

honeywell <- tq_get(c("HON"), get  = "stock.prices",
                    from = "2015-01-01", to = "2023-10-01")

booz_allen <- tq_get(c("BAH"), get  = "stock.prices",
                     from = "2015-01-01", to = "2023-10-01")


verizon <- tq_get(c("VZ"), get  = "stock.prices",
                  from = "2015-01-01", to = "2023-10-01")

apex_systems <- tq_get(c("ASGN"), get  = "stock.prices",
                       from = "2015-01-01", to = "2023-10-01")

oracle <- tq_get(c("ORCL"), get  = "stock.prices",
                 from = "2015-01-01", to = "2023-10-01")

ggplot(honeywell, aes(x = date, y = close)) +
  geom_line(alpha = 0.5) +
  theme_bw()
