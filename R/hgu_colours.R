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
#' library(tidyverse)
#' tibble(
#'   x = runif(100),
#'   y = runif(100)
#' ) %>%
#'   ggplot(aes(x = x, y = y, colour = x)) +
#'   geom_point() +
#'   scale_colour_gradient_hgu() +
#'   theme_classic()

scale_colour_gradient_hgu <- function(
    ...,
    low = "#2D2E5F",
    high = "#54BBD2",
    space = "Lab",
    na.value = "grey50",
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

scale_colour_gradient2_hgu <- function(
    ...,
    low = "#2D2E5F",
    mid = "#3A88A9",
    high = "#54BBD2",
    midpoint = 0,
    space = "Lab",
    na.value = "grey50",
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
