library(tidyverse)
options(tibble.print_max = 100)

survey = read_csv("408 Survey.csv")

survey |>
  rename(fav_olympic_sport = `What is your favorite olympic sport and why?`) |>
  separate_wider_delim(
    fav_olympic_sport,
    delim = "because",
    names = c("fav_sport", "reason"),
    too_few = "align_start"
  ) |>
  select(fav_sport, reason)