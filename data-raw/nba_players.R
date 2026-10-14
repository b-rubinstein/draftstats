## code to prepare `nba_players` dataset goes here


nba_players <- read.csv("data-raw/all_seasons.csv")
str(nba_players)


usethis::use_data(nba_players, overwrite = TRUE)
