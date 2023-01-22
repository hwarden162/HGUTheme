test_that("multiplication works", {
  expect_equal(
    scale_colour_ukri(),
    ggplot2::discrete_scale(
      aesthetics = "colour",
      scale_name = "UKRI_Blues",
      palette = ukri_blues_palette_func_gen(),
      name = ggplot2::waiver(),
      breaks = ggplot2::waiver(),
      labels = ggplot2::waiver(),
      limits = NULL,
      expand = ggplot2::waiver(),
      na.translate = TRUE,
      na.value = "#DADADA",
      drop = TRUE,
      guide = "legend",
      position = "left",
      super = ggplot2::ScaleDiscrete
    )
  )
})
