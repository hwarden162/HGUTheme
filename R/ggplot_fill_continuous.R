scale_fill_ukri_c <- function(
    ...,
    low = ukri_dark_blue(),
    mid = hgu_mid(),
    high = hgu_light(),
    midpoint = NULL,
    space = "Lab",
    na.value = mrc_grey(),
    guide = "colourbar",
    aesthetics = "fill"
) {
  if (is_null(midpoint)) {
    ggplot2::scale_fill_gradient(
      ...,
      low = low,
      high = high,
      space = space,
      na.value = na.value,
      guide = guide,
      aesthetics = aesthetics
    )
  } else {
    ggplot2::scale_fill_gradient2(
      ...,
      low = low,
      mid = mid,
      high = high,
      midpoint = midpoint,
      space = space,
      na.value = na.value,
      guide = guide,
      aesthetics = aesthetics
    )
  }
}
