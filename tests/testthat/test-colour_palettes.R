
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

test_that("Palette function generator produced", {
  expect_equal(
    ukri_blues_palette_func_gen(),
    grDevices::colorRampPalette(
      colors = ukri_blues(),
      bias = 1,
      space = "Lab",
      interpolate = "linear",
      alpha = FALSE
    )
  )
})

test_that("Interpolated UKRI blues are returned", {
  expect_equal(
    ukri_blues_n(5),
    c("#2C2D5F", "#375983", "#3987A9", "#2CA0BD", "#00B9D2")
  )
})

