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

#---- Manual fixes -------------------------------------------------------------

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





if(.year == 2022) {

  #' In 2022, data set `poblacion` has columns called `cau_x` that are not matched
  #' in metadata, as they appear as `causa`
  pluck(enigh_catalogues, 2, 15, 1, 3) <- c("cau")

  # Agroconsumo
  pluck(enigh_catalogues, 2, 2, 1, 3) <- c("codigo")

  #' In 2022, `agrogasto`: data set variable `clave` is not matched in catalogues
  #' as it appears as `gastonegocioagro`
  pluck(enigh_catalogues, 2, 3, 1, 1) <- c("clave")

  # Agroproductos
  pluck(enigh_catalogues, 2, 4, 1, 4) <- c("codigo")

  # Duplicate `sexo` with the name `sexo_jefe`, inside `concentradohogar`
  pluck(enigh_catalogues, 2, 5) <- pluck(enigh_catalogues, 2, 5) |>
    add_row(catalogue = "sexo_jefe",
            value_labels = list(pluck(enigh_catalogues, 2, 5, 2, 4)))

  pluck(enigh_catalogues, 2, 6, 1, 2) <- c("clave")

  pluck(enigh_catalogues, 2, 7, 1, 5) <- c("clave")

  pluck(enigh_catalogues, 2, 7, 2, 5) <- pluck(enigh_catalogues, 2, 7, 2, 5) |>
    add_q_clave()



  pluck(enigh_catalogues, 2, 8, 1, 4) <- c("clave")

  pluck(enigh_catalogues, 2, 8, 2, 4) <- pluck(enigh_catalogues, 2, 8, 2, 4) |>
    add_q_clave()

  pluck(enigh_catalogues, 2, 9, 1) <- c("clave")

  # gastoshogar
  pluck(enigh_catalogues, 2, 7, 1, 6) <- c("inst")

  # ingresos
  pluck(enigh_catalogues, 2, 11, 1, 2) <- c("clave")

  # noagroimportes
  pluck(enigh_catalogues, 2, 14, 1, 3) <- c("clave")
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

