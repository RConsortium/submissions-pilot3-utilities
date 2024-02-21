test_that("Pilot3 can use the testthat 3e", {
  local_edition(3)
  expect_true(TRUE)
})
test_that("efficacy models works", {
  #use file path$adam settings from the ADRG and DESCRIPTION file imports/suggests packages pilot3utils environment
  adas <- haven::read_xpt(file.path("~/pilot3-files/m5/datasets/rconsortiumpilot3/analysis/adam", "adadas.xpt"))
  adas <- adas %>%
    filter(
      EFFFL == "Y",
      ITTFL == "Y",
      PARAMCD == "ACTOT",
      ANL01FL == "Y"
  )
  model_portion <- efficacy_models(adas, "CHG", 24)
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
  expect_equal(efficacy_models(adas, "CHG", 24), model_portion)
  expect_snapshot(efficacy_models(adas, "CHG", 24), dplyr::select(model_portion))
  expect_length(efficacy_models(adas, "CHG", 24), 3)
})
