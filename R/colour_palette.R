#' Hex Value Of HGU Dark Blue
#'
#' @return A character string of the hex value of the HGU dark blue.
#' @export
#'
#' @examples
#' colour <- hgu_dark()
#' colour
hgu_dark <- function() {
  "#2D2E5F"
}

#' Hex Value Of HGU Mid Blue
#'
#' @return A character string of the hex value of the HGU mid blue.
#' @export
#'
#' @examples
#' colour <- hgu_mid()
#' colour
hgu_mid <- function() {
  "#3A88A9"
}

#' Hex Value Of HGU Light Blue
#'
#' @return A character string of the hex value of the HGU light blue.
#' @export
#'
#' @examples
#' colour <- hgu_light()
#' colour
hgu_light <- function() {
  "#00BAD2"
}

#' Hex Value Colour Palette
#'
#' @return A character vector of colours in the HGU logo.
#' @export
#'
#' @examples
#' colour_palette <- hgu_palette
#' colour_palette
hgu_palette <- function() {
  c(
    hgu_dark(),
    hgu_mid(),
    hgu_light()
  )
}

#' Generate The Palette Function For The HGU Blues
#'
#' @param colours Colours to interpolate; by default set as the HGU blues colour palette.
#' @param bias A positive number; Higher values give more widely spaced colours at the high end.
#' @param space A character string; Interpolation in RGB or CIE Lab colour space.
#' @param interpolate Use a spline or linear interpolation.
#' @param alpha Logical; Should alpha channel (opacity) values be returned?
#' @param ...
#'
#' @return A function to create discrete colour palettes
#'
#' @examples
#' palette_func <- hgu_palette_func()
#' palette_func(5)
hgu_palette_func_gen <- function(
  colours = hgu_palette(),
  bias = 1,
  space = "Lab",
  interpolate = "linear",
  alpha = FALSE,
  ...
) {
  grDevices::colorRampPalette(
    colors = colours,
    bias = bias,
    space = space,
    interpolate = interpolate,
    alpha = alpha
  )
}

#' Get Any Number Of Colours From The MRC HGU Blue Palette
#'
#' @param n The number of colours to return
#'
#' @return A character vecctor of colours
#' @export
#'
#' @examples
#' hgu_palette_n(10)
hgu_palette_n <- function(n) {
  hgu_palette_func <- hgu_palette_func_gen()
  hgu_palette_func(n)
}

#' Hex Value Of MRC Dark Blue
#'
#' @return A character string of the hex value of the MRC dark blue.
#' @export
#'
#' @examples
#' colour <- mrc_dark_blue()
#' colour
mrc_dark_blue <- function() {
  "#2E2C5E"
}

#' Hex Value Of MRC Darkish Blue
#'
#' @return A character string of the hex value of the MRC darkish blue.
#' @export
#'
#' @examples
#' colour <- mrc_darkish_blue()
#' colour
mrc_darkish_blue <- function() {
  "#102F83"
}

#' Hex Value Of MRC Mid Blue
#'
#' @return A character string of the hex value of the MRC mid blue.
#' @export
#'
#' @examples
#' colour <- mrc_mid_blue()
#' colour
mrc_mid_blue <- function() {
  "#305CEF"
}

#' Hex Value Of MRC Red
#'
#' @return A character string of the hex value of the MRC red.
#' @export
#'
#' @examples
#' colour <- mrc_red()
#' colour
mrc_red <- function() {
  "#D85941"
}

#' Hex Value Of MRC Green
#'
#' @return A character string of the hex value of the MRC green.
#' @export
#'
#' @examples
#' colour <- mrc_green()
#' colour
mrc_green <- function() {
  "#4AA789"
}

#' Hex Value Of MRC Yellow
#'
#' @return A character string of the hex value of the MRC yellow.
#' @export
#'
#' @examples
#' colour <- mrc_yellow()
#' colour
mrc_yellow <- function() {
  "#F1BE44"
}

#' Hex Value Of MRC Grey
#'
#' @return A character string of the hex value of the MRC grey.
#' @export
#'
#' @examples
#' colour <- mrc_grey()
#' colour
mrc_grey <- function() {
  "#DADADA"
}

#' Hex Value Of MRC Gray
#'
#' @return A character string of the hex value of the MRC gray.
#' @export
#'
#' @examples
#' colour <- mrc_gray()
#' colour
mrc_gray <- function() {
  mrc_grey()
}



