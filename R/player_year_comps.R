
#' Comparing a player's performance between two seasons
#'
#' @param data A dataframe containing a player's performance across multiple seasons.
#'  Columns must include the player's name, season, draft year, draft number,
#'  and measure, with one row per player season (for example, nba_players)
#' @param player_name Name of the player
#' @param season1 First season, in format "2000-01"
#' @param season2 Second season, in format "2000-01"
#' @param measure Statistics measure (points, rebounds, minutes, assists, etc) to compare
#'
#' @returns A dataframe with the selected player's statistic from the first season,
#' second season, and difference between them (season 2 - season 1), as well as what year the player
#' was originally drafted
#'
#' @examples
#' player_year_comps(nba_players, "Jalen Brunson", "2019-20", "2021-22", "pts")
#'
#' @export

player_year_comps <- function(data, player_name, season1, season2, measure) {

  if(!is.data.frame(data) || nrow(data)==0){
    stop("data must be a nonempty dataframe")
  }

  if(!"draft_year" %in% names(data) || !"player_name" %in% names(data) ||
     !"season" %in% names(data) || !"draft_number" %in% names(data)){
    stop("data must contain a player_name, draft_year, draft_number, and season column")
  }

  if(!measure %in% names(data)){
    stop("invalid metric")
  }

  if(!is.numeric(data[[measure]])){
    stop("measure must be numeric")
  }

  season_format <- "^[0-9]{4}-[0-9]{2}$"
  if(!grepl(season_format, season1) || !grepl(season_format, season2)){
    stop("seasons must be in the format \"2000-01\"")
  }
  player_df <- data[which(data$player_name ==player_name), ]

  if(nrow(player_df)==0){
    stop("player not found in data")
  }

  draft_number <- unique(player_df$draft_number)

  if(any(is.na(draft_number))){
    stop("player was not drafted")
  }

  draft_year <- unique(player_df$draft_year)

  if(length(draft_year) >1 || length(draft_number)>1){
    stop("multiple players with that name")
  }

  if(season1 == season2){
    stop("must choose different seasons")
  }

  season1_df <- player_df[which(player_df$season == season1), ]
  season2_df <- player_df[which(player_df$season == season2), ]

  if(nrow(season1_df)== 0){
    stop("no data found for season 1")
  }

  if(nrow(season2_df)== 0){
    stop("no data found for season 2")
  }

  season1_value <- mean(season1_df[[measure]], na.rm = TRUE)
  season2_value <- mean(season2_df[[measure]], na.rm = TRUE)


  year_comp <- data.frame(
    "Player" = player_name,
    "Draft_Year" = draft_year,
    "Seasons" = paste0(season1, " vs. ", season2),
    "Measure" = measure,
    "Season1_value" = season1_value,
    "Season2_value" = season2_value,
    "Difference" = season2_value - season1_value
  )

  return (year_comp)

}

