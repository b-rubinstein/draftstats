required_cols <- c('player_name', 'draft_year', 'draft_number', 'team_abbreviation'
                   , 'college', 'gp', 'reb', 'pts', 'ast')


test_that("every dataset has appropriate columns", {
  expect_true(all(required_cols %in% names(nba_players)))
  expect_true(all(required_cols %in% names(nba_draft)))
  expect_true(all(required_cols %in% names(wnba_draft)))
})

test_that("draft number is numeric in each dataset", {
  expect_true(is.numeric(nba_players$draft_number))
  expect_true(is.numeric(nba_draft$draft_number))
  expect_true(is.numeric(wnba_draft$draft_number))
})

test_that("draft_rank_stats works on every dataset", {
  expect_equal(draft_rank_stats(nba_players, 1, 10, "pts")$Num_Players, 3198)
  expect_equal(draft_rank_stats(nba_draft, 1, 10, "pts")$Num_Players, 330)
  expect_equal(draft_rank_stats(wnba_draft, 1, 10, "pts")$Num_Players, 260)
})
