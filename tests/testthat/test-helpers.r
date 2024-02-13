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
  expect_equal(nrow(pad_row(.data)),  7)
  expect_equal(nrow(pad_row(.data,n = 3)),  9)
  expect_equal(nrow(pad_row(.data,n = 5)),  11)
  expect_length(nrow(pad_row(.data)), 1)
  
})


test_that("num_fmt works", {
  expect_equal(num_fmt(NA, digits = 0, size = 10, int_len = 3),  "")
  expect_equal(num_fmt(5, digits = 0, size = 10, int_len = 3),  "  5       ")
  expect_equal(num_fmt(-7, digits = 0, size = 10, int_len = 3),  " -7       ")
  expect_length(num_fmt(NA, digits = 0, size = 10, int_len = 3), 1)
  expect_length(num_fmt(5, digits = 0, size = 8, int_len = 3), 1)
})







