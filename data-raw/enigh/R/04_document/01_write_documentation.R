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

pacman::p_load(here, tidyinegi)

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

# List data sets in pre clean dir
pre_clean_path <- here::here(
  "data-raw",
  "enigh",
  "data",
  "03_pre_clean",
  year
)

# Prep data sets
data_sets <- tibble(data_set = list.files(pre_clean_path)) |>
  mutate(
    data_set = str_remove(data_set, ".RData"),
    path = str_c(pre_clean_path, "/", data_set, ".RData")
  ) |>
  left_join(enigh_metadata, by = "data_set") |>
  select(data_set, path, description, var_labs, value_labs)

#---- Functions ----------------------------------------------------------------

rows_n_cols <- function(data_set) {

  load(str_c(pre_clean_path,"/" , data_set, ".RData"))

  data_i <- get(data_set)

  metadata <- tibble(
    rows = nrow(data_i),
    cols = ncol(data_i)
  )

  rm(list = data_set)

  return(metadata)

}

#---- Load data sets -----------------------------------------------------------

data_sets <- data_sets |>
    mutate(
      metadata = map(data_set, rows_n_cols)
    ) |>
  unnest(metadata)


#---- Save ---------------------------------------------------------------------


doc_name <- str_c("enigh_documentation_", year)

assign(doc_name, data_sets)



# Save data into data dir
save(
  list = doc_name,
  file = here::here(
    "data",
    str_c(doc_name, ".RData")
  ),
  version = 3
)

