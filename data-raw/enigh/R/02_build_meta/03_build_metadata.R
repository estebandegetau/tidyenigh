#### tidyinegi #################################################################
#'
#' @name 03_build_metadata.R
#'
#' @description Build metadata for ENIGH data.
#'              Includes labels for variables and values.
#'              Run through 00_run.R.
#'
#' @author Esteban Degetau
#'
#' @created 2024-01-12
#'
#### Build metadata ############################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

pacman::p_load(here, tidyverse, tidyinegi)

#---- Load data sets -----------------------------------------------------------

year <- .year |> as.character()

data_sets <- list_data_sets(year)

#' There is an error in 2018 indice.csv, as its delim is "  " rather than ",",
#' as in later years.

if (.year == 2018) {
  descriptions <- read_inegi_csv(
    here::here("data-raw",
               "enigh",
               "data",
               "02_open",
               year,
               "indice.csv"),
    skip = 2,
    delim = "\t"
  ) |>
    rename(data_set = 1,
           description = 2) |>
    mutate(data_set = clean_dataset_names(data_set))


} else{
  descriptions <- read_inegi_csv(here::here("data-raw",
                                            "enigh",
                                            "data",
                                            "02_open",
                                            year,
                                            "indice.csv"),
                                 skip = 2) |>
    rename(data_set = 1,
           description = 2) |>
    mutate(data_set = clean_dataset_names(data_set))
}


load(here(
  "data-raw",
  "enigh",
  "data",
  "99_meta",
  year,
  "enigh_catalogues.RData"
))

load(here(
  "data-raw",
  "enigh",
  "data",
  "99_meta",
  year,
  "enigh_var_labels.RData"
))

#---- Manual fixes -------------------------------------------------------------

#' In 2020, the .csv containing value labels for variable `tipoact` in set
#' `noagro` is faulty. It contains values that do not match the values in the
#' data set. This piece of code manually fixes this issue, assigning the real
#' values, gotten in the noagro/diccionario_de_datos/*.csv. Such values do match
#' those in the data set.

if (.year == 2020) {

  tipoact <- tibble(
    value = c(1, 2, 3) |> as.character(),
    descripcion = c("Industrial", "Compra-Venta", "Servicios")
  )

  pluck(enigh_catalogues, 2, 13, 2, 12) <- tipoact


}

#' Another error was found in 2018 `poblacion` set, in variable `norecib_11`,
#' as the `norecib` file has a faulty separation character

if(.year == 2018) {

  norecib <- pluck(enigh_catalogues, 2, 10, 2, 17) |>
    slice_head(n = 9) |>
    add_row(value = c(10, 11) |> as.character(),
            descripcion = c("Curandero, hierbero, comadrona, brujo, etcétera",
                            "Otro"))

  pluck(enigh_catalogues, 2, 10, 2, 17) <- norecib


}


#---- Build metadata -----------------------------------------------------------

enigh_metadata <- data_sets |>
  left_join(descriptions, by = "data_set") |>
  left_join(enigh_var_labels, by = "data_set") |>
  left_join(enigh_catalogues, by = "data_set")


#---- Save ---------------------------------------------------------------------


save(
  enigh_metadata,
  file = here(
    "data-raw",
    "enigh",
    "data",
    "99_meta",
    year,
    "enigh_metadata.RData"
  )
)

