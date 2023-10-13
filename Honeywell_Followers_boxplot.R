library(tidyverse)



companies %>%
  ggplot(aes(y = log(followers))) +
  #geom_violin() +
  geom_boxplot(aes(x = "")) +
  geom_hline(yintercept = 14.75, color = "red") +
  annotate("text", x = 1.1, y = 15.5, label="Honeywell", angle = 90, size = 2.5) +
  coord_flip() +
  labs(x = "",
       y = "Log Linkedin Followers",
       title = "Honeywell Has More Linkedin Followers Than Other Companies",
       subtitle = "Faceted by Company Size: 1 being Small, 7 being Large") +
  theme_bw() +
  facet_wrap(~ company_size)


# Salary Boxplot, replacing followers
companies %>%
  ggplot(aes(y = log(mean_salary_min))) +
  #geom_violin() +
  geom_boxplot(aes(x = "")) +
  geom_hline(yintercept = 14.75, color = "red") +
  annotate("text", x = 1.1, y = 15.5, label="Honeywell", angle = 90, size = 2.5) +
  coord_flip() +
  labs(x = "",
       y = "Log Linkedin Followers",
       title = "Honeywell Has a Higher Mean Minimum Salary than Other Companies",
       subtitle = "Faceted by Company Size: 1 being Small, 7 being Large ") +
  theme_bw() +
  facet_wrap(~ company_size)