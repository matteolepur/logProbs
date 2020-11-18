test_that("test usage of normalize_log_probs function", {
  expect_equal(round(normalize_log_probs(c(-10, -10, -10)), 3), round(c(0.333, 0.333, 0.333), 3))
  expect_equal(round(normalize_log_probs(c(-10, -10, -10, NA), na.rm=TRUE), 3), round(c(0.333, 0.333, 0.333), 3))
  expect_equal(round(normalize_log_probs(c(-100, -2, -1000)), 3), round(c(0, 1, 0), 3))
})
