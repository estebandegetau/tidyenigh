# ENIGH cleaning code


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

Some helper functions are imported from the package
[tidyinegi](https://github.com/estebandegetau/tidyinegi). You’ll need to
install it on your computer before running this cleaning code. Other
than that, the code relies only on conventional tidyverse packages.

## Errata

Some errors were found in the raw data while cleaning it. They broke the
cleaning code and thus some rather irksome fix-arounds were implemented
to account for each error. A full description of the errors encountered
is included in `data-raw/enigh/R/02_build_meta/03_build_metadata`.
