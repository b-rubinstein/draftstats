# NBA Player Statistics and Draft Data

A dataset of NBA player statistics from the 1996-97 to to 2022-23
seasons, containing demographic information, draft information, and NBA
season statistics. There is one row per player, per year they were
active in the NBA. Undrafted players draft_number is listed as 'NA'.

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

  Year player was drafted

- draft_round:

  Draft round player was picked, NA if undrafted

- draft_number:

  Overall number player was drafted, NA if undrafted

- gp:

  Number of games played throughout the season

- pts:

  Average number of points scored

- reb:

  Average number of rebounds

- ast:

  Average number of assists

- net_rating:

  Team's point differential per 100 possessions while the player is on
  the court

- oreb_pct:

  Percentage of available offensive rebounds the player grabbed while he
  was on the floor

- dreb_pct:

  Percentage of available defensive rebounds the player grabbed while he
  was on the floor

- usg_pct:

  Percentage of team plays used by the player while he was on the floor
  (FGA + Possession Ending FTA + TO) / POSS)

- ts_pct:

  Measure of the player's shooting efficiency that takes into account
  free throws, 2 and 3 point shots (PTS / (2\*(FGA + 0.44 \* FTA)))

- ast_pct:

  Percentage of teammate fgs player assisted while he was on the floor

- season:

  NBA season

## Source

\<https://www.kaggle.com/datasets/justinas/nba-players-data\>
