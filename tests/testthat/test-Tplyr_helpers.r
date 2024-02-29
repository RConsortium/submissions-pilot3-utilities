test_that("Pilot3 can use the testthat 3e", {
  local_edition(3)
  expect_true(TRUE)
})

test_that("nest_rowlabels works", {
  .data <- tibble::tribble(
    ~row_label1, ~row_label2, ~var1_placebo, ~var1_xanomeline_high_dose, ~var1_xanomeline_low_dose, ~ord_layer_index, ~ord_layer_1, ~ord_layer_2,
    "Baseline", "n", "79", "74", "81", 1, 1, 1,
    "Baseline", "Mean (SD)", "24.1 (12.19)", "21.3 (11.74)", "24.4 (12.92)", 1, 1, 2,
    "Baseline", "Median (Range)", "21.0 (  5;61)", "18.0 (  3;57)", "21.0 (  5;57)", 1, 1, 3,
    "Week 24", "n", "79", "74", "81", 2, 1, 1,
    "Week 24", "Mean (SD)", "26.7 (13.79)", "22.8 (12.48)", "26.4 (13.18)", 2, 1, 2,
    "Week 24", "Median (Range)", "24.0 (  5;62)", "20.0 (  3;62)", "25.0 (  6;62)", 2, 1, 3,
    "Change from Baseline", "n", "79", "74", "81", 3, 1, 1,
    "Change from Baseline", "Mean (SD)", " 2.5 ( 5.80)", " 1.5 ( 4.26)", " 2.0 ( 5.55)", 3, 1, 2,
    "Change from Baseline", "Median (Range)", " 2.0 (-11;16)", " 1.0 ( -7;13)", " 2.0 (-11;17)", 3, 1, 3
  )
  .nest_rowlabels <- tibble::tribble(
    ~row_label, ~var1_placebo, ~var1_xanomeline_high_dose, ~var1_xanomeline_low_dose, ~ord_layer_index, ~ord_layer_1, ~ord_layer_2,
    "Baseline", "", "", "", 1, 0, 0,
    "n", "79", "74", "81",  1, 1, 1,
    "Mean (SD)", "24.1 (12.19)", "21.3 (11.74)", "24.4 (12.92)",  1, 1, 2,
    "Median (Range)", "21.0 (  5;61)", "18.0 (  3;57)", "21.0 (  5;57)",  1, 1, 3,
    "Week 24", "", "", "", 2, 0, 0,
    "n", "79", "74", "81",  2, 1, 1,
    "Mean (SD)", "26.7 (13.79)", "22.8 (12.48)", "26.4 (13.18)",  2, 1, 2,
    "Median (Range)", "24.0 (  5;62)", "20.0 (  3;62)", "25.0 (  6;62)",  2, 1, 3,
    "Change from Baseline", "", "", "", 3, 0, 0,
    "n", "79", "74", "81",  3, 1, 1,
    "Mean (SD)", " 2.5 ( 5.80)", " 1.5 ( 4.26)", " 2.0 ( 5.55)",  3, 1, 2,
    "Median (Range)", " 2.0 (-11;16)", " 1.0 ( -7;13)", " 2.0 (-11;17)",  3, 1, 3
  )
  expect_equal(nrow(.data),  9)
  expect_equal(nrow(.nest_rowlabels),  12)
  expect_equal(nrow(nest_rowlabels(.data)),  12)
  expect_s3_class(nest_rowlabels(.data), "tbl_df")
  expect_snapshot(nest_rowlabels(.data), dplyr::select(.nest_rowlabels))
  expect_length(nrow(.data), 1)
  expect_length(nrow(.nest_rowlabels), 1)
})
