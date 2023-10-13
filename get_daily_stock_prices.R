# PURPOSE: Example script to get daily stock prices from yahoo finance
# https://business-science.github.io/tidyquant/reference/tq_get.html

# Access packages ---------------------------------------------------------

library(tidyverse)
library(tidyquant)

# Get stock data for example company (Amazon in this case) based on their ticker
# and provided data ranges:
ex_stocks <- tq_get(c("AMZN"), get  = "stock.prices",
                    from = "2010-01-01", to = "2023-08-01")