
# UKRI Colours ------------------------------------------------------------

#' HEX Codes of the UKRI Blues
#'
#' Access the HEX codes of the blues used in the UKRI logo.
#'
#' @return The HEX codes of the UKRI blues.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:3,
#'   col = ukri_blues()
#' )
#'
ukri_blues <- function() {
  c(
    ukri_dark_blue(),
    ukri_mid_blue(),
    ukri_light_blue()
  )
}

#' Palette Generating Function For UKRI Blues
#'
#' @param colours The colours to interpolate between. By default these are set
#'     to the blues from the UKRI logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A function to generate palettes that interpolate the UKRI blues.
#' @family Helper Functions
#'
ukri_blues_palette_func_gen <- function(
    colours = ukri_blues(),
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

#' Interpolated HEX Codes of the UKRI Blues
#'
#' Access HEX codes of blues that have been interpolated between those used in
#' the UKRI logo.
#'
#' @param n The number of colours to return.
#' @param colours The colours to interpolate between. By default these are set
#'     to the blues from the UKRI logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A character vector of colours iterpolated from the blues in the UKRI
#'     logo.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:5,
#'   col = ukri_blues_n(5)
#' )
#'
ukri_blues_n <- function(
    n,
    colours = ukri_blues(),
    bias = 1,
    space = "Lab",
    interpolate = "linear",
    alpha = FALSE,
    ...
) {
  func_gen <- ukri_blues_palette_func_gen(
    colors = colours,
    bias = bias,
    space = space,
    interpolate = interpolate,
    alpha = alpha
  )
  func_gen(n)
}

#' HEX Codes of the UKRI Purples
#'
#' Access the HEX codes of the purples used in the UKRI logo.
#'
#' @return The HEX codes of the UKRI purples.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:3,
#'   col = ukri_purples()
#' )
#'
ukri_purples <- function() {
  c(
    ukri_dark_purple(),
    ukri_mid_purple(),
    ukri_light_purple()
  )
}

#' Palette Generating Function For UKRI Purples
#'
#' @param colours The colours to interpolate between. By default these are set
#'     to the purples from the UKRI logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A function to generate palettes that interpolate the UKRI blues.
#' @family Helper Functions
#'
ukri_purples_palette_func_gen <- function(
    colours = ukri_burples(),
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

#' Interpolated HEX Codes of the UKRI Purples
#'
#' Access HEX codes of purples that have been interpolated between those used in
#' the UKRI logo.
#'
#' @param n The number of colours to return.
#' @param colours The colours to interpolate between. By default these are set
#'     to the purples from the UKRI logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A character vector of colours iterpolated from the blues in the UKRI
#'     logo.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:5,
#'   col = ukri_purples_n(5)
#' )
#'
ukri_purples_n <- function(
    n,
    colours = ukri_purples(),
    bias = 1,
    space = "Lab",
    interpolate = "linear",
    alpha = FALSE,
    ...
) {
  func_gen <- ukri_purples_palette_func_gen(
    colors = colours,
    bias = bias,
    space = space,
    interpolate = interpolate,
    alpha = alpha
  )
  func_gen(n)
}

# CRUK Colours ------------------------------------------------------------

#' HEX Codes of the CRUK Colours
#'
#' Access the HEX codes of the colours used in the CRUK logo.
#'
#' @return The HEX codes of the CRUK colours.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:3,
#'   col = cruk_colours()
#' )
#'
cruk_colours <- function() {
  c(
    cruk_dark_blue(),
    cruk_light_blue(),
    cruk_pink()
  )
}

#' Palette Generating Function For CRUK Colours
#'
#' @param colours The colours to interpolate between. By default these are set
#'     to the blues from the UKRI logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A function to generate palettes that interpolate the CRUK colours.
#' @family Helper Functions
#'
cruk_colours_palette_func_gen <- function(
    colours = cruk_colours(),
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

#' Interpolated HEX Codes of the CRUK Colours
#'
#' Access HEX codes of colours that have been interpolated between those used in
#' the CRUK logo.
#'
#' @param n The number of colours to return.
#' @param colours The colours to interpolate between. By default these are set
#'     to the colours from the CRUK logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A character vector of colours iterpolated from the colours in the CRUK
#'     logo.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:5,
#'   col = cruk_colours_n(5)
#' )
#'
cruk_colours_n <- function(
    n,
    colours = cruk_colours(),
    bias = 1,
    space = "Lab",
    interpolate = "linear",
    alpha = FALSE,
    ...
) {
  func_gen <- cruk_colours_palette_func_gen(
    colors = colours,
    bias = bias,
    space = space,
    interpolate = interpolate,
    alpha = alpha
  )
  func_gen(n)
}

# CGEM Colours ------------------------------------------------------------

#' HEX Codes of the CGEM Colours
#'
#' Access the HEX codes of the colours used in the CGEM logo.
#'
#' @return The HEX codes of the CGEM colours.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:2,
#'   col = cgem_colours()
#' )
#'
cgem_colours <- function() {
  c(
    cgem_blue(),
    cgem_red()
  )
}

#' Palette Generating Function For CGEM Colours
#'
#' @param colours The colours to interpolate between. By default these are set
#'     to the blues from the UKRI logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A function to generate palettes that interpolate the CRUK colours.
#' @family Helper Functions
#'
cgem_colours_palette_func_gen <- function(
    colours = cgem_colours(),
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

#' Interpolated HEX Codes of the CGEM Colours
#'
#' Access HEX codes of colours that have been interpolated between those used in
#' the CGEM logo.
#'
#' @param n The number of colours to return.
#' @param colours The colours to interpolate between. By default these are set
#'     to the colours from the CGEM logo.
#' @param bias A positive number. Higher values will give more widely spaced
#'     colours at the higher end of the colour spectrum.
#' @param space A character string indicating whether the colours should be
#'     interpolated in RGB or CIE Lab colour spaces.
#' @param interpolate A character indicating whether a spline or linear
#'     interpolation method should be used.
#' @param alpha A logical value indicating whether an alpha channel should be
#'     returned.
#' @param ... Arguments to be passed to `grDevices::colorRampPalette`.
#'
#' @return A character vector of colours iterpolated from the colours in the CGEM
#'     logo.
#' @family Palettes
#' @export
#'
#' @examples
#'
#' barplot(
#'   1:5,
#'   col = cgem_colours_n(5)
#' )
#'
cgem_colours_n <- function(
    n,
    colours = cgem_colours(),
    bias = 1,
    space = "Lab",
    interpolate = "linear",
    alpha = FALSE,
    ...
) {
  func_gen <- cgem_colours_palette_func_gen(
    colors = colours,
    bias = bias,
    space = space,
    interpolate = interpolate,
    alpha = alpha
  )
  func_gen(n)
}
