
# UKRI Colours ------------------------------------------------------------

#' HEX Codes of the UKRI Blues
#'
#' Access the HEX codes of the blues used in the UKRI logo.
#'
#' @return The HEX codes of the UKRI blues.
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
