
#' Summarizing a specific measure of performance for all players in a given draft range
#'
#' @param data A dataframe containing draft pick number and corresponding statistics
#' @param min_pick Lowest pick number to include
#' @param max_pick Highest pick number to include
#' @param measure Statistics measure (points, rebounds, minutes, assists, etc)
#'
#' @returns A dataframe with the Average and Median statistic for the given draft range
#' @export


draft_rank_stats <- function(data, min_pick, max_pick, measure) {

  if(min_pick > max_pick){
    stop("minimum pick number cannot be greater than maximum pick number")
  }

  if(!is.numeric(min_pick) || !is.numeric(max_pick)){
    stop("pick numbers must be numeric")
  }

  if(min_pick <= 0 || max_pick<=0){
    stop("pick must be greater than zero")
  }

  subset_df <- data[data$pick >= min_pick & data$pick <= max_pick, ]

  if(nrow(subset_df)==0){
    stop("no players in range found")
  }

  ranked_df <- data.frame(
    "# Players" = nrow(subset_df),
    "Measure" = measure,
    "Avg" = mean(subset_df[[measure]]),
    "Median" = stats::median(subset_df[[measure]])
  )

  return(ranked_df)
}
