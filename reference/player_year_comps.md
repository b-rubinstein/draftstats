# Comparing a player's performance between two seasons

Comparing a player's performance between two seasons

## Usage

``` r
player_year_comps(data, player_name, season1, season2, measure)
```

## Arguments

- data:

  A dataframe containing a player's performance across multiple seasons.
  Columns must include the player's name, season, draft year, draft
  number, and measure, with one row per player season (for example,
  nba_players)

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

A dataframe with the columns: \`Player\`, \`Draft_Year\`, \`Seasons\`,
\`Measure\`, \`Season1_value\`, \`Season2_value\`, \`Difference\`.
\`Draft_Year\` is the year the player was drafted, \`Seasons\` shows the
two seasons compared, and \`Difference\` is the second season's value
minus the first season's.

## Examples

``` r
player_year_comps(nba_players, "Jalen Brunson", "2019-20", "2021-22", "pts")
#>          Player Draft_Year             Seasons Measure Season1_value
#> 1 Jalen Brunson       2018 2019-20 vs. 2021-22     pts           8.2
#>   Season2_value Difference
#> 1          16.3        8.1
```
