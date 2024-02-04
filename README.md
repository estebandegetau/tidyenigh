
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyenigh

<!-- badges: start -->

[![R-CMD-check](https://github.com/estebandegetau/tidyenigh/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/estebandegetau/tidyenigh/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`tidyenigh` is an R package that ships analysis-ready data from the
Encuesta Nacional de Ingresos y Gastos de los Hogares
[ENIGH](https://www.inegi.org.mx/programas/enigh/nc/2022/) survey in a
consistent, tidy and reproducible fashion.

The package includes data from the 2016, 2018, 2020 and 2022 surveys. By
*analisys-ready* we mean that by lazy-loading the package, the user has
instant access to every data set in the survey. Our analysis-ready
standard includes:

- Variable labels provided by the official documentation.
- Factor levels and labels for categorical variables.
- Proper data types for each variable.
- Original documentation for each data set with R’s help system.

The package also includes the original metadata for each data set, as it
is required by INEGI’s licence.

## Usage

Data is Lazy Loaded, so you can use it as soon as you load the package.
Using `gt::gt()` is a great way to work with labelled data, as it will
display the variable labels included in the package.

``` r


library(tidyenigh)
library(gt)

poblacion2022 |>
  head(5) |>
  gt::gt() 
```

<div id="cxbyhezhom" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cxbyhezhom table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#cxbyhezhom thead, #cxbyhezhom tbody, #cxbyhezhom tfoot, #cxbyhezhom tr, #cxbyhezhom td, #cxbyhezhom th {
  border-style: none;
}
&#10;#cxbyhezhom p {
  margin: 0;
  padding: 0;
}
&#10;#cxbyhezhom .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#cxbyhezhom .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#cxbyhezhom .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#cxbyhezhom .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#cxbyhezhom .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#cxbyhezhom .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#cxbyhezhom .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#cxbyhezhom .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#cxbyhezhom .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#cxbyhezhom .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#cxbyhezhom .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#cxbyhezhom .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#cxbyhezhom .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#cxbyhezhom .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#cxbyhezhom .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cxbyhezhom .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#cxbyhezhom .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#cxbyhezhom .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#cxbyhezhom .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cxbyhezhom .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#cxbyhezhom .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cxbyhezhom .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#cxbyhezhom .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cxbyhezhom .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#cxbyhezhom .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cxbyhezhom .gt_left {
  text-align: left;
}
&#10;#cxbyhezhom .gt_center {
  text-align: center;
}
&#10;#cxbyhezhom .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#cxbyhezhom .gt_font_normal {
  font-weight: normal;
}
&#10;#cxbyhezhom .gt_font_bold {
  font-weight: bold;
}
&#10;#cxbyhezhom .gt_font_italic {
  font-style: italic;
}
&#10;#cxbyhezhom .gt_super {
  font-size: 65%;
}
&#10;#cxbyhezhom .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#cxbyhezhom .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#cxbyhezhom .gt_indent_1 {
  text-indent: 5px;
}
&#10;#cxbyhezhom .gt_indent_2 {
  text-indent: 10px;
}
&#10;#cxbyhezhom .gt_indent_3 {
  text-indent: 15px;
}
&#10;#cxbyhezhom .gt_indent_4 {
  text-indent: 20px;
}
&#10;#cxbyhezhom .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Identificador de la vivienda">Identificador de la vivienda</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Identificador del hogar">Identificador del hogar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Identificador de la persona">Identificador de la persona</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Parentesco">Parentesco</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sexo">Sexo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Edad">Edad</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Identificador de la madre">Identificador de la madre</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Número de renglón de la madre">Número de renglón de la madre</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Identificador del padre">Identificador del padre</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Número de renglón del padre">Número de renglón del padre</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad de caminar">Discapacidad de caminar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad para ver">Discapacidad para ver</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad de usar brazos">Discapacidad de usar brazos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad para aprender">Discapacidad para aprender</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad para escuchar">Discapacidad para escuchar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad para vestirse">Discapacidad para vestirse</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad para hablar">Discapacidad para hablar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Discapacidad para realizar actividades diarias">Discapacidad para realizar actividades diarias</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para caminar">Causa de discapacidad para caminar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para ver">Causa de discapacidad para ver</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para usar brazos">Causa de discapacidad para usar brazos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para aprender">Causa de discapacidad para aprender</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para escuchar">Causa de discapacidad para escuchar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para vestirse">Causa de discapacidad para vestirse</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para hablar">Causa de discapacidad para hablar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Causa de discapacidad para realizar actividades diarias">Causa de discapacidad para realizar actividades diarias</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Hablante indígena">Hablante indígena</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Lengua indígena">Lengua indígena</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Español">Español</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Comprensión">Comprensión</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Autoadscripción étnica">Autoadscripción étnica</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Alfabetismo">Alfabetismo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Asistencia a la escuela">Asistencia a la escuela</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Nivel escolar al que asiste">Nivel escolar al que asiste</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Grado escolar al que asiste">Grado escolar al que asiste</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Tipo de escuela">Tipo de escuela</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Beca escolar">Beca escolar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Otorga beca escolar">Otorga beca escolar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Forma de beca escolar">Forma de beca escolar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Crédito educativo">Crédito educativo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Otorga crédito educativo">Otorga crédito educativo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Forma de crédito educativo">Forma de crédito educativo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Nivel de instrucción aprobado">Nivel de instrucción aprobado</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Grado aprobado">Grado aprobado</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Antecedente escolar">Antecedente escolar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Residencia">Residencia</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Situación conyugal">Situación conyugal</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Identificador del cónyuge">Identificador del cónyuge</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Número de renglón del cónyuge">Número de renglón del cónyuge</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Contribución a la seguridad social">Contribución a la seguridad social</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Tiempo de contribución años">Tiempo de contribución años</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Tiempo de contribución meses">Tiempo de contribución meses</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pedir ayuda para conseguir trabajo">Pedir ayuda para conseguir trabajo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pedir ayuda para que lo (la) cuiden">Pedir ayuda para que lo (la) cuiden</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pedir la cantidad de dinero de un mes">Pedir la cantidad de dinero de un mes</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pedir que lo (la) acompañen al doctor">Pedir que lo (la) acompañen al doctor</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pedir cooperación para mejoras en su colonia">Pedir cooperación para mejoras en su colonia</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pedir que le cuiden a los (as) niños (as)">Pedir que le cuiden a los (as) niños (as)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de trabajo">Horas de trabajo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de trabajo">Minutos de trabajo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Trabajar">Trabajar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de estudio">Horas de estudio</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de estudio">Minutos de estudio</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Estudiar y hacer actividades">Estudiar y hacer actividades</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de trabajo comunitario">Horas de trabajo comunitario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de trabajo comunitario">Minutos de trabajo comunitario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Trabajo comunitario">Trabajo comunitario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de cuidado de otras personas">Horas de cuidado de otras personas</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de cuidado de otras personas">Minutos de cuidado de otras personas</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Cuidar, atender sin pago">Cuidar, atender sin pago</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de reparación">Horas de reparación</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de reparación">Minutos de reparación</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Reparar su vivienda">Reparar su vivienda</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas dedicadas a quehacer">Horas dedicadas a quehacer</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos dedicados a quehacer">Minutos dedicados a quehacer</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Realizar quehacer en su hogar">Realizar quehacer en su hogar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de acarreo">Horas de acarreo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de acarreo">Minutos de acarreo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Acarrear agua o leña">Acarrear agua o leña</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de actividades personales">Horas de actividades personales</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de actividades personales">Minutos de actividades personales</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Tiempo para realizar actividades">Tiempo para realizar actividades</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Seguro popular / INSABI">Seguro popular / INSABI</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Afiliación para atención médica">Afiliación para atención médica</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Institución médica IMSS">Institución médica IMSS</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Institución médica ISSSTE">Institución médica ISSSTE</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Institución médica ISSSTE estatal">Institución médica ISSSTE estatal</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Institución médica PEMEX">Institución médica PEMEX</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Institución médica IMSS Prospera/IMSS Bienestar">Institución médica IMSS Prospera/IMSS Bienestar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Otra institución médica">Otra institución médica</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Prestación en el trabajo">Prestación en el trabajo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Jubilación o invalidez">Jubilación o invalidez</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Familiar en el hogar">Familiar en el hogar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Muerte del asegurado">Muerte del asegurado</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Ser estudiante">Ser estudiante</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Contratación propia">Contratación propia</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Algún familiar de otro hogar">Algún familiar de otro hogar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No sabe">No sabe</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Año con problemas de salud">Año con problemas de salud</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Mes con problemas de salud">Mes con problemas de salud</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Problemas de salud">Problemas de salud</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Recibió atención médica">Recibió atención médica</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en centros de salud">Atención en centros de salud</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en hospital">Atención en hospital</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en el IMSS">Atención en el IMSS</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en IMSS Prospera/IMSS Bienestar">Atención en IMSS Prospera/IMSS Bienestar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en ISSSTE">Atención en ISSSTE</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en ISSSTE estatal">Atención en ISSSTE estatal</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención médica en otra institución pública">Atención médica en otra institución pública</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en consultorios privados">Atención en consultorios privados</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en consultorio de farmacias">Atención en consultorio de farmacias</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención con curandero">Atención con curandero</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención en otro lugar">Atención en otro lugar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Atención INSABI">Atención INSABI</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Horas de traslado">Horas de traslado</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de traslado">Minutos de traslado</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Hora de espera">Hora de espera</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Minutos de espera">Minutos de espera</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pago por consulta">Pago por consulta</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pago por medicamentos">Pago por medicamentos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pago por estudios de laboratorio">Pago por estudios de laboratorio</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pago por hospitalización">Pago por hospitalización</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Pago por instrumental médico">Pago por instrumental médico</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Otro pago">Otro pago</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No pagó por atención médica">No pagó por atención médica</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No hay donde atenderse">No hay donde atenderse</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención por falta de dinero">Sin atención por falta de dinero</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Unidad médica lejana">Unidad médica lejana</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No lo atienden">No lo atienden</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No le tiene confianza">No le tiene confianza</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Lo tratan mal">Lo tratan mal</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No hablan la misma lengua">No hablan la misma lengua</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Hay que esperar mucho">Hay que esperar mucho</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No le dan medicamento">No le dan medicamento</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención por unidad cerrada">Sin atención por unidad cerrada</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No hubo médicos">No hubo médicos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Se lo impidieron">Se lo impidieron</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Falta de tiempo">Falta de tiempo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No hubo quién lo llevara">No hubo quién lo llevara</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No era necesario">No era necesario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Se automedicó">Se automedicó</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención centro de salud">Sin atención centro de salud</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención hospital o instituto">Sin atención hospital o instituto</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención IMSS">Sin atención IMSS</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención IMSS Prospera/IMSS Bienestar">Sin atención IMSS Prospera/IMSS Bienestar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención ISSSTE">Sin atención ISSSTE</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención ISSSTE estatal">Sin atención ISSSTE estatal</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención otro servicio médico público">Sin atención otro servicio médico público</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención consultorios privados">Sin atención consultorios privados</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención consultorio de farmacias">Sin atención consultorio de farmacias</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención curandero">Sin atención curandero</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención otro lugar">Sin atención otro lugar</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Sin atención INSABI">Sin atención INSABI</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No tenía dinero">No tenía dinero</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No entendía su lengua">No entendía su lengua</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No quisieron">No quisieron</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Dijeron que no era necesario">Dijeron que no era necesario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No tenían tiempo">No tenían tiempo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Razón por unidad médica cerrada">Razón por unidad médica cerrada</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Cita hasta mucho tiempo después">Cita hasta mucho tiempo después</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No había médico">No había médico</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No le dieron ninguna razón">No le dieron ninguna razón</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="El personal dijo que no era necesario">El personal dijo que no era necesario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Otra razón de no atención">Otra razón de no atención</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Diabetes">Diabetes</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Presión alta">Presión alta</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Control de peso y talla">Control de peso y talla</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Seguro voluntario SAR, AFORE">Seguro voluntario SAR, AFORE</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Seguro voluntario de gastos médicos">Seguro voluntario de gastos médicos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Seguro voluntario de vida">Seguro voluntario de vida</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Seguro voluntario de invalidez">Seguro voluntario de invalidez</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Otro tipo de seguro voluntario">Otro tipo de seguro voluntario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Ningún tipo de seguro voluntario">Ningún tipo de seguro voluntario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="No sabe si tiene seguros">No sabe si tiene seguros</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Hijos nacidos vivos">Hijos nacidos vivos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Hijos fallecidos">Hijos fallecidos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Hijos sobrevivientes">Hijos sobrevivientes</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Trabajó el mes pasado">Trabajó el mes pasado</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Motivo de ausencia al trabajo">Motivo de ausencia al trabajo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Primera actividad del integrante PNEA">Primera actividad del integrante PNEA</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Segunda actividad del integrante PNEA">Segunda actividad del integrante PNEA</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Número de trabajos">Número de trabajos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Jóvenes construyendo el futuro">Jóvenes construyendo el futuro</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Jóvenes construyendo el futuro, código de trabajo">Jóvenes construyendo el futuro, código de trabajo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Entidad federativa">Entidad federativa</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Estrato de diseño muestral">Estrato de diseño muestral</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Unidad primaria de muestreo">Unidad primaria de muestreo</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Factor de expansión">Factor de expansión</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="folioviv" class="gt_row gt_right">0100005002</td>
<td headers="foliohog" class="gt_row gt_right">1</td>
<td headers="numren" class="gt_row gt_right">01</td>
<td headers="parentesco" class="gt_row gt_center">Jefe(a)</td>
<td headers="sexo" class="gt_row gt_center">Mujer</td>
<td headers="edad" class="gt_row gt_right">91</td>
<td headers="madre_hog" class="gt_row gt_right">2</td>
<td headers="madre_id" class="gt_row gt_right">NA</td>
<td headers="padre_hog" class="gt_row gt_right">2</td>
<td headers="padre_id" class="gt_row gt_left">NA</td>
<td headers="disc_camin" class="gt_row gt_center">Lo hace con poca dificultad</td>
<td headers="disc_ver" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_brazo" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_apren" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_oir" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_vest" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_habla" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_acti" class="gt_row gt_center">No tiene dificultad</td>
<td headers="cau_camin" class="gt_row gt_center">Por edad avanzada</td>
<td headers="cau_ver" class="gt_row gt_center">NA</td>
<td headers="cau_brazo" class="gt_row gt_center">NA</td>
<td headers="cau_apren" class="gt_row gt_center">NA</td>
<td headers="cau_oir" class="gt_row gt_center">NA</td>
<td headers="cau_vest" class="gt_row gt_center">NA</td>
<td headers="cau_habla" class="gt_row gt_center">NA</td>
<td headers="cau_acti" class="gt_row gt_center">NA</td>
<td headers="hablaind" class="gt_row gt_center">No</td>
<td headers="lenguaind" class="gt_row gt_center">NA</td>
<td headers="hablaesp" class="gt_row gt_center">NA</td>
<td headers="comprenind" class="gt_row gt_center">No</td>
<td headers="etnia" class="gt_row gt_center">No</td>
<td headers="alfabetism" class="gt_row gt_center">S\u00ed</td>
<td headers="asis_esc" class="gt_row gt_center">No</td>
<td headers="nivel" class="gt_row gt_center">NA</td>
<td headers="grado" class="gt_row gt_center">NA</td>
<td headers="tipoesc" class="gt_row gt_center">NA</td>
<td headers="tiene_b" class="gt_row gt_center">NA</td>
<td headers="otorg_b" class="gt_row gt_center">NA</td>
<td headers="forma_b" class="gt_row gt_center">NA</td>
<td headers="tiene_c" class="gt_row gt_center">NA</td>
<td headers="otorg_c" class="gt_row gt_center">NA</td>
<td headers="forma_c" class="gt_row gt_center">NA</td>
<td headers="nivelaprob" class="gt_row gt_center">Primaria</td>
<td headers="gradoaprob" class="gt_row gt_center">Cuarto año</td>
<td headers="antec_esc" class="gt_row gt_center">NA</td>
<td headers="residencia" class="gt_row gt_center">Aguascalientes</td>
<td headers="edo_conyug" class="gt_row gt_center">Es viudo(a)</td>
<td headers="pareja_hog" class="gt_row gt_right">NA</td>
<td headers="conyuge_id" class="gt_row gt_right">NA</td>
<td headers="segsoc" class="gt_row gt_center">No</td>
<td headers="ss_aa" class="gt_row gt_right">NA</td>
<td headers="ss_mm" class="gt_row gt_right">NA</td>
<td headers="redsoc_1" class="gt_row gt_center">Imposible conseguirla</td>
<td headers="redsoc_2" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_3" class="gt_row gt_center">Imposible conseguirla</td>
<td headers="redsoc_4" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_5" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_6" class="gt_row gt_center">NA</td>
<td headers="hor_1" class="gt_row gt_right">NA</td>
<td headers="min_1" class="gt_row gt_right">NA</td>
<td headers="usotiempo1" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_2" class="gt_row gt_right">NA</td>
<td headers="min_2" class="gt_row gt_right">NA</td>
<td headers="usotiempo2" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_3" class="gt_row gt_right">NA</td>
<td headers="min_3" class="gt_row gt_right">NA</td>
<td headers="usotiempo3" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_4" class="gt_row gt_right">NA</td>
<td headers="min_4" class="gt_row gt_right">NA</td>
<td headers="usotiempo4" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_5" class="gt_row gt_right">NA</td>
<td headers="min_5" class="gt_row gt_right">NA</td>
<td headers="usotiempo5" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_6" class="gt_row gt_right">3</td>
<td headers="min_6" class="gt_row gt_right">0</td>
<td headers="usotiempo6" class="gt_row gt_center">NA</td>
<td headers="hor_7" class="gt_row gt_right">NA</td>
<td headers="min_7" class="gt_row gt_right">NA</td>
<td headers="usotiempo7" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_8" class="gt_row gt_right">10</td>
<td headers="min_8" class="gt_row gt_right">0</td>
<td headers="usotiempo8" class="gt_row gt_center">NA</td>
<td headers="pop_insabi" class="gt_row gt_center">No</td>
<td headers="atemed" class="gt_row gt_center">S\u00ed</td>
<td headers="inst_1" class="gt_row gt_center">NA</td>
<td headers="inst_2" class="gt_row gt_center">TRUE</td>
<td headers="inst_3" class="gt_row gt_center">NA</td>
<td headers="inst_4" class="gt_row gt_center">NA</td>
<td headers="inst_5" class="gt_row gt_center">NA</td>
<td headers="inst_6" class="gt_row gt_center">NA</td>
<td headers="inscr_1" class="gt_row gt_center">NA</td>
<td headers="inscr_2" class="gt_row gt_center">NA</td>
<td headers="inscr_3" class="gt_row gt_center">NA</td>
<td headers="inscr_4" class="gt_row gt_center">NA</td>
<td headers="inscr_5" class="gt_row gt_center">NA</td>
<td headers="inscr_6" class="gt_row gt_center">NA</td>
<td headers="inscr_7" class="gt_row gt_center">TRUE</td>
<td headers="inscr_8" class="gt_row gt_center">NA</td>
<td headers="prob_anio" class="gt_row gt_right">2022</td>
<td headers="prob_mes" class="gt_row gt_center">noviembre</td>
<td headers="prob_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="aten_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="servmed_1" class="gt_row gt_center">NA</td>
<td headers="servmed_2" class="gt_row gt_center">NA</td>
<td headers="servmed_3" class="gt_row gt_center">NA</td>
<td headers="servmed_4" class="gt_row gt_center">NA</td>
<td headers="servmed_5" class="gt_row gt_center">TRUE</td>
<td headers="servmed_6" class="gt_row gt_center">NA</td>
<td headers="servmed_7" class="gt_row gt_center">NA</td>
<td headers="servmed_8" class="gt_row gt_center">NA</td>
<td headers="servmed_9" class="gt_row gt_center">NA</td>
<td headers="servmed_10" class="gt_row gt_center">NA</td>
<td headers="servmed_11" class="gt_row gt_center">NA</td>
<td headers="servmed_12" class="gt_row gt_center">NA</td>
<td headers="hh_lug" class="gt_row gt_right">0</td>
<td headers="mm_lug" class="gt_row gt_right">10</td>
<td headers="hh_esp" class="gt_row gt_right">0</td>
<td headers="mm_esp" class="gt_row gt_right">20</td>
<td headers="pagoaten_1" class="gt_row gt_center">NA</td>
<td headers="pagoaten_2" class="gt_row gt_center">NA</td>
<td headers="pagoaten_3" class="gt_row gt_center">NA</td>
<td headers="pagoaten_4" class="gt_row gt_center">NA</td>
<td headers="pagoaten_5" class="gt_row gt_center">NA</td>
<td headers="pagoaten_6" class="gt_row gt_center">NA</td>
<td headers="pagoaten_7" class="gt_row gt_center">TRUE</td>
<td headers="noatenc_1" class="gt_row gt_center">NA</td>
<td headers="noatenc_2" class="gt_row gt_center">NA</td>
<td headers="noatenc_3" class="gt_row gt_center">NA</td>
<td headers="noatenc_4" class="gt_row gt_center">NA</td>
<td headers="noatenc_5" class="gt_row gt_center">NA</td>
<td headers="noatenc_6" class="gt_row gt_center">NA</td>
<td headers="noatenc_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_8" class="gt_row gt_center">NA</td>
<td headers="noatenc_9" class="gt_row gt_center">NA</td>
<td headers="noatenc_10" class="gt_row gt_center">NA</td>
<td headers="noatenc_11" class="gt_row gt_center">NA</td>
<td headers="noatenc_12" class="gt_row gt_center">NA</td>
<td headers="noatenc_13" class="gt_row gt_center">NA</td>
<td headers="noatenc_14" class="gt_row gt_center">NA</td>
<td headers="noatenc_15" class="gt_row gt_center">NA</td>
<td headers="noatenc_16" class="gt_row gt_center">NA</td>
<td headers="norecib_1" class="gt_row gt_center">NA</td>
<td headers="norecib_2" class="gt_row gt_center">NA</td>
<td headers="norecib_3" class="gt_row gt_center">NA</td>
<td headers="norecib_4" class="gt_row gt_center">NA</td>
<td headers="norecib_5" class="gt_row gt_center">NA</td>
<td headers="norecib_6" class="gt_row gt_center">NA</td>
<td headers="norecib_7" class="gt_row gt_center">NA</td>
<td headers="norecib_8" class="gt_row gt_center">NA</td>
<td headers="norecib_9" class="gt_row gt_center">NA</td>
<td headers="norecib_10" class="gt_row gt_center">NA</td>
<td headers="norecib_11" class="gt_row gt_center">NA</td>
<td headers="norecib_12" class="gt_row gt_center">NA</td>
<td headers="razon_1" class="gt_row gt_center">NA</td>
<td headers="razon_2" class="gt_row gt_center">NA</td>
<td headers="razon_3" class="gt_row gt_center">NA</td>
<td headers="razon_4" class="gt_row gt_center">NA</td>
<td headers="razon_5" class="gt_row gt_center">NA</td>
<td headers="razon_6" class="gt_row gt_center">NA</td>
<td headers="razon_7" class="gt_row gt_center">NA</td>
<td headers="razon_8" class="gt_row gt_center">NA</td>
<td headers="razon_9" class="gt_row gt_center">NA</td>
<td headers="razon_10" class="gt_row gt_center">NA</td>
<td headers="razon_11" class="gt_row gt_center">NA</td>
<td headers="diabetes" class="gt_row gt_center">S\u00ed</td>
<td headers="pres_alta" class="gt_row gt_center">S\u00ed</td>
<td headers="peso" class="gt_row gt_center">S\u00ed</td>
<td headers="segvol_1" class="gt_row gt_center">NA</td>
<td headers="segvol_2" class="gt_row gt_center">NA</td>
<td headers="segvol_3" class="gt_row gt_center">NA</td>
<td headers="segvol_4" class="gt_row gt_center">NA</td>
<td headers="segvol_5" class="gt_row gt_center">NA</td>
<td headers="segvol_6" class="gt_row gt_center">TRUE</td>
<td headers="segvol_7" class="gt_row gt_center">NA</td>
<td headers="hijos_viv" class="gt_row gt_right">3</td>
<td headers="hijos_mue" class="gt_row gt_right">0</td>
<td headers="hijos_sob" class="gt_row gt_right">3</td>
<td headers="trabajo_mp" class="gt_row gt_center">No trabajó el mes pasado</td>
<td headers="motivo_aus" class="gt_row gt_center">NA</td>
<td headers="act_pnea1" class="gt_row gt_center">Es una persona con alguna limitación física o mental que le impide trabajar por el resto de su vida</td>
<td headers="act_pnea2" class="gt_row gt_center">NA</td>
<td headers="num_trabaj" class="gt_row gt_center">NA</td>
<td headers="c_futuro" class="gt_row gt_center">NA</td>
<td headers="ct_futuro" class="gt_row gt_center">NA</td>
<td headers="entidad" class="gt_row gt_center">Aguascalientes</td>
<td headers="est_dis" class="gt_row gt_right">003</td>
<td headers="upm" class="gt_row gt_right">0000001</td>
<td headers="factor" class="gt_row gt_right">206</td></tr>
    <tr><td headers="folioviv" class="gt_row gt_right">0100005002</td>
