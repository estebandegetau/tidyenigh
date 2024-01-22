#### tidyinegi #################################################################
#'
#' @name 03_use_data.R
#'
#' @description
#' Make clean data available using `use_this::use_data()`. Run through 00_run.R
#'
#' @param .year A year.
#'
#' @author Esteban Degetau
#'
#' @created 2024-01-15
#'
#### Use data ##################################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

pacman::p_load(here, tidyverse, devtools, tidyinegi, tools)

#---- Load metadata ------------------------------------------------------------

year <- .year |> as.character()

load(here::here(
  "data-raw",
  "enigh",
  "data",
  "99_meta",
  year,
  "enigh_metadata.RData"
))

#---- Use data -----------------------------------------------------------------

for (data_set in enigh_metadata$data_set) {
  data_set_i <- data_set

  load_pre_clean_data(data_set_i, year = year)

  data_i <- get(data_set_i)

  name_i <- str_c(data_set_i, "_", year)

  assign(name_i, data_i)

  save(
    version = 3,
    list = name_i,
    file = here::here("data", str_c(name_i, ".RData")),
    compress = "xz"
  )

  rm(list = c(data_set_i, name_i))

}

# load_pre_clean_data("poblacion", year = year)
#
# poblacion_2022 <- poblacion
#
# use_data(poblacion_2022,
#          overwrite = T,
#          version = 3,
#          compress = "xz")
#
# tools::add_datalist(here::here(), force = T)
