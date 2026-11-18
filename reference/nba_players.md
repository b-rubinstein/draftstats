# NBA Player Statistics and Draft Data

A dataset of NBA data from 1996 to 2022 containing demographic
information, draft information, and NBA statistics with a different row
for each year a player was in the NBA.

## Usage

``` r
nba_players
```

## Format

\## \`nba_players\` A data frame with 12,844 rows and 21 columns:

- player_name:

  Player's name

- team_abbreviation:

  Team that player was on at the end of the season

- age:

  Age of player

- player_height:

  Height of player (cm)

- player_weight:

  Weight of player (kg)

- college:

  Name of college player attended

- country:

  Country player was born in

- draft_year:

  Year player was drafted, NA if undrafted

- draft_round:

  Draft round player was picked, NA if undrafted

- draft_number:

  Overall number player was drafted, NA if undrafted

- gp:

  Number of games played throughout the season

- pts:

  Average number of points scores

- reb:

  Average number of rebounds

- ast:

  Number of assists

- net_rating:

  Team's point differential per 100 possessions while the player is on
  the court

- oreb_pct:

  Percentage of offensive rebounds

- dreb_pct:

  Percentage of defensive rebounds

- usg_pct:

  Percentage of team plays used by the player while he was on the floor
  (FGA + Possession Ending FTA + TO) / POSS)

- ts_pct:

  Measure of the player's shooting efficiency that takes into account
  free throws, 2 and 3 point shots (PTS / (2\*(FGA + 0.44 \* FTA)))

- ast_pct:

  Percentage of teammate fgs player assisted

- season:

  NBA season

## Source

\<https://www.kaggle.com/datasets/justinas/nba-players-data\>
