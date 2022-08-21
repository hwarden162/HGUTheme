#' Assign Discrete HGU 3 Colour Palette
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
