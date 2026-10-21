library(ggplot2)

nba_players$draft_number <- as.numeric(nba_players$draft_number)
drafted_players <- nba_players[!is.na(nba_players$draft_number), ]

range1 <- draft_rank_stats(drafted_players, 1, 10, "pts")
range2 <- draft_rank_stats(drafted_players, 11, 20, "pts")
range3 <- draft_rank_stats(drafted_players, 21, 30, "pts")
range4 <- draft_rank_stats(drafted_players, 31, 40, "pts")
range5 <- draft_rank_stats(drafted_players, 41, 50, "pts")
range6 <- draft_rank_stats(drafted_players, 51, 60, "pts")

draft_stats_results <- rbind(range1, range2, range3, range4, range5, range6)
draft_stats_results$range_nums <- c("1-10", "11-20", "21-30", "31-40", "41-50", "51-60")

pts_graph<-ggplot(draft_stats_results, aes(x=range_nums, y=Avg))+
  geom_col(fill='lightblue')+
  theme_minimal()+
  labs(
    title = "Average Points Scored per Draft Pick Range",
    x = "Range of Picks",
    y = "Avg Points"
  )

pts_graph
