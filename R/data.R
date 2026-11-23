#' NBA Player Statistics and Draft Data
#'
#' A dataset of NBA player statistics from the 1996-97 to to 2022-23 seasons,
#'  containing demographic information, draft information, and NBA season statistics.
#'  There is one row per player, per year they were active in the NBA. Undrafted players
#'  draft_number is listed as 'NA'.
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
#'   \item{draft_year}{Year player was drafted}
#'   \item{draft_round}{Draft round player was picked, NA if undrafted}
#'   \item{draft_number}{Overall number player was drafted, NA if undrafted}
#'   \item{gp}{Number of games played throughout the season}
#'   \item{pts}{Average number of points scored}
#'   \item{reb}{Average number of rebounds}
#'   \item{ast}{Average number of assists}
#'   \item{net_rating}{Team's point differential per 100 possessions while the player is on the court}
#'   \item{oreb_pct}{Percentage of available offensive rebounds the player grabbed while he was on the floor}
#'   \item{dreb_pct}{Percentage of available defensive rebounds the player grabbed while he was on the floor}
#'   \item{usg_pct}{Percentage of team plays used by the player while he was on the floor (FGA + Possession Ending FTA + TO) / POSS)}
#'   \item{ts_pct}{Measure of the player's shooting efficiency that takes into account free throws, 2 and 3 point shots (PTS / (2*(FGA + 0.44 * FTA)))}
#'   \item{ast_pct}{Percentage of teammate fgs player assisted while he was on the floor}
#'   \item{season}{NBA season}
#' }
#' @source <https://www.kaggle.com/datasets/justinas/nba-players-data>
"nba_players"

#' NBA Draft Data and Career Per-Game Statistics
#'
#' A dataset of NBA draft picks from 1989 to 2021, with one row per drafted player and their
#' career per-game statistics. Players with no recorded games played in have 'NA' statistics.
#'
#' @format ## `nba_draft`
#' A data frame with 1,922 rows and 9 columns:
#' \describe{
#'   \item{player_name}{Player's name}
#'   \item{team}{Team that drafted the player (abbreviation)}
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
#' A dataset of WNBA draft picks from 1997 to 2022, with one row per drafted player and their
#' career per-game statistics.Players with no recorded games played in have 'NA' statistics.
#'
#' @format ## `wnba_draft`
#' A data frame with 1,064 rows and 9 columns:
#' \describe{
#'   \item{player_name}{Player's name}
#'   \item{team}{Team that drafted the player (full name)}
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
