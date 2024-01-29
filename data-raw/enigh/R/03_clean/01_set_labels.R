#### tidyinegi #################################################################
#'
#' @name 04_set_labels.R
#'
#' @description
#' Set variable and factor labels for all the ENIGH data sets.
#' Run through 00_run.R.
#'
#' @author Esteban Degetau
#'
#' @created 2024-01-10
#'
#### Set labels ################################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

pacman::p_load(here, tidyverse, tidyinegi, labelled)

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

#---- Functions ----------------------------------------------------------------

# Ships all the functions used specifically in 01_set_labels.R in `tidyenigh`

#' Read an ENIGH data set, given its name.
#'
#' This is a wrapper function of [read_inegi_csv()] specifically used to
#' read an ENIGH data set.
#'
#' @param data_set The name of the data set using quotes.
#' Must match one of the data sets in [INEGI's catalogue](https://www.inegi.org.mx/rnm/index.php/catalog/685)

#' @param ... Additional arguments passed to [read_inegi_csv()]
#'
#' @return A [tibble::tibble()] object.
#' @export
read_data_set <- function(data_set, ...) {
  path <- here::here("data-raw",
                     "enigh",
                     "data",
                     "02_open",
                     year,
                     data_set,
                     "conjunto_de_datos")

  file <- list.files(path, full.names = T)


  if (length(file) > 1) {
    file <- file[which(!stringr::str_detect(file, pattern = "bitacora"))]

  }

  tidyinegi::read_inegi_csv(file, na = c(" ", "", "NA", "&"), ...)

}






#' Set value labels to ENIGH data sets
#'
#' @param data A data set from ENIGH in [tibble::tibble()] format.
#' @param data_set The name of the data set using quotes.
#' Must match one of the data sets in [INEGI's catalogue](https://www.inegi.org.mx/rnm/index.php/catalog/685)
#'
#' @export
#'
#' @return A [tibble::tibble()] whose matching factor variables have been
#' labeled.
set_enigh_val_labels <- function(data, data_set) {
  ds_i <- data_set

    labels <- enigh_metadata |>
    dplyr::select(data_set, value_labs) |>
    dplyr::filter(data_set == ds_i) |>
    tidyr::unnest(value_labs) |>
    dplyr::select(!data_set) |>
    tidyr::unnest(value_labels)

  labels_string <- stringr::str_c(labels$catalogue, collapse = "|")


  # Recode as factors
  with_levels <- raw |>
    dplyr::mutate(
      dplyr::across(
        tidyselect::any_of(labels$catalogue),
        handle_factor_values
      ),
      dplyr::across(
      tidyselect::any_of(labels$catalogue),
      ~ factor(
        .x,
        labels = labels |>
          dplyr::filter(catalogue == dplyr::cur_column()) |>
          dplyr::pull(descripcion),
        levels = labels |>
          dplyr::filter(catalogue == dplyr::cur_column()) |>
          dplyr::pull(value)
      )
    )
    )

  return(with_levels)
}




#' Set ENIGH variable labels
#'
#' Leverages [labelled::set_variable_labels()].
#'
#' @inheritParams set_enigh_val_labels
#'
#' @return A [tibble::tibble()] whose matching variables have been
#' labeled.
#' @export
set_enigh_var_labels <- function(data, data_set) {

  ds_i <- data_set

  labels <- enigh_metadata |>
    dplyr::select(data_set, var_labs) |>
    dplyr::filter(data_set == ds_i) |>
    tidyr::unnest(var_labs) |>
    dplyr::select(!data_set)

  varLabels <- stats::setNames(as.list(labels$label), labels$var)

  with_varlabs <- data |>
    labelled::set_variable_labels(.labels = varLabels,
                                  .strict = F)

  return(with_varlabs)

}




