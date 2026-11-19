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

A dataframe with the Average and Median statistic for all players in the
given draft range

## Examples

``` r
# draft_rank_stats(nba_players, 1, 10, "pts")
# draft_rank_stats(nba_draft, 1, 5, "reb")
# draft_rank_stats(wnba_draft, 5, 15, "ast")
```
