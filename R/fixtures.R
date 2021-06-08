library(tidyr)
library(dplyr)
library(here)
library(readr)

uefa_euro_2020 <- read_csv("data/uefa-euro-2020.csv")

matchdata <- uefa_euro_2020 %>% 
     pivot_longer(cols = c(HomeTeam, AwayTeam)) %>% 
     mutate(goals = NA,
            penalties = NA,
            ycards = NA,
            rcards = NA) %>% 
     select(-Result, -name)

write_csv(matchdata, here("data", "matchdata.csv"))
