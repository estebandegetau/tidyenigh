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
    file <-
      file[which(!stringr::str_detect(file, pattern = "bitacora"))]

  }

  tidyinegi::read_inegi_csv(file,
                            na = c(" ", "", "NA", "&"),
                            ...)

}

is_types <- function(x) {

  matches_expr <- x |>
    stringr::str_detect("[:upper:] \\(") |>
    sum(na.rm = T)

  return(matches_expr == length(x))

}

#' Turn ENIGH numeric variables into numeric class
#'
#' @param data An ENIGH data set
#' @param data_set The name of the ENIGH data set
#' @param year Year of ENIGH survey
#'
#' @return An ENIGH data set with numeric classes
#' @export
handle_numeric <- function(data) {
  file <- list.files(
    here::here(
      "data-raw",
      "enigh",
      "data",
      "02_open",
      year,
      data_set,
      "diccionario_de_datos"
    ),
    full.names = T
  )


  # Column types
  # CSV mistake correction
  if(.year == 2018 & data_set == "poblacion") {

    types <- readr::read_csv(
      file,
      skip = 0,
      col_types = "c",
      col_names = F
    ) |>

      dplyr::filter(stringr::str_detect(X1, "^\\d+$")) |>
      tidyr::drop_na(X2) |>
      mutate(
        x4 = case_when(
          X1 == "81" ~ "N (3)",
          T ~ X4
        )
      ) |>
      dplyr::select(tidyselect::where(is_types)) |>
      dplyr::pull(1) |>
      stats::na.omit() |>
      stringr::str_extract("[:upper:]") |>
      stringr::str_to_lower()




  } else {

    types <- readr::read_csv(
      file,
      skip = 0,
      col_types = "c",
      col_names = F
    ) |>

      dplyr::filter(stringr::str_detect(X1, "^\\d+$")) |>
      tidyr::drop_na(X2) |>
      dplyr::select(tidyselect::where(is_types)) |>
      dplyr::pull(1) |>
      stats::na.omit() |>
      stringr::str_extract("[:upper:]") |>
      stringr::str_to_lower()

  }


  types <- dplyr::case_when(
    types %in% c("c", "n") ~ types
  ) |>
    stats::na.omit()

  if(.year == 2018 & data_set == "viviendas") {

    types[64] <- "c"

  }

  numeric_vars <- tibble::tibble(variable = names(data),
                                 type = types) |>
    dplyr::filter(type == "n") |>
    dplyr::pull(variable)

  data |>
    dplyr::mutate(
      dplyr::across(
        tidyselect::all_of(numeric_vars),
        as.numeric
    ))

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
    tidyr::unnest(value_labels) |>
    mutate(value = handle_factor_values(value), .by = catalogue)

  labels_string <- stringr::str_c(labels$catalogue, collapse = "|")


  # Recode as factors
  with_levels <- data |>
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

  labels_string <- stringr::str_c(labels$catalogue |> unique(), collapse = "|")

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
clean_data_set <- function(data, data_set, year) {
  data |>
    handle_numeric() |>
    set_enigh_val_labels(data_set) |>
    handle_single_values() |>
    handle_dichotomic() |>
    handle_expanded(data_set) |>
    set_enigh_var_labels(data_set)

}

# Debugging functions
debug_enigh <- function(name) {



  tibble(
    raw = raw |> pluck(name),
    preclean = clean |> pluck(name)
  ) |>
    filter(is.na(preclean) != is.na(raw)) |>
    filter(is.na(preclean)) |>
    distinct() |>
    arrange(raw) |>
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


for (data_set in enigh_metadata$data_set) {

  # Read raw data
  raw <- read_data_set(data_set)

  # Clean data
  clean <- raw |>
    clean_data_set(data_set)


  # Check  -----

  # Check same number of NA's as
  raw_nas <- raw |> nas(values_to = "raw")

  preclean_nas <- nas(clean, values_to = "clean")

  errors <- left_join(raw_nas, preclean_nas, by = "name") |>
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

  # Check every variable has format
  no_matches <- clean |>
    select(!c(where(has_problems),
              matches("numprod|est_dis|upm|anio_|nr_viv|id_|prob_anio|soc_|_dueno|ubica_geo"))) |>
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

  # Check same number of rows
  stopifnot(nrow(clean) == nrow(raw))

  # Check for same number of cols
  stopifnot(ncol(clean) == ncol(raw))

  # Save -----
  use_enigh(clean, data_set, year)

}


