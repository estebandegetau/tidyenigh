#### tidyinegi #################################################################
#'
#' @name 02_rename_dirs.R
#'
#' @description
#' Rename the directories of the unzipped ENIGH files. Run through 00_run.R
#'
#' @describeIn `year` A year.
#'
#' @param year A year.
#'
#' @author Esteban Degetau
#'
#' @created 2024-01-09
#'
#### Rename directories ########################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

pacman::p_load(here, tidyverse, tidyinegi)


#---- Rename directories -------------------------------------------------------

year <- .year |> as.character()

path <- here::here(
  "data-raw",
  "enigh",
  "data",
  "02_open",
  year
  )

dirs <- tibble(
  raw = list.files(path, full.names = F)
) |>
  mutate(
    clean = clean_dataset_names(raw)
    )

# Rename directories
dirs |>
  mutate(
    old = raw,
    new = clean
    ) |>
  pwalk(
    ~ file.rename(
      from = here::here(path, ..1),
      to = here::here(path, ..2)
      )
    )

#---- Manually rename ----------------------------------------------------------

#' A typo is found in 2018, where the directory for `viviendas` reads `vivienda`.
#' This causes a problem getting its variable labels, as the function finds it
#' literally in the official documentation.


if (.year == 2018) {
  file.rename(from = here::here(path, "vivienda"),
              to = here::here(path, "viviendas"))
}
