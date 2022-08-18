# practicing reprex

library(tidyverse)
library(palmerpenguins)

## not a REPREX
penguins %>%
  select(species, body_mass_g, flipper_length_mm, year) %>%
  filter(species == "Chinstrap") %>%
  str_to_lower(species) %>%
  group_by(island) %>%
  summarise(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))


## A REPREX
library(tidyverse)

warpbreaks |> 
  str_to_lower(wool)

## FIXING REPREX
library(tidyverse)

warpbreaks |> 
  mutate(wool = str_to_lower(wool))


## A REPREX WITH A SYNTHESIZED DATA FRAME

library(tidyverse)

df <- tribble(
  ~name, ~age,
  "Henry", 42,
  "Gertrude", 36,
  "Petroula", 49
)

df |> 
  mutate(name = str_to_lower(name))
