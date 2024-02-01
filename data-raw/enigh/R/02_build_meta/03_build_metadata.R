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

#---- Functions ----------------------------------------------------------------

filter_variables <- function(data) {

  data |>
    unnest(value_labs) |>
    mutate(cols = map_int(value_labels, ncol)) |>
    filter(cols == 2) |>
    select(-cols) |>
    nest(value_labs = !data_set)


}

remove_catalogue_cols <- function(data) {

  data |>
    unnest(value_labs) |>
    unnest(value_labels) |>
    select(data_set, catalogue, value, descripcion) |>
    nest(value_labels = !c(data_set, catalogue)) |>
    nest(value_labs = !data_set)


}


clean_variable_tag <- function(data,
                               old_tag,
                               new_tag,

                               data_set = "all") {
  data_set_i <- data_set

  if (data_set_i == "all") {
    new_labels <- data |>
      unnest(value_labs) |>
      filter(str_detect(catalogue, old_tag)) |>
      mutate(
        catalogue = case_when(str_detect(catalogue, old_tag) ~ new_tag,
                       TRUE ~ catalogue))


    data |>
      unnest(value_labs) |>
      bind_rows(new_labels) |>
      nest(value_labs = !data_set)


  } else {
    new_labels <- data |>
      unnest(value_labs) |>
      filter(data_set_i == data_set &
               str_detect(catalogue, old_tag)) |>
      mutate(
        catalogue = case_when(str_detect(catalogue, old_tag) ~ new_tag,
                       TRUE ~ catalogue))


    data |>
      unnest(value_labs) |>
      bind_rows(new_labels)|>
      nest(value_labs = !data_set)

  }

}



add_missing_levels <- function(data, data_set, variable) {

  new_labs <- tibble(
    data_set = data_set,
    catalogue = variable,
    value = c(
      "Q001",
      "Q002",
      "Q003",
      "Q004",
      "Q005",
      "Q006",
      "Q007",
      "Q008",
      "Q009",
      "Q010",
      "Q011",
      "Q012",
      "Q013",
      "Q014",
      "Q015",
      "Q016",
      "Q100"
    ),
    descripcion = c(
      "Depósitos en cuentas de ahorro, tandas, cajas de ahorro, etcétera",
      "Préstamos a personas ajenas al hogar",
      "Pagos a tarjeta de crédito bancaria o comercial (incluye intereses)",
      "Pago de deudas a la empresa donde trabajan y/o a otras personas o instituciones (excluya créditos hipotecarios)",
      "Pago de intereses por préstamos recibidos",
      "Compra de monedas nacionales o extranjeras, metales preciosos, alhajas, obras de arte, etcétera",
      "Seguro de vida capitalizable",
      "Herencias, dores y legados",
      "Compra de casas, condominios, locales o terrenos que no habita el hogar",
      "Compra de terrenos, casas o condominios que habita el hogar",
      "Pago de hipotecas de bienes inmuebles: casas, locales, terrenos, edificios, etcétera",
      "Otras erogaciones no consideradas en las preguntas anteriores",
      "Compra de maquinaria, equipo, animales destinados a la reproducción, utilizados en negocios del hogar",
      "Balance negativo en negocios del hogar agropecuarios y no agropecuarios",
      "Compra de valores: cédulas, acciones y bonos",
      "Compra de marcas, patentes y derechos de autor",
      "Pago de la vivienda propia que se está pagando"
    )
  )


  data |>
    unnest(value_labs) |>
    filter(!str_detect(catalogue, "ubica_geo|ubic_geo|bitacora_de_cambios")) |>
    unnest(value_labels) |>
    bind_rows(new_labs) |>
    nest(value_labels = !c(data_set, catalogue)) |>
    nest(value_labs = !data_set)

}


fix_diconsa_labs <- function(data) {
  data |>
    unnest(value_labs) |>
    unnest(value_labels) |>
    mutate(value = case_when(
      data_set == "hogares" & catalogue == "diconsa" & value == "3" ~ "9",
      T ~ value
    )) |>
    nest(value_labels = !c(data_set, catalogue)) |>
    nest(value_labs = !data_set)


}

add_catalogue <- function(data, catalogue) {

  data |>
    unnest(value_labs) |>
    unnest(value_labels) |>
    bind_rows(catalogue) |>
    nest(value_labels = !c(data_set, catalogue)) |>
    nest(value_labs = !data_set)

}

