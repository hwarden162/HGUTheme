test_that("fill_gradient returns the correct ggproto objects", {

  expect_equal(
    scale_fill_gradient_hgu(),
    ggplot2::scale_fill_gradient(
      low = hgu_dark(),
      high = hgu_light(),
      space = "Lab",
      na.value = mrc_grey(),
      guide = "colourbar",
      aesthetics = "fill"
    )
  )

  expect_equal(
    scale_fill_gradient2_hgu(),
    ggplot2::scale_fill_gradient2(
      low = hgu_dark(),
      mid = hgu_mid(),
      high = hgu_light(),
      midpoint = 0,
      space = "Lab",
      na.value = mrc_grey(),
      guide = "colourbar",
      aesthetics = "fill"
    )
  )

})
