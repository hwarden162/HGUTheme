test_that("fill_discrete gives the correct ggproto object", {

  expect_equal(
    scale_fill_hgu3(),
    ggplot2::scale_fill_manual(
      values = hgu_palette(),
      aesthetics = "fill",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_fill_hgu2_low_high(),
    ggplot2::scale_fill_manual(
      values = c(
        hgu_dark(),
        hgu_light()
      ),
      aesthetics = "fill",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_fill_hgu2_low_mid(),
    ggplot2::scale_fill_manual(
      values = c(
        hgu_dark(),
        hgu_mid()
      ),
      aesthetics = "fill",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_fill_hgu2_mid_high(),
    ggplot2::scale_fill_manual(
      values = c(
        hgu_mid(),
        hgu_light()
      ),
      aesthetics = "fill",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

  expect_equal(
    scale_fill_hgu2(),
    ggplot2::scale_fill_manual(
      values = c(
        hgu_dark(),
        hgu_light()
      ),
      aesthetics = "fill",
      breaks = ggplot2::waiver(),
      na.value = mrc_grey()
    )
  )

})
