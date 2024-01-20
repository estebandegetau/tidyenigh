
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyenigh

<!-- badges: start -->

[![R-CMD-check](https://github.com/estebandegetau/tidyenigh/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/estebandegetau/tidyenigh/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Ships analysis-ready data from the
[ENIGH](https://www.inegi.org.mx/programas/enigh/nc/2022/) survey to the
user.

## Usage

Data is Lazy Loaded, so you can use it as soon as you load the package.

``` r
library(tidyenigh)

poblacion_2022$lenguaind |> 
  summary() |> 
  head(10)
  
```

Data includes variable and value labels

``` r
library(labelled)

gastoshogar_2022 |> 
  generate_dictionary(details = F) |> 
  head(10)
```

Official [INEGI](https://www.inegi.org.mx/) documentation is available
within the package

``` r
?hogares_2022
```

Check available data sets

``` r
enigh_documentation_2022
```

## Installation

You can install the development version of tidyenigh from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")

devtools::install_github("estebandegetau/tidyenigh")
```
