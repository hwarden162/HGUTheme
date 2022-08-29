#' Colour Ggplot By MRC HGU Blue Colour Palette
#'
#' @param aesthetics The names of the aesthetics that this scale works with.
#' @param scale_name The name of the scale that should be used for error messages associated with this scale.
#' @param palette A palette function that when called with a single integer argument (the number of levels in the scale) returns the values that they should take
#' @param name The name of the scale. Used as the axis or legend title. If waiver(), the default, the name of the scale is taken from the first mapping used for that aesthetic. If NULL, the legend title will be omitted.
#' @param breaks Passed to `ggplot2::discrete_scale()`.
#' @param labels Passed to `ggplot2::discrete_scale()`.
#' @param limits Passed to `ggplot2::discrete_scale()`.
#' @param expand Passed to `ggplot2::discrete_scale()`.
#' @param na.translate Setting to `FALSE` will remove `NA` values from the colour theme.
#' @param na.value The colour of `NA` values
#' @param drop Should unused factor levels be omitted from the scale?
#' @param guide A function used to create a guide or its name.
#' @param position The position of the scale.
#' @param super The super class to use for the constructed scale.
#'
#' @return A layer that can be added to a ggplot2 object.
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(
#'   data = data.frame(x = runif(60), y = runif(60), fill = rep(c("A", "B", "C"), 20)),
#'   mapping = aes(x = x, y = y, fill = fill)
#' ) +
#'   geom_point() + theme_classic() +
#'   scale_fill_hgu()
scale_fill_hgu <- function(
    aesthetics = "fill",
    scale_name = "MRC_HGU_Blues",
    palette = hgu_palette_func_gen(),
    name = ggplot2::waiver(),
    breaks = ggplot2::waiver(),
    labels = ggplot2::waiver(),
    limits = NULL,
    expand = ggplot2::waiver(),
    na.translate = TRUE,
    na.value = mrc_grey(),
    drop = TRUE,
    guide = "legend",
    position = "left",
    super = ScaleDiscrete
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
#' library(ggplot2)
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
#' library(ggplot2)
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
#' library(ggplot2)
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
#' library(ggplot2)
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
#' library(ggplot2)
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