<td headers="foliohog" class="gt_row gt_right">1</td>
<td headers="numren" class="gt_row gt_right">02</td>
<td headers="parentesco" class="gt_row gt_center">Hijo(a), hijo(a) consanguíneo, hijo(a) reconocido</td>
<td headers="sexo" class="gt_row gt_center">Mujer</td>
<td headers="edad" class="gt_row gt_right">48</td>
<td headers="madre_hog" class="gt_row gt_right">1</td>
<td headers="madre_id" class="gt_row gt_right">01</td>
<td headers="padre_hog" class="gt_row gt_right">2</td>
<td headers="padre_id" class="gt_row gt_left">NA</td>
<td headers="disc_camin" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_ver" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_brazo" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_apren" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_oir" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_vest" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_habla" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_acti" class="gt_row gt_center">No tiene dificultad</td>
<td headers="cau_camin" class="gt_row gt_center">NA</td>
<td headers="cau_ver" class="gt_row gt_center">NA</td>
<td headers="cau_brazo" class="gt_row gt_center">NA</td>
<td headers="cau_apren" class="gt_row gt_center">NA</td>
<td headers="cau_oir" class="gt_row gt_center">NA</td>
<td headers="cau_vest" class="gt_row gt_center">NA</td>
<td headers="cau_habla" class="gt_row gt_center">NA</td>
<td headers="cau_acti" class="gt_row gt_center">NA</td>
<td headers="hablaind" class="gt_row gt_center">No</td>
<td headers="lenguaind" class="gt_row gt_center">NA</td>
<td headers="hablaesp" class="gt_row gt_center">NA</td>
<td headers="comprenind" class="gt_row gt_center">No</td>
<td headers="etnia" class="gt_row gt_center">No</td>
<td headers="alfabetism" class="gt_row gt_center">S\u00ed</td>
<td headers="asis_esc" class="gt_row gt_center">No</td>
<td headers="nivel" class="gt_row gt_center">NA</td>
<td headers="grado" class="gt_row gt_center">NA</td>
<td headers="tipoesc" class="gt_row gt_center">NA</td>
<td headers="tiene_b" class="gt_row gt_center">NA</td>
<td headers="otorg_b" class="gt_row gt_center">NA</td>
<td headers="forma_b" class="gt_row gt_center">NA</td>
<td headers="tiene_c" class="gt_row gt_center">NA</td>
<td headers="otorg_c" class="gt_row gt_center">NA</td>
<td headers="forma_c" class="gt_row gt_center">NA</td>
<td headers="nivelaprob" class="gt_row gt_center">Preparatoria o bachillerato</td>
<td headers="gradoaprob" class="gt_row gt_center">Tercer año</td>
<td headers="antec_esc" class="gt_row gt_center">NA</td>
<td headers="residencia" class="gt_row gt_center">Aguascalientes</td>
<td headers="edo_conyug" class="gt_row gt_center">Está soltero(a)</td>
<td headers="pareja_hog" class="gt_row gt_right">NA</td>
<td headers="conyuge_id" class="gt_row gt_right">NA</td>
<td headers="segsoc" class="gt_row gt_center">No</td>
<td headers="ss_aa" class="gt_row gt_right">NA</td>
<td headers="ss_mm" class="gt_row gt_right">NA</td>
<td headers="redsoc_1" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_2" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_3" class="gt_row gt_center">Imposible conseguirla</td>
<td headers="redsoc_4" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_5" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_6" class="gt_row gt_center">NA</td>
<td headers="hor_1" class="gt_row gt_right">48</td>
<td headers="min_1" class="gt_row gt_right">0</td>
<td headers="usotiempo1" class="gt_row gt_center">NA</td>
<td headers="hor_2" class="gt_row gt_right">NA</td>
<td headers="min_2" class="gt_row gt_right">NA</td>
<td headers="usotiempo2" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_3" class="gt_row gt_right">NA</td>
<td headers="min_3" class="gt_row gt_right">NA</td>
<td headers="usotiempo3" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_4" class="gt_row gt_right">2</td>
<td headers="min_4" class="gt_row gt_right">0</td>
<td headers="usotiempo4" class="gt_row gt_center">NA</td>
<td headers="hor_5" class="gt_row gt_right">NA</td>
<td headers="min_5" class="gt_row gt_right">NA</td>
<td headers="usotiempo5" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_6" class="gt_row gt_right">14</td>
<td headers="min_6" class="gt_row gt_right">0</td>
<td headers="usotiempo6" class="gt_row gt_center">NA</td>
<td headers="hor_7" class="gt_row gt_right">NA</td>
<td headers="min_7" class="gt_row gt_right">NA</td>
<td headers="usotiempo7" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_8" class="gt_row gt_right">10</td>
<td headers="min_8" class="gt_row gt_right">0</td>
<td headers="usotiempo8" class="gt_row gt_center">NA</td>
<td headers="pop_insabi" class="gt_row gt_center">No</td>
<td headers="atemed" class="gt_row gt_center">S\u00ed</td>
<td headers="inst_1" class="gt_row gt_center">NA</td>
<td headers="inst_2" class="gt_row gt_center">TRUE</td>
<td headers="inst_3" class="gt_row gt_center">NA</td>
<td headers="inst_4" class="gt_row gt_center">NA</td>
<td headers="inst_5" class="gt_row gt_center">NA</td>
<td headers="inst_6" class="gt_row gt_center">NA</td>
<td headers="inscr_1" class="gt_row gt_center">TRUE</td>
<td headers="inscr_2" class="gt_row gt_center">NA</td>
<td headers="inscr_3" class="gt_row gt_center">NA</td>
<td headers="inscr_4" class="gt_row gt_center">NA</td>
<td headers="inscr_5" class="gt_row gt_center">NA</td>
<td headers="inscr_6" class="gt_row gt_center">NA</td>
<td headers="inscr_7" class="gt_row gt_center">NA</td>
<td headers="inscr_8" class="gt_row gt_center">NA</td>
<td headers="prob_anio" class="gt_row gt_right">2019</td>
<td headers="prob_mes" class="gt_row gt_center">noviembre</td>
<td headers="prob_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="aten_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="servmed_1" class="gt_row gt_center">NA</td>
<td headers="servmed_2" class="gt_row gt_center">NA</td>
<td headers="servmed_3" class="gt_row gt_center">NA</td>
<td headers="servmed_4" class="gt_row gt_center">NA</td>
<td headers="servmed_5" class="gt_row gt_center">TRUE</td>
<td headers="servmed_6" class="gt_row gt_center">NA</td>
<td headers="servmed_7" class="gt_row gt_center">NA</td>
<td headers="servmed_8" class="gt_row gt_center">NA</td>
<td headers="servmed_9" class="gt_row gt_center">NA</td>
<td headers="servmed_10" class="gt_row gt_center">NA</td>
<td headers="servmed_11" class="gt_row gt_center">NA</td>
<td headers="servmed_12" class="gt_row gt_center">NA</td>
<td headers="hh_lug" class="gt_row gt_right">0</td>
<td headers="mm_lug" class="gt_row gt_right">5</td>
<td headers="hh_esp" class="gt_row gt_right">4</td>
<td headers="mm_esp" class="gt_row gt_right">0</td>
<td headers="pagoaten_1" class="gt_row gt_center">NA</td>
<td headers="pagoaten_2" class="gt_row gt_center">NA</td>
<td headers="pagoaten_3" class="gt_row gt_center">NA</td>
<td headers="pagoaten_4" class="gt_row gt_center">NA</td>
<td headers="pagoaten_5" class="gt_row gt_center">NA</td>
<td headers="pagoaten_6" class="gt_row gt_center">NA</td>
<td headers="pagoaten_7" class="gt_row gt_center">TRUE</td>
<td headers="noatenc_1" class="gt_row gt_center">NA</td>
<td headers="noatenc_2" class="gt_row gt_center">NA</td>
<td headers="noatenc_3" class="gt_row gt_center">NA</td>
<td headers="noatenc_4" class="gt_row gt_center">NA</td>
<td headers="noatenc_5" class="gt_row gt_center">NA</td>
<td headers="noatenc_6" class="gt_row gt_center">NA</td>
<td headers="noatenc_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_8" class="gt_row gt_center">NA</td>
<td headers="noatenc_9" class="gt_row gt_center">NA</td>
<td headers="noatenc_10" class="gt_row gt_center">NA</td>
<td headers="noatenc_11" class="gt_row gt_center">NA</td>
<td headers="noatenc_12" class="gt_row gt_center">NA</td>
<td headers="noatenc_13" class="gt_row gt_center">NA</td>
<td headers="noatenc_14" class="gt_row gt_center">NA</td>
<td headers="noatenc_15" class="gt_row gt_center">NA</td>
<td headers="noatenc_16" class="gt_row gt_center">NA</td>
<td headers="norecib_1" class="gt_row gt_center">NA</td>
<td headers="norecib_2" class="gt_row gt_center">NA</td>
<td headers="norecib_3" class="gt_row gt_center">NA</td>
<td headers="norecib_4" class="gt_row gt_center">NA</td>
<td headers="norecib_5" class="gt_row gt_center">NA</td>
<td headers="norecib_6" class="gt_row gt_center">NA</td>
<td headers="norecib_7" class="gt_row gt_center">NA</td>
<td headers="norecib_8" class="gt_row gt_center">NA</td>
<td headers="norecib_9" class="gt_row gt_center">NA</td>
<td headers="norecib_10" class="gt_row gt_center">NA</td>
<td headers="norecib_11" class="gt_row gt_center">NA</td>
<td headers="norecib_12" class="gt_row gt_center">NA</td>
<td headers="razon_1" class="gt_row gt_center">NA</td>
<td headers="razon_2" class="gt_row gt_center">NA</td>
<td headers="razon_3" class="gt_row gt_center">NA</td>
<td headers="razon_4" class="gt_row gt_center">NA</td>
<td headers="razon_5" class="gt_row gt_center">NA</td>
<td headers="razon_6" class="gt_row gt_center">NA</td>
<td headers="razon_7" class="gt_row gt_center">NA</td>
<td headers="razon_8" class="gt_row gt_center">NA</td>
<td headers="razon_9" class="gt_row gt_center">NA</td>
<td headers="razon_10" class="gt_row gt_center">NA</td>
<td headers="razon_11" class="gt_row gt_center">NA</td>
<td headers="diabetes" class="gt_row gt_center">No</td>
<td headers="pres_alta" class="gt_row gt_center">S\u00ed</td>
<td headers="peso" class="gt_row gt_center">S\u00ed</td>
<td headers="segvol_1" class="gt_row gt_center">NA</td>
<td headers="segvol_2" class="gt_row gt_center">NA</td>
<td headers="segvol_3" class="gt_row gt_center">NA</td>
<td headers="segvol_4" class="gt_row gt_center">NA</td>
<td headers="segvol_5" class="gt_row gt_center">NA</td>
<td headers="segvol_6" class="gt_row gt_center">TRUE</td>
<td headers="segvol_7" class="gt_row gt_center">NA</td>
<td headers="hijos_viv" class="gt_row gt_right">1</td>
<td headers="hijos_mue" class="gt_row gt_right">0</td>
<td headers="hijos_sob" class="gt_row gt_right">1</td>
<td headers="trabajo_mp" class="gt_row gt_center">Trabajó el mes pasado</td>
<td headers="motivo_aus" class="gt_row gt_center">NA</td>
<td headers="act_pnea1" class="gt_row gt_center">NA</td>
<td headers="act_pnea2" class="gt_row gt_center">NA</td>
<td headers="num_trabaj" class="gt_row gt_center">Sólo 1</td>
<td headers="c_futuro" class="gt_row gt_center">NA</td>
<td headers="ct_futuro" class="gt_row gt_center">NA</td>
<td headers="entidad" class="gt_row gt_center">Aguascalientes</td>
<td headers="est_dis" class="gt_row gt_right">003</td>
<td headers="upm" class="gt_row gt_right">0000001</td>
<td headers="factor" class="gt_row gt_right">206</td></tr>
    <tr><td headers="folioviv" class="gt_row gt_right">0100005002</td>
