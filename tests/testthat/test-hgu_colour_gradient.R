test_that("check colour_gradient gives the correct ggproto object", {

  expect_equal(
    scale_colour_gradient2_hgu(),
    ggplot2::scale_colour_gradient2(
      low = hgu_dark(),
      mid = hgu_mid(),
      high = hgu_light(),
      midpoint = 0,
      space = "Lab",
      na.value = mrc_grey(),
      guide = "colourbar",
      aesthetics = "colour"
    )
  )

  expect_equal(
    scale_colour_gradient_hgu(),
    ggplot2::scale_colour_gradient(
      low = hgu_dark(),
      high = hgu_light(),
      space = "Lab",
      na.value = mrc_grey(),
      guide = "colourbar",
      aesthetics = "colour"
    )
  )
})
