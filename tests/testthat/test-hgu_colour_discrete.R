test_that("colour_discrete functions return correct ggproto object", {

  expect_equal(
    scale_colour_hgu3(),
    ggplot2::scale_colour_manual(
      values = hgu_palette(),
      aesthetics = "colour",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()

    )
  )

  expect_equal(
    scale_colour_hgu2_low_high(),
    ggplot2::scale_colour_manual(
      values = c(
        hgu_dark(),
        hgu_light()
      ),
      aesthetics = "colour",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_colour_hgu2_low_mid(),
    ggplot2::scale_colour_manual(
      values = c(
        hgu_dark(),
        hgu_mid()
      ),
      aesthetics = "colour",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_colour_hgu2_mid_high(),
    ggplot2::scale_colour_manual(
      values = c(
        hgu_mid(),
        hgu_light()
      ),
      aesthetics = "colour",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_colour_hgu2(),
    ggplot2::scale_colour_manual(
      values = c(
        hgu_dark(),
        hgu_light()
      ),
      aesthetics = "colour",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  layer <- scale_colour_hgu()

  expect_equal(layer$aesthetics, "colour")
})