<td headers="foliohog" class="gt_row gt_right">1</td>
<td headers="numren" class="gt_row gt_right">03</td>
<td headers="parentesco" class="gt_row gt_center">Nieto(a)</td>
<td headers="sexo" class="gt_row gt_center">Mujer</td>
<td headers="edad" class="gt_row gt_right">13</td>
<td headers="madre_hog" class="gt_row gt_right">1</td>
<td headers="madre_id" class="gt_row gt_right">02</td>
<td headers="padre_hog" class="gt_row gt_right">2</td>
<td headers="padre_id" class="gt_row gt_left">NA</td>
<td headers="disc_camin" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_ver" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_brazo" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_apren" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_oir" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_vest" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_habla" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_acti" class="gt_row gt_center">No tiene dificultad</td>
<td headers="cau_camin" class="gt_row gt_center">NA</td>
<td headers="cau_ver" class="gt_row gt_center">NA</td>
<td headers="cau_brazo" class="gt_row gt_center">NA</td>
<td headers="cau_apren" class="gt_row gt_center">NA</td>
<td headers="cau_oir" class="gt_row gt_center">NA</td>
<td headers="cau_vest" class="gt_row gt_center">NA</td>
<td headers="cau_habla" class="gt_row gt_center">NA</td>
<td headers="cau_acti" class="gt_row gt_center">NA</td>
<td headers="hablaind" class="gt_row gt_center">No</td>
<td headers="lenguaind" class="gt_row gt_center">NA</td>
<td headers="hablaesp" class="gt_row gt_center">NA</td>
<td headers="comprenind" class="gt_row gt_center">No</td>
<td headers="etnia" class="gt_row gt_center">No</td>
<td headers="alfabetism" class="gt_row gt_center">S\u00ed</td>
<td headers="asis_esc" class="gt_row gt_center">S\u00ed</td>
<td headers="nivel" class="gt_row gt_center">Secundaria</td>
<td headers="grado" class="gt_row gt_center">Segundo año</td>
<td headers="tipoesc" class="gt_row gt_center">Privada o de paga</td>
<td headers="tiene_b" class="gt_row gt_center">S\u00ed</td>
<td headers="otorg_b" class="gt_row gt_center">Su escuela privada o de paga</td>
<td headers="forma_b" class="gt_row gt_center">Sólo paga parte de la colegiatura</td>
<td headers="tiene_c" class="gt_row gt_center">NA</td>
<td headers="otorg_c" class="gt_row gt_center">NA</td>
<td headers="forma_c" class="gt_row gt_center">NA</td>
<td headers="nivelaprob" class="gt_row gt_center">Secundaria</td>
<td headers="gradoaprob" class="gt_row gt_center">Primer año</td>
<td headers="antec_esc" class="gt_row gt_center">NA</td>
<td headers="residencia" class="gt_row gt_center">Aguascalientes</td>
<td headers="edo_conyug" class="gt_row gt_center">Está soltero(a)</td>
<td headers="pareja_hog" class="gt_row gt_right">NA</td>
<td headers="conyuge_id" class="gt_row gt_right">NA</td>
<td headers="segsoc" class="gt_row gt_center">No</td>
<td headers="ss_aa" class="gt_row gt_right">NA</td>
<td headers="ss_mm" class="gt_row gt_right">NA</td>
<td headers="redsoc_1" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_2" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_3" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_4" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_5" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_6" class="gt_row gt_center">NA</td>
<td headers="hor_1" class="gt_row gt_right">NA</td>
<td headers="min_1" class="gt_row gt_right">NA</td>
<td headers="usotiempo1" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_2" class="gt_row gt_right">35</td>
<td headers="min_2" class="gt_row gt_right">0</td>
<td headers="usotiempo2" class="gt_row gt_center">NA</td>
<td headers="hor_3" class="gt_row gt_right">NA</td>
<td headers="min_3" class="gt_row gt_right">NA</td>
<td headers="usotiempo3" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_4" class="gt_row gt_right">NA</td>
<td headers="min_4" class="gt_row gt_right">NA</td>
<td headers="usotiempo4" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_5" class="gt_row gt_right">NA</td>
<td headers="min_5" class="gt_row gt_right">NA</td>
<td headers="usotiempo5" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_6" class="gt_row gt_right">NA</td>
<td headers="min_6" class="gt_row gt_right">NA</td>
<td headers="usotiempo6" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_7" class="gt_row gt_right">NA</td>
<td headers="min_7" class="gt_row gt_right">NA</td>
<td headers="usotiempo7" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_8" class="gt_row gt_right">18</td>
<td headers="min_8" class="gt_row gt_right">0</td>
<td headers="usotiempo8" class="gt_row gt_center">NA</td>
<td headers="pop_insabi" class="gt_row gt_center">No</td>
<td headers="atemed" class="gt_row gt_center">S\u00ed</td>
<td headers="inst_1" class="gt_row gt_center">NA</td>
<td headers="inst_2" class="gt_row gt_center">TRUE</td>
<td headers="inst_3" class="gt_row gt_center">NA</td>
<td headers="inst_4" class="gt_row gt_center">NA</td>
<td headers="inst_5" class="gt_row gt_center">NA</td>
<td headers="inst_6" class="gt_row gt_center">NA</td>
<td headers="inscr_1" class="gt_row gt_center">NA</td>
<td headers="inscr_2" class="gt_row gt_center">NA</td>
<td headers="inscr_3" class="gt_row gt_center">TRUE</td>
<td headers="inscr_4" class="gt_row gt_center">NA</td>
<td headers="inscr_5" class="gt_row gt_center">NA</td>
<td headers="inscr_6" class="gt_row gt_center">NA</td>
<td headers="inscr_7" class="gt_row gt_center">NA</td>
<td headers="inscr_8" class="gt_row gt_center">NA</td>
<td headers="prob_anio" class="gt_row gt_right">2020</td>
<td headers="prob_mes" class="gt_row gt_center">julio</td>
<td headers="prob_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="aten_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="servmed_1" class="gt_row gt_center">NA</td>
<td headers="servmed_2" class="gt_row gt_center">NA</td>
<td headers="servmed_3" class="gt_row gt_center">NA</td>
<td headers="servmed_4" class="gt_row gt_center">NA</td>
<td headers="servmed_5" class="gt_row gt_center">NA</td>
<td headers="servmed_6" class="gt_row gt_center">NA</td>
<td headers="servmed_7" class="gt_row gt_center">NA</td>
<td headers="servmed_8" class="gt_row gt_center">TRUE</td>
<td headers="servmed_9" class="gt_row gt_center">NA</td>
<td headers="servmed_10" class="gt_row gt_center">NA</td>
<td headers="servmed_11" class="gt_row gt_center">NA</td>
<td headers="servmed_12" class="gt_row gt_center">NA</td>
<td headers="hh_lug" class="gt_row gt_right">0</td>
<td headers="mm_lug" class="gt_row gt_right">5</td>
<td headers="hh_esp" class="gt_row gt_right">1</td>
<td headers="mm_esp" class="gt_row gt_right">0</td>
<td headers="pagoaten_1" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_2" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_3" class="gt_row gt_center">NA</td>
<td headers="pagoaten_4" class="gt_row gt_center">NA</td>
<td headers="pagoaten_5" class="gt_row gt_center">NA</td>
<td headers="pagoaten_6" class="gt_row gt_center">NA</td>
<td headers="pagoaten_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_1" class="gt_row gt_center">NA</td>
<td headers="noatenc_2" class="gt_row gt_center">NA</td>
<td headers="noatenc_3" class="gt_row gt_center">NA</td>
<td headers="noatenc_4" class="gt_row gt_center">NA</td>
<td headers="noatenc_5" class="gt_row gt_center">NA</td>
<td headers="noatenc_6" class="gt_row gt_center">NA</td>
<td headers="noatenc_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_8" class="gt_row gt_center">NA</td>
<td headers="noatenc_9" class="gt_row gt_center">NA</td>
<td headers="noatenc_10" class="gt_row gt_center">NA</td>
<td headers="noatenc_11" class="gt_row gt_center">NA</td>
<td headers="noatenc_12" class="gt_row gt_center">NA</td>
<td headers="noatenc_13" class="gt_row gt_center">NA</td>
<td headers="noatenc_14" class="gt_row gt_center">NA</td>
<td headers="noatenc_15" class="gt_row gt_center">NA</td>
<td headers="noatenc_16" class="gt_row gt_center">NA</td>
<td headers="norecib_1" class="gt_row gt_center">NA</td>
<td headers="norecib_2" class="gt_row gt_center">NA</td>
<td headers="norecib_3" class="gt_row gt_center">NA</td>
<td headers="norecib_4" class="gt_row gt_center">NA</td>
<td headers="norecib_5" class="gt_row gt_center">NA</td>
<td headers="norecib_6" class="gt_row gt_center">NA</td>
<td headers="norecib_7" class="gt_row gt_center">NA</td>
<td headers="norecib_8" class="gt_row gt_center">NA</td>
<td headers="norecib_9" class="gt_row gt_center">NA</td>
<td headers="norecib_10" class="gt_row gt_center">NA</td>
<td headers="norecib_11" class="gt_row gt_center">NA</td>
<td headers="norecib_12" class="gt_row gt_center">NA</td>
<td headers="razon_1" class="gt_row gt_center">NA</td>
<td headers="razon_2" class="gt_row gt_center">NA</td>
<td headers="razon_3" class="gt_row gt_center">NA</td>
<td headers="razon_4" class="gt_row gt_center">NA</td>
<td headers="razon_5" class="gt_row gt_center">NA</td>
<td headers="razon_6" class="gt_row gt_center">NA</td>
<td headers="razon_7" class="gt_row gt_center">NA</td>
<td headers="razon_8" class="gt_row gt_center">NA</td>
<td headers="razon_9" class="gt_row gt_center">NA</td>
<td headers="razon_10" class="gt_row gt_center">NA</td>
<td headers="razon_11" class="gt_row gt_center">NA</td>
<td headers="diabetes" class="gt_row gt_center">No</td>
<td headers="pres_alta" class="gt_row gt_center">No</td>
<td headers="peso" class="gt_row gt_center">S\u00ed</td>
<td headers="segvol_1" class="gt_row gt_center">NA</td>
<td headers="segvol_2" class="gt_row gt_center">NA</td>
<td headers="segvol_3" class="gt_row gt_center">NA</td>
<td headers="segvol_4" class="gt_row gt_center">NA</td>
<td headers="segvol_5" class="gt_row gt_center">NA</td>
<td headers="segvol_6" class="gt_row gt_center">TRUE</td>
<td headers="segvol_7" class="gt_row gt_center">NA</td>
<td headers="hijos_viv" class="gt_row gt_right">0</td>
<td headers="hijos_mue" class="gt_row gt_right">NA</td>
<td headers="hijos_sob" class="gt_row gt_right">NA</td>
<td headers="trabajo_mp" class="gt_row gt_center">No trabajó el mes pasado</td>
<td headers="motivo_aus" class="gt_row gt_center">NA</td>
<td headers="act_pnea1" class="gt_row gt_center">Se dedicó a estudiar</td>
<td headers="act_pnea2" class="gt_row gt_center">NA</td>
<td headers="num_trabaj" class="gt_row gt_center">NA</td>
<td headers="c_futuro" class="gt_row gt_center">NA</td>
<td headers="ct_futuro" class="gt_row gt_center">NA</td>
<td headers="entidad" class="gt_row gt_center">Aguascalientes</td>
<td headers="est_dis" class="gt_row gt_right">003</td>
<td headers="upm" class="gt_row gt_right">0000001</td>
<td headers="factor" class="gt_row gt_right">206</td></tr>
    <tr><td headers="folioviv" class="gt_row gt_right">0100005003</td>
