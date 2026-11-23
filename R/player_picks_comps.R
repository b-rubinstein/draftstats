
#' Comparing a player's performance on a specific measure to their draft range
#'
#' @param data A dataframe containing player name, draft pick number, and corresponding statistics
#' @param player_name Name of the player
#' @param measure Statistics measure (points, rebounds, minutes, assists, etc) to compare
#' @param window Number of picks on each side of the player's to include (default = 5)
#'
#' @returns A dataframe with columns: `Player`, `Range`, `Measure`, `Player_stat`,
#' `Avg`, `Median`, `Diff_Avg`, and `Diff_Median`. `Range` is the range of picks used for comparison,
#' `Player_stat` is the player's average on the measure, `Avg` and `Median` are values of those in the
#'  selected comparison range, and `Diff_Avg` and `Diff_Median` are the player value minus
#'  the range value.
#'
#' @examples
#' player_picks_comps(nba_players, "Michael Jordan", "pts", 3)
#' player_picks_comps(wnba_draft, "Breanna Stewart", "pts")
#' player_picks_comps(nba_draft, "Kobe Bryant", "reb", 2)
#'
#'
#' @export

player_picks_comps<- function(data, player_name, measure, window = 5) {

  if(!is.data.frame(data) || nrow(data)==0){
    stop("data must be a nonempty dataframe")
  }

  if(!"draft_number" %in% names(data) || !"player_name" %in% names(data)){
    stop("data must contain a draft_number and player_name column")
  }

  if(!measure %in% names(data)){
    stop("invalid metric")
  }

  if(!is.numeric(data[[measure]])){
    stop("measure must be numeric")
  }

  if(!is.numeric(window) || window <= 0 || length(window) != 1){
    stop("window length must be greater than 0 and a single digit number")
  }

  player_df <- data[which(data$player_name ==player_name), ]

  if(nrow(player_df)==0){
    stop("player not found in data")
  }

  draft_pick <- unique(player_df$draft_number)

  if(any(is.na(draft_pick))){
    stop("player was not drafted")
  }

  if(length(draft_pick) >1){
    stop("multiple players with that name")
  }

  min_range <- max(1, draft_pick - window)
  max_range <- draft_pick + window

  draftrank <- draft_rank_stats(data, min_range, max_range, measure)
  player <- mean(player_df[[measure]], na.rm = TRUE)


  player_comp <- data.frame(
    "Player" = player_name,
    "Range" = paste0(min_range, "-", max_range),
    "Measure" = measure,
    "Player_stat" = player,
    "Avg" = draftrank$Avg,
    "Median" = draftrank$Median,
    "Diff_Avg" = player - draftrank$Avg,
    "Diff_Median" = player - draftrank$Median
  )

  return (player_comp)

}

