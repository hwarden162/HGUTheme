
# UKRI Colours ------------------------------------------------------------

#' UKRI Blues Colour Scales (Discrete)
#'
#' A layer that can be added to `ggplot2` plots to change the colour aesthetic
#' to interpolate values from the blues used in the UKRI logo.
#'
#' @param aesthetics The names of the aesthetics that this scale works with.
#' @param scale_name The name of the scale that should be used for error
#'     messages associated with this scale.
#' @param palette A palette function that when called with a single integer
#'     argument (the number of levels in the scale) returns the values that
#'     they should take.
#' @param name The name of the scale. Used as the axis or legend title. If
#'     `waiver()`, the default, the name of the scale is taken from the first
#'     mapping used for that aesthetic. If NULL, the legend title will be omitted.
#' @param breaks Passed to `ggplot2::discrete_scale()`.
#' @param labels Passed to `ggplot2::discrete_scale()`.
#' @param limits Passed to `ggplot2::discrete_scale()`.
#' @param expand Passed to `ggplot2::discrete_scale()`.
#' @param na.translate Setting to `FALSE` will remove `NA` values from the
#'     colour theme.
#' @param na.value The colour of `NA` values
#' @param drop Should unused factor levels be omitted from the scale?
#' @param guide A function used to create a guide or its name.
#' @param position The position of the scale.
#' @param super The super class to use for the constructed scale.
#'
#' @return A layer that can be added to a `ggplot2` object.
#' @export
#'
#' @examples
#'
#'   library(ggplot2)
#'   ggplot(
#'     data = data.frame(x = runif(60), y = runif(60), colour = rep(c("A", "B", "C"), 20)),
#'     mapping = aes(x = x, y = y, colour = colour)
#'   ) +
#'     geom_point() + theme_classic() +
#'     scale_colour_ukri_d()
#'
scale_colour_ukri_d <- function(
    aesthetics = "colour",
    scale_name = "UKRI_Blues",
    palette = ukri_blues_palette_func_gen(),
    name = ggplot2::waiver(),
    breaks = ggplot2::waiver(),
    labels = ggplot2::waiver(),
    limits = NULL,
    expand = ggplot2::waiver(),
    na.translate = TRUE,
    na.value = "#DADADA",
    drop = TRUE,
    guide = "legend",
    position = "left",
    super = ggplot2::ScaleDiscrete
) {
  ggplot2::discrete_scale(
    aesthetics = aesthetics,
    scale_name = scale_name,
    palette = palette,
    name = name,
    breaks = breaks,
    labels = labels,
    limits = limits,
    expand = expand,
    na.translate = na.translate,
    na.value = na.value,
    drop = drop,
    guide = guide,
    position = position,
    super = super
  )
}
