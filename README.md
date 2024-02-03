# tidyenigh


<!-- README.md is generated from README.Rmd. Please edit that file -->
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

poblacion2022 |>
  head(5) |>
  gt::gt()
```

<<<<<<< HEAD
<div id="pxaqaaylkw" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#pxaqaaylkw table {
=======
<div id="mdsbyedhan" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#mdsbyedhan table {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw thead, #pxaqaaylkw tbody, #pxaqaaylkw tfoot, #pxaqaaylkw tr, #pxaqaaylkw td, #pxaqaaylkw th {
  border-style: none;
}
&#10;#pxaqaaylkw p {
  margin: 0;
  padding: 0;
}
&#10;#pxaqaaylkw .gt_table {
=======
&#10;#mdsbyedhan thead, #mdsbyedhan tbody, #mdsbyedhan tfoot, #mdsbyedhan tr, #mdsbyedhan td, #mdsbyedhan th {
  border-style: none;
}
&#10;#mdsbyedhan p {
  margin: 0;
  padding: 0;
}
&#10;#mdsbyedhan .gt_table {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#pxaqaaylkw .gt_title {
=======
&#10;#mdsbyedhan .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#mdsbyedhan .gt_title {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_subtitle {
=======
&#10;#mdsbyedhan .gt_subtitle {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_heading {
=======
&#10;#mdsbyedhan .gt_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_bottom_border {
=======
&#10;#mdsbyedhan .gt_bottom_border {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_col_headings {
=======
&#10;#mdsbyedhan .gt_col_headings {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_col_heading {
=======
&#10;#mdsbyedhan .gt_col_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_column_spanner_outer {
=======
&#10;#mdsbyedhan .gt_column_spanner_outer {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#pxaqaaylkw .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#pxaqaaylkw .gt_column_spanner {
=======
&#10;#mdsbyedhan .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#mdsbyedhan .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#mdsbyedhan .gt_column_spanner {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#pxaqaaylkw .gt_group_heading {
=======
&#10;#mdsbyedhan .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#mdsbyedhan .gt_group_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_empty_group_heading {
=======
&#10;#mdsbyedhan .gt_empty_group_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#pxaqaaylkw .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#pxaqaaylkw .gt_row {
=======
&#10;#mdsbyedhan .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#mdsbyedhan .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#mdsbyedhan .gt_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_stub {
=======
&#10;#mdsbyedhan .gt_stub {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_stub_row_group {
=======
&#10;#mdsbyedhan .gt_stub_row_group {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#pxaqaaylkw .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#pxaqaaylkw .gt_summary_row {
=======
&#10;#mdsbyedhan .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#mdsbyedhan .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#mdsbyedhan .gt_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#pxaqaaylkw .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#pxaqaaylkw .gt_last_summary_row {
=======
&#10;#mdsbyedhan .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#mdsbyedhan .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#mdsbyedhan .gt_last_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_grand_summary_row {
=======
&#10;#mdsbyedhan .gt_grand_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_first_grand_summary_row {
=======
&#10;#mdsbyedhan .gt_first_grand_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_last_grand_summary_row_top {
=======
&#10;#mdsbyedhan .gt_last_grand_summary_row_top {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#pxaqaaylkw .gt_table_body {
=======
&#10;#mdsbyedhan .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#mdsbyedhan .gt_table_body {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_footnotes {
=======
&#10;#mdsbyedhan .gt_footnotes {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_footnote {
=======
&#10;#mdsbyedhan .gt_footnote {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_sourcenotes {
=======
&#10;#mdsbyedhan .gt_sourcenotes {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_sourcenote {
=======
&#10;#mdsbyedhan .gt_sourcenote {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_left {
  text-align: left;
}
&#10;#pxaqaaylkw .gt_center {
  text-align: center;
}
&#10;#pxaqaaylkw .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#pxaqaaylkw .gt_font_normal {
  font-weight: normal;
}
&#10;#pxaqaaylkw .gt_font_bold {
  font-weight: bold;
}
&#10;#pxaqaaylkw .gt_font_italic {
  font-style: italic;
}
&#10;#pxaqaaylkw .gt_super {
  font-size: 65%;
}
&#10;#pxaqaaylkw .gt_footnote_marks {
=======
&#10;#mdsbyedhan .gt_left {
  text-align: left;
}
&#10;#mdsbyedhan .gt_center {
  text-align: center;
}
&#10;#mdsbyedhan .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#mdsbyedhan .gt_font_normal {
  font-weight: normal;
}
&#10;#mdsbyedhan .gt_font_bold {
  font-weight: bold;
}
&#10;#mdsbyedhan .gt_font_italic {
  font-style: italic;
}
&#10;#mdsbyedhan .gt_super {
  font-size: 65%;
}
&#10;#mdsbyedhan .gt_footnote_marks {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
<<<<<<< HEAD
&#10;#pxaqaaylkw .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#pxaqaaylkw .gt_indent_1 {
  text-indent: 5px;
}
&#10;#pxaqaaylkw .gt_indent_2 {
  text-indent: 10px;
}
&#10;#pxaqaaylkw .gt_indent_3 {
  text-indent: 15px;
}
&#10;#pxaqaaylkw .gt_indent_4 {
  text-indent: 20px;
}
&#10;#pxaqaaylkw .gt_indent_5 {
=======
&#10;#mdsbyedhan .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#mdsbyedhan .gt_indent_1 {
  text-indent: 5px;
}
&#10;#mdsbyedhan .gt_indent_2 {
  text-indent: 10px;
}
&#10;#mdsbyedhan .gt_indent_3 {
  text-indent: 15px;
}
&#10;#mdsbyedhan .gt_indent_4 {
  text-indent: 20px;
}
&#10;#mdsbyedhan .gt_indent_5 {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  text-indent: 25px;
}
</style>

| Identificador de la vivienda | Identificador del hogar | Identificador de la persona | Parentesco                                                                  | Sexo   | Edad | Identificador de la madre | Número de renglón de la madre | Identificador del padre | Número de renglón del padre | Discapacidad de caminar     | Discapacidad para ver | Discapacidad de usar brazos | Discapacidad para aprender | Discapacidad para escuchar | Discapacidad para vestirse | Discapacidad para hablar | Discapacidad para realizar actividades diarias | Causa de discapacidad para caminar | Causa de discapacidad para ver | Causa de discapacidad para usar brazos | Causa de discapacidad para aprender | Causa de discapacidad para escuchar | Causa de discapacidad para vestirse | Causa de discapacidad para hablar | Causa de discapacidad para realizar actividades diarias | Hablante indígena | Lengua indígena | Español | Comprensión | Autoadscripción étnica | Alfabetismo | Asistencia a la escuela | Nivel escolar al que asiste | Grado escolar al que asiste | Tipo de escuela   | Beca escolar | Otorga beca escolar          | Forma de beca escolar             | Crédito educativo | Otorga crédito educativo | Forma de crédito educativo | Nivel de instrucción aprobado | Grado aprobado | Antecedente escolar         | Residencia       | Situación conyugal | Identificador del cónyuge | Número de renglón del cónyuge | Contribución a la seguridad social | Tiempo de contribución años | Tiempo de contribución meses | Pedir ayuda para conseguir trabajo | Pedir ayuda para que lo (la) cuiden | Pedir la cantidad de dinero de un mes | Pedir que lo (la) acompañen al doctor | Pedir cooperación para mejoras en su colonia | Pedir que le cuiden a los (as) niños (as) | Horas de trabajo | Minutos de trabajo | Trabajar   | Horas de estudio | Minutos de estudio | Estudiar y hacer actividades | Horas de trabajo comunitario | Minutos de trabajo comunitario | Trabajo comunitario | Horas de cuidado de otras personas | Minutos de cuidado de otras personas | Cuidar, atender sin pago | Horas de reparación | Minutos de reparación | Reparar su vivienda | Horas dedicadas a quehacer | Minutos dedicados a quehacer | Realizar quehacer en su hogar | Horas de acarreo | Minutos de acarreo | Acarrear agua o leña | Horas de actividades personales | Minutos de actividades personales | Tiempo para realizar actividades | Seguro popular / INSABI | Afiliación para atención médica | Institución médica IMSS | Institución médica ISSSTE | Institución médica ISSSTE estatal | Institución médica PEMEX | Institución médica IMSS Prospera/IMSS Bienestar | Otra institución médica | Prestación en el trabajo | Jubilación o invalidez | Familiar en el hogar | Muerte del asegurado | Ser estudiante | Contratación propia | Algún familiar de otro hogar | No sabe | Año con problemas de salud | Mes con problemas de salud | Problemas de salud | Recibió atención médica | Atención en centros de salud | Atención en hospital | Atención en el IMSS | Atención en IMSS Prospera/IMSS Bienestar | Atención en ISSSTE | Atención en ISSSTE estatal | Atención médica en otra institución pública | Atención en consultorios privados | Atención en consultorio de farmacias | Atención con curandero | Atención en otro lugar | Atención INSABI | Horas de traslado | Minutos de traslado | Hora de espera | Minutos de espera | Pago por consulta | Pago por medicamentos | Pago por estudios de laboratorio | Pago por hospitalización | Pago por instrumental médico | Otro pago | No pagó por atención médica | No hay donde atenderse | Sin atención por falta de dinero | Unidad médica lejana | No lo atienden | No le tiene confianza | Lo tratan mal | No hablan la misma lengua | Hay que esperar mucho | No le dan medicamento | Sin atención por unidad cerrada | No hubo médicos | Se lo impidieron | Falta de tiempo | No hubo quién lo llevara | No era necesario | Se automedicó | Sin atención centro de salud | Sin atención hospital o instituto | Sin atención IMSS | Sin atención IMSS Prospera/IMSS Bienestar | Sin atención ISSSTE | Sin atención ISSSTE estatal | Sin atención otro servicio médico público | Sin atención consultorios privados | Sin atención consultorio de farmacias | Sin atención curandero | Sin atención otro lugar | Sin atención INSABI | No tenía dinero | No entendía su lengua | No quisieron | Dijeron que no era necesario | No tenían tiempo | Razón por unidad médica cerrada | Cita hasta mucho tiempo después | No había médico | No le dieron ninguna razón | El personal dijo que no era necesario | Otra razón de no atención | Diabetes | Presión alta | Control de peso y talla | Seguro voluntario SAR, AFORE | Seguro voluntario de gastos médicos | Seguro voluntario de vida | Seguro voluntario de invalidez | Otro tipo de seguro voluntario | Ningún tipo de seguro voluntario | No sabe si tiene seguros | Hijos nacidos vivos | Hijos fallecidos | Hijos sobrevivientes | Trabajó el mes pasado    | Motivo de ausencia al trabajo | Primera actividad del integrante PNEA                                                               | Segunda actividad del integrante PNEA | Número de trabajos | Jóvenes construyendo el futuro | Jóvenes construyendo el futuro, código de trabajo | Entidad federativa | Estrato de diseño muestral | Unidad primaria de muestreo | Factor de expansión |
|------------------------------|-------------------------|-----------------------------|-----------------------------------------------------------------------------|--------|------|---------------------------|-------------------------------|-------------------------|-----------------------------|-----------------------------|-----------------------|-----------------------------|----------------------------|----------------------------|----------------------------|--------------------------|------------------------------------------------|------------------------------------|--------------------------------|----------------------------------------|-------------------------------------|-------------------------------------|-------------------------------------|-----------------------------------|---------------------------------------------------------|-------------------|-----------------|---------|-------------|------------------------|-------------|-------------------------|-----------------------------|-----------------------------|-------------------|--------------|------------------------------|-----------------------------------|-------------------|--------------------------|----------------------------|-------------------------------|----------------|-----------------------------|------------------|--------------------|---------------------------|-------------------------------|------------------------------------|-----------------------------|------------------------------|------------------------------------|-------------------------------------|---------------------------------------|---------------------------------------|----------------------------------------------|-------------------------------------------|------------------|--------------------|------------|------------------|--------------------|------------------------------|------------------------------|--------------------------------|---------------------|------------------------------------|--------------------------------------|--------------------------|---------------------|-----------------------|---------------------|----------------------------|------------------------------|-------------------------------|------------------|--------------------|----------------------|---------------------------------|-----------------------------------|----------------------------------|-------------------------|---------------------------------|-------------------------|---------------------------|-----------------------------------|--------------------------|-------------------------------------------------|-------------------------|--------------------------|------------------------|----------------------|----------------------|----------------|---------------------|------------------------------|---------|----------------------------|----------------------------|--------------------|-------------------------|------------------------------|----------------------|---------------------|------------------------------------------|--------------------|----------------------------|---------------------------------------------|-----------------------------------|--------------------------------------|------------------------|------------------------|-----------------|-------------------|---------------------|----------------|-------------------|-------------------|-----------------------|----------------------------------|--------------------------|------------------------------|-----------|-----------------------------|------------------------|----------------------------------|----------------------|----------------|-----------------------|---------------|---------------------------|-----------------------|-----------------------|---------------------------------|-----------------|------------------|-----------------|--------------------------|------------------|---------------|------------------------------|-----------------------------------|-------------------|-------------------------------------------|---------------------|-----------------------------|-------------------------------------------|------------------------------------|---------------------------------------|------------------------|-------------------------|---------------------|-----------------|-----------------------|--------------|------------------------------|------------------|---------------------------------|---------------------------------|-----------------|----------------------------|---------------------------------------|---------------------------|----------|--------------|-------------------------|------------------------------|-------------------------------------|---------------------------|--------------------------------|--------------------------------|----------------------------------|--------------------------|---------------------|------------------|----------------------|--------------------------|-------------------------------|-----------------------------------------------------------------------------------------------------|---------------------------------------|--------------------|--------------------------------|---------------------------------------------------|--------------------|----------------------------|-----------------------------|---------------------|
| 0100005002                   | 1                       | 01                          | Jefe(a)                                                                     | Mujer  | 91   | 2                         | NA                            | 2                       | NA                          | Lo hace con poca dificultad | No tiene dificultad   | No tiene dificultad         | No tiene dificultad        | No tiene dificultad        | No tiene dificultad        | No tiene dificultad      | No tiene dificultad                            | Por edad avanzada                  | NA                             | NA                                     | NA                                  | NA                                  | NA                                  | NA                                | NA                                                      | No                | NA              | NA      | No          | No                     | S\u00ed     | No                      | NA                          | NA                          | NA                | NA           | NA                           | NA                                | NA                | NA                       | NA                         | Primaria                      | Cuarto año     | NA                          | Aguascalientes   | Es viudo(a)        | NA                        | NA                            | No                                 | NA                          | NA                           | Imposible conseguirla              | Fácil conseguirla                   | Imposible conseguirla                 | Fácil conseguirla                     | Difícil conseguirla                          | NA                                        | NA               | NA                 | No lo hizo | NA               | NA                 | No lo hizo                   | NA                           | NA                             | No lo hizo          | NA                                 | NA                                   | No lo hizo               | NA                  | NA                    | No lo hizo          | 3                          | 0                            | NA                            | NA               | NA                 | No lo hizo           | 10                              | 0                                 | NA                               | No                      | S\u00ed                         | NA                      | TRUE                      | NA                                | NA                       | NA                                              | NA                      | NA                       | NA                     | NA                   | NA                   | NA             | NA                  | TRUE                         | NA      | 2022                       | noviembre                  | S\u00ed            | S\u00ed                 | NA                           | NA                   | NA                  | NA                                       | TRUE               | NA                         | NA                                          | NA                                | NA                                   | NA                     | NA                     | NA              | 0                 | 10                  | 0              | 20                | NA                | NA                    | NA                               | NA                       | NA                           | NA        | TRUE                        | NA                     | NA                               | NA                   | NA             | NA                    | NA            | NA                        | NA                    | NA                    | NA                              | NA              | NA               | NA              | NA                       | NA               | NA            | NA                           | NA                                | NA                | NA                                        | NA                  | NA                          | NA                                        | NA                                 | NA                                    | NA                     | NA                      | NA                  | NA              | NA                    | NA           | NA                           | NA               | NA                              | NA                              | NA              | NA                         | NA                                    | NA                        | S\u00ed  | S\u00ed      | S\u00ed                 | NA                           | NA                                  | NA                        | NA                             | NA                             | TRUE                             | NA                       | 3                   | 0                | 3                    | No trabajó el mes pasado | NA                            | Es una persona con alguna limitación física o mental que le impide trabajar por el resto de su vida | NA                                    | NA                 | NA                             | NA                                                | Aguascalientes     | 003                        | 0000001                     | 206                 |
| 0100005002                   | 1                       | 02                          | Hijo(a), hijo(a) consanguíneo, hijo(a) reconocido                           | Mujer  | 48   | 1                         | 01                            | 2                       | NA                          | No tiene dificultad         | No tiene dificultad   | No tiene dificultad         | No tiene dificultad        | No tiene dificultad        | No tiene dificultad        | No tiene dificultad      | No tiene dificultad                            | NA                                 | NA                             | NA                                     | NA                                  | NA                                  | NA                                  | NA                                | NA                                                      | No                | NA              | NA      | No          | No                     | S\u00ed     | No                      | NA                          | NA                          | NA                | NA           | NA                           | NA                                | NA                | NA                       | NA                         | Preparatoria o bachillerato   | Tercer año     | NA                          | Aguascalientes   | Está soltero(a)    | NA                        | NA                            | No                                 | NA                          | NA                           | Difícil conseguirla                | Difícil conseguirla                 | Imposible conseguirla                 | Fácil conseguirla                     | Difícil conseguirla                          | NA                                        | 48               | 0                  | NA         | NA               | NA                 | No lo hizo                   | NA                           | NA                             | No lo hizo          | 2                                  | 0                                    | NA                       | NA                  | NA                    | No lo hizo          | 14                         | 0                            | NA                            | NA               | NA                 | No lo hizo           | 10                              | 0                                 | NA                               | No                      | S\u00ed                         | NA                      | TRUE                      | NA                                | NA                       | NA                                              | NA                      | TRUE                     | NA                     | NA                   | NA                   | NA             | NA                  | NA                           | NA      | 2019                       | noviembre                  | S\u00ed            | S\u00ed                 | NA                           | NA                   | NA                  | NA                                       | TRUE               | NA                         | NA                                          | NA                                | NA                                   | NA                     | NA                     | NA              | 0                 | 5                   | 4              | 0                 | NA                | NA                    | NA                               | NA                       | NA                           | NA        | TRUE                        | NA                     | NA                               | NA                   | NA             | NA                    | NA            | NA                        | NA                    | NA                    | NA                              | NA              | NA               | NA              | NA                       | NA               | NA            | NA                           | NA                                | NA                | NA                                        | NA                  | NA                          | NA                                        | NA                                 | NA                                    | NA                     | NA                      | NA                  | NA              | NA                    | NA           | NA                           | NA               | NA                              | NA                              | NA              | NA                         | NA                                    | NA                        | No       | S\u00ed      | S\u00ed                 | NA                           | NA                                  | NA                        | NA                             | NA                             | TRUE                             | NA                       | 1                   | 0                | 1                    | Trabajó el mes pasado    | NA                            | NA                                                                                                  | NA                                    | Sólo 1             | NA                             | NA                                                | Aguascalientes     | 003                        | 0000001                     | 206                 |
| 0100005002                   | 1                       | 03                          | Nieto(a)                                                                    | Mujer  | 13   | 1                         | 02                            | 2                       | NA                          | No tiene dificultad         | No tiene dificultad   | No tiene dificultad         | No tiene dificultad        | No tiene dificultad        | No tiene dificultad        | No tiene dificultad      | No tiene dificultad                            | NA                                 | NA                             | NA                                     | NA                                  | NA                                  | NA                                  | NA                                | NA                                                      | No                | NA              | NA      | No          | No                     | S\u00ed     | S\u00ed                 | Secundaria                  | Segundo año                 | Privada o de paga | S\u00ed      | Su escuela privada o de paga | Sólo paga parte de la colegiatura | NA                | NA                       | NA                         | Secundaria                    | Primer año     | NA                          | Aguascalientes   | Está soltero(a)    | NA                        | NA                            | No                                 | NA                          | NA                           | Difícil conseguirla                | Fácil conseguirla                   | Difícil conseguirla                   | Fácil conseguirla                     | Difícil conseguirla                          | NA                                        | NA               | NA                 | No lo hizo | 35               | 0                  | NA                           | NA                           | NA                             | No lo hizo          | NA                                 | NA                                   | No lo hizo               | NA                  | NA                    | No lo hizo          | NA                         | NA                           | No lo hizo                    | NA               | NA                 | No lo hizo           | 18                              | 0                                 | NA                               | No                      | S\u00ed                         | NA                      | TRUE                      | NA                                | NA                       | NA                                              | NA                      | NA                       | NA                     | TRUE                 | NA                   | NA             | NA                  | NA                           | NA      | 2020                       | julio                      | S\u00ed            | S\u00ed                 | NA                           | NA                   | NA                  | NA                                       | NA                 | NA                         | NA                                          | TRUE                              | NA                                   | NA                     | NA                     | NA              | 0                 | 5                   | 1              | 0                 | TRUE              | TRUE                  | NA                               | NA                       | NA                           | NA        | NA                          | NA                     | NA                               | NA                   | NA             | NA                    | NA            | NA                        | NA                    | NA                    | NA                              | NA              | NA               | NA              | NA                       | NA               | NA            | NA                           | NA                                | NA                | NA                                        | NA                  | NA                          | NA                                        | NA                                 | NA                                    | NA                     | NA                      | NA                  | NA              | NA                    | NA           | NA                           | NA               | NA                              | NA                              | NA              | NA                         | NA                                    | NA                        | No       | No           | S\u00ed                 | NA                           | NA                                  | NA                        | NA                             | NA                             | TRUE                             | NA                       | 0                   | NA               | NA                   | No trabajó el mes pasado | NA                            | Se dedicó a estudiar                                                                                | NA                                    | NA                 | NA                             | NA                                                | Aguascalientes     | 003                        | 0000001                     | 206                 |
| 0100005003                   | 1                       | 01                          | Jefe(a)                                                                     | Hombre | 68   | 2                         | NA                            | 2                       | NA                          | No tiene dificultad         | No tiene dificultad   | No tiene dificultad         | No tiene dificultad        | No tiene dificultad        | No tiene dificultad        | No tiene dificultad      | No tiene dificultad                            | NA                                 | NA                             | NA                                     | NA                                  | NA                                  | NA                                  | NA                                | NA                                                      | No                | NA              | NA      | No          | No                     | S\u00ed     | No                      | NA                          | NA                          | NA                | NA           | NA                           | NA                                | NA                | NA                       | NA                         | Preparatoria o bachillerato   | Tercer año     | NA                          | Ciudad de México | Está casado(a)     | 1                         | 02                            | S\u00ed                            | 26                          | 0                            | Difícil conseguirla                | Fácil conseguirla                   | Difícil conseguirla                   | Fácil conseguirla                     | Difícil conseguirla                          | NA                                        | 40               | 0                  | NA         | NA               | NA                 | No lo hizo                   | NA                           | NA                             | No lo hizo          | NA                                 | NA                                   | No lo hizo               | NA                  | NA                    | No lo hizo          | NA                         | NA                           | No lo hizo                    | NA               | NA                 | No lo hizo           | 12                              | 0                                 | NA                               | No                      | S\u00ed                         | TRUE                    | NA                        | NA                                | NA                       | NA                                              | NA                      | TRUE                     | NA                     | NA                   | NA                   | NA             | NA                  | NA                           | NA      | 2021                       | noviembre                  | S\u00ed            | S\u00ed                 | NA                           | NA                   | NA                  | NA                                       | NA                 | NA                         | NA                                          | TRUE                              | NA                                   | NA                     | NA                     | NA              | 0                 | 10                  | 0              | 5                 | TRUE              | TRUE                  | NA                               | NA                       | NA                           | NA        | NA                          | NA                     | NA                               | NA                   | NA             | NA                    | NA            | NA                        | NA                    | NA                    | NA                              | NA              | NA               | NA              | NA                       | NA               | NA            | NA                           | NA                                | NA                | NA                                        | NA                  | NA                          | NA                                        | NA                                 | NA                                    | NA                     | NA                      | NA                  | NA              | NA                    | NA           | NA                           | NA               | NA                              | NA                              | NA              | NA                         | NA                                    | NA                        | No       | S\u00ed      | S\u00ed                 | NA                           | TRUE                                | NA                        | NA                             | NA                             | NA                               | NA                       | NA                  | NA               | NA                   | Trabajó el mes pasado    | NA                            | NA                                                                                                  | NA                                    | Sólo 1             | NA                             | NA                                                | Aguascalientes     | 003                        | 0000001                     | 206                 |
| 0100005003                   | 1                       | 02                          | Esposo(a), compañero(a), cónyuge, pareja, marido, mujer, señor(a), consorte | Mujer  | 64   | 2                         | NA                            | 2                       | NA                          | No tiene dificultad         | No tiene dificultad   | No tiene dificultad         | No tiene dificultad        | No tiene dificultad        | No tiene dificultad        | No tiene dificultad      | No tiene dificultad                            | NA                                 | NA                             | NA                                     | NA                                  | NA                                  | NA                                  | NA                                | NA                                                      | No                | NA              | NA      | No          | No                     | S\u00ed     | No                      | NA                          | NA                          | NA                | NA           | NA                           | NA                                | NA                | NA                       | NA                         | Profesional                   | Quinto año     | Preparatoria o bachillerato | Ciudad de México | Está casado(a)     | 1                         | 01                            | No                                 | NA                          | NA                           | Fácil conseguirla                  | Fácil conseguirla                   | Fácil conseguirla                     | Fácil conseguirla                     | Fácil conseguirla                            | NA                                        | 12               | 0                  | NA         | 6                | 0                  | NA                           | NA                           | NA                             | No lo hizo          | NA                                 | NA                                   | No lo hizo               | NA                  | NA                    | No lo hizo          | 15                         | 0                            | NA                            | NA               | NA                 | No lo hizo           | 20                              | 0                                 | NA                               | No                      | S\u00ed                         | TRUE                    | NA                        | NA                                | NA                       | NA                                              | NA                      | TRUE                     | NA                     | NA                   | NA                   | NA             | NA                  | NA                           | NA      | 2022                       | septiembre                 | S\u00ed            | S\u00ed                 | NA                           | NA                   | NA                  | NA                                       | NA                 | NA                         | NA                                          | TRUE                              | NA                                   | NA                     | NA                     | NA              | 0                 | 30                  | 0              | 20                | TRUE              | TRUE                  | TRUE                             | NA                       | NA                           | NA        | NA                          | NA                     | NA                               | NA                   | NA             | NA                    | NA            | NA                        | NA                    | NA                    | NA                              | NA              | NA               | NA              | NA                       | NA               | NA            | NA                           | NA                                | NA                | NA                                        | NA                  | NA                          | NA                                        | NA                                 | NA                                    | NA                     | NA                      | NA                  | NA              | NA                    | NA           | NA                           | NA               | NA                              | NA                              | NA              | NA                         | NA                                    | NA                        | S\u00ed  | S\u00ed      | S\u00ed                 | NA                           | NA                                  | NA                        | NA                             | NA                             | TRUE                             | NA                       | 2                   | 0                | 2                    | Trabajó el mes pasado    | NA                            | NA                                                                                                  | NA                                    | Sólo 1             | NA                             | NA                                                | Aguascalientes     | 003                        | 0000001                     | 206                 |

</div>

Data includes variable and value labels

``` r
library(labelled)

