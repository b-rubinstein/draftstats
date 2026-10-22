
test_that("metrics being computed properly", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  results<- draft_rank_comps(data, 1, 10, 11, 20, "pts")
  expect_equal(results$Avgs[1], mean(1:10))
  expect_equal(results$Avgs[2], mean(11:20))
  expect_equal(results$Median[1], median(1:10))
  expect_equal(results$Median[2], median(11:20))
  expect_equal(results$Difference.btwn.Avg[1], mean(1:10)-mean(11:20))
  expect_equal(results$Difference.btwn.Median[1], median(1:10)-median(11:20))
})

test_that("draft stats errors continue here", {
  data <- data.frame(draft_number = 1:20, pts = 1:20)
  expect_error(draft_rank_comps(data, 10, 20, 40, 30))
})
