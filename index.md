
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

An *unofficial* package to help create plots that align with the colour
themes of the the MRC Human Genetics Unit and other units at the
Institute of Genetics and Cancer, Edinburgh. There are functions to
return the colours used in each respective theme, return palettes that
interpolate between the colours in each respective theme and layers that
can be added to `ggplot2` plots to automatically scale colour and fill
aesthetics.

**These palettes were created to align with the colour schemes of the
respective institutions which themselves were not designed for use on
plots. Therefore, please be thoughtful with your use of these colours
and how they may effect colourblind people in interpretting the plots.
More information on making your scientific plots colourblind friendly
can be found in the [Colour Blind Friendly
Plotting](https://hwarden162.github.io/HGUTheme/articles/ColourBlind.html)
section.**

![](./man/figures/logo_plots.png)

## Installation

You can install the development version of HGUTheme from
[GitHub](https://github.com/hwarden162/HGUTheme) with:

``` r
# install.packages("devtools")
devtools::install_github("hwarden162/HGUTheme")
```

## Colour Codes

### UKRI Colours

-   ![\#2D2E5F](https://via.placeholder.com/15/2D2E5F/2D2E5F.png)
    `ukri_dark_blue()` - `#2D2E5F`
-   ![\#3A88A9](https://via.placeholder.com/15/3A88A9/3A88A9.png)
    `ukri_mid_blue()` - `#3A88A9`
-   ![\#00BAD2](https://via.placeholder.com/15/00BAD2/00BAD2.png)
    `ukri_light_blue()` - `#00BAD2`
-   ![\#2D2E5F](https://via.placeholder.com/15/2D2E5F/2D2E5F.png)
    `ukri_dark_purple()` - `#2D2E5F`
-   ![\#874598](https://via.placeholder.com/15/874598/874598.png)
    `ukri_mid_purple()` - `#874598`
-   ![\#D263E5](https://via.placeholder.com/15/D263E5/D263E5.png)
    `ukri_light_purple()` - `#D263E5`
-   ![\#F2BC44](https://via.placeholder.com/15/F2BC44/F2BC44.png)
    `ukri_orange()` - `#F2BC44`

### CRUK Colours

-   ![\#2E0188](https://via.placeholder.com/15/2E0188/2E0188.png)
    `cruk_dark_blue()` - `#2E0188`
-   ![\#00B6EA](https://via.placeholder.com/15/00B6EA/00B6EA.png)
    `cruk_light_blue()` - `#00B6EA`
-   ![\#EE0286](https://via.placeholder.com/15/EE0286/EE0286.png)
    `cruk_pink()` - `#EE0286`
-   ![\#C5C5C5](https://via.placeholder.com/15/C5C5C5/C5C5C5.png)
    `cruk_grey()` - `#C5C5C5`

### CGEM Colours

-   ![\#0E2E5A](https://via.placeholder.com/15/0E2E5A/0E2E5A.png)
    `cgem_blue()` - `#0E2E5A`
-   ![\#B62641](https://via.placeholder.com/15/B62641/B62641.png)
    `cgem_red()` - `#B62641`

### EastBIO Colours

-   ![\#284E96](https://via.placeholder.com/15/284E96/284E96.png)
    `ebio_blue()` - `#284E96`
-   ![\#386C4D](https://via.placeholder.com/15/386C4D/386C4D.png)
    `ebio_green()` - `#386C4D`
-   ![\#E07E38](https://via.placeholder.com/15/E07E38/E07E38.png)
    `ebio_orange()` - `#E07E38`
-   ![\#BB2D4A](https://via.placeholder.com/15/BB2D4A/BB2D4A.png)
    `ebio_red()` - `#BB2D4A`
