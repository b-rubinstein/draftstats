
#' Comparing a specific measure of performance between two draft ranges by calling draft_rank_stats function
#'
#' @param data A dataframe containing draft pick number and corresponding statistics
#' @param min_pick1 Lowest pick number to include in range 1
#' @param max_pick1 Highest pick number to include in range 1
#' @param min_pick2 Lowest pick number to include in range 2
#' @param max_pick2 Highest pick number to include in range 2
#' @param measure Statistics measure (points, rebounds, minutes, assists, etc) to compare
#'
#' @returns A dataframe with the Average and Median statistic for all players in each given draft range and
#'  the difference between them
#'
#' @examples
#' draft_rank_comps(nba_players, 1, 10, 11, 20, "pts")
#' draft_rank_comps(wnba_draft, 5, 10, 11, 15, "reb")
#' draft_rank_comps(nba_draft, 10, 20, 21, 30, "ast")
#'
#' @export

draft_rank_comps<- function(data, min_pick1, max_pick1, min_pick2, max_pick2, measure) {

  first_ranks <- draft_rank_stats(data, min_pick1, max_pick1, measure)
  second_ranks <- draft_rank_stats(data, min_pick2, max_pick2, measure)

  diff_avg = first_ranks$Avg - second_ranks$Avg
  diff_medians = first_ranks$Median - second_ranks$Median

  comparison <- data.frame(
    "Range" = c(paste0(min_pick1, "-", max_pick1), paste0(min_pick2, "-", max_pick2)),
    "Measure" = measure,
    "Avg" = c(first_ranks$Avg, second_ranks$Avg),
    "Median" = c(first_ranks$Median, second_ranks$Median),
    "Diff_Avg" = diff_avg,
    "Diff_Median" = diff_medians
  )

  return (comparison)

}

