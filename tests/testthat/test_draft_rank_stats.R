test_that("error on min_pick > max_pick", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_stats(data, 15, 11, "pts"))
})

test_that("error on non-numeric picks", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_stats(data, 15, 'b', "pts"))
})

test_that("error on negative pick number", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_stats(data, -15, 11, "pts"))
})

test_that("error on zero pick number", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_stats(data, 0, 11, "pts"))
})

test_that("error for no player in range", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_stats(data, 750, 1000, "pts"))
})

test_that("error on invalid measure", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_stats(data, 11, 15, "serves"))
})

test_that("error on non-numeric measure", {
  data <- data.frame(draft_number = 1:20, pts = 1:20, college= letters[1:20])
  expect_error(draft_rank_stats(data, 11, 15, "college"))
})


test_that("metrics being computed properly", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  results<- draft_rank_stats(data, 1, 20, "pts")
  expect_equal(results$Avg, mean(1:20))
  expect_equal(results$Median, median(1:20))
})
