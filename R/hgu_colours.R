# Colour Gradient Code ----------------------------------------------------

#' Scale Colours With A Gradient
#'
#' @param ...
#' @param low
#' @param high
#' @param space
#' @param na.value
#' @param guide
#' @param aesthetics
#'
#' @return
#' @export
#'
#' @examples
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
