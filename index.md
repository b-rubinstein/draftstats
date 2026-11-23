# draftstats

draftstats is a tool to analyze whether an NBA or WNBA player’s draft
position is reflective of their performance throughout their career in
the league. This package allows one to summarize and compare player
performance across different draft-pick ranges, compare a player to
others drafted near them, and compare a player to themselves across
different seasons, using real data from the NBA and WNBA.

Documentation: <https://b-rubinstein.github.io/draftstats/>

## Installation:

``` r

install.packages("devtools")
devtools::install_github("b-rubinstein/draftstats")
library(draftstats)
```

## What’s Included:

### Datasets:

`nba_players` is a dataset adapted from Kaggle containing player
information from the 1996-97 to 2022-23 NBA seasons. This includes draft
rankings, personal details, and NBA box-score statistics. There are
12,844 player rows, with one row per player season.

`nba_draft` is a dataset adapted from Kaggle containing NBA draft data
from 1989 to 2021. There are 1,922 rows with one row per player and
their career per-game statistics.

`wnba_draft` is a dataset adapted from Kaggle containing WNBA draft data
from 1997 to 2022. There are 1,064 rows with one row per player and
their career per-game statistics.

### Functions:

[`draft_rank_stats()`](https://b-rubinstein.github.io/draftstats/reference/draft_rank_stats.md)
is a function that takes in four items: a dataset, a minimum number and
maximum number (representing draft picks), and a metric. This function
will calculate the average and median value of the chosen performance
metric for all players within the specified range.

[`draft_rank_comps()`](https://b-rubinstein.github.io/draftstats/reference/draft_rank_comps.md)
is a function that takes in a dataset, two ranges, and a performance
metric. It compares the average and median values between the two
different draft pick ranges, by calling draft_rank_stats(), and returns
the difference between them.

[`player_picks_comps()`](https://b-rubinstein.github.io/draftstats/reference/player_picks_comps.md)
is a function that takes in a dataset, a player’s name, a performance
metric, and an optional window (default = 5). It will compare the
player’s statistic to the average of those who were picked within the
given window.

[`player_year_comps()`](https://b-rubinstein.github.io/draftstats/reference/player_year_comps.md)
is a function that takes in a dataset with a similar style to
`nba_players`, a player’s name, two seasons, and a measure. This
function will compare a player’s performance between the two given
seasons.

## Basic Usage:

The nba_players, nba_draft, and wnba_draft datasets are included with
the package, so calling library(draftstats) is sufficient.

Example function uses:

``` r


# Average and median points for picks 1-10 
draft_rank_stats(nba_players, min_pick = 1, max_pick = 10, measure = "pts")

# Compare picks 1-10 and 11-20 average and median points
draft_rank_comps(nba_players, 1, 10, 11, 20, measure = "pts")

# Compare Michael Jordan's average points to players drafted within three picks of him
player_picks_comps(nba_players, "Michael Jordan", "pts", 3)

# Compare Jalen Brunson's average points from the 2019-20 season to the 2021-22 season
player_year_comps(nba_players, "Jalen Brunson", "2019-20", "2021-22", "pts")
```

## Intended Audience:

This package is intended for data analysts, students, and NBA fans who
are interested in exploring how draft position impacts career
performance, if at all. It assumes that the user has both a basic
familiarity with R and background of basketball.
