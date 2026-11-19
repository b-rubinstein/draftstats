test_that("error on invalid measure", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1999, 1999))
  expect_error(player_year_comps(data, "player", "2000-01", "2001-02", "goals"))
})

test_that("error on non-numeric measure", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1999, 1999), college= c("a", "b"))
  expect_error(player_year_comps(data, "player", "2000-01", "2001-02", "college"))
})

test_that("error for player not in data", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1999, 1999))
  expect_error(player_year_comps(data, "player1", "2000-01", "2001-02", "pts"))
})

test_that("error for undrafted player", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(NA, NA))
  expect_error(player_year_comps(data, "player", "2000-01", "2001-02", "pts"))
})

test_that("error when players share a name", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1996, 1999))
  expect_error(player_year_comps(data, "player", "2000-01", "2001-02", "pts"))
})

test_that("error when seasons are the same", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2000-01"), pts = c(10, 15),
                     draft_year = c(1999, 1999))
  expect_error(player_year_comps(data, "player", "2000-01", "2000-01", "pts"))
})

test_that("error when player did not play in a season", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1999, 1999))
  expect_error(player_year_comps(data, "player", "1997-98", "2001-02", "pts"))
})


test_that("error when seasons are not formatted properly", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1999, 1999))
  expect_error(player_year_comps(data, "player", "2000", "2001-02", "pts"))
  expect_error(player_year_comps(data, "player", "2000-01", "2001", "pts"))
  expect_error(player_year_comps(data, "player", 2000, "2001-02", "pts"))


})

test_that("metrics being computed properly", {
  data <- data.frame(player_name = c("player", "player"), season = c("2000-01", "2001-02"), pts = c(10, 15),
                     draft_year = c(1999, 1999))
  results<- player_year_comps(data, "player", "2000-01", "2001-02", "pts")
  expect_equal(results$Draft_Year, 1999)
  expect_equal(results$Season1_value, 10)
  expect_equal(results$Season2_value, 15)
  expect_equal(results$Difference, 5)
})

test_that("two rows from one season get avg'ed", {
  data <- data.frame(player_name = c("player", "player", "player"), season = c("2000-01", "2000-01", "2001-02"),
                     pts = c(10, 20, 15),
                     draft_year = c(1999, 1999, 1999))
  results<- player_year_comps(data, "player", "2000-01", "2001-02", "pts")
  expect_equal(results$Season1_value, 15)
  expect_equal(results$Difference, 0)
})


