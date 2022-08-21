# Colour Gradient Code ----------------------------------------------------

#' Scale Colours With A Gradient
#'
#' @param ... Arguments to be passed on.
#' @param low Colour for the low end of the gradient.
#' @param high Colour for the high end of the gradient.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @export
#'
#' @examples
#' ggplot(
#'   data = data.frame(x = runif(100), y = runif(100)),
#'   mapping = aes(x = x, y = y, colour = x)
#' ) +
#'   geom_point() + theme_classic() +
#'   scale_colour_gradient_hgu()
scale_colour_gradient_hgu <- function(
    ...,
    low = hgu_dark(),
    high = hgu_light(),
    space = "Lab",
    na.value = mrc_grey(),
    guide = "colourbar",
    aesthetics = "colour"
) {
  ggplot2::scale_colour_gradient(
    ...,
    low = low,
    high = high,
    space = space,
    na.value = na.value,
    guide = guide,
    aesthetics = aesthetics
  )
}

#' Scale Colours With A Gradient
#'
#' @param ... Arguments to be passed on.
#' @param low Colour for the low end of the gradient.
#' @param mid Colour for the midpoit of the gradient.
#' @param high Colour for the high end of the gradient.
#' @param midpoint The midpoint (in data value) of the diverging scale. Defaults to 0.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @export
#'
#' @examples
#' ggplot(
#'   data = data.frame(x = runif(100), y = runif(100)),
#'   mapping = aes(x = x, y = y, colour = x)
#' ) +
#'   geom_point() + theme_classic() +
#'   scale_colour_gradient2_hgu(midpoint = 0.5)
scale_colour_gradient2_hgu <- function(
    ...,
    low = hgu_dark(),
    mid = hgu_mid(),
    high = hgu_light(),
    midpoint = 0,
    space = "Lab",
    na.value = mrc_grey(),
    guide = "colourbar",
    aesthetics = "colour"
) {
  ggplot2::scale_colour_gradient2(
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
