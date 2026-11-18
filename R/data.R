#' NBA Player Statistics and Draft Data
#'
#' A dataset of NBA data from 1996 to 2022 containing demographic information,
#'  draft information, and NBA statistics with a different row for
#'  each year a player was in the NBA.
#'
#' @format ## `nba_players`
#' A data frame with 12,844 rows and 21 columns:
#' \describe{
#'   \item{player_name}{Player's name}
#'   \item{team_abbreviation}{Team that player was on at the end of the season}
#'   \item{age}{Age of player}
#'   \item{player_height}{Height of player (cm)}
#'   \item{player_weight}{Weight of player (kg)}
#'   \item{college}{Name of college player attended}
#'   \item{country}{Country player was born in}
#'   \item{draft_year}{Year player was drafted, NA if undrafted}
#'   \item{draft_round}{Draft round player was picked, NA if undrafted}
#'   \item{draft_number}{Overall number player was drafted, NA if undrafted}
#'   \item{gp}{Number of games played throughout the season}
#'   \item{pts}{Average number of points scores}
#'   \item{reb}{Average number of rebounds}
#'   \item{ast}{Number of assists}
#'   \item{net_rating}{Team's point differential per 100 possessions while the player is on the court}
#'   \item{oreb_pct}{Percentage of offensive rebounds}
#'   \item{dreb_pct}{Percentage of defensive rebounds}
#'   \item{usg_pct}{Percentage of team plays used by the player while he was on the floor (FGA + Possession Ending FTA + TO) / POSS)}
#'   \item{ts_pct}{Measure of the player's shooting efficiency that takes into account free throws, 2 and 3 point shots (PTS / (2*(FGA + 0.44 * FTA)))}
#'   \item{ast_pct}{Percentage of teammate fgs player assisted}
#'   \item{season}{NBA season}
#' }
#' @source <https://www.kaggle.com/datasets/justinas/nba-players-data>
"nba_players"

#' NBA Draft Data and Career Per-Game Statistics
#'
#' A dataset of NBA data from 1989 to 2021, with one row per drafted player and their
#' career per-game statistics.
#'
#' @format ## `nba_draft`
#' A data frame with 1,922 rows and 9 columns:
#' \describe{
#'   \item{player_name}{Player's name}
#'   \item{team_abbreviation}{Team that drafted the player}
#'   \item{college}{Name of college player attended}
#'   \item{draft_year}{Year player was drafted}
#'   \item{draft_number}{Overall number player was drafted}
#'   \item{gp}{Number of games played throughout the player's career}
#'   \item{pts}{Career average number of points scored per game}
#'   \item{reb}{Career average number of rebounds per game}
#'   \item{ast}{Career average number of assists per game}
#' }
#' @source <https://www.kaggle.com/datasets/mattop/nba-draft-basketball-player-data-19892021>
"nba_draft"

#' WNBA Draft Data and Career Per-Game Statistics
#'
#' A dataset of WNBA data from 1997 to 2022, with one row per drafted player and their
#' career per-game statistics.
#'
#' @format ## `wnba_draft`
#' A data frame with 1,064 rows and 9 columns:
#' \describe{
#'   \item{player_name}{Player's name}
#'   \item{team_abbreviation}{Team that drafted the player}
#'   \item{college}{Name of college player attended}
#'   \item{draft_year}{Year player was drafted}
#'   \item{draft_number}{Overall number player was drafted}
#'   \item{gp}{Number of games played throughout the player's career}
#'   \item{pts}{Career average number of points scored per game}
#'   \item{reb}{Career average number of rebounds per game}
#'   \item{ast}{Career average number of assists per game}
#' }
#' @source <https://www.kaggle.com/datasets/mattop/wnba-draft-basketball-player-data-1997-2021>
"wnba_draft"
