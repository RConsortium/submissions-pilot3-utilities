test_that("Pilot3 can use the testthat 3e", {
  local_edition(3)
  expect_true(TRUE)
})

test_that("pad_row works", {
  .data <- tibble::tribble(
    ~STUDYID, ~USUBJID, ~PARAMCD, ~PARAM, ~AVISIT,
    "TEST01", "01-701-1015", "DIABP", "Diastolic Blood Pressure (mmHg)", "BASELINE",
    "TEST01", "01-701-1015", "DIABP", "Diastolic Blood Pressure (mmHg)", "WEEK 2",
    "TEST01", "01-701-1015", "SYSBP", "Systolic Blood Pressure (mmHg)", "BASELINE",
    "TEST01", "01-701-1015", "SYSBP", "Systolic Blood Pressure (mmHg)", "WEEK 2",
    "TEST01", "01-701-1028", "DIABP", "Diastolic Blood Pressure (mmHg)", "BASELINE",
    "TEST01", "01-701-1028", "SYSBP", "Systolic Blood Pressure (mmHg)", "BASELINE"
  )
  .data_pad_row <- tibble::tribble(
    ~STUDYID, ~USUBJID, ~PARAMCD, ~PARAM, ~AVISIT,
    "TEST01", "01-701-1015", "DIABP", "Diastolic Blood Pressure (mmHg)", "BASELINE",
    "TEST01", "01-701-1015", "DIABP", "Diastolic Blood Pressure (mmHg)", "WEEK 2",
    "TEST01", "01-701-1015", "SYSBP", "Systolic Blood Pressure (mmHg)", "BASELINE",
    "TEST01", "01-701-1015", "SYSBP", "Systolic Blood Pressure (mmHg)", "WEEK 2",
    "TEST01", "01-701-1028", "DIABP", "Diastolic Blood Pressure (mmHg)", "BASELINE",
    "TEST01", "01-701-1028", "SYSBP", "Systolic Blood Pressure (mmHg)", "BASELINE",
    "","","","",""
  )
  expect_equal(nrow(pad_row(.data)),  7)
  expect_equal(nrow(pad_row(.data, n = 3)),  9)
  expect_equal(nrow(pad_row(.data, n = 5)),  11)
  expect_snapshot(pad_row(.data), dplyr::select(.data_pad_row))
  expect_length(nrow(pad_row(.data)), 1)
})

test_that("num_fmt works", {
  .data_num_fmt <- tibble::tribble(
    ~OUTPUT,
    "  5       "
  )
  expect_equal(num_fmt(NA, digits = 0, size = 10, int_len = 3),  "")
  expect_equal(num_fmt(5, digits = 0, size = 10, int_len = 3),  "  5       ")
  expect_snapshot(num_fmt(5, digits = 0, size = 10, int_len = 3), dplyr::select(.data_num_fmt))
  expect_equal(num_fmt(-7, digits = 0, size = 10, int_len = 3),  " -7       ")
  expect_length(num_fmt(NA, digits = 0, size = 10, int_len = 3), 1)
  expect_length(num_fmt(5, digits = 0, size = 8, int_len = 3), 1)
})

test_that("str_pad works", {
  .data_str_pad <- tibble::tribble(
  ~OUTPUT,
  " pilot3"
  )
  expect_equal(str_pad("pilot3", 7, "left"),  " pilot3")
  expect_snapshot(str_pad("pilot3", 7, "left"),  dplyr::select(.data_str_pad))
  expect_length(str_pad("pilot3", 7, "left"), 1)
})

test_that("nrow works", {
  .data_nrow <- tibble::tribble(
    ~OUTPUT,
    3
  )
  expect_equal(nrow(matrix(1:12, 3, 4)),  3)
  expect_snapshot(nrow(matrix(1:12, 3, 4)), dplyr::select(.data_nrow))
  expect_length(nrow(matrix(1:12, 3, 4)), 1)
})

test_that("round works", {
  .data_round <- tibble::tribble(
    ~OUTPUT,
    c(0.3, 1.0, 2.7, 5.0, 8.9)
  )
  expect_equal(round(c(.3, 1.03, 2.67, 5, 8.91), digits = 1),  c(0.3, 1.0, 2.7, 5.0, 8.9))
  expect_snapshot(round(c(.3, 1.03, 2.67, 5, 8.91), digits = 1), dplyr::select(.data_round))
  expect_length(round(c(.3, 1.03, 2.67, 5, 8.91), digits = 1),  5)
})

test_that("format works", {
  .data_format <- tibble::tribble(
    ~OUTPUT,
    "GFG     "
  )
  expect_equal(format("GFG", width = 8, justify = "l"),  "GFG     ")
  expect_snapshot(format("GFG", width = 8, justify = "l"), dplyr::select(.data_format))
  expect_length(format("GFG", width = 8, justify = "l"), 1)
})
