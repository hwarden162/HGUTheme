#' Assign Discrete HGU 3 Colour Fill Palette
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
#' ggplot(
#'   data = data.frame(class = c("A", "B", "C"), value = c(0.5,0.3,0.2)),
#'   mapping = aes(x = class, y = value, fill = class)
#' ) +
#'   geom_col() + theme_classic() +
#'   scale_fill_hgu3()
scale_fill_hgu3 <- function(
    ...,
    values = hgu_palette(),
    aesthetics = "fill",
    breaks = ggplot2::waiver(),
    na.value = mrc_grey()
) {
  ggplot2::scale_fill_manual(
    ...,
    values = values,
    aesthetics = aesthetics,
    breaks = breaks,
    na.value = na.value
  )
}

#' Assign Discrete HGU 2 Colour Fill Palette
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
#' ggplot(
#'   data = data.frame(class = c("A", "B"), value = c(0.6,0.4)),
#'   mapping = aes(x = class, y = value, fill = class)
#' ) +
#'   geom_col() + theme_classic() +
#'   scale_fill_hgu2_low_high()
scale_fill_hgu2_low_high <- function(
    ...,
    values = c(
      hgu_dark(),
      hgu_light()
    ),
    aesthetics = "fill",
    breaks = ggplot2::waiver(),
    na.value = mrc_grey()
) {
  ggplot2::scale_fill_manual(
    ...,
    values = values,
    aesthetics = aesthetics,
    breaks = breaks,
    na.value = na.value
  )
}

#' Assign Discrete HGU 2 Colour Fill Palette
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
#' ggplot(
#'   data = data.frame(class = c("A", "B"), value = c(0.6,0.4)),
#'   mapping = aes(x = class, y = value, fill = class)
#' ) +
#'   geom_col() + theme_classic() +
#'   scale_fill_hgu2_mid_high()
scale_fill_hgu2_mid_high <- function(
    ...,
    values = c(
      hgu_mid(),
      hgu_light()
    ),
    aesthetics = "fill",
    breaks = ggplot2::waiver(),
    na.value = mrc_grey()
) {
  ggplot2::scale_fill_manual(
    ...,
    values = values,
    aesthetics = aesthetics,
    breaks = breaks,
    na.value = na.value
  )
}

#' Assign Discrete HGU 2 Colour Fill Palette
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
#' ggplot(
#'   data = data.frame(class = c("A", "B"), value = c(0.6,0.4)),
#'   mapping = aes(x = class, y = value, fill = class)
#' ) +
#'   geom_col() + theme_classic() +
#'   scale_fill_hgu2_low_mid()
scale_fill_hgu2_low_mid <- function(
    ...,
    values = c(
      hgu_dark(),
      hgu_mid()
    ),
    aesthetics = "fill",
    breaks = ggplot2::waiver(),
    na.value = mrc_grey()
) {
  ggplot2::scale_fill_manual(
    ...,
    values = values,
    aesthetics = aesthetics,
    breaks = breaks,
    na.value = na.value
  )
}

#' Assign Discrete HGU 2 Colour Fill Palette
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
#' ggplot(
#'   data = data.frame(class = c("A", "B"), value = c(0.6,0.4)),
#'   mapping = aes(x = class, y = value, fill = class)
#' ) +
#'   geom_col() + theme_classic() +
#'   scale_fill_hgu2()
scale_fill_hgu2 <- function(
    ...,
    values = c(
      hgu_dark(),
      hgu_light()
    ),
    aesthetics = "fill",
    breaks = ggplot2::waiver(),
    na.value = mrc_grey()
) {
  ggplot2::scale_fill_manual(
    ...,
    values = values,
    aesthetics = aesthetics,
    breaks = breaks,
    na.value = na.value
  )
}