gastoshogar2016 |> 
  generate_dictionary(details = F) |> 
  head(10) |>
  gt::gt()
```

<<<<<<< HEAD
<div id="cknityqtkr" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cknityqtkr table {
=======
<div id="vwhhjafwcc" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vwhhjafwcc table {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
<<<<<<< HEAD
&#10;#cknityqtkr thead, #cknityqtkr tbody, #cknityqtkr tfoot, #cknityqtkr tr, #cknityqtkr td, #cknityqtkr th {
  border-style: none;
}
&#10;#cknityqtkr p {
  margin: 0;
  padding: 0;
}
&#10;#cknityqtkr .gt_table {
=======
&#10;#vwhhjafwcc thead, #vwhhjafwcc tbody, #vwhhjafwcc tfoot, #vwhhjafwcc tr, #vwhhjafwcc td, #vwhhjafwcc th {
  border-style: none;
}
&#10;#vwhhjafwcc p {
  margin: 0;
  padding: 0;
}
&#10;#vwhhjafwcc .gt_table {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#cknityqtkr .gt_title {
=======
&#10;#vwhhjafwcc .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#vwhhjafwcc .gt_title {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_subtitle {
=======
&#10;#vwhhjafwcc .gt_subtitle {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_heading {
=======
&#10;#vwhhjafwcc .gt_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_bottom_border {
=======
&#10;#vwhhjafwcc .gt_bottom_border {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_col_headings {
=======
&#10;#vwhhjafwcc .gt_col_headings {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_col_heading {
=======
&#10;#vwhhjafwcc .gt_col_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_column_spanner_outer {
=======
&#10;#vwhhjafwcc .gt_column_spanner_outer {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#cknityqtkr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#cknityqtkr .gt_column_spanner {
=======
&#10;#vwhhjafwcc .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#vwhhjafwcc .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#vwhhjafwcc .gt_column_spanner {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#cknityqtkr .gt_group_heading {
=======
&#10;#vwhhjafwcc .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#vwhhjafwcc .gt_group_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_empty_group_heading {
=======
&#10;#vwhhjafwcc .gt_empty_group_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#cknityqtkr .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#cknityqtkr .gt_row {
=======
&#10;#vwhhjafwcc .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#vwhhjafwcc .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#vwhhjafwcc .gt_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_stub {
=======
&#10;#vwhhjafwcc .gt_stub {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_stub_row_group {
=======
&#10;#vwhhjafwcc .gt_stub_row_group {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#cknityqtkr .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#cknityqtkr .gt_summary_row {
=======
&#10;#vwhhjafwcc .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#vwhhjafwcc .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#vwhhjafwcc .gt_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#cknityqtkr .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#cknityqtkr .gt_last_summary_row {
=======
&#10;#vwhhjafwcc .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#vwhhjafwcc .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#vwhhjafwcc .gt_last_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_grand_summary_row {
=======
&#10;#vwhhjafwcc .gt_grand_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_first_grand_summary_row {
=======
&#10;#vwhhjafwcc .gt_first_grand_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_last_grand_summary_row_top {
=======
&#10;#vwhhjafwcc .gt_last_grand_summary_row_top {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#cknityqtkr .gt_table_body {
=======
&#10;#vwhhjafwcc .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#vwhhjafwcc .gt_table_body {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_footnotes {
=======
&#10;#vwhhjafwcc .gt_footnotes {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_footnote {
=======
&#10;#vwhhjafwcc .gt_footnote {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_sourcenotes {
=======
&#10;#vwhhjafwcc .gt_sourcenotes {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#cknityqtkr .gt_sourcenote {
=======
&#10;#vwhhjafwcc .gt_sourcenote {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_left {
  text-align: left;
}
&#10;#cknityqtkr .gt_center {
  text-align: center;
}
&#10;#cknityqtkr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#cknityqtkr .gt_font_normal {
  font-weight: normal;
}
&#10;#cknityqtkr .gt_font_bold {
  font-weight: bold;
}
&#10;#cknityqtkr .gt_font_italic {
  font-style: italic;
}
&#10;#cknityqtkr .gt_super {
  font-size: 65%;
}
&#10;#cknityqtkr .gt_footnote_marks {
=======
&#10;#vwhhjafwcc .gt_left {
  text-align: left;
}
&#10;#vwhhjafwcc .gt_center {
  text-align: center;
}
&#10;#vwhhjafwcc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#vwhhjafwcc .gt_font_normal {
  font-weight: normal;
}
&#10;#vwhhjafwcc .gt_font_bold {
  font-weight: bold;
}
&#10;#vwhhjafwcc .gt_font_italic {
  font-style: italic;
}
&#10;#vwhhjafwcc .gt_super {
  font-size: 65%;
}
&#10;#vwhhjafwcc .gt_footnote_marks {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
<<<<<<< HEAD
&#10;#cknityqtkr .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#cknityqtkr .gt_indent_1 {
  text-indent: 5px;
}
&#10;#cknityqtkr .gt_indent_2 {
  text-indent: 10px;
}
&#10;#cknityqtkr .gt_indent_3 {
  text-indent: 15px;
}
&#10;#cknityqtkr .gt_indent_4 {
  text-indent: 20px;
}
&#10;#cknityqtkr .gt_indent_5 {
=======
&#10;#vwhhjafwcc .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#vwhhjafwcc .gt_indent_1 {
  text-indent: 5px;
}
&#10;#vwhhjafwcc .gt_indent_2 {
  text-indent: 10px;
}
&#10;#vwhhjafwcc .gt_indent_3 {
  text-indent: 15px;
}
&#10;#vwhhjafwcc .gt_indent_4 {
  text-indent: 20px;
}
&#10;#vwhhjafwcc .gt_indent_5 {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  text-indent: 25px;
}
</style>

| pos | variable   | label                                 |
|-----|------------|---------------------------------------|
| 1   | folioviv   | Identificador de la vivienda          |
| 2   | foliohog   | Identificador del hogar               |
| 3   | clave      | Clave de gasto                        |
| 4   | tipo_gasto | Tipo de gasto                         |
| 5   | mes_dia    | Mes y día del gasto                   |
| 6   | forma_pag1 | Forma de pago 1                       |
| 7   | forma_pag2 | Forma de pago 2                       |
| 8   | forma_pag3 | Forma de pago 3                       |
| 9   | lugar_comp | Lugar de compra                       |
| 10  | orga_inst  | Organización o institución proveedora |

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

<<<<<<< HEAD
<div id="xkwddwvfph" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#xkwddwvfph table {
=======
<div id="mapbuvozal" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#mapbuvozal table {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
<<<<<<< HEAD
&#10;#xkwddwvfph thead, #xkwddwvfph tbody, #xkwddwvfph tfoot, #xkwddwvfph tr, #xkwddwvfph td, #xkwddwvfph th {
  border-style: none;
}
&#10;#xkwddwvfph p {
  margin: 0;
  padding: 0;
}
&#10;#xkwddwvfph .gt_table {
=======
&#10;#mapbuvozal thead, #mapbuvozal tbody, #mapbuvozal tfoot, #mapbuvozal tr, #mapbuvozal td, #mapbuvozal th {
  border-style: none;
}
&#10;#mapbuvozal p {
  margin: 0;
  padding: 0;
}
&#10;#mapbuvozal .gt_table {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#xkwddwvfph .gt_title {
=======
&#10;#mapbuvozal .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#mapbuvozal .gt_title {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_subtitle {
=======
&#10;#mapbuvozal .gt_subtitle {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_heading {
=======
&#10;#mapbuvozal .gt_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_bottom_border {
=======
&#10;#mapbuvozal .gt_bottom_border {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_col_headings {
=======
&#10;#mapbuvozal .gt_col_headings {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_col_heading {
=======
&#10;#mapbuvozal .gt_col_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_column_spanner_outer {
=======
&#10;#mapbuvozal .gt_column_spanner_outer {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#xkwddwvfph .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#xkwddwvfph .gt_column_spanner {
=======
&#10;#mapbuvozal .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#mapbuvozal .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#mapbuvozal .gt_column_spanner {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#xkwddwvfph .gt_group_heading {
=======
&#10;#mapbuvozal .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#mapbuvozal .gt_group_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_empty_group_heading {
=======
&#10;#mapbuvozal .gt_empty_group_heading {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#xkwddwvfph .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#xkwddwvfph .gt_row {
=======
&#10;#mapbuvozal .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#mapbuvozal .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#mapbuvozal .gt_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_stub {
=======
&#10;#mapbuvozal .gt_stub {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_stub_row_group {
=======
&#10;#mapbuvozal .gt_stub_row_group {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#xkwddwvfph .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#xkwddwvfph .gt_summary_row {
=======
&#10;#mapbuvozal .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#mapbuvozal .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#mapbuvozal .gt_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#xkwddwvfph .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#xkwddwvfph .gt_last_summary_row {
=======
&#10;#mapbuvozal .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#mapbuvozal .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#mapbuvozal .gt_last_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_grand_summary_row {
=======
&#10;#mapbuvozal .gt_grand_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_first_grand_summary_row {
=======
&#10;#mapbuvozal .gt_first_grand_summary_row {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_last_grand_summary_row_top {
=======
&#10;#mapbuvozal .gt_last_grand_summary_row_top {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#xkwddwvfph .gt_table_body {
=======
&#10;#mapbuvozal .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#mapbuvozal .gt_table_body {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_footnotes {
=======
&#10;#mapbuvozal .gt_footnotes {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_footnote {
=======
&#10;#mapbuvozal .gt_footnote {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_sourcenotes {
=======
&#10;#mapbuvozal .gt_sourcenotes {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
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
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_sourcenote {
=======
&#10;#mapbuvozal .gt_sourcenote {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_left {
  text-align: left;
}
&#10;#xkwddwvfph .gt_center {
  text-align: center;
}
&#10;#xkwddwvfph .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#xkwddwvfph .gt_font_normal {
  font-weight: normal;
}
&#10;#xkwddwvfph .gt_font_bold {
  font-weight: bold;
}
&#10;#xkwddwvfph .gt_font_italic {
  font-style: italic;
}
&#10;#xkwddwvfph .gt_super {
  font-size: 65%;
}
&#10;#xkwddwvfph .gt_footnote_marks {
=======
&#10;#mapbuvozal .gt_left {
  text-align: left;
}
&#10;#mapbuvozal .gt_center {
  text-align: center;
}
&#10;#mapbuvozal .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#mapbuvozal .gt_font_normal {
  font-weight: normal;
}
&#10;#mapbuvozal .gt_font_bold {
  font-weight: bold;
}
&#10;#mapbuvozal .gt_font_italic {
  font-style: italic;
}
&#10;#mapbuvozal .gt_super {
  font-size: 65%;
}
&#10;#mapbuvozal .gt_footnote_marks {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
<<<<<<< HEAD
&#10;#xkwddwvfph .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#xkwddwvfph .gt_indent_1 {
  text-indent: 5px;
}
&#10;#xkwddwvfph .gt_indent_2 {
  text-indent: 10px;
}
&#10;#xkwddwvfph .gt_indent_3 {
  text-indent: 15px;
}
&#10;#xkwddwvfph .gt_indent_4 {
  text-indent: 20px;
}
&#10;#xkwddwvfph .gt_indent_5 {
=======
&#10;#mapbuvozal .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#mapbuvozal .gt_indent_1 {
  text-indent: 5px;
}
&#10;#mapbuvozal .gt_indent_2 {
  text-indent: 10px;
}
&#10;#mapbuvozal .gt_indent_3 {
  text-indent: 15px;
}
&#10;#mapbuvozal .gt_indent_4 {
  text-indent: 20px;
}
&#10;#mapbuvozal .gt_indent_5 {
>>>>>>> b5e789f82ba404ecd795610a8d21c3052208691e
  text-indent: 25px;
}
</style>

| data_set             | description                                                                                                     | cols | rows    |
|----------------------|-----------------------------------------------------------------------------------------------------------------|------|---------|
| agro2022             | Negocios agropecuarios de los hogares                                                                           | 66   | 17470   |
| agroconsumo2022      | Destino, cantidad y valor de los productos del negocio del hogar                                                | 11   | 57456   |
| agrogasto2022        | Gasto que realiza el negocio del Hogar                                                                          | 7    | 60180   |
| agroproductos2022    | Productos de los negocios agrícolas del hogar                                                                   | 25   | 69212   |
| concentradohogar2022 | Principales variables por hogar                                                                                 | 126  | 90102   |
| erogaciones2022      | Erogaciones de capital por hogar                                                                                | 16   | 64779   |
| gastoshogar2022      | Gastos en los hogares                                                                                           | 31   | 5075174 |
| gastospersona2022    | Gastos realizados en el hogar a nivel integrante                                                                | 24   | 402557  |
| gastotarjetas2022    | Gastos realizados por el hogar y que fueron cubiertos mediante alguna tarjeta de crédito bancaria y/o comercial | 6    | 13232   |
| hogares2022          | Características de los hogares que habitan los integrantes del hogar                                            | 141  | 90102   |
| ingresos_jcf2022     | Ingresos del programa Jóvenes Construyendo el Futuro                                                            | 18   | 468     |
| ingresos2022         | Ingresos y percepciones financieras y de capital de los integrantes del hogar                                   | 21   | 397182  |
| noagro2022           | Negocios no agropecuarios de los hogares                                                                        | 115  | 23847   |
| noagroimportes2022   | Importe de los productos de los negocios no agrícolas del hogar                                                 | 17   | 155839  |
| poblacion2022        | Características sociodemográficas de los integrantes del hogar                                                  | 188  | 309684  |
| trabajos2022         | Condición de actividad de los integrantes del hogar de 12 o más años                                            | 60   | 165006  |
| viviendas2022        | Características de las viviendas que habitan los integrantes del hogar                                          | 64   | 88823   |

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
