
# UKRI Colours ------------------------------------------------------------

#' UKRI Blues Colour Scales (Continuous)
#'
#' A layer that can be added to `ggplot2` plots to change the colour aesthetic
#' to interpolate values from the blues used in the UKRI logo.
#'
#' @param ... Arguments passed to `ggplot2::scale_colour_gradient` or
#'     `ggplot2::scale_colour_gradient2`.
#' @param colours The colour palette to use for the colours of the plot. By
#'     default this is the blues from the UKRI logo. Setting this to `"purple"`
#'     will switch this to the UKRI purples.
#' @param midpoint The midpoint (in data value) of the diverging scale. Diverging
#'     scale only used if the midpoint is not equal to `NULL`, which is the default.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @family Layer
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(
#'   data.frame(
#'     x = runif(1500),
#'     y = runif(1500)
#'   )
#' ) +
#'   aes(x = x, y = y, colour = x) +
#'   geom_point() + theme_classic() +
#'   guides(colour = "none") +
#'   coord_equal() +
#'   scale_colour_ukri_c()
#'
#' ggplot(
#'   data.frame(
#'     x = runif(1500),
#'     y = runif(1500)
#'   )
#' ) +
#'   aes(x = x, y = y, colour = x) +
#'   geom_point() + theme_classic() +
#'   guides(colour = "none") +
#'   coord_equal() +
#'   scale_colour_ukri_c(
#'     colours = "purple"
#'   )
#'
scale_colour_ukri_c <- function(
    ...,
    colours = ukri_blues(),
    midpoint = NULL,
    space = "Lab",
    na.value = cruk_grey(),
    guide = "colourbar",
    aesthetics = "colour"
) {
  if (colours %in% c("purple", "purples")) {
    colours = ukri_purples()
  }
  ggplot2::scale_colour_gradientn(
    ...,
    colours = colours,
    space = space,
    na.value = na.value,
    guide = guide,
    aesthetics = aesthetics
  )
}

# CRUK Colours ------------------------------------------------------------

#' CRUK Logo Colour Scales (Continuous)
#'
#' A layer that can be added to `ggplot2` plots to change the colour aesthetic
#' to interpolate values from the blues used in the CRUK logo.
#'
#' @param ... Arguments passed to `ggplot2::scale_colour_gradient` or
#'     `ggplot2::scale_colour_gradient2`.
#' @param low Colour for the low end of the gradient.
#' @param mid Colour for the midpoit of the gradient.
#' @param high Colour for the high end of the gradient.
#' @param midpoint The midpoint (in data value) of the diverging scale. Diverging
#'     scale only used if the midpoint is not equal to `NULL`, which is the default.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @family Layer
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(
#'   data.frame(
#'     x = runif(1500),
#'     y = runif(1500)
#'   )
#' ) +
#'   aes(x = x, y = y, colour = x) +
#'   geom_point() + theme_classic() +
#'   guides(colour = "none") +
#'   coord_equal() +
#'   scale_colour_cruk_c()
#'
scale_colour_cruk_c <- function(
    ...,
    colours = cruk_colours(),
    midpoint = NULL,
    space = "Lab",
    na.value = cruk_grey(),
    guide = "colourbar",
    aesthetics = "colour"
) {
  ggplot2::scale_colour_gradientn(
    ...,
    colours = colours,
    space = space,
    na.value = na.value,
    guide = guide,
    aesthetics = aesthetics
  )
}

# CGEM Colours ------------------------------------------------------------

#' CGEM Logo Colour Scales (Continuous)
#'
#' A layer that can be added to `ggplot2` plots to change the colour aesthetic
#' to interpolate values from the colours used in the CGEM logo.
#'
#' @param ... Arguments passed to `ggplot2::scale_colour_gradient` or
#'     `ggplot2::scale_colour_gradient2`.
#' @param low Colour for the low end of the gradient.
#' @param mid Colour for the midpoit of the gradient.
#' @param high Colour for the high end of the gradient.
#' @param midpoint The midpoint (in data value) of the diverging scale. Diverging
#'     scale only used if the midpoint is not equal to `NULL`, which is the default.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @family Layer
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(
#'   data.frame(
#'     x = runif(1500),
#'     y = runif(1500)
#'   )
#' ) +
#'   aes(x = x, y = y, colour = x) +
#'   geom_point() + theme_classic() +
#'   guides(colour = "none") +
#'   coord_equal() +
#'   scale_colour_cgem_c()
#'
scale_colour_cgem_c <- function(
    ...,
    colours = cgem_colours(),
    midpoint = NULL,
    space = "Lab",
    na.value = cruk_grey(),
    guide = "colourbar",
    aesthetics = "colour"
) {
  ggplot2::scale_colour_gradientn(
    ...,
    colours = colours,
    space = space,
    na.value = na.value,
    guide = guide,
    aesthetics = aesthetics
  )
}

# EastBIO Colours ---------------------------------------------------------

#' EastBIO Colour Scales (Continuous)
#'
#' A layer that can be added to `ggplot2` plots to change the colour aesthetic
#' to interpolate values from the colours used in the EastBIO logo.
#'
#' @param ... Arguments passed to `ggplot2::scale_colour_gradient` or
#'     `ggplot2::scale_colour_gradient2`.
#' @param colours The colour palette to use for the colours of the plot. By
#'     default this is the colours from the EastBIO logo.
#' @param midpoint The midpoint (in data value) of the diverging scale. Diverging
#'     scale only used if the midpoint is not equal to `NULL`, which is the default.
#' @param space Colour space in which to calculate the gradient.
#' @param na.value Colour to be used for missing values.
#' @param guide Type of legend.
#' @param aesthetics The aesthetic to apply this scale to.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @family Layer
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(
#'   data.frame(
#'     x = runif(1500),
#'     y = runif(1500)
#'   )
#' ) +
#'   aes(x = x, y = y, colour = x) +
#'   geom_point() + theme_classic() +
#'   guides(colour = "none") +
#'   coord_equal() +
#'   scale_colour_ebio_c()
#'
scale_colour_ebio_c <- function(
    ...,
    colours = ebio_colours(),
    midpoint = NULL,
    space = "Lab",
    na.value = cruk_grey(),
    guide = "colourbar",
    aesthetics = "colour"
) {
  ggplot2::scale_colour_gradientn(
    ...,
    colours = colours,
    space = space,
    na.value = na.value,
    guide = guide,
    aesthetics = aesthetics
  )
}

