#draftstats

draftstats is a tool to analyze whether an NBA player's draft position is 
reflective of their performance throughout their career in the league.
This package allows one to summarize and compare player performance 
across different draft-pick ranges, using real data from the NBA.


## What's Included:

nba_players is a dataset adapted from Kaggle containing player information.
This includes draft rankings, personal details, and NBA box-score statistics.
There are 12,844 player rows.

draft_rank_stats() is a function that takes in four items: a dataset, a 
minimum number and maximum number (representing draft picks), and a metric.
This function will calculate the average and median value of the chosen performance
metric for all players within the specified range.

draft_rank_comps() is a function that takes in a dataset, two ranges, and 
a performance metric. It compares the average and median values between the
two different draft pick ranges, by calling draft_rank_stats(), and returns the
difference between them.

## Intended Audience:


This package is intended for data analysts, students, and NBA fans who are
interested in exploring how draft position impacts career performance, if at
all. It assumes that the user has both a basic familiarity with R and background 
of basketball.


## Basic Usage:

Install the package using devtools::install_github("b-rubinstein/draftstats")
and library(draftstats)

Download NBA Players dataset and convert any statistic or draft number columns into
numeric...

Example function uses:
draft_rank_stats(drafted_players, min_pick = 1, max_pick = 10, measure = "pts")
draft_rank_comps(drafted_players, 1, 10, 11, 20, measure = "pts")

