library(tidyverse)

companies$honeywell <- ifelse(companies$company_id == 1344, TRUE, FALSE)

companies %>%
  ggplot(aes(y = log(followers))) +
  #geom_violin() +
  geom_boxplot(aes(x = "")) +
  geom_hline(yintercept = 14.75, color = "red") +
  coord_flip() +
  labs(x = "",
       y = "Log Linkedin Followers",
       title = "Number of Linkedin Followers for Honeywell") +
  theme_bw()
