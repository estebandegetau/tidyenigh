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

handle_factor_values <- function(x) {

  x |> as.character() |>
    as_factor() |>
    as.numeric()


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

  # ds_values <- data_set |>
  #   pull(cur_column()) |> unique() |> na.omit()
  #
  # ds_values |> as.numeric()


  labels <- enigh_metadata |>
    dplyr::select(data_set, value_labs) |>
    dplyr::filter(data_set == ds_i) |>
    tidyr::unnest(value_labs) |>
    dplyr::select(!data_set) |>
    tidyr::unnest(value_labels) |>
    mutate(value = handle_factor_values(value))

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




#' Is an ENIGH variable dichotomic?
#'
#' @param x A vector
#'
#' @return TRUE if `x` is dichotomic
is_dichotomic <- function(x) {
  if (is(x, "factor")) {
    return(FALSE)
  }

  vec_uniq <- x |>
    # Remove NA's
    na.omit() |>
    unique() |>
    sort()

  if (length(vec_uniq) > 2) {
    return(FALSE)
  }


  return(sum(vec_uniq == c("1", "2"), na.rm = T) == 2)

}

#' Adds factor labels to logical vectors in ENIGH data sets
#'
#' @param data An ENIGH data set in tibble format.
#'
#' @return A tibble with labelled logical variables.
#' @export
handle_dichotomic <- function(data) {
  data |>
    dplyr::mutate(dplyr::across(
      .cols = tidyselect::where(is_dichotomic) &
        !tidyselect::matches("sexo|_hog|folio|numren"),
      ~ factor(
        .x,
        labels = c("Sí", "No"),
        levels = c(1, 2)
      )
    ))

}


#' Is an ENIGH variable single valued?
#'
#' @param x A vector
#'
#' @return TRUE if `x` holds only one value, other than `NA`.
is_single_value <- function(x) {

  if(is(x, "factor")) return(FALSE)

  uniq_vals <- x |>
    na.omit() |>
    unique() |>
    length()

  return(uniq_vals == 1)

}



#' Turn ENIGH single valued variables into logical
#'
#' @inheritParams handle_dichotomic
#'
#' @return An ENIGH data set with logical variables
#' @export
handle_single_values <- function(data) {

  data |>
    dplyr::mutate(
      dplyr::across(
        tidyselect::where(is_single_value),
        ~ dplyr::case_when(
          !is.na(.x) ~ T
        )
      )
    )

}

#' Is an ENIGH variable numeric
#'
#' @inheritParams is_dichotomic
#'
#' @return TRUE if `x` is numeric
is_numeric <- function(x) {

  if(is(x, "factor")) {return(FALSE)}


  as_numeric <- x |>
    na.omit() |>
    as.numeric()

  if(any(is.na(as_numeric))) {return(FALSE)}

  max_vec <- x |>
    na.omit() |>
    as.numeric() |>
    max()

  vec_length <- x |>
    # Remove NA's
    na.omit() |>
    unique() |>
    length()

  return(max_vec > 10 & vec_length > 4)

}

is_numeric_quiet <- purrr::quietly(is_numeric)

#' Turn ENIGH numeric variables into numeric class
#'
#' @inheritParams handle_dichotomic
#'
#' @return An ENIGH data set with numeric classes
#' @export
handle_numeric <- function(data) {
  data |>
    dplyr::mutate(dplyr::across(
      tidyselect::where( ~ is_numeric_quiet(.x) |> pluck("result")) &
        !tidyselect::matches("folio|numren|_hog|_id"),
      as.numeric
    ))

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

nas <- function(data, ...) {
  data |>
    summarise(across(everything(),
                     ~ sum(is.na(.x)))) |>
    pivot_longer(everything(), ...)

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

clean_data_set <- function(data, data_set) {
  data |>
    set_enigh_val_labels(data_set) |>
    handle_dichotomic() |>
    handle_single_values() |>
    handle_numeric() |>
    handle_expanded(data_set) |>
    set_enigh_var_labels(data_set)

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

  if(nrow(errors) > 0) {

    errors |> print()

    stop("Errors found. See above.")
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


