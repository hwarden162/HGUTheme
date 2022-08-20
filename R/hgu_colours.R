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
    low = hgu_dark(),
    high = hgu_light(),
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
#' library(tidyverse)
#' tibble(
#'   x = runif(100),
#'   y = runif(100)
#' ) %>%
#'   ggplot(aes(x = x, y = y, colour = x)) +
#'   geom_point() +
#'   scale_colour_gradient2_hgu(midpoint = 0.5) +
#'   theme_classic()
scale_colour_gradient2_hgu <- function(
    ...,
    low = hgu_dark(),
    mid = hgu_mid(),
    high = hgu_light(),
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

#' Assign HGU 3 Colour Palette
#'
#' @param ... Arguments to be passed on.
#' @param values A character vector of colour values to map data to.
#' @param aesthetics The aesthetic to apply this scale to.
#' @param breaks Values for beaks (see `ggplot2::scale_colour_manual` for details).
#' @param na.value Colour to be used for missing values.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @export
#'
#' @examples
#' library(tidyverse)
#' tibble(
#'   x = rnorm(60),
#'   y = rnorm(60),
#'   col = rep(c("a", "b", "c"), 20)
#' ) %>%
#'   ggplot(aes(x = x, y = y, colour = col)) +
#'   geom_point() +
#'   scale_colour_hgu_3col() +
#'   theme_classic()
scale_colour_hgu_3col <- function(
    ...,
    values = c(
      hgu_dark(),
      hgu_mid(),
      hgu_light()
    ),
    aesthetics = "colour",
    breaks = ggplot2::waiver(),
    na.value = "grey50"
) {
  ggplot2::scale_colour_manual(
    ...,
    values = values,
    aesthetics = aesthetics,
    breaks = breaks,
    na.value = na.value
  )
}
