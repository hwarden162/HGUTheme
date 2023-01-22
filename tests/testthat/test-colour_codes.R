
# UKRI Colours ------------------------------------------------------------

test_that("UKRI dark blue returned", {
  expect_equal(ukri_dark_blue(), "#2D2E5F")
})

test_that("UKRI mid blue returned", {
  expect_equal(ukri_mid_blue(), "#3A88A9")
})

test_that("UKRI light blue returned", {
  expect_equal(ukri_light_blue(), "#00BAD2")
})

test_that("UKRI orange returned", {
  expect_equal(ukri_orange(), "#F2BC44")
})
