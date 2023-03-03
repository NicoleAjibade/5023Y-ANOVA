
# SET UP ----
## An analysis of the development time of frogspawn in response to water temperature ----
#___________________________----

# PACKAGES ----
library(tidyverse)
#___________________________----

# IMPORT DATA ----
frogs <- read_csv("data/frogs_messy_data.csv")
#___________________________----

# TIDY DATA ----
frogs <- frogs %>% 
  rename("13" = Temperature13,
         "18" = Temperature18,
         "25" = Temperature25,
         frogspawn_id = `Frogspawn sample id`) %>% 
  pivot_longer(`13`:`25`, names_to="temperature", values_to="days") %>% 
  drop_na(days)
#___________________________----
model <- lm(days ~ temperature ~ 1, data=frogs)
summary(model)

# PLOTTING DATA
```{r fig.asp = 0.8, fig.width = 7, out.width = "50%"}
plot 
# The final rendered size of the image changes according to out.width
```