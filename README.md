
<!-- README.md is generated from README.Rmd. Please edit that file -->

# HGUTheme

<!-- badges: start -->

[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Codecov test
coverage](https://codecov.io/gh/hwarden162/HGUTheme/branch/main/graph/badge.svg)](https://app.codecov.io/gh/hwarden162/HGUTheme?branch=main)
[![pages-build-deployment](https://github.com/hwarden162/HGUTheme/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/hwarden162/HGUTheme/actions/workflows/pages/pages-build-deployment)
<!-- badges: end -->

Unofficial ggplot2 themes for using the colour palette of the MRC HGU
logo.

The MRC Human Genetics Unit Powerpoint template comes with a preset
colour theme that controls the colours of most elements of the
presentation. When creating a plot in `ggplot2` it is possible to set
the colour of various parts of various elements and `HGUTheme` contains
multiple functions to help you do so. It is not always appropriate to
use these colours (as discussed in ‘Get started’) but where it is
appropriate `HGUTheme` allows you to easily create a consistent colour
theme for your presentations.

**These palettes were created to align with the colour schemes of the
MRC and HGU palettes. However, the original palettes were not designed
for use on plots and so please consider the effect of your colour
choices for colourblind people when constructing your plots.**

## Installation

You can install the development version of HGUTheme from
[GitHub](https://github.com/hwarden162/HGUTheme) with:

``` r
# install.packages("devtools")
devtools::install_github("hwarden162/HGUTheme")
```

## Quick Use Guide

Each colour has been assigned a function that will return a character
string with the corresponding HEX code. For example:

``` r
hgu_dark()
#> [1] "#2D2E5F"
```

These are then grouped into palettes that are also stored in functions:

``` r
hgu_palette()
#> [1] "#2D2E5F" "#3A88A9" "#00BAD2"
```

For users’ convenience, various functions have been written that set
these colour values

``` r
plot_data <- tibble(
  class = c("A", "B", "C"),
  value = c(0.5,0.3,0.2)
)
plot_data
#> # A tibble: 3 × 2
#>   class value
#>   <chr> <dbl>
#> 1 A       0.5
#> 2 B       0.3
#> 3 C       0.2
```

A basic plot of this data would look like this

``` r
plot_data %>%
  ggplot(aes(x = class, y = value, fill = class)) +
  geom_col() +
  theme_classic()
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

A layer can be added to change the fill of the boxes to match that of
the MRC HGU powerpoint theme

``` r
plot_data %>%
  ggplot(aes(x = class, y = value, fill = class)) +
  geom_col() +
  theme_classic() +
  scale_fill_hgu()
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

## Colour Codes

Taken from the MRC HGU Powerpoint template:

-   ![\#2D2E5F](https://via.placeholder.com/15/2D2E5F/2D2E5F.png) Dark
    blue: `#2D2E5F`
-   ![\#3A88A9](https://via.placeholder.com/15/3A88A9/3A88A9.png) Mid
    blue: `#3A88A9`
-   ![\#00BAD2](https://via.placeholder.com/15/00BAD2/00BAD2) Light
    blue: `#00BAD2`

Taken from the MRC Powerpoint template:

-   ![\#2E2C5E](https://via.placeholder.com/15/2E2C5E/2E2C5E) Dark Blue:
    `#2E2C5E`
-   ![\#102F83](https://via.placeholder.com/15/102F83/102F83.png)
    Darkish blue: `#102F83`
-   ![\#305CEF](https://via.placeholder.com/15/305CEF/305CEF.png) Mid
    blue: `#305CEF`
-   ![\#D85941](https://via.placeholder.com/15/D85941/D85941.png) Red:
    `#D85941`
-   ![\#4AA789](https://via.placeholder.com/15/4AA789/4AA789.png) Green:
    `#4AA789`
-   ![\#F1BE44](https://via.placeholder.com/15/F1BE44/F1BE44.png)
    Yellow: `#F1BE44`
-   ![\#DADADA](https://via.placeholder.com/15/DADADA/DADADA.png) Gray:
    `#DADADA`
