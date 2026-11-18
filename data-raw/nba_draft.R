## code to prepare `nba_draft` dataset goes here


nba_draft <- read.csv("data-raw/nbaplayersdraft.csv")

nba_draft <- data.frame(
  player_name = nba_draft$player,
  draft_year = nba_draft$year,
  draft_number = nba_draft$overall_pick,
  team_abbreviation = nba_draft$team,
  college = nba_draft$college,
  gp = nba_draft$games,
  reb = nba_draft$average_total_rebounds,
  pts = nba_draft$points_per_game,
  ast = nba_draft$average_assists
)

str(nba_draft)

usethis::use_data(nba_draft, overwrite = TRUE)
