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

A dataframe with the columns: \`Range\`, \`Measure\`, \`Avg\`,
\`Median\`, \`Diff_Avg\`, and \`Diff_Median\`, where \`Avg\` and
\`Median\` list the values for each of the two given ranges, and the
Difference columns calculate the difference between them (first range
minus second range).

## Examples

``` r
draft_rank_comps(nba_players, 1, 10, 11, 20, "pts")
#>   Range Measure      Avg Median Diff_Avg Diff_Median
#> 1  1-10     pts 12.44368   11.7 3.546583           4
#> 2 11-20     pts  8.89710    7.7 3.546583           4
draft_rank_comps(wnba_draft, 5, 10, 11, 15, "reb")
#>   Range Measure      Avg Median  Diff_Avg Diff_Median
#> 1  5-10     reb 2.993333    2.7 0.7176812         0.7
#> 2 11-15     reb 2.275652    2.0 0.7176812         0.7
draft_rank_comps(nba_draft, 10, 20, 21, 30, "ast")
#>   Range Measure      Avg Median  Diff_Avg Diff_Median
#> 1 10-20     ast 1.671468    1.2 0.2120342         0.2
#> 2 21-30     ast 1.459434    1.0 0.2120342         0.2
```
