# Summarizing a specific measure of performance for all players in a given draft range

Summarizing a specific measure of performance for all players in a given
draft range

## Usage

``` r
draft_rank_stats(data, min_pick, max_pick, measure)
```

## Arguments

- data:

  A dataframe containing draft pick number and corresponding statistics

- min_pick:

  Lowest pick number to include

- max_pick:

  Highest pick number to include

- measure:

  Statistics measure (points, rebounds, minutes, assists, etc)

## Value

A dataframe with the total number of players in the given range, along
with the Average and Median statistic for those players

## Examples

``` r
draft_rank_stats(nba_players, 1, 10, "pts")
#>   Num_Players Measure      Avg Median
#> 1        3198     pts 12.44368   11.7
draft_rank_stats(nba_draft, 1, 5, "reb")
#>   Num_Players Measure      Avg Median
#> 1         165     reb 5.637576    5.1
draft_rank_stats(wnba_draft, 5, 15, "ast")
#>   Num_Players Measure      Avg Median
#> 1         286     ast 1.233208      1
```
