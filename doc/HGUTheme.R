## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(HGUTheme)
library(tidyverse)

## -----------------------------------------------------------------------------
# MRC HGU Dark Blue
hgu_dark()
# MRC HGU Mid Blue
hgu_mid()
# MRC HGU Light Blue
hgu_light()

## -----------------------------------------------------------------------------
plot_data <- tibble(
  x = runif(100),
  y = x + rnorm(100, 0, 0.2)
)
plot_data

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  mapping = aes(x = x, y = y)
) +
  # Adding a y = x line
  geom_abline(
    intercept = 0, # Setting the intercept of the line to 0
    slope = 1, # Setting the slope of the line to 1
    linetype = 2, # Setting the line to be dashed
    size = 1.5, # Setting the line to be slightly thicker than default (default is 1)
    colour = "blue" # Setting the colour of the line to blue
  ) +
  # Adding a scatter plot
  geom_point(
    colour = "black" # Setting the colour of the points to black (black is the default)
  ) +
  # Adding linear regression line
  geom_smooth(
    method = "lm", # Setting the method to calculate the line to linear regression
    se = FALSE, # Removing the standard error bars
    colour = "red" # Setting the colour of the line to red
  ) +
  theme_bw() + # Adding a black and white theme
  # Adding labels to the plot
  labs(
    title = "Comparing X and Y", # Setting the title
    caption = "Blue dashed line shows 1:1 relationship" # Setting the caption
  )

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  mapping = aes(x = x, y = y)
) +
  # Adding a y = x line
  geom_abline(
    intercept = 0, # Setting the intercept of the line to 0
    slope = 1, # Setting the slope of the line to 1
    linetype = 2, # Setting the line to be dashed
    size = 1.5, # Setting the line to be slightly thicker than default (default is 1)
    colour = hgu_mid() # Setting the colour of the line to blue
  ) +
  # Adding a scatter plot
  geom_point(
    colour = hgu_dark() # Setting the colour of the points to black (black is the default)
  ) +
  # Adding linear regression line
  geom_smooth(
    method = "lm", # Setting the method to calculate the line to linear regression
    se = FALSE, # Removing the standard error bars
    colour = hgu_light() # Setting the colour of the line to red
  ) +
  theme_bw() + # Adding a black and white theme
  # Adding labels to the plot
  labs(
    title = "Comparing X and Y", # Setting the title
    caption = "Blue dashed line shows 1:1 relationship" # Setting the caption
  )

## ---- message = FALSE---------------------------------------------------------
plot_data <- tibble(
  class = c("A", "B", "C"),
  value = c(0.5, 0.3, 0.2)
)
plot_data

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  aes(x = class, y = value)
) +
  # Adding column plot
  geom_col() +
  theme_bw() # Adding a black and white theme

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  aes(x = class, y = value, fill = class)
) +
  # Adding column plot
  geom_col() +
  theme_bw() # Adding a black and white theme

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  aes(x = class, y = value, fill = class)
) +
  # Adding column plot
  geom_col() +
  theme_bw() + # Adding a black and white theme
  guides(fill = "none") + # Removing the legend for the fill colours
  scale_fill_hgu3() # Adding the MRC HGU colour theme

## ---- message = FALSE---------------------------------------------------------
plot_data <- tibble(
  class = c("A", "B"),
  value = c(0.6, 0.4)
)

ggplot(
  data = plot_data,
  aes(x = class, y = value, fill = class)
) +
  # Adding column plot
  geom_col() +
  theme_bw() + # Adding a black and white theme
  guides(fill = "none") + # Removing the legend for the fill colours
  scale_fill_hgu2() # Adding the MRC HGU colour theme

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  aes(x = class, y = value, fill = class)
) +
  # Adding column plot
  geom_col() +
  theme_bw() + # Adding a black and white theme
  guides(fill = "none") + # Removing the legend for the fill colours
  scale_fill_hgu2_mid_high() # Adding the MRC HGU colour theme

## ---- message = FALSE---------------------------------------------------------
plot_data <- tibble(
  x = runif(100),
  y = runif(100),
  colour = rep(c("A", "B"), 50)
)

ggplot(
  data = plot_data,
  mapping = aes(x = x, y = y, colour = colour)
) +
  geom_point() + # Creating scatter plot
  theme_classic() + # Adding the classic theme
  scale_colour_hgu2_mid_high() + # Adding the mid and light blue MRC HGU colour theme
  # Adding title
  labs(
    title = "An **Inappropriate** Use Of The Colour Palette"
  )

## ---- message = FALSE---------------------------------------------------------
plot_data <- tibble(
  x = rnorm(100000),
  y = rnorm(100000)
)

ggplot(
  data = plot_data,
  mapping = aes(x = x, y = y)
) +
  geom_hex(bins = 40) + # Adding density plot
  theme_classic() + # Setting the theme to classic
  scale_fill_gradient_hgu() # Adding the MRC HGU colour theme gradient

## ---- message = FALSE---------------------------------------------------------
ggplot(
  data = plot_data,
  mapping = aes(x = x, y = y)
) +
  geom_hex(bins = 40) + # Adding density plot
  theme_classic() + # Setting the theme to classic
  scale_fill_viridis_c() # Adding a colourblind friendly theme from viridis

