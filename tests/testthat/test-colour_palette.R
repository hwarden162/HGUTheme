test_that("correct colours are returned", {
  expect_equal(hgu_dark(), "#2D2E5F")
  expect_equal(hgu_mid(), "#3A88A9")
  expect_equal(hgu_light(), "#00BAD2")
  expect_equal(mrc_dark_blue(), "#2E2C5E")
  expect_equal(mrc_darkish_blue(), "#102F83")
  expect_equal(mrc_mid_blue(), "#305CEF")
  expect_equal(mrc_red(), "#D85941")
  expect_equal(mrc_green(), "#4AA789")
  expect_equal(mrc_yellow(), "#F1BE44")
  expect_equal(mrc_grey(), "#DADADA")
  expect_equal(mrc_gray(), "#DADADA")
})

test_that("correct colour palettes are returned", {
  expect_equal(hgu_palette(), c(hgu_dark(), hgu_mid(), hgu_light()))
})
