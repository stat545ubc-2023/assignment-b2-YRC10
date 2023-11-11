# Define a test context
library(datateachr)

test_that("yearSinceBuilt function tests", {
  # Test 1: Valid numeric input
  this_year_2023 <- 2023
  test1 <- yearSinceBuilt(this_year_2023)
  expect_true(is.numeric(test1$year_since_built))
  expect_equal(nrow(test1), nrow(apt_buildings))
  
  # Test 2: Numeric input with NAs
  this_year_empty <- NA
  expect_error(yearSinceBuilt(this_year_empty), "Error: Input year must be a numeric value.")
  
  # Test 3: Vector of a different type (if relevant)
  this_year_decimal <- 2023.5
  expect_error(yearSinceBuilt(this_year_decimal), "Error: Input year must be an integer.")
  
  # Test 4: Redundant input (providing a different number)
  this_year_2024 <- 2024
  test4 <- yearSinceBuilt(this_year_2024)
  expect_true(is.numeric(test4$year_since_built))
  expect_true(all(as.integer(this_year_2024) == this_year_2024))  # Check if the input is an integer
  expect_equal(nrow(test4), nrow(apt_buildings))
  
})