<td headers="foliohog" class="gt_row gt_right">1</td>
<td headers="numren" class="gt_row gt_right">01</td>
<td headers="parentesco" class="gt_row gt_center">Jefe(a)</td>
<td headers="sexo" class="gt_row gt_center">Hombre</td>
<td headers="edad" class="gt_row gt_right">68</td>
<td headers="madre_hog" class="gt_row gt_right">2</td>
<td headers="madre_id" class="gt_row gt_right">NA</td>
<td headers="padre_hog" class="gt_row gt_right">2</td>
<td headers="padre_id" class="gt_row gt_left">NA</td>
<td headers="disc_camin" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_ver" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_brazo" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_apren" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_oir" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_vest" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_habla" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_acti" class="gt_row gt_center">No tiene dificultad</td>
<td headers="cau_camin" class="gt_row gt_center">NA</td>
<td headers="cau_ver" class="gt_row gt_center">NA</td>
<td headers="cau_brazo" class="gt_row gt_center">NA</td>
<td headers="cau_apren" class="gt_row gt_center">NA</td>
<td headers="cau_oir" class="gt_row gt_center">NA</td>
<td headers="cau_vest" class="gt_row gt_center">NA</td>
<td headers="cau_habla" class="gt_row gt_center">NA</td>
<td headers="cau_acti" class="gt_row gt_center">NA</td>
<td headers="hablaind" class="gt_row gt_center">No</td>
<td headers="lenguaind" class="gt_row gt_center">NA</td>
<td headers="hablaesp" class="gt_row gt_center">NA</td>
<td headers="comprenind" class="gt_row gt_center">No</td>
<td headers="etnia" class="gt_row gt_center">No</td>
<td headers="alfabetism" class="gt_row gt_center">S\u00ed</td>
<td headers="asis_esc" class="gt_row gt_center">No</td>
<td headers="nivel" class="gt_row gt_center">NA</td>
<td headers="grado" class="gt_row gt_center">NA</td>
<td headers="tipoesc" class="gt_row gt_center">NA</td>
<td headers="tiene_b" class="gt_row gt_center">NA</td>
<td headers="otorg_b" class="gt_row gt_center">NA</td>
<td headers="forma_b" class="gt_row gt_center">NA</td>
<td headers="tiene_c" class="gt_row gt_center">NA</td>
<td headers="otorg_c" class="gt_row gt_center">NA</td>
<td headers="forma_c" class="gt_row gt_center">NA</td>
<td headers="nivelaprob" class="gt_row gt_center">Preparatoria o bachillerato</td>
<td headers="gradoaprob" class="gt_row gt_center">Tercer año</td>
<td headers="antec_esc" class="gt_row gt_center">NA</td>
<td headers="residencia" class="gt_row gt_center">Ciudad de México</td>
<td headers="edo_conyug" class="gt_row gt_center">Está casado(a)</td>
<td headers="pareja_hog" class="gt_row gt_right">1</td>
<td headers="conyuge_id" class="gt_row gt_right">02</td>
<td headers="segsoc" class="gt_row gt_center">S\u00ed</td>
<td headers="ss_aa" class="gt_row gt_right">26</td>
<td headers="ss_mm" class="gt_row gt_right">0</td>
<td headers="redsoc_1" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_2" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_3" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_4" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_5" class="gt_row gt_center">Difícil conseguirla</td>
<td headers="redsoc_6" class="gt_row gt_center">NA</td>
<td headers="hor_1" class="gt_row gt_right">40</td>
<td headers="min_1" class="gt_row gt_right">0</td>
<td headers="usotiempo1" class="gt_row gt_center">NA</td>
<td headers="hor_2" class="gt_row gt_right">NA</td>
<td headers="min_2" class="gt_row gt_right">NA</td>
<td headers="usotiempo2" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_3" class="gt_row gt_right">NA</td>
<td headers="min_3" class="gt_row gt_right">NA</td>
<td headers="usotiempo3" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_4" class="gt_row gt_right">NA</td>
<td headers="min_4" class="gt_row gt_right">NA</td>
<td headers="usotiempo4" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_5" class="gt_row gt_right">NA</td>
<td headers="min_5" class="gt_row gt_right">NA</td>
<td headers="usotiempo5" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_6" class="gt_row gt_right">NA</td>
<td headers="min_6" class="gt_row gt_right">NA</td>
<td headers="usotiempo6" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_7" class="gt_row gt_right">NA</td>
<td headers="min_7" class="gt_row gt_right">NA</td>
<td headers="usotiempo7" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_8" class="gt_row gt_right">12</td>
<td headers="min_8" class="gt_row gt_right">0</td>
<td headers="usotiempo8" class="gt_row gt_center">NA</td>
<td headers="pop_insabi" class="gt_row gt_center">No</td>
<td headers="atemed" class="gt_row gt_center">S\u00ed</td>
<td headers="inst_1" class="gt_row gt_center">TRUE</td>
<td headers="inst_2" class="gt_row gt_center">NA</td>
<td headers="inst_3" class="gt_row gt_center">NA</td>
<td headers="inst_4" class="gt_row gt_center">NA</td>
<td headers="inst_5" class="gt_row gt_center">NA</td>
<td headers="inst_6" class="gt_row gt_center">NA</td>
<td headers="inscr_1" class="gt_row gt_center">TRUE</td>
<td headers="inscr_2" class="gt_row gt_center">NA</td>
<td headers="inscr_3" class="gt_row gt_center">NA</td>
<td headers="inscr_4" class="gt_row gt_center">NA</td>
<td headers="inscr_5" class="gt_row gt_center">NA</td>
<td headers="inscr_6" class="gt_row gt_center">NA</td>
<td headers="inscr_7" class="gt_row gt_center">NA</td>
<td headers="inscr_8" class="gt_row gt_center">NA</td>
<td headers="prob_anio" class="gt_row gt_right">2021</td>
<td headers="prob_mes" class="gt_row gt_center">noviembre</td>
<td headers="prob_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="aten_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="servmed_1" class="gt_row gt_center">NA</td>
<td headers="servmed_2" class="gt_row gt_center">NA</td>
<td headers="servmed_3" class="gt_row gt_center">NA</td>
<td headers="servmed_4" class="gt_row gt_center">NA</td>
<td headers="servmed_5" class="gt_row gt_center">NA</td>
<td headers="servmed_6" class="gt_row gt_center">NA</td>
<td headers="servmed_7" class="gt_row gt_center">NA</td>
<td headers="servmed_8" class="gt_row gt_center">TRUE</td>
<td headers="servmed_9" class="gt_row gt_center">NA</td>
<td headers="servmed_10" class="gt_row gt_center">NA</td>
<td headers="servmed_11" class="gt_row gt_center">NA</td>
<td headers="servmed_12" class="gt_row gt_center">NA</td>
<td headers="hh_lug" class="gt_row gt_right">0</td>
<td headers="mm_lug" class="gt_row gt_right">10</td>
<td headers="hh_esp" class="gt_row gt_right">0</td>
<td headers="mm_esp" class="gt_row gt_right">5</td>
<td headers="pagoaten_1" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_2" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_3" class="gt_row gt_center">NA</td>
<td headers="pagoaten_4" class="gt_row gt_center">NA</td>
<td headers="pagoaten_5" class="gt_row gt_center">NA</td>
<td headers="pagoaten_6" class="gt_row gt_center">NA</td>
<td headers="pagoaten_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_1" class="gt_row gt_center">NA</td>
<td headers="noatenc_2" class="gt_row gt_center">NA</td>
<td headers="noatenc_3" class="gt_row gt_center">NA</td>
<td headers="noatenc_4" class="gt_row gt_center">NA</td>
<td headers="noatenc_5" class="gt_row gt_center">NA</td>
<td headers="noatenc_6" class="gt_row gt_center">NA</td>
<td headers="noatenc_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_8" class="gt_row gt_center">NA</td>
<td headers="noatenc_9" class="gt_row gt_center">NA</td>
<td headers="noatenc_10" class="gt_row gt_center">NA</td>
<td headers="noatenc_11" class="gt_row gt_center">NA</td>
<td headers="noatenc_12" class="gt_row gt_center">NA</td>
<td headers="noatenc_13" class="gt_row gt_center">NA</td>
<td headers="noatenc_14" class="gt_row gt_center">NA</td>
<td headers="noatenc_15" class="gt_row gt_center">NA</td>
<td headers="noatenc_16" class="gt_row gt_center">NA</td>
<td headers="norecib_1" class="gt_row gt_center">NA</td>
<td headers="norecib_2" class="gt_row gt_center">NA</td>
<td headers="norecib_3" class="gt_row gt_center">NA</td>
<td headers="norecib_4" class="gt_row gt_center">NA</td>
<td headers="norecib_5" class="gt_row gt_center">NA</td>
<td headers="norecib_6" class="gt_row gt_center">NA</td>
<td headers="norecib_7" class="gt_row gt_center">NA</td>
<td headers="norecib_8" class="gt_row gt_center">NA</td>
<td headers="norecib_9" class="gt_row gt_center">NA</td>
<td headers="norecib_10" class="gt_row gt_center">NA</td>
<td headers="norecib_11" class="gt_row gt_center">NA</td>
<td headers="norecib_12" class="gt_row gt_center">NA</td>
<td headers="razon_1" class="gt_row gt_center">NA</td>
<td headers="razon_2" class="gt_row gt_center">NA</td>
<td headers="razon_3" class="gt_row gt_center">NA</td>
<td headers="razon_4" class="gt_row gt_center">NA</td>
<td headers="razon_5" class="gt_row gt_center">NA</td>
<td headers="razon_6" class="gt_row gt_center">NA</td>
<td headers="razon_7" class="gt_row gt_center">NA</td>
<td headers="razon_8" class="gt_row gt_center">NA</td>
<td headers="razon_9" class="gt_row gt_center">NA</td>
<td headers="razon_10" class="gt_row gt_center">NA</td>
<td headers="razon_11" class="gt_row gt_center">NA</td>
<td headers="diabetes" class="gt_row gt_center">No</td>
<td headers="pres_alta" class="gt_row gt_center">S\u00ed</td>
<td headers="peso" class="gt_row gt_center">S\u00ed</td>
<td headers="segvol_1" class="gt_row gt_center">NA</td>
<td headers="segvol_2" class="gt_row gt_center">TRUE</td>
<td headers="segvol_3" class="gt_row gt_center">NA</td>
<td headers="segvol_4" class="gt_row gt_center">NA</td>
<td headers="segvol_5" class="gt_row gt_center">NA</td>
<td headers="segvol_6" class="gt_row gt_center">NA</td>
<td headers="segvol_7" class="gt_row gt_center">NA</td>
<td headers="hijos_viv" class="gt_row gt_right">NA</td>
<td headers="hijos_mue" class="gt_row gt_right">NA</td>
<td headers="hijos_sob" class="gt_row gt_right">NA</td>
<td headers="trabajo_mp" class="gt_row gt_center">Trabajó el mes pasado</td>
<td headers="motivo_aus" class="gt_row gt_center">NA</td>
<td headers="act_pnea1" class="gt_row gt_center">NA</td>
<td headers="act_pnea2" class="gt_row gt_center">NA</td>
<td headers="num_trabaj" class="gt_row gt_center">Sólo 1</td>
<td headers="c_futuro" class="gt_row gt_center">NA</td>
<td headers="ct_futuro" class="gt_row gt_center">NA</td>
<td headers="entidad" class="gt_row gt_center">Aguascalientes</td>
<td headers="est_dis" class="gt_row gt_right">003</td>
<td headers="upm" class="gt_row gt_right">0000001</td>
<td headers="factor" class="gt_row gt_right">206</td></tr>
    <tr><td headers="folioviv" class="gt_row gt_right">0100005003</td>
