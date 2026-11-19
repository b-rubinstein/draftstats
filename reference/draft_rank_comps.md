# Comparing a specific measure of performance between two draft ranges by calling draft_rank_stats function

Comparing a specific measure of performance between two draft ranges by
calling draft_rank_stats function

## Usage

``` r
draft_rank_comps(data, min_pick1, max_pick1, min_pick2, max_pick2, measure)
```

## Arguments

- data:

  A dataframe containing draft pick number and corresponding statistics

- min_pick1:

  Lowest pick number to include in range 1

- max_pick1:

  Highest pick number to include in range 1

- min_pick2:

  Lowest pick number to include in range 2

- max_pick2:

  Highest pick number to include in range 2

- measure:

  Statistics measure (points, rebounds, minutes, assists, etc) to
  compare

## Value

A dataframe with the Average and Median statistic for all players in
each given draft range and the difference between them

## Examples

``` r
# draft_rank_comps(nba_players, 1, 10, 11, 20, "pts")
# draft_rank_comps(wnba_draft, 5, 10, 11, 15, "reb")
# draft_rank_comps(nba_draft, 10, 20, 21, 30, "ast")
```
