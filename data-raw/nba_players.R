## code to prepare `nba_players` dataset goes here


nba_players <- read.csv("data-raw/all_seasons.csv")
nba_players$X <- NULL

nba_players$draft_year <- suppressWarnings(as.numeric(nba_players$draft_year))
nba_players$draft_round <- suppressWarnings(as.numeric(nba_players$draft_round))
nba_players$draft_number <- suppressWarnings(as.numeric(nba_players$draft_number))

nba_players$draft_number[nba_players$draft_number == 0] <- NA
nba_players$draft_round[nba_players$draft_round == 0] <- NA
nba_players$draft_year[nba_players$draft_year == 0] <- NA


str(nba_players)


usethis::use_data(nba_players, overwrite = TRUE)
