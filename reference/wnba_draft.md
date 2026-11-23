# WNBA Draft Data and Career Per-Game Statistics

A dataset of WNBA draft picks from 1997 to 2022, with one row per
drafted player and their career per-game statistics. Players with no
recorded games have 'NA' statistics.

## Usage

``` r
wnba_draft
```

## Format

\## \`wnba_draft\` A data frame with 1,064 rows and 9 columns:

- player_name:

  Player's name

- team_abbreviation:

  Team that drafted the player (full name)

- college:

  Name of college player attended

- draft_year:

  Year player was drafted

- draft_number:

  Overall number player was drafted

- gp:

  Number of games played throughout the player's career

- pts:

  Career average number of points scored per game

- reb:

  Career average number of rebounds per game

- ast:

  Career average number of assists per game

## Source

\<https://www.kaggle.com/datasets/mattop/wnba-draft-basketball-player-data-1997-2021\>
