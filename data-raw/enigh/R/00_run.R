#### tidyinegi #################################################################
#'
#' @name 00_run.R
#'
#' @description
#' Run all scripts in the data-raw folder to transform raw ENIGH data from
#' INEGI into analysis-ready data sets.
#'
#' @author Esteban Degetau
#'
#' @created 2024-01-09
#'
#### Run #######################################################################

rm(list = ls())
gc()

#---- Libraries ----------------------------------------------------------------

if (!rlang::is_installed("tidyinegi")) {

  remotes::install_github("estebandegetau/tidyinegi")


}

if (!rlang::is_installed("pacman")) {

  install.packages("pacman")


}

pacman::p_load(here, devtools)

#---- Setup --------------------------------------------------------------------

.year <- 2018

# Open data
._01_unzip               <- 0
._02_rename_dirs         <- 0

# Build meta data
._01_get_var_labs        <- 0
._02_get_val_labs        <- 0
._03_build_metadata      <- 1

# Clean
._01_set_labels          <- 1
._02_check_data_sets     <- 1
._03_use_data            <- 1

# Document data
._01_write_documentation <- 1

#---- Run ----------------------------------------------------------------------

# 1. Open data -----------------------------------------------------------------

# 1.1 Unzip data
if (._01_unzip) {
  source(here::here("data-raw", "enigh", "R", "01_open_data", "01_unzip.R"),
         encoding = "UTF-8")
}

# 1.2 Rename directories
if (._02_rename_dirs) {
  source(
    here::here("data-raw", "enigh",  "R", "01_open_data", "02_rename_dirs.R"),
    encoding = "UTF-8"
  )
}

# 2. Build meta data -----------------------------------------------------------

# 2.1 Get variable labels
if (._01_get_var_labs) {
  source(
    here::here(
      "data-raw",
      "enigh",
      "R",
      "02_build_meta",
      "01_get_variable_labels.R"
    ),
    encoding = "UTF-8"
  )
}

# 2.2 Get value labels
if (._02_get_val_labs) {
  source(
    here::here(
      "data-raw",
      "enigh",
      "R",
      "02_build_meta",
      "02_get_value_labels.R"
    ),
    encoding = "UTF-8"
  )
}

# 2.3 Build metadata
if (._03_build_metadata) {
  source(
    here::here(
      "data-raw",
      "enigh",
      "R",
      "02_build_meta",
      "03_build_metadata.R"
    ),
    encoding = "UTF-8"
  )
}

# 3. Clean ---------------------------------------------------------------------

# 3.1 Set labels
if (._01_set_labels) {
  source(
    here::here("data-raw", "enigh", "R", "03_clean", "01_set_labels.R"),
    encoding = "UTF-8"
  )
}

# 3.2 Check data sets
if (._02_check_data_sets) {
  source(
    here::here("data-raw", "enigh", "R", "03_clean", "02_check_data_sets.R"),
    encoding = "UTF-8"
  )
}

# 3.3 Use data
if (._03_use_data) {
  source(
    here::here("data-raw", "enigh", "R", "03_clean", "03_use_data.R"),
    encoding = "UTF-8"
  )
}

# 4. Document data -------------------------------------------------------------

# 4.1 Document data
if (._01_write_documentation) {
  source(
    here::here(
      "data-raw",
      "enigh",
      "R",
      "04_document",
      "01_write_documentation.R"
    ),
    encoding = "UTF-8"
  )
}

