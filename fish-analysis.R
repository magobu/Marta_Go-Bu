fish_data = read.csv("Gaeta_etal_CLC_data.csv")

# Adds categorical size column

library(dplyr)
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

# Change category cut-oof-size

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