<td headers="foliohog" class="gt_row gt_right">1</td>
<td headers="numren" class="gt_row gt_right">02</td>
<td headers="parentesco" class="gt_row gt_center">Esposo(a), compañero(a), cónyuge, pareja, marido, mujer, señor(a), consorte</td>
<td headers="sexo" class="gt_row gt_center">Mujer</td>
<td headers="edad" class="gt_row gt_right">64</td>
<td headers="madre_hog" class="gt_row gt_right">2</td>
<td headers="madre_id" class="gt_row gt_right">NA</td>
<td headers="padre_hog" class="gt_row gt_right">2</td>
<td headers="padre_id" class="gt_row gt_left">NA</td>
<td headers="disc_camin" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_ver" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_brazo" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_apren" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_oir" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_vest" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_habla" class="gt_row gt_center">No tiene dificultad</td>
<td headers="disc_acti" class="gt_row gt_center">No tiene dificultad</td>
<td headers="cau_camin" class="gt_row gt_center">NA</td>
<td headers="cau_ver" class="gt_row gt_center">NA</td>
<td headers="cau_brazo" class="gt_row gt_center">NA</td>
<td headers="cau_apren" class="gt_row gt_center">NA</td>
<td headers="cau_oir" class="gt_row gt_center">NA</td>
<td headers="cau_vest" class="gt_row gt_center">NA</td>
<td headers="cau_habla" class="gt_row gt_center">NA</td>
<td headers="cau_acti" class="gt_row gt_center">NA</td>
<td headers="hablaind" class="gt_row gt_center">No</td>
<td headers="lenguaind" class="gt_row gt_center">NA</td>
<td headers="hablaesp" class="gt_row gt_center">NA</td>
<td headers="comprenind" class="gt_row gt_center">No</td>
<td headers="etnia" class="gt_row gt_center">No</td>
<td headers="alfabetism" class="gt_row gt_center">S\u00ed</td>
<td headers="asis_esc" class="gt_row gt_center">No</td>
<td headers="nivel" class="gt_row gt_center">NA</td>
<td headers="grado" class="gt_row gt_center">NA</td>
<td headers="tipoesc" class="gt_row gt_center">NA</td>
<td headers="tiene_b" class="gt_row gt_center">NA</td>
<td headers="otorg_b" class="gt_row gt_center">NA</td>
<td headers="forma_b" class="gt_row gt_center">NA</td>
<td headers="tiene_c" class="gt_row gt_center">NA</td>
<td headers="otorg_c" class="gt_row gt_center">NA</td>
<td headers="forma_c" class="gt_row gt_center">NA</td>
<td headers="nivelaprob" class="gt_row gt_center">Profesional</td>
<td headers="gradoaprob" class="gt_row gt_center">Quinto año</td>
<td headers="antec_esc" class="gt_row gt_center">Preparatoria o bachillerato</td>
<td headers="residencia" class="gt_row gt_center">Ciudad de México</td>
<td headers="edo_conyug" class="gt_row gt_center">Está casado(a)</td>
<td headers="pareja_hog" class="gt_row gt_right">1</td>
<td headers="conyuge_id" class="gt_row gt_right">01</td>
<td headers="segsoc" class="gt_row gt_center">No</td>
<td headers="ss_aa" class="gt_row gt_right">NA</td>
<td headers="ss_mm" class="gt_row gt_right">NA</td>
<td headers="redsoc_1" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_2" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_3" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_4" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_5" class="gt_row gt_center">Fácil conseguirla</td>
<td headers="redsoc_6" class="gt_row gt_center">NA</td>
<td headers="hor_1" class="gt_row gt_right">12</td>
<td headers="min_1" class="gt_row gt_right">0</td>
<td headers="usotiempo1" class="gt_row gt_center">NA</td>
<td headers="hor_2" class="gt_row gt_right">6</td>
<td headers="min_2" class="gt_row gt_right">0</td>
<td headers="usotiempo2" class="gt_row gt_center">NA</td>
<td headers="hor_3" class="gt_row gt_right">NA</td>
<td headers="min_3" class="gt_row gt_right">NA</td>
<td headers="usotiempo3" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_4" class="gt_row gt_right">NA</td>
<td headers="min_4" class="gt_row gt_right">NA</td>
<td headers="usotiempo4" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_5" class="gt_row gt_right">NA</td>
<td headers="min_5" class="gt_row gt_right">NA</td>
<td headers="usotiempo5" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_6" class="gt_row gt_right">15</td>
<td headers="min_6" class="gt_row gt_right">0</td>
<td headers="usotiempo6" class="gt_row gt_center">NA</td>
<td headers="hor_7" class="gt_row gt_right">NA</td>
<td headers="min_7" class="gt_row gt_right">NA</td>
<td headers="usotiempo7" class="gt_row gt_center">No lo hizo</td>
<td headers="hor_8" class="gt_row gt_right">20</td>
<td headers="min_8" class="gt_row gt_right">0</td>
<td headers="usotiempo8" class="gt_row gt_center">NA</td>
<td headers="pop_insabi" class="gt_row gt_center">No</td>
<td headers="atemed" class="gt_row gt_center">S\u00ed</td>
<td headers="inst_1" class="gt_row gt_center">TRUE</td>
<td headers="inst_2" class="gt_row gt_center">NA</td>
<td headers="inst_3" class="gt_row gt_center">NA</td>
<td headers="inst_4" class="gt_row gt_center">NA</td>
<td headers="inst_5" class="gt_row gt_center">NA</td>
<td headers="inst_6" class="gt_row gt_center">NA</td>
<td headers="inscr_1" class="gt_row gt_center">TRUE</td>
<td headers="inscr_2" class="gt_row gt_center">NA</td>
<td headers="inscr_3" class="gt_row gt_center">NA</td>
<td headers="inscr_4" class="gt_row gt_center">NA</td>
<td headers="inscr_5" class="gt_row gt_center">NA</td>
<td headers="inscr_6" class="gt_row gt_center">NA</td>
<td headers="inscr_7" class="gt_row gt_center">NA</td>
<td headers="inscr_8" class="gt_row gt_center">NA</td>
<td headers="prob_anio" class="gt_row gt_right">2022</td>
<td headers="prob_mes" class="gt_row gt_center">septiembre</td>
<td headers="prob_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="aten_sal" class="gt_row gt_center">S\u00ed</td>
<td headers="servmed_1" class="gt_row gt_center">NA</td>
<td headers="servmed_2" class="gt_row gt_center">NA</td>
<td headers="servmed_3" class="gt_row gt_center">NA</td>
<td headers="servmed_4" class="gt_row gt_center">NA</td>
<td headers="servmed_5" class="gt_row gt_center">NA</td>
<td headers="servmed_6" class="gt_row gt_center">NA</td>
<td headers="servmed_7" class="gt_row gt_center">NA</td>
<td headers="servmed_8" class="gt_row gt_center">TRUE</td>
<td headers="servmed_9" class="gt_row gt_center">NA</td>
<td headers="servmed_10" class="gt_row gt_center">NA</td>
<td headers="servmed_11" class="gt_row gt_center">NA</td>
<td headers="servmed_12" class="gt_row gt_center">NA</td>
<td headers="hh_lug" class="gt_row gt_right">0</td>
<td headers="mm_lug" class="gt_row gt_right">30</td>
<td headers="hh_esp" class="gt_row gt_right">0</td>
<td headers="mm_esp" class="gt_row gt_right">20</td>
<td headers="pagoaten_1" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_2" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_3" class="gt_row gt_center">TRUE</td>
<td headers="pagoaten_4" class="gt_row gt_center">NA</td>
<td headers="pagoaten_5" class="gt_row gt_center">NA</td>
<td headers="pagoaten_6" class="gt_row gt_center">NA</td>
<td headers="pagoaten_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_1" class="gt_row gt_center">NA</td>
<td headers="noatenc_2" class="gt_row gt_center">NA</td>
<td headers="noatenc_3" class="gt_row gt_center">NA</td>
<td headers="noatenc_4" class="gt_row gt_center">NA</td>
<td headers="noatenc_5" class="gt_row gt_center">NA</td>
<td headers="noatenc_6" class="gt_row gt_center">NA</td>
<td headers="noatenc_7" class="gt_row gt_center">NA</td>
<td headers="noatenc_8" class="gt_row gt_center">NA</td>
<td headers="noatenc_9" class="gt_row gt_center">NA</td>
<td headers="noatenc_10" class="gt_row gt_center">NA</td>
<td headers="noatenc_11" class="gt_row gt_center">NA</td>
<td headers="noatenc_12" class="gt_row gt_center">NA</td>
<td headers="noatenc_13" class="gt_row gt_center">NA</td>
<td headers="noatenc_14" class="gt_row gt_center">NA</td>
<td headers="noatenc_15" class="gt_row gt_center">NA</td>
<td headers="noatenc_16" class="gt_row gt_center">NA</td>
<td headers="norecib_1" class="gt_row gt_center">NA</td>
<td headers="norecib_2" class="gt_row gt_center">NA</td>
<td headers="norecib_3" class="gt_row gt_center">NA</td>
<td headers="norecib_4" class="gt_row gt_center">NA</td>
<td headers="norecib_5" class="gt_row gt_center">NA</td>
<td headers="norecib_6" class="gt_row gt_center">NA</td>
<td headers="norecib_7" class="gt_row gt_center">NA</td>
<td headers="norecib_8" class="gt_row gt_center">NA</td>
<td headers="norecib_9" class="gt_row gt_center">NA</td>
<td headers="norecib_10" class="gt_row gt_center">NA</td>
<td headers="norecib_11" class="gt_row gt_center">NA</td>
<td headers="norecib_12" class="gt_row gt_center">NA</td>
<td headers="razon_1" class="gt_row gt_center">NA</td>
<td headers="razon_2" class="gt_row gt_center">NA</td>
<td headers="razon_3" class="gt_row gt_center">NA</td>
<td headers="razon_4" class="gt_row gt_center">NA</td>
<td headers="razon_5" class="gt_row gt_center">NA</td>
<td headers="razon_6" class="gt_row gt_center">NA</td>
<td headers="razon_7" class="gt_row gt_center">NA</td>
<td headers="razon_8" class="gt_row gt_center">NA</td>
<td headers="razon_9" class="gt_row gt_center">NA</td>
<td headers="razon_10" class="gt_row gt_center">NA</td>
<td headers="razon_11" class="gt_row gt_center">NA</td>
<td headers="diabetes" class="gt_row gt_center">S\u00ed</td>
<td headers="pres_alta" class="gt_row gt_center">S\u00ed</td>
<td headers="peso" class="gt_row gt_center">S\u00ed</td>
<td headers="segvol_1" class="gt_row gt_center">NA</td>
<td headers="segvol_2" class="gt_row gt_center">NA</td>
<td headers="segvol_3" class="gt_row gt_center">NA</td>
<td headers="segvol_4" class="gt_row gt_center">NA</td>
<td headers="segvol_5" class="gt_row gt_center">NA</td>
<td headers="segvol_6" class="gt_row gt_center">TRUE</td>
<td headers="segvol_7" class="gt_row gt_center">NA</td>
<td headers="hijos_viv" class="gt_row gt_right">2</td>
<td headers="hijos_mue" class="gt_row gt_right">0</td>
<td headers="hijos_sob" class="gt_row gt_right">2</td>
<td headers="trabajo_mp" class="gt_row gt_center">Trabajó el mes pasado</td>
<td headers="motivo_aus" class="gt_row gt_center">NA</td>
<td headers="act_pnea1" class="gt_row gt_center">NA</td>
<td headers="act_pnea2" class="gt_row gt_center">NA</td>
<td headers="num_trabaj" class="gt_row gt_center">Sólo 1</td>
<td headers="c_futuro" class="gt_row gt_center">NA</td>
<td headers="ct_futuro" class="gt_row gt_center">NA</td>
<td headers="entidad" class="gt_row gt_center">Aguascalientes</td>
<td headers="est_dis" class="gt_row gt_right">003</td>
<td headers="upm" class="gt_row gt_right">0000001</td>
<td headers="factor" class="gt_row gt_right">206</td></tr>
  </tbody>
  &#10;  
