#' Survey sample ENIGH analysis
#'
#' Turn an ENIGH data set into a survey design. Passes the data set to [survey::svydesign()].
#' Useful fore creating analyses with [gtsummary::tbl_svysummary()].
#'
#' @param data A data set from the ENIGH survey. It is important that the data
#' set includes the following variables: `est_dis` and `factor`.  `est_dis` is
#' the strata variable and `factor` is the weight variable.
#'
#' @return An object of class `survey.design`.
#' @export
#'
#' @examples
#' poblacion2022 |>
#' as_survey() |>
#' gtsummary::tbl_svysummary(include = c(nivelaprob))
as_survey <- function(data) {
  survey::svydesign(
    data = data,
    ids = ~1,
    strata = ~est_dis,
    weights = ~factor
  )
}
