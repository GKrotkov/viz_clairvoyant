library(tidyverse)



companies %>%
  ggplot(aes(y = log(followers))) +
  #geom_violin() +
  geom_boxplot(aes(x = "")) +
  geom_hline(yintercept = 14.75, color = "red") +
  annotate("text", x = 1.2, y = 14, label="Honeywell", angle = 90) +
  coord_flip() +
  labs(x = "",
       y = "Log Linkedin Followers",
       title = "Number of Linkedin Followers for Honeywell") +
  theme_bw()
  #facet_wrap(~ industry)