</table>
</div>

Data includes variable and value labels

``` r
library(labelled)

gastoshogar2016 |> 
  generate_dictionary(details = F) |> 
  head(10) |>
  gt::gt()
```

<div id="edhniknjjp" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#edhniknjjp table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#edhniknjjp thead, #edhniknjjp tbody, #edhniknjjp tfoot, #edhniknjjp tr, #edhniknjjp td, #edhniknjjp th {
  border-style: none;
}
&#10;#edhniknjjp p {
  margin: 0;
  padding: 0;
}
&#10;#edhniknjjp .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#edhniknjjp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#edhniknjjp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#edhniknjjp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#edhniknjjp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#edhniknjjp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#edhniknjjp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#edhniknjjp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#edhniknjjp .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#edhniknjjp .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#edhniknjjp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#edhniknjjp .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#edhniknjjp .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#edhniknjjp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#edhniknjjp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#edhniknjjp .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#edhniknjjp .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#edhniknjjp .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#edhniknjjp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#edhniknjjp .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#edhniknjjp .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#edhniknjjp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#edhniknjjp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#edhniknjjp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#edhniknjjp .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#edhniknjjp .gt_left {
  text-align: left;
}
&#10;#edhniknjjp .gt_center {
  text-align: center;
}
&#10;#edhniknjjp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#edhniknjjp .gt_font_normal {
  font-weight: normal;
}
&#10;#edhniknjjp .gt_font_bold {
  font-weight: bold;
}
&#10;#edhniknjjp .gt_font_italic {
  font-style: italic;
}
&#10;#edhniknjjp .gt_super {
  font-size: 65%;
}
&#10;#edhniknjjp .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#edhniknjjp .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#edhniknjjp .gt_indent_1 {
  text-indent: 5px;
}
&#10;#edhniknjjp .gt_indent_2 {
  text-indent: 10px;
}
&#10;#edhniknjjp .gt_indent_3 {
  text-indent: 15px;
}
&#10;#edhniknjjp .gt_indent_4 {
  text-indent: 20px;
}
&#10;#edhniknjjp .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="pos">pos</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="variable">variable</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="label">label</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="pos" class="gt_row gt_right">1</td>
<td headers="variable" class="gt_row gt_left">folioviv</td>
<td headers="label" class="gt_row gt_left">Identificador de la vivienda</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">2</td>
<td headers="variable" class="gt_row gt_left">foliohog</td>
<td headers="label" class="gt_row gt_left">Identificador del hogar</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">3</td>
<td headers="variable" class="gt_row gt_left">clave</td>
<td headers="label" class="gt_row gt_left">Clave de gasto</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">4</td>
<td headers="variable" class="gt_row gt_left">tipo_gasto</td>
<td headers="label" class="gt_row gt_left">Tipo de gasto</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">5</td>
<td headers="variable" class="gt_row gt_left">mes_dia</td>
<td headers="label" class="gt_row gt_left">Mes y día del gasto</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">6</td>
<td headers="variable" class="gt_row gt_left">forma_pag1</td>
<td headers="label" class="gt_row gt_left">Forma de pago 1</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">7</td>
<td headers="variable" class="gt_row gt_left">forma_pag2</td>
<td headers="label" class="gt_row gt_left">Forma de pago 2</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">8</td>
<td headers="variable" class="gt_row gt_left">forma_pag3</td>
<td headers="label" class="gt_row gt_left">Forma de pago 3</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">9</td>
<td headers="variable" class="gt_row gt_left">lugar_comp</td>
<td headers="label" class="gt_row gt_left">Lugar de compra</td></tr>
    <tr><td headers="pos" class="gt_row gt_right">10</td>
