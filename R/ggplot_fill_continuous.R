
# UKRI Colours ------------------------------------------------------------

#' UKRI Blues Fill Scales (Continuous)
#'
#' @param ... Arguments passed to `ggplot2::scale_colour_gradient` or
#'     `ggplot2::scale_colour_gradient2`.
#' @param low Colour for the low end of the gradient.
#' @param mid Colour for the midpoint of the gradient.
#' @param high Colour for the high end of the gradient.
#' @param midpoint The midpoint (in data value) of the diverging scale. Diverging
#'     scale only used if the midpoint is not equal to `NULL`, which is the default.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(
#'   data.frame(
#'     x = rnorm(10000),
#'     y = rnorm(10000)
#'   )
#' ) +
#'   aes(x = x, y = y) +
#'   geom_hex() + theme_classic() +
#'   guides(fill = "none") + coord_equal() +
#'   scale_fill_ukri_c()
#'
#' ggplot(
#'   data.frame(
#'     x = rnorm(10000),
#'     y = rnorm(10000)
#'   )
#' ) +
#'   aes(x = x, y = y) +
#'   geom_hex() + theme_classic() +
#'   guides(fill = "none") + coord_equal() +
#'   scale_fill_ukri_c(midpoint = 40)
#'
scale_fill_ukri_c <- function(
    ...,
    low = ukri_dark_blue(),
    mid = ukri_mid_blue(),
    high = ukri_light_blue(),
    midpoint = NULL,
    space = "Lab",
    na.value = cruk_grey(),
    guide = "colourbar",
    aesthetics = "fill"
) {
  if (is.null(midpoint)) {
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

# CRUK Colours ------------------------------------------------------------

#' CRUK Logo Fill Scales (Continuous)
#'
#' @param ... Arguments passed to `ggplot2::scale_colour_gradient` or
#'     `ggplot2::scale_colour_gradient2`.
#' @param low Colour for the low end of the gradient.
#' @param mid Colour for the midpoint of the gradient.
#' @param high Colour for the high end of the gradient.
#' @param midpoint The midpoint (in data value) of the diverging scale. Diverging
#'     scale only used if the midpoint is not equal to `NULL`, which is the default.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(
#'   data.frame(
#'     x = rnorm(10000),
#'     y = rnorm(10000)
#'   )
#' ) +
#'   aes(x = x, y = y) +
#'   geom_hex() + theme_classic() +
#'   guides(fill = "none") + coord_equal() +
#'   scale_fill_cruk_c()
#'
#' ggplot(
#'   data.frame(
#'     x = rnorm(10000),
#'     y = rnorm(10000)
#'   )
#' ) +
#'   aes(x = x, y = y) +
#'   geom_hex() + theme_classic() +
#'   guides(fill = "none") + coord_equal() +
#'   scale_fill_cruk_c(midpoint = 40)
#'
scale_fill_cruk_c <- function(
    ...,
    low = cruk_dark_blue(),
    mid = cruk_light_blue(),
    high = cruk_pink(),
    midpoint = NULL,
    space = "Lab",
    na.value = cruk_grey(),
    guide = "colourbar",
    aesthetics = "fill"
) {
  if (is.null(midpoint)) {
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