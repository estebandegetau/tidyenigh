#### tidyinegi #################################################################
#'
#' @title 01_write_documenation.R
#'
#' @description Write documentation for the data in an ENIGH year.
#'              Run through 00_run.R
#'
#' @param year The year of the ENIGH data
#'
#' @author Esteban Degetau
#'
#' @created 2024-01-18
#'
#### Write documentation #######################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

pacman::p_load(here, tidyinegi, tidyverse)

#---- Setup --------------------------------------------------------------------

year <- .year |> as.character()

# Load metadata
load(here::here(
  "data-raw",
  "enigh",
  "data",
  "99_meta",
  year,
  "enigh_metadata.RData"
))

#---- Functions ----------------------------------------------------------------

my_nrow <- function(data_set) {

  data_set |> sym() |> eval() |> nrow()

}

my_ncol <- function(data_set) {

  data_set |> sym() |> eval() |> ncol()

}

#---- Write documentation ------------------------------------------------------

# Note this code writes documentation on the data sets in the data dir.
data_sets <- enigh_metadata |>
  select(data_set, description) |>
  mutate(
    data_set = str_c(data_set, "_", year),
    rows = map_dbl(data_set, my_nrow),
    cols = map_dbl(data_set, my_ncol)
  )

doc_name <- str_c("enigh_documentation_", year)

assign(doc_name, data_sets)


#---- Save ---------------------------------------------------------------------

# Save data into data dir
save(
  list = doc_name,
  file = here::here(
    "data",
    str_c(doc_name, ".rda")
  )
)