<td headers="variable" class="gt_row gt_left">orga_inst</td>
<td headers="label" class="gt_row gt_left">Organización o institución proveedora</td></tr>
  </tbody>
  &#10;  
</table>
</div>

Official [INEGI](https://www.inegi.org.mx/) documentation is available
within the package, using R’s help system.

``` r
?hogares2022
```

Check available data sets

``` r
enigh_documentation_2022 |>
  dplyr::select(data_set, description, cols, rows) |>
  gt::gt()
```

<div id="yvghnsbhcp" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#yvghnsbhcp table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#yvghnsbhcp thead, #yvghnsbhcp tbody, #yvghnsbhcp tfoot, #yvghnsbhcp tr, #yvghnsbhcp td, #yvghnsbhcp th {
  border-style: none;
}
&#10;#yvghnsbhcp p {
  margin: 0;
  padding: 0;
}
&#10;#yvghnsbhcp .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#yvghnsbhcp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#yvghnsbhcp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#yvghnsbhcp .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#yvghnsbhcp .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#yvghnsbhcp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#yvghnsbhcp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#yvghnsbhcp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#yvghnsbhcp .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#yvghnsbhcp .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#yvghnsbhcp .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#yvghnsbhcp .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#yvghnsbhcp .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#yvghnsbhcp .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#yvghnsbhcp .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yvghnsbhcp .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#yvghnsbhcp .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#yvghnsbhcp .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#yvghnsbhcp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yvghnsbhcp .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#yvghnsbhcp .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yvghnsbhcp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#yvghnsbhcp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yvghnsbhcp .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#yvghnsbhcp .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#yvghnsbhcp .gt_left {
  text-align: left;
}
&#10;#yvghnsbhcp .gt_center {
  text-align: center;
}
&#10;#yvghnsbhcp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#yvghnsbhcp .gt_font_normal {
  font-weight: normal;
}
&#10;#yvghnsbhcp .gt_font_bold {
  font-weight: bold;
}
&#10;#yvghnsbhcp .gt_font_italic {
  font-style: italic;
}
&#10;#yvghnsbhcp .gt_super {
  font-size: 65%;
}
&#10;#yvghnsbhcp .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#yvghnsbhcp .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#yvghnsbhcp .gt_indent_1 {
  text-indent: 5px;
}
&#10;#yvghnsbhcp .gt_indent_2 {
  text-indent: 10px;
}
&#10;#yvghnsbhcp .gt_indent_3 {
  text-indent: 15px;
}
&#10;#yvghnsbhcp .gt_indent_4 {
  text-indent: 20px;
}
&#10;#yvghnsbhcp .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="data_set">data_set</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="description">description</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="cols">cols</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="rows">rows</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="data_set" class="gt_row gt_left">agro2022</td>
<td headers="description" class="gt_row gt_left">Negocios agropecuarios de los hogares</td>
<td headers="cols" class="gt_row gt_right">66</td>
<td headers="rows" class="gt_row gt_right">17470</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">agroconsumo2022</td>
<td headers="description" class="gt_row gt_left">Destino, cantidad y valor de los productos del negocio del hogar </td>
<td headers="cols" class="gt_row gt_right">11</td>
<td headers="rows" class="gt_row gt_right">57456</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">agrogasto2022</td>
<td headers="description" class="gt_row gt_left">Gasto que realiza el negocio del Hogar </td>
<td headers="cols" class="gt_row gt_right">7</td>
<td headers="rows" class="gt_row gt_right">60180</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">agroproductos2022</td>
<td headers="description" class="gt_row gt_left">Productos de los negocios agrícolas del hogar </td>
<td headers="cols" class="gt_row gt_right">25</td>
<td headers="rows" class="gt_row gt_right">69212</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">concentradohogar2022</td>
<td headers="description" class="gt_row gt_left">Principales variables por hogar</td>
<td headers="cols" class="gt_row gt_right">126</td>
<td headers="rows" class="gt_row gt_right">90102</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">erogaciones2022</td>
<td headers="description" class="gt_row gt_left">Erogaciones de capital por hogar</td>
<td headers="cols" class="gt_row gt_right">16</td>
<td headers="rows" class="gt_row gt_right">64779</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">gastoshogar2022</td>
<td headers="description" class="gt_row gt_left">Gastos en los hogares</td>
<td headers="cols" class="gt_row gt_right">31</td>
<td headers="rows" class="gt_row gt_right">5075174</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">gastospersona2022</td>
<td headers="description" class="gt_row gt_left">Gastos realizados en el hogar a nivel integrante</td>
<td headers="cols" class="gt_row gt_right">24</td>
<td headers="rows" class="gt_row gt_right">402557</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">gastotarjetas2022</td>
<td headers="description" class="gt_row gt_left">Gastos realizados por el hogar y que fueron cubiertos mediante alguna tarjeta de crédito bancaria y/o comercial</td>
<td headers="cols" class="gt_row gt_right">6</td>
<td headers="rows" class="gt_row gt_right">13232</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">hogares2022</td>
<td headers="description" class="gt_row gt_left">Características de los hogares que habitan los integrantes del hogar</td>
<td headers="cols" class="gt_row gt_right">141</td>
<td headers="rows" class="gt_row gt_right">90102</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">ingresos_jcf2022</td>
<td headers="description" class="gt_row gt_left">Ingresos del programa Jóvenes Construyendo el Futuro </td>
<td headers="cols" class="gt_row gt_right">18</td>
<td headers="rows" class="gt_row gt_right">468</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">ingresos2022</td>
<td headers="description" class="gt_row gt_left">Ingresos y percepciones financieras y de capital de los integrantes del hogar</td>
<td headers="cols" class="gt_row gt_right">21</td>
<td headers="rows" class="gt_row gt_right">397182</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">noagro2022</td>
<td headers="description" class="gt_row gt_left">Negocios no agropecuarios de los hogares</td>
<td headers="cols" class="gt_row gt_right">115</td>
<td headers="rows" class="gt_row gt_right">23847</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">noagroimportes2022</td>
<td headers="description" class="gt_row gt_left">Importe de los productos de los negocios no agrícolas del hogar </td>
<td headers="cols" class="gt_row gt_right">17</td>
<td headers="rows" class="gt_row gt_right">155839</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">poblacion2022</td>
<td headers="description" class="gt_row gt_left">   Características sociodemográficas de los integrantes del hogar</td>
<td headers="cols" class="gt_row gt_right">188</td>
<td headers="rows" class="gt_row gt_right">309684</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">trabajos2022</td>
<td headers="description" class="gt_row gt_left">Condición de actividad de los integrantes del hogar de 12 o más años</td>
<td headers="cols" class="gt_row gt_right">60</td>
<td headers="rows" class="gt_row gt_right">165006</td></tr>
    <tr><td headers="data_set" class="gt_row gt_left">viviendas2022</td>
<td headers="description" class="gt_row gt_left">Características de las viviendas que habitan los integrantes del hogar</td>
<td headers="cols" class="gt_row gt_right">64</td>
<td headers="rows" class="gt_row gt_right">88823</td></tr>
  </tbody>
  &#10;  
</table>
</div>

## Installation

You can install the latest version of `tidyenigh` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")

devtools::install_github("estebandegetau/tidyenigh")
```

## Reproducibility

A consistent and reproducible workflow is key to the development of
`tidyenigh`. The original data was cleaned from its `.zip` original
format using R code, which is available to the savvy user in the
`data-raw` folder.
