test_that("Pilot3 can use the testthat 3e", {
  local_edition(3)
  expect_true(TRUE)
})

test_that("fmt_num works", {
  expect_equal(fmt_num(1.25, digits = 1), "  1.2")
  expect_equal(fmt_num(1.25, digits = 2), "  1.25")
  expect_equal(fmt_num(4.25, digits = 3), "  4.250")
  expect_equal(fmt_num(1.25, digits = 0), "   1")
  expect_length(fmt_num(1.25, digits = 4), 1)
})


test_that("fmt_est works", {
  expect_equal(fmt_est(1.25, 0.5), "  1.2 ( 0.50)")
  expect_equal(fmt_est(1.25, 0.01), "  1.2 ( 0.01)")
  expect_equal(fmt_est(1.25, 0.07), "  1.2 ( 0.07)")
  expect_length(fmt_est(1.25, 0.5), 1)
})

test_that("fmt_pval works", {
  expect_equal(fmt_pval(0.446, digits = 2), "  0.45")
  expect_equal(fmt_pval(0.445, digits = 3), "  0.445")
  expect_equal(fmt_pval(0.52, digits = 3), "  0.520")
  expect_length(fmt_pval(0.445, digits = 1), 1)
  expect_length(fmt_pval(0.445, digits = 4), 1)
})

test_that("fmt_ci works", {
  expect_equal(fmt_ci(1, -0.25, 1.32), " 1.00 (-0.25, 1.32)")
  expect_equal(fmt_ci(1.5, -0.04, 1.09), " 1.50 (-0.04, 1.09)")
  expect_equal(fmt_ci(-2.5, -0.09, 2.07), "-2.50 (-0.09, 2.07)")
  expect_length(fmt_ci(1, -0.25, 1.32), 1)
})
