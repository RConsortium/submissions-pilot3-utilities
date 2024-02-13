test_that("Pilot3 can use the testthat 3e", {
  local_edition(3)
  expect_true(TRUE)
})

test_that("format_dcsreas works", {
  expect_equal(format_dcsreas("ADVERSE EVENT"), "Adverse Event")
  expect_equal(format_dcsreas("STUDY TERMINATED BY SPONSOR"), "Sponsor Decision")
  expect_equal(format_dcsreas("DEATH"), "Death")
  expect_equal(format_dcsreas("WITHDRAWAL BY SUBJECT"), "Withdrew Consent")
  expect_equal(format_dcsreas("PHYSICIAN DECISION"), "Physician Decision")
  expect_equal(format_dcsreas("LACK OF EFFICACY"), "Lack of Efficacy")
  expect_equal(format_dcsreas("PROTOCOL VIOLATION"), "Protocol Violation")
  expect_equal(format_dcsreas("LOST TO FOLLOW-UP"), "Lost to Follow-up")
  expect_length(format_dcsreas("ADVERSE"), 1)
  expect_length(format_dcsreas("ADVERSE EVENT"), 1)
  expect_length(format_dcsreas(NA), 1)
})

test_that("format_eosstt works", {
  expect_equal(format_eosstt("SCREEN FAILURE"), "NOT STARTED")
  expect_equal(format_eosstt("SCREENING FAILURE"), "DISCONTINUED")
  expect_equal(format_eosstt("COMPLETED"), "COMPLETED")
  expect_equal(format_eosstt("SCREENING NOT COMPLETED"), "NOT STARTED")
  expect_equal(format_eosstt(""), "DISCONTINUED")
  expect_equal(format_eosstt(NA), "ONGOING")
  expect_length(format_eosstt("SCREEN FAILURE"), 1)
  expect_length(format_eosstt(NA), 1)
})

test_that("format_sitegr1 works", {
  expect_equal(format_sitegr1("702"),  "900")
  expect_equal(format_sitegr1("706"),  "900")
  expect_equal(format_sitegr1("707"),  "900")
  expect_equal(format_sitegr1("711"),  "900")
  expect_equal(format_sitegr1("714"),  "900")
  expect_equal(format_sitegr1("715"),  "900")
  expect_equal(format_sitegr1("717"),  "900")
  expect_length(format_sitegr1("717"), 1)
  
})

test_that("round_sas works", {
  expect_equal(round_sas(10.56, digits = 0),  11)
  expect_equal(round_sas(9.06, digits = 0),  9)
  expect_equal(round_sas(-5.6, digits = 0),  -6)
  expect_length(round_sas(10.56, digits = 0), 1)
  
})





