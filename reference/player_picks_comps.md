# Comparing a player's performance on a specific measure to their draft range

Comparing a player's performance on a specific measure to their draft
range

## Usage

``` r
player_picks_comps(data, player_name, measure, window = 5)
```

## Arguments

- data:

  A dataframe containing player name, draft pick number, and
  corresponding statistics

- player_name:

  Name of the player

- measure:

  Statistics measure (points, rebounds, minutes, assists, etc) to
  compare

- window:

  Number of picks on each side of the player's to include (default = 5)

## Value

A dataframe with the selected player's statistic and average and median
values of those in the selected comparison range, and the differences
between them

## Examples

``` r
# player_picks_comps(nba_players, "Michael Jordan", "pts", 3)
# player_picks_comps(wnba_draft, "Breanna Stweart", "pts")
# player_picks_comps(nba_draft, "Kobe Bryant", "reb", 2)

```
