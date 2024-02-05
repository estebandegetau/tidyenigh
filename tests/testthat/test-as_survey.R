test_that("as_survey works", {
  expect_s3_class(poblacion2022 |> as_survey(), "survey.design")
})
