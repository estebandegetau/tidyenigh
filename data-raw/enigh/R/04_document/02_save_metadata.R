#### tidyenigh #################################################################
#'
#' @title 02_save_metadata.R
#'
#' @description Save original metadata for the data in an ENIGH year, as it is
#'              required by INEGI's licence.
#'
#' @param year A character string with the year of the ENIGH survey.
#'
#' @author Esteban Degetau
#'
#' @created 2024-02-02
#'
#### Save metadata #############################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

pacman::p_load(here, tidyenigh, tidyverse)

#---- Setup --------------------------------------------------------------------

year <- .year |> as.character()

#---- Load metadata ------------------------------------------------------------

metadata_path <- here::here(
  "data-raw",
  "enigh",
  "data",
  "02_open",
  year,
  "poblacion",
  "metadatos"
) |> list.files(full.names = T)


file.copy(metadata_path, here::here("man", str_c("")), overwrite = T)
