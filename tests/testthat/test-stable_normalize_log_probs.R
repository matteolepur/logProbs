test_that("test usage of stable_normalize_log_probs function", {

  # test basic functionality
  expect_equal(round(stable_normalize_log_probs(c(-10, -10, -10)), 3), round(c(0.333, 0.333, 0.333), 3))

  # test NA functionality
  expect_equal(round(stable_normalize_log_probs(c(-10, -10, -10, NA), na.rm=TRUE), 3), round(c(0.333, 0.333, 0.333), 3))

  # test values that produce numerically unstable values
  expect_equal(round(stable_normalize_log_probs(c(-1000, -1000, -1000)), 3), round(c(0.333, 0.333, 0.333), 3))

})