#' Add factor labels to odd variables in ENIGH
#'
#' Some variables are not found by [set_enigh_val_labels()] because their names
#' don't match official documentation exactly. This function finds them using
#' [stringr::str_detect()].
#'
#' @inheritParams set_enigh_val_labels
#'
#' @return An ENIGH data set with additional factor labels.
#' @export
handle_expanded <- function(data, data_set) {
  ds_i <- data_set

  expanded <- data |>
    dplyr::select(
      !(
        tidyselect::matches("folio|numren|_hog|_id") |
          tidyselect::where(is.numeric) |
          tidyselect::where(is.factor) | tidyselect::where(is.logical)
      )
    ) |>
    names()

  labels <- enigh_metadata |>
    dplyr::select(data_set, value_labs) |>
    dplyr::filter(data_set == ds_i) |>
    tidyr::unnest(value_labs) |>
    dplyr::select(!data_set) |>
    tidyr::unnest(value_labels)

  labels_string <- stringr::str_c(labels$catalogue, collapse = "|")

  expanded_vars <- tibble::tibble(
    variable = expanded,
    catalogue = stringr::str_extract(variable, labels_string)
  ) |>
    left_join(labels, by = "catalogue", relationship = "many-to-many") |>
    tidyr::drop_na() |>
    dplyr::mutate(value = value |> as.numeric() |> as.character())

  with_levels <- data |>
    dplyr::mutate(dplyr::across(
      tidyselect::any_of(expanded_vars$variable),
      ~ factor(
        .x |> as.numeric() |> as.character(),
        labels = expanded_vars |>
          dplyr::filter(variable == dplyr::cur_column()) |>
          dplyr::pull(descripcion),
        levels = expanded_vars |>
          dplyr::filter(variable == dplyr::cur_column()) |>
          dplyr::pull(value)
      )
    ))

  return(with_levels)

}


#' Clean an ENIGH data set
#'
#' @param data An ENIGH data set in tibble format.
#' @param data_set A character string with the name of the data set.
#'
#' @return A cleaned ENIGH data set in tibble format.
#' @export
clean_data_set <- function(data, data_set) {
  data |>
    set_enigh_val_labels(data_set) |>
    handle_single_values() |>
    handle_dichotomic() |>
    handle_numeric() |>
    handle_expanded(data_set) |>
    set_enigh_var_labels(data_set)

}

debug_enigh <- function(name) {



  tibble(
    raw = raw |> pluck(name),
    preclean = pre_clean |> pluck(name)
  ) |>
    filter(is.na(preclean) != is.na(raw)) |>
    filter(is.na(preclean)) |>
    distinct() |>
    view()

}



missing_format <- function(data) {

  data |>
    dplyr::select(
      !tidyselect::matches("folio|numren|_hog|_id")
    ) |>
    dplyr::select(
      where(is.character)
    ) |>
    names()



}



#---- Set labels ---------------------------------------------------------------

usethis::use_directory(stringr::str_c("data-raw",
                                      "enigh",
                                      "data",
                                      "03_pre_clean",
                                      year, sep = "/"))




for (data_set in enigh_metadata$data_set) {

  raw <- read_data_set(data_set)

  pre_clean <- raw |>
    clean_data_set(data_set)


  # Check value labelling errors
  raw_nas <- raw |> nas(values_to = "raw")

  preclean_nas <- nas(pre_clean, values_to = "clean")

  errors <- left_join(raw_nas, preclean_nas) |>
    filter(raw != clean)

  if (nrow(errors) > 0) {
    errors |> print()

    stop(
      str_c(
        "Cleaning errors found in year ",
        year,
        " in data set ",
        data_set,
        ". See above for details on differences of NA's."
      )
    )
  }

  no_matches <- pre_clean |>
    select(!where(has_problems)) |>
    missing_format()

  if (length(no_matches) > 0) {
    no_matches |> print()
    stop(
      str_c(
        "Cleaning errors found in year ",
        year,
        " in data set ",
        data_set,
        ". See above for failed variable matches."
      )
    )
  }

  assign(data_set, pre_clean)

  # Save as assigned name .RData
  save(
    list = data_set,
    file = here::here(
      "data-raw",
      "enigh",
      "data",
      "03_pre_clean",
      year,
      paste0(data_set, ".RData")
    )
  )

  # Remove from environment
  rm(list = data_set)
  gc()

}


