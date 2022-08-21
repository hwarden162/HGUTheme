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
  "#54BBD2"
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
