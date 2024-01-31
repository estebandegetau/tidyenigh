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

clean_variable_tag <- function(data,
                               old_tag,
                               new_tag,

                               data_set = "all") {
  data_set_i <- data_set

  if (data_set_i == "all") {
    data |>
      unnest(value_labs) |>
      mutate(catalogue = case_when(str_detect(catalogue, old_tag) ~ new_tag,
                                   TRUE ~ catalogue)) |>
      nest(value_labs = !data_set)


  } else {
    new_labels <- data |>
      unnest(value_labs) |>
      filter(data_set_i == data_set &
               str_detect(catalogue, old_tag)) |>
      mutate(case_when(str_detect(catalogue, old_tag) ~ new_tag,
                       TRUE ~ catalogue))


    data |>
      unnest(value_labs) |>
      add_row(
        data_set = data_set_i,
        catalogue = new_tag,
        value_labels = new_labels$value_labels
      ) |>
      nest(value_labs = !data_set)

  }

}

add_q_clave <- function(claves) {
  claves |>
    add_row(
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



}

#---- Generalize ---------------------------------------------------------------

enigh_catalogues <- enigh_catalogues |>
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
                     new_tag = "diconsa")

#---- Manual fixes -------------------------------------------------------------

if(.year == 2022) {



  # Manual fixes
  pluck(enigh_catalogues, 2, 5) <- pluck(enigh_catalogues, 2, 5) |>
    add_row(catalogue = "sexo_jefe",
            value_labels = list(pluck(enigh_catalogues, 2, 5, 2, 4)))

  pluck(enigh_catalogues, 2, 7, 2, 5) <- pluck(enigh_catalogues, 2, 7, 2, 5) |>
    add_q_clave()


  pluck(enigh_catalogues, 2, 8, 2, 4) <- pluck(enigh_catalogues, 2, 8, 2, 4) |>
    add_q_clave()

  # Hogares, diconsa
  pluck(enigh_catalogues, 2, 10, 2, 9, 1, 3) <- c("9")


}


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

