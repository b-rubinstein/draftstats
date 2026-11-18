## code to prepare `wnba_draft` dataset goes here


wnba_draft <- read.csv("data-raw/wnbadraft.csv")

wnba_draft <- data.frame(
  player_name = wnba_draft$player,
  draft_year = wnba_draft$year,
  draft_number = wnba_draft$overall_pick,
  team_abbreviation = wnba_draft$team,
  college = wnba_draft$college,
  gp = wnba_draft$games,
  reb = wnba_draft$total_rebounds,
  pts = wnba_draft$points,
  ast = wnba_draft$assists
)


str(wnba_draft)

usethis::use_data(wnba_draft, overwrite = TRUE)
