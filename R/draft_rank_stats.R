
#' Summarizing a specific measure of performance for all players in a given draft range
#'
#' @param data A dataframe containing draft pick number and corresponding statistics
#' @param min_pick Lowest pick number to include
#' @param max_pick Highest pick number to include
#' @param measure Statistics measure (points, rebounds, minutes, assists, etc)
#'
#' @returns A dataframe with the columns: `Num_Players`, `Measure`, `Avg`,
#' and `Median`. `Num_Players` counts the players in the given range including
#' those with NA statistics, `Avg` and `Median` will ignore those players in
#' their calculations.
#'
#' @examples
#' draft_rank_stats(nba_players, 1, 10, "pts")
#' draft_rank_stats(nba_draft, 1, 5, "reb")
#' draft_rank_stats(wnba_draft, 5, 15, "ast")
#'
#' @export


draft_rank_stats <- function(data, min_pick, max_pick, measure) {

  if(!is.data.frame(data) || nrow(data)==0){
    stop("data must be a nonempty dataframe")
  }

  if(!"draft_number" %in% names(data)){
    stop("data must contain a draft_number column")
  }

  if(!measure %in% names(data)){
    stop("invalid metric")
  }


  if(!is.numeric(data$draft_number)|| !is.numeric(data[[measure]]) ||
     !is.numeric(min_pick) || !is.numeric(max_pick)){
    stop("draft number, measure, min_pick, and
         max_pick values must be numeric")
  }

  if(min_pick > max_pick){
    stop("minimum pick number cannot be greater than maximum pick number")
  }

  if(min_pick <= 0 || max_pick<=0){
    stop("pick must be greater than zero")
  }

  subset_df <- data[!is.na(data$draft_number) & data$draft_number >= min_pick & data$draft_number <= max_pick, ]

  if(nrow(subset_df)==0){
    stop("no players in range found")
  }




  ranked_df <- data.frame(
    "Num_Players" = nrow(subset_df),
    "Measure" = measure,
    "Avg" = mean(subset_df[[measure]], na.rm = TRUE),
    "Median" = stats::median(subset_df[[measure]], na.rm = TRUE)
  )

  return(ranked_df)
}