fix_tipoact <- function(data) {

    tipoact <- tibble(
      data_set = "noagro",
      catalogue = "tipoact",
      value = c(1, 2, 3) |> as.character(),
      descripcion = c("Industrial", "Compra-Venta", "Servicios")
    )

  data |>
    unnest(value_labs) |>
    unnest(value_labels) |>
    bind_rows(tipoact) |>
    nest(value_labels = !c(data_set, catalogue)) |>
    nest(value_labs = !data_set)


}

#---- Additional catalogues ----------------------------------------------------

usotiempo <- tibble(
  data_set = "poblacion",
  catalogue = "usotiempo",
  value = c(8, 9) |> as.character(),
  descripcion = c("No recuerda", "No lo hizo")
)

#---- Generalize ---------------------------------------------------------------

enigh_catalogues <- enigh_catalogues |>
  filter_variables() |>

  # Clean variable tags
  clean_variable_tag(old_tag = "causa_no_cosecha",
                     new_tag = "nocos") |>
  clean_variable_tag(old_tag = "fecha",
                     new_tag = "ultim_pago",
                     data_set = "gastoshogar") |>
  clean_variable_tag(old_tag = "causa",
                     new_tag = "cau",
                     data_set = "poblacion") |>
  clean_variable_tag(old_tag = "productoagricola",
                     new_tag = "codigo") |>
  clean_variable_tag(old_tag = "gastonegocioagro|producto|gastos|gastoscontarjeta|ingresos_cat|noagro_y_gastos|clavecontarjeta",
                     new_tag = "clave") |>
  clean_variable_tag(old_tag = "inst_salud",
                     new_tag = "inst") |>
  clean_variable_tag(old_tag = "si_no_nosabe",
                     new_tag = "diconsa") |>
  clean_variable_tag(old_tag = "sexo",
                     new_tag = "sexo_jefe") |>
  # 2018
  clean_variable_tag(old_tag = "mes",
                     new_tag = "mesproc") |>
  clean_variable_tag(old_tag = "mes",
                     new_tag = "mesprogan") |>

  # Add missing levels
  add_missing_levels(data_set = "gastoshogar",
                     variable = "clave") |>
  add_missing_levels(data_set = "gastospersona",
                     variable = "clave") |>

  # Fix broken labels
  fix_diconsa_labs() |>
  fix_tipoact() |>

  # Add missing catalogues
  add_catalogue(usotiempo) |>
  remove_catalogue_cols()

#---- Manual fixes -------------------------------------------------------------



# if (.year == 2020) {
#
#
#   tipoact <- tibble(
#     value = c(1, 2, 3) |> as.character(),
#     descripcion = c("Industrial", "Compra-Venta", "Servicios")
#   )
#
#   pluck(enigh_catalogues, 2, 13, 2, 12) <- tipoact
#
#
# }






#' Another error was found in 2018 `poblacion` set, in variable `norecib_11`,
#' as the `norecib` file has a faulty separation character

if(.year == 2018) {

  # norecib <- pluck(enigh_catalogues, 2, 10, 2, 17) |>
  #   slice_head(n = 9) |>
  #   add_row(value = c(10, 11) |> as.character(),
  #           descripcion = c("Curandero, hierbero, comadrona, brujo, etcétera",
  #                           "Otro"))
  #
  # pluck(enigh_catalogues, 2, 10, 2, 17) <- norecib

  lenguaind <- tibble(
    data_set = "poblacion",
    catalogue = "lenguaind",
    value = c("962", "5504", "5603", "5023"),
    descripcion = "Otro no especificado"
  )

  sinco <- tibble(
    data_set = "trabajos",
    catalogue = "sinco",
    value = c(2233, 2234, 2649, 2814, 3999, 6999) |> as.character(),
    descripcion = "Otro"
  )

  scian <- tibble(
    data_set = "trabajos",
    catalogue = "scian",
    value = c(2199, 4899, 5199, 5229, 5299, 7133) |> as.character(),
    descripcion = "Otro"
  )

  enigh_catalogues <- enigh_catalogues |>
    add_catalogue(lenguaind) |>
    add_catalogue(sinco) |>
    add_catalogue(scian)




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

