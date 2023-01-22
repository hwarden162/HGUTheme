
# UKRI Colours ------------------------------------------------------------

test_that("UKRI blues are returned", {
  expect_equal(
    ukri_blues(),
    c(
      ukri_dark_blue(),
      ukri_mid_blue(),
      ukri_light_blue()
    )
  )
})
