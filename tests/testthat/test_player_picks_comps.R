
test_that("error on invalid window", {
  data <- data.frame(player_name = paste0("player", 1:20), draft_number = 1:20, pts = 1:20)
  expect_error(player_picks_comps(data, "player1", "pts", 0))
  expect_error(player_picks_comps(data, "player1", "pts", -10))
  expect_error(player_picks_comps(data, "player1", "pts", "abc"))
})


test_that("error for undrafted player", {
  data <- data.frame(player_name = c("player1", "player2"), draft_number = c(3, NA), pts = c(10, 4))
  expect_error(player_picks_comps(data, "player2", "pts"))
})

test_that("error for player not in data", {
  data <- data.frame(player_name = c("player1", "player2"), draft_number = c(3, NA), pts = c(10, 4))
  expect_error(player_picks_comps(data, "player3", "pts"))
})

test_that("error when players share a name", {
  data <- data.frame(player_name = c("player1", "player2", "player2"), draft_number = c(3, 2, 1), pts = c(10, 4, 6))
  expect_error(player_picks_comps(data, "player2", "pts"))
})

test_that("error on invalid measure", {
  data <- data.frame(player_name = paste0("player", 1:20), draft_number = 1:20, pts = 1:20)
  expect_error(player_picks_comps(data, "player1", "goals", 3))
})

test_that("error on non-numeric measure", {
  data <- data.frame(player_name = paste0("player", 1:20), draft_number = 1:20, pts = 1:20, college= letters[1:20])
  expect_error(player_picks_comps(data, "player1", "college", 3))
})


test_that("metrics being computed properly", {
  data <- data.frame(player_name = paste0("player", 1:20), draft_number = 1:20, pts = 1:20)
  results<- player_picks_comps(data, "player6", "pts", 2)
  expect_equal(results$Range, "4-8")
  expect_equal(results$Player_stat, 6)
  expect_equal(results$Avg, mean(4:8))
  expect_equal(results$Median, median(4:8))
  expect_equal(results$Diff_Avg, 6 - mean(4:8))
  expect_equal(results$Diff_Median, 6 - median(4:8))

})

test_that("NA values are ignored", {
  data <- data.frame(player_name = paste0("player", 1:20), draft_number = 1:20, pts = c(1:19, NA))
  results<- player_picks_comps(data, "player16", "pts", 4)
  expect_equal(results$Avg, mean(12:19))
})

test_that("minimum range does not go below 1", {
  data <- data.frame(player_name = paste0("player", 1:20), draft_number = 1:20, pts = c(1:20))
  results<- player_picks_comps(data, "player1", "pts", 4)
  expect_equal(results$Range, "1-5")
})
