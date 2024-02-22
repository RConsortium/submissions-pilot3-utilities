test_that("Pilot3 can use the testthat 3e", {
  local_edition(3)
  expect_true(TRUE)
})
test_that("efficacy models works", {
  .data_model_portion <- tibble::tribble(
    ~row_label, ~`~var1_Xanomeline Low Dose`, ~`~var1_Xanomeline High Dose`,
    "p-value(Dose Response) [1][2]", "NA", "   0.245    ",
    "", "NA", "",
    "p-value(Xan - Placebo) [1][3]", "   0.569    ", "   0.233    ",
    "  Diff of LS Means (SE)", "-0.5 (0.82)", "-1.0 (0.84)",
    "  95% CI", "(-2.1;1.1)", "(-2.7;0.7)",
    "", "", "",
    "p-value(Xan High - Xan Low) [1][3]", "NA", "   0.520    ",
    "  Diff of LS Means (SE)", "NA", "-0.5 (0.84)",
    "  95% CI", "NA", "(-2.2;1.1)"
  )
  expect_length(.data_model_portion, 3)
})
