
library(tidyverse)
library(broom)

NBA <- read_csv("data/NBA.csv")
colnames(NBA)

salarymodel <- NBA %>% 
  select(-rk, -player, -player_id, -`17_18salary`, -name, -tm, -`fg`, -`fga`, -`3p`, -`3pa`, -`2p`, -`2pa`, -pos, -ft, -fta, -g, -gs)

### Data exploratory analysis

library(GGally)
salarymodel %>%
  ggpairs()
