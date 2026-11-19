# Comparing a player's performance between two seasons

Comparing a player's performance between two seasons

## Usage

``` r
player_year_comps(data, player_name, season1, season2, measure)
```

## Arguments

- data:

  A dataframe containing a player's performance across multiple seasons
  (nba_players)

- player_name:

  Name of the player

- season1:

  First season, in format "2000-01"

- season2:

  Second season, in format "2000-01"

- measure:

  Statistics measure (points, rebounds, minutes, assists, etc) to
  compare

## Value

A dataframe with the selected player's statistic from the first season,
second season, and difference between them (season 2 - season 1), as
well as what year the player was originally drafted

## Examples

``` r
player_year_comps(nba_players, "Jalen Brunson", "2019-20", "2021-22", "pts")
#>          Player Draft_Year             Seasons Measure Season1_value
#> 1 Jalen Brunson       2018 2019-20 vs. 2021-22     pts           8.2
#>   Season2_value Difference
#> 1          16.3        8.1
```
