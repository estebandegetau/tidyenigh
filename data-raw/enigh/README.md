# ENIGH

This README talks about the code used to transform raw ENIGH data into
its analysis-ready format shipped in `tidyenigh`.

## Data in and data out

All the data cleaning process happens within the `/data-raw/enigh`
directory. Once it is analysis-ready, it gets shipped under `/data` in
the following format: `data-set-name_year.RData`. For example, the
analysis-ready data set `poblacion` of the 2022 survey can be found in
`data/poblacion_2022.RData`.

That’s where final data goes. Initial data is loaded in the source
format of `tidyenigh` under `/data-raw/enigh/data/01_zip` in, you
guessed, `.zip` format. These data were manually downloaded from
[INEGI](https://www.inegi.org.mx/programas/enigh/nc/2022/#datos_abiertos)
and then renamed as `year.zip`. So the 2022 initial survey data is
renamed `2022.zip`. The code is expecting this convention.

## Running the code

All the code used in the cleaning process rests in `data-raw/enigh/R`.
You should **only** run it through `00_run.R`, manually changing the
`.year` to be processed. `00_run.R` is quite clear on what each source
component does, and further documentation can be found within each
script.

## Errata

Some errors were found in the raw data while cleaning it. They broke the
cleaning code and thus some rather irksome fix-arounds were implemented
to account for each error. Here’s a list of all the nasty fix-arounds.

### 2018

- In `data-raw/enigh/R/01_open_data/02_rename_dirs.R` a directory is
  manually renamed to match the name of the data set as conventionally
  named: `viviendas` instead of `vivienda`.

- In `data-raw/enigh/R/02_build_meta/03_build_metadata.R` the value
  labels for the variable `norecib_11` in the data set `poblacion` is
  set manually, according to
  `data-raw/enigh/data/02_open/2018/poblacion/diccionario_de_datos/*.csv`.
  The .csv containing value labels for variable `norecib` in
  `poblacion/diccionario_de_datos/catalogos` do not match the values in
  the data set.

### 2020

- In `data-raw/enigh/R/02_build_meta/03_build_metadata.R` the value
  labels for the variable `tipoact` in the data set `noagro` is set
  manually, according to
  `data-raw/enigh/data/02_open/2020/noagro/diccionario_de_datos/*.csv`.
  The .csv containing value labels for variable `tipoact` in
  `noagro/diccionario_de_datos/catalogos` do not match the values in the
  data set.